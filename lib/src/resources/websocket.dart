part of 'common.dart';

class Websocket extends Resource {
  late $wp.WebsocketClient _websocketClient;

  Websocket(String name) : super(name) {
    final channel = createClientChannelFromEnvVar();

    _websocketClient = $wp.WebsocketClient(channel);
  }

  @override
  Future<void> register() async {
    var resource = $p.ResourceIdentifier(
      name: name,
      type: $p.ResourceType.Api,
    );

    await client.declare($p.ResourceDeclareRequest(id: resource));
  }

  /// Send message [data] to a connection, referenced by its [connectionId].
  Future<void> send(String connectionId, String data) async {
    var req = $wp.WebsocketSendRequest(
        socketName: name, connectionId: connectionId, data: utf8.encode(data));
    await _websocketClient.sendMessage(req);
  }

  /// Close a connection to the socket, referenced by its [connectionId].
  Future<void> close(String connectionId) async {
    var req = $wp.WebsocketCloseConnectionRequest(
        socketName: name, connectionId: connectionId);
    await _websocketClient.closeConnection(req);
  }

  /// Set a [handler] for connection requests to the socket.
  Future<void> onConnect(WebsocketConnectMiddleware handler) async {
    var registrationRequest = $wp.RegistrationRequest(
        eventType: $wp.WebsocketEventType.Connect, socketName: name);

    var worker =
        WebsocketWorker(registrationRequest, handler as WebsocketMiddleware);

    Nitric.registerWorker(worker);
  }

  /// Set a [handler] for disconnection requests to the socket.
  Future<void> onDisconnect(WebsocketConnectMiddleware handler) async {
    var registrationRequest = $wp.RegistrationRequest(
        eventType: $wp.WebsocketEventType.Disconnect, socketName: name);

    var worker =
        WebsocketWorker(registrationRequest, handler as WebsocketMiddleware);

    Nitric.registerWorker(worker);
  }

  /// Set a [handler] for messages to the socket.
  Future<void> onMessage(WebsocketConnectMiddleware handler) async {
    var registrationRequest = $wp.RegistrationRequest(
        eventType: $wp.WebsocketEventType.Message, socketName: name);

    var worker =
        WebsocketWorker(registrationRequest, handler as WebsocketMiddleware);

    Nitric.registerWorker(worker);
  }
}

class WebsocketWorker extends Worker {
  $wp.RegistrationRequest registrationRequest;
  WebsocketMiddleware middleware;

  WebsocketWorker(this.registrationRequest, this.middleware);

  @override
  Future<void> start() async {
    // Create Websocket handler client
    final channel = createClientChannelFromEnvVar();
    final client = $wp.WebsocketHandlerClient(channel);

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
          var ctx = switch (registrationRequest.eventType) {
            $wp.WebsocketEventType.Connect =>
              WebsocketConnectContext.fromRequest(msg),
            $wp.WebsocketEventType.Disconnect =>
              WebsocketDisconnectContext.fromRequest(msg),
            $wp.WebsocketEventType.Message =>
              WebsocketMessageContext.fromRequest(msg),
            WebsocketEventType() => null,
          };

          ctx = await middleware(ctx!);

          var resp = ctx.toResponse();

          requestStream.add(resp);
        }
      }
    } on GrpcError catch (e) {
      print("caught a GrpcError: $e");
    } on Error catch (e) {
      print(e);

      var resp = WebsocketResponse();

      requestStream
          .add($wp.ClientMessage(websocketEventResponse: resp.toWire()));
    }
  }
}
