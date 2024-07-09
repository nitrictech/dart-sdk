part of 'common.dart';

class IntervalWorker extends Worker<$sp.SchedulesClient> {
  $sp.RegistrationRequest registrationRequest;
  IntervalHandler middleware;

  IntervalWorker(this.registrationRequest, this.middleware,
      {$sp.SchedulesClient? client})
      : super(client ??
            $sp.SchedulesClient(ClientChannelSingleton.instance.clientChannel));

  /// Starts the interval handling loop to run the [middleware] at a certain frequency. Uses the [registrationRequest] to register the interval with the Nitric server.
  @override
  Future<void> start() async {
    final initMsg = $sp.ClientMessage(registrationRequest: registrationRequest);

    // Create the request stream and send the initial message
    final requestStream = StreamController<$sp.ClientMessage>();
    requestStream.add(initMsg);

    final response = _client.schedule(
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

          ctx.res.success = false;
        }

        requestStream.add(ctx.toResponse());
      }
    }

    await ClientChannelSingleton.instance.release();
  }
}
