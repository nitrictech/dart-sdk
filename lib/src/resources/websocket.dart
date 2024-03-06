part of 'common.dart';

class Websocket extends Resource {
  late $wp.WebsocketClient _websocketClient;

  Websocket(String name, {$p.ResourcesClient? client}) : super(name, client) {
    final channel = createClientChannelFromEnvVar();

    _websocketClient = $wp.WebsocketClient(channel);
  }

  @override
  Future<void> register() async {
    var resource = $p.ResourceIdentifier(
      name: name,
      type: $p.ResourceType.Websocket,
    );

    await client.declare($p.ResourceDeclareRequest(id: resource));

    await channel.shutdown();
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
  Future<void> onConnect(WebsocketHandler handler) async {
    var registrationRequest = $wp.RegistrationRequest(
        eventType: $wp.WebsocketEventType.Connect, socketName: name);

    var worker = WebsocketWorker(registrationRequest, handler);

    worker.start();
  }

  /// Set a [handler] for disconnection requests to the socket.
  Future<void> onDisconnect(WebsocketHandler handler) async {
    var registrationRequest = $wp.RegistrationRequest(
        eventType: $wp.WebsocketEventType.Disconnect, socketName: name);

    var worker = WebsocketWorker(registrationRequest, handler);

    worker.start();
  }

  /// Set a [handler] for messages to the socket.
  Future<void> onMessage(WebsocketHandler handler) async {
    var registrationRequest = $wp.RegistrationRequest(
        eventType: $wp.WebsocketEventType.Message, socketName: name);

    var worker = WebsocketWorker(registrationRequest, handler);

    worker.start();
  }
}

class WebsocketWorker implements Worker {
  $wp.RegistrationRequest registrationRequest;
  WebsocketHandler middleware;

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

    await channel.shutdown();
  }
}
