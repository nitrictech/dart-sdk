part of 'common.dart';

class Websocket extends Resource {
  Websocket(super.name);

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
    await ClientChannelSingleton.useClient($wp.WebsocketClient.new,
        (client) async => await client.sendMessage(req));
  }

  /// Close a connection to the socket, referenced by its [connectionId].
  Future<void> close(String connectionId) async {
    var req = $wp.WebsocketCloseConnectionRequest(
        socketName: name, connectionId: connectionId);
    await ClientChannelSingleton.useClient($wp.WebsocketClient.new,
        (client) async => await client.closeConnection(req));
  }

  /// Set a [handler] for connection requests to the socket.
  Future<void> onConnect(WebsocketHandler handler,
      {List<WebsocketHandler> middlewares = const []}) async {
    var registrationRequest = $wp.RegistrationRequest(
        eventType: $wp.WebsocketEventType.Connect, socketName: name);

    final composedHandler =
        composeMiddleware([...middlewares, handler], WebsocketContext.fromCtx);

    var worker = WebsocketWorker(registrationRequest, composedHandler);

    await worker.start();
  }

  /// Set a [handler] for disconnection requests to the socket.
  Future<void> onDisconnect(WebsocketHandler handler,
      {List<WebsocketHandler> middlewares = const []}) async {
    var registrationRequest = $wp.RegistrationRequest(
        eventType: $wp.WebsocketEventType.Disconnect, socketName: name);

    final composedHandler =
        composeMiddleware([...middlewares, handler], WebsocketContext.fromCtx);

    var worker = WebsocketWorker(registrationRequest, composedHandler);

    await worker.start();
  }

  /// Set a [handler] for messages to the socket.
  Future<void> onMessage(WebsocketHandler handler,
      {List<WebsocketHandler> middlewares = const []}) async {
    var registrationRequest = $wp.RegistrationRequest(
        eventType: $wp.WebsocketEventType.Message, socketName: name);

    final composedHandler =
        composeMiddleware([...middlewares, handler], WebsocketContext.fromCtx);

    var worker = WebsocketWorker(registrationRequest, composedHandler);

    await worker.start();
  }
}
