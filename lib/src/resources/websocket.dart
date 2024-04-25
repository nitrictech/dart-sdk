part of 'common.dart';

class Websocket extends Resource {
  late $wp.WebsocketClient _websocketClient;
  late $wp.WebsocketHandlerClient? _websocketHandlerClient;

  Websocket(String name,
      {$p.ResourcesClient? client,
      $wp.WebsocketClient? websocketClient,
      $wp.WebsocketHandlerClient? websocketHandlerClient})
      : super(name, client) {
    if (websocketClient == null) {
      _websocketClient =
          $wp.WebsocketClient(ClientChannelSingleton.instance.clientChannel);
    } else {
      _websocketClient = websocketClient;
    }

    _websocketHandlerClient = websocketHandlerClient;
  }

  @override
  ResourceDeclareRequest asRequest() {
    var resource = $p.ResourceIdentifier(
      name: name,
      type: $p.ResourceType.Websocket,
    );

    return $p.ResourceDeclareRequest(id: resource);
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

    var worker = WebsocketWorker(registrationRequest, handler,
        client: _websocketHandlerClient);

    await worker.start();
  }

  /// Set a [handler] for disconnection requests to the socket.
  Future<void> onDisconnect(WebsocketHandler handler) async {
    var registrationRequest = $wp.RegistrationRequest(
        eventType: $wp.WebsocketEventType.Disconnect, socketName: name);

    var worker = WebsocketWorker(registrationRequest, handler,
        client: _websocketHandlerClient);

    await worker.start();
  }

  /// Set a [handler] for messages to the socket.
  Future<void> onMessage(WebsocketHandler handler) async {
    var registrationRequest = $wp.RegistrationRequest(
        eventType: $wp.WebsocketEventType.Message, socketName: name);

    var worker = WebsocketWorker(registrationRequest, handler,
        client: _websocketHandlerClient);

    await worker.start();
  }
}
