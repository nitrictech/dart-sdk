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

  /// Send message [data] to a connection, referenced by its [connectionId].
  Future<void> send(String connectionId, String data) async {
    var req = $wp.WebsocketSendRequest(
        socketName: name, connectionId: connectionId, data: utf8.encode(data));
    await _websocketClient.send(req);
  }

  /// Close a connection to the socket, referenced by its [connectionId].
  Future<void> close(String connectionId) async {
    var req =
        $wp.WebsocketCloseRequest(socketName: name, connectionId: connectionId);
    await _websocketClient.close(req);
  }

  Future<void> _on(
      $wp.WebsocketEventType eventType, WebsocketMiddleware handler) async {
    // Create Websocket handler client
    final channel = ClientChannel('localhost',
        port: 50051,
        options: ChannelOptions(credentials: ChannelCredentials.insecure()));
    final client = $wp.WebsocketHandlerClient(channel);

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
          var ctx = switch (eventType) {
            $wp.WebsocketEventType.Connect =>
              WebsocketConnectContext.fromRequest(msg),
            $wp.WebsocketEventType.Disconnect =>
              WebsocketDisconnectContext.fromRequest(msg),
            $wp.WebsocketEventType.Message =>
              WebsocketMessageContext.fromRequest(msg),
            WebsocketEventType() => null,
          };

          ctx = await handler(ctx!);

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

  /// Set a [handler] for connection requests to the socket.
  Future<void> onConnect(WebsocketConnectMiddleware handler) async {
    _on($wp.WebsocketEventType.Connect, handler as WebsocketMiddleware);
  }

  /// Set a [handler] for disconnection requests to the socket.
  Future<void> onDisconnect(WebsocketConnectMiddleware handler) async {
    _on($wp.WebsocketEventType.Connect, handler as WebsocketMiddleware);
  }

  /// Set a [handler] for messages to the socket.
  Future<void> onMessage(WebsocketConnectMiddleware handler) async {
    _on($wp.WebsocketEventType.Message, handler as WebsocketMiddleware);
  }
}
