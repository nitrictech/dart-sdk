part of 'common.dart';

class Websocket extends Resource {
  late $wp.WebsocketClient _websocketClient;

  Websocket(String name) : super(name) {
    var channel = ClientChannel(
      'localhost',
      port: 50051,
      options: ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    _websocketClient = $wp.WebsocketClient(channel);
  }

  @override
  Future<void> register() async {
    var resource = $p.Resource(
      name: name,
      type: $p.ResourceType.Api,
    );

    await client.declare($p.ResourceDeclareRequest(resource: resource));
  }

  Future<void> send(String connectionId, String data) async {
    var req = $wp.WebsocketSendRequest(
        socketName: name, connectionId: connectionId, data: utf8.encode(data));
    await _websocketClient.send(req);
  }

  Future<void> close(String connectionId) async {
    var req =
        $wp.WebsocketCloseRequest(socketName: name, connectionId: connectionId);
    await _websocketClient.close(req);
  }

  Future<void> on(WebsocketEvent type, WebsocketMiddleware handler) async {
    // Create Storage listener client
    final channel = ClientChannel('localhost',
        port: 50051,
        options: ChannelOptions(credentials: ChannelCredentials.insecure()));
    final client = $wp.WebsocketHandlerClient(channel);

    final eventType = switch (type) {
      WebsocketEvent.connect => $wp.WebsocketEventType.Connect,
      WebsocketEvent.disconnect => $wp.WebsocketEventType.Disconnect,
      WebsocketEvent.message => $wp.WebsocketEventType.Message,
    };

    // Create the request to register the Storage listener with the membrane
    final registrationRequest = $wp.RegistrationRequest(
      socketName: name,
      eventType: eventType,
    );
    final initMsg = $wp.ClientMessage(registrationRequest: registrationRequest);

    // Create the request stream and send the initial message
    final requestStream = StreamController<$wp.ClientMessage>();
    requestStream.add(initMsg);

    final response = client.handleEvents(
      requestStream.stream,
    );

    try {
      await for (final msg in response) {
        if (msg.hasRegistrationResponse()) {
          print("Function connected with membrane");
        } else if (msg.hasWebsocketEventRequest()) {
          var ctx = WebsocketContext.fromRequest(msg);

          ctx = await handler(ctx);

          var resp = ctx.toResponse();

          requestStream.add(resp);
        }
      }
    } on GrpcError catch (e) {
      print("caught a GrpcError: $e");
    } on Error catch (e) {
      var resp = WebsocketResponse();

      requestStream
          .add($wp.ClientMessage(websocketEventResponse: resp.toWire()));
    }
  }
}
