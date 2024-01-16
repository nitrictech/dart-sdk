part of 'common.dart';

enum WebsocketEvent { connect, disconnect, message }

/// Base context for a websocket based request/response.
abstract class WebsocketContext
    extends TriggerContext<WebsocketRequest, WebsocketResponse> {
  WebsocketContext(String id, WebsocketRequest req, WebsocketResponse resp)
      : super(id, req, resp);

  $wp.ClientMessage toResponse() {
    return $wp.ClientMessage(websocketEventResponse: resp.toWire());
  }
}

/// Context for a websocket connection request/response.
class WebsocketConnectContext extends WebsocketContext {
  WebsocketConnectContext(
      String id, WebsocketRequest req, WebsocketConnectResponse resp)
      : super(id, req, resp);

  WebsocketConnectContext.fromRequest($wp.ServerMessage msg)
      : this(
            msg.id,
            WebsocketRequest(msg.websocketEventRequest.socketName,
                msg.websocketEventRequest.connectionId, WebsocketEvent.connect),
            WebsocketConnectResponse());
}

/// Context for a websocket disconnection request/response.
class WebsocketDisconnectContext extends WebsocketContext {
  WebsocketDisconnectContext(
      String id, WebsocketRequest req, WebsocketResponse resp)
      : super(id, req, resp);

  WebsocketDisconnectContext.fromRequest($wp.ServerMessage msg)
      : this(
            msg.id,
            WebsocketRequest(
                msg.websocketEventRequest.socketName,
                msg.websocketEventRequest.connectionId,
                WebsocketEvent.disconnect),
            WebsocketResponse());
}

/// Context for a websocket message request/response.
class WebsocketMessageContext extends WebsocketContext {
  WebsocketMessageContext(
      String id, WebsocketMessageRequest req, WebsocketResponse resp)
      : super(id, req, resp);

  WebsocketMessageContext.fromRequest($wp.ServerMessage msg)
      : this(
            msg.id,
            WebsocketMessageRequest(
                msg.websocketEventRequest.socketName,
                msg.websocketEventRequest.connectionId,
                utf8.decode(msg.websocketEventRequest.message.body)),
            WebsocketResponse());
}

/// Represents a websocket request.
class WebsocketRequest extends TriggerRequest {
  /// The name of the websocket that received teh request.
  String socketName;

  /// The unique connection id
  String connectionId;

  /// The event type that triggered this request, either a
  WebsocketEvent eventType;

  WebsocketRequest(this.socketName, this.connectionId, this.eventType);
}

class WebsocketMessageRequest extends WebsocketRequest {
  /// The message that was sent with the message request.
  String message;

  WebsocketMessageRequest(String socketName, String connectionId, this.message)
      : super(socketName, connectionId, WebsocketEvent.message);
}

/// Represents a response from a websocket request.
class WebsocketResponse extends TriggerResponse {
  WebsocketResponse();

  $wp.WebsocketEventResponse toWire() {
    return $wp.WebsocketEventResponse();
  }
}

/// Represents a response from a websocket connect request.
class WebsocketConnectResponse extends WebsocketResponse {
  /// If the connection should be accepted or rejected. Defaults to accepting (false).
  bool reject;

  WebsocketConnectResponse([this.reject = false]);

  @override
  $wp.WebsocketEventResponse toWire() {
    return $wp.WebsocketEventResponse(
        connectionResponse: $wp.WebsocketConnectionResponse(reject: reject));
  }
}
