part of 'common.dart';

class Schedule extends Resource {
  Schedule(String name) : super(name);

  @override
  Future<void> register() async {
    var res = $p.ResourceIdentifier(name: name, type: $p.ResourceType.Schedule);
    await client.declare($p.ResourceDeclareRequest(id: res));
  }

  /// Run [middleware] at a certain interval defined by the [rate]. E.g. '7 days', '3 hours', '30 minutes'.
  Future<void> every(String rate, IntervalHandler middleware) async {
    var registrationRequest = $sp.RegistrationRequest(
        scheduleName: name, every: $s.ScheduleEvery(rate: rate));

    var worker = IntervalWorker(registrationRequest, middleware);

    worker.start();
  }

  /// Run [middleware] at a certain interval defined by the [cronExpression].
  Future<void> cron(String cronExpression, IntervalHandler middleware) async {
    var registrationRequest = $sp.RegistrationRequest(
      scheduleName: name,
      cron: $sp.ScheduleCron(expression: cronExpression),
    );

    var worker = IntervalWorker(registrationRequest, middleware);

    worker.start();
  }
}

class IntervalWorker implements Worker {
  $sp.RegistrationRequest registrationRequest;
  IntervalHandler middleware;

  IntervalWorker(this.registrationRequest, this.middleware);

  /// Starts the interval handling loop to run the [middleware] at a certain frequency. Uses the [registrationRequest] to register the interval with the Nitric server.
  @override
  Future<void> start() async {
    final channel = createClientChannelFromEnvVar();

    var client = $sp.SchedulesClient(channel);

    final initMsg = $sp.ClientMessage(registrationRequest: registrationRequest);

    // Create the request stream and send the initial message
    final requestStream = StreamController<$sp.ClientMessage>();
    requestStream.add(initMsg);

    final response = client.schedule(
      requestStream.stream,
    );

    await for (final msg in response) {
      if (msg.hasRegistrationResponse()) {
        // Schedule connected with Nitric server
      } else if (msg.hasIntervalRequest()) {
        var ctx = IntervalContext.fromRequest(msg);

        try {
          ctx = await middleware(ctx);
        } on GrpcError catch (e) {
          print("caught a GrpcError: $e");
        } catch (e) {
          print("unhandled application error: $e");

          ctx.resp.success = false;
        }

        requestStream.add(ctx.toResponse());
      }
    }
  }
}
