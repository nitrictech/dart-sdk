part of 'common.dart';

class SubscriptionWorker extends Worker<$tp.SubscriberClient> {
  $tp.RegistrationRequest registrationRequest;
  MessageHandler middleware;

  SubscriptionWorker(this.registrationRequest, this.middleware);

  @override
  Future<void> _startWorkerLoop() async {
    // Create the request to register the subscription with the membrane
    final initMsg = $tp.ClientMessage(registrationRequest: registrationRequest);

    // Create the request stream and send the initial message
    final requestStream = StreamController<$tp.ClientMessage>();
    requestStream.add(initMsg);

    await ClientChannelSingleton.useClient($tp.SubscriberClient.new,
        (client) async {
      final response = client.subscribe(
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
    });
  }
}
