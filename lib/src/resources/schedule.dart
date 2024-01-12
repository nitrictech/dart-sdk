part of 'common.dart';

class Schedule extends Resource {
  late $sp.SchedulesClient schedulesClient;

  Schedule(String name) : super(name) {
    final channel = ClientChannel('localhost',
        port: 50051,
        options: ChannelOptions(credentials: ChannelCredentials.insecure()));

    schedulesClient = $sp.SchedulesClient(channel);
  }

  @override
  Future<void> register() async {
    var res = $p.Resource(name: name, type: $p.ResourceType.Schedule);
    await client.declare($p.ResourceDeclareRequest(resource: res));
  }

  /// Run [middleware] at a certain interval defined by the [rate]. E.g. '7 days', '3 hours', '30 minutes'.
  Future<void> every(String rate, IntervalMiddleware middleware) async {
    var registrationRequest = $sp.RegistrationRequest(
      scheduleName: name,
      rate: Rate(rate)._toWire(),
    );

    _registerIntervalHandler(registrationRequest, middleware);
  }

  /// Run [middleware] at a certain interval defined by the [cronExpression].
  Future<void> cron(
      String cronExpression, IntervalMiddleware middleware) async {
    var registrationRequest = $sp.RegistrationRequest(
      scheduleName: name,
      cron: $sp.ScheduleCron(expression: cronExpression),
    );

    _registerIntervalHandler(registrationRequest, middleware);
  }

  /// Starts the interval handling loop to run the [middleware] at a certain frequency. Uses the [registrationRequest] to register the interval with the Nitric server.
  Future<void> _registerIntervalHandler(
      $sp.RegistrationRequest registrationRequest,
      IntervalMiddleware middleware) async {
    final initMsg = $sp.ClientMessage(registrationRequest: registrationRequest);

    // Create the request stream and send the initial message
    final requestStream = StreamController<$sp.ClientMessage>();
    requestStream.add(initMsg);

    final response = schedulesClient.schedule(
      requestStream.stream,
    );

    try {
      await for (final msg in response) {
        if (msg.hasRegistrationResponse()) {
          print("Function connected with membrane");
        } else if (msg.hasIntervalRequest()) {
          var ctx = IntervalContext.fromRequest(msg);

          ctx = await middleware(ctx);

          var resp = ctx.toResponse();

          requestStream.add(resp);
        }
      }
    } on GrpcError catch (e) {
      print("caught a GrpcError: $e");
    } on Error catch (e) {
      var resp = IntervalResponse(success: false);

      requestStream.add($sp.ClientMessage(intervalResponse: resp.toWire()));
    }
  }
}

enum Frequency { day, hour, minute }

class Rate {
  late int rate;
  late Frequency frequency;

  Rate(String rateExpression) {
    final splitExpression = rateExpression.split(" ");
    if (splitExpression.length != 2) {
      throw FormatException(
          "rate expression invalid, must follow convention '3 days'");
    }

    rate = int.parse(splitExpression[0]);

    frequency = switch (splitExpression[1]) {
      'days' || 'day' => Frequency.day,
      'hour' || 'hours' => Frequency.hour,
      'minute' || 'minutes' => Frequency.minute,
      _ => throw FormatException(
          "rate expression invalid, must follow convention '3 days'")
    };
  }

  $sp.ScheduleRate _toWire() {
    final interval = switch (frequency) {
      Frequency.minute =>
        $d.Duration(seconds: Int64(rate * Duration.secondsPerMinute)),
      Frequency.hour =>
        $d.Duration(seconds: Int64(rate * Duration.secondsPerHour)),
      Frequency.day =>
        $d.Duration(seconds: Int64(rate * Duration.secondsPerDay)),
    };

    return $sp.ScheduleRate(interval: interval);
  }
}
