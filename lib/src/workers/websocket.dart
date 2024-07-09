part of 'common.dart';

class WebsocketWorker extends Worker<$wp.WebsocketHandlerClient> {
  $wp.RegistrationRequest registrationRequest;
  WebsocketHandler middleware;

  WebsocketWorker(this.registrationRequest, this.middleware,
      {$wp.WebsocketHandlerClient? client})
      : super(client);

  @override
  Future<void> start() async {
    final initMsg = $wp.ClientMessage(registrationRequest: registrationRequest);

    // Create the request stream and send the initial message
    final requestStream = StreamController<$wp.ClientMessage>();
    requestStream.add(initMsg);

    final response = _client.handleEvents(
      requestStream.stream,
    );

    await for (final msg in response) {
      if (msg.hasRegistrationResponse()) {
        // Websocket connected with Nitric server
      } else if (msg.hasWebsocketEventRequest()) {
        var ctx = WebsocketContext.fromRequest(msg);

        try {
          ctx = await middleware(ctx);
        } on GrpcError catch (e) {
          print("caught a GrpcError: $e");
        } catch (e) {
          print("unhandled application error: $e");
        }

        requestStream.add(ctx.toResponse());
      }
    }

    await ClientChannelSingleton.instance.shutdown();
  }
}
