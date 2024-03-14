part of 'common.dart';

class SubscriptionWorker extends Worker<$tp.SubscriberClient> {
  $tp.RegistrationRequest registrationRequest;
  MessageHandler middleware;

  SubscriptionWorker(this.registrationRequest, this.middleware,
      {$tp.SubscriberClient? client})
      : super(client);

  @override
  Future<void> start() async {
    // Create the request to register the subscription with the membrane
    final initMsg = $tp.ClientMessage(registrationRequest: registrationRequest);

    // Create the request stream and send the initial message
    final requestStream = StreamController<$tp.ClientMessage>();
    requestStream.add(initMsg);

    final response = _client.subscribe(
      requestStream.stream,
    );

    await for (final msg in response) {
      if (msg.hasRegistrationResponse()) {
        // Topic connected with Nitric server
      } else if (msg.hasMessageRequest()) {
        var ctx = MessageContext.fromRequest(msg);

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

    await _shutdownChannel();
  }
}
