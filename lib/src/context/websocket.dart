part of 'common.dart';

enum WebsocketEvent { connect, disconnect, message }

/// Base context for a websocket based request/response.
class WebsocketContext
    extends TriggerContext<WebsocketRequest, WebsocketResponse> {
  WebsocketContext(super.id, super.req, super.resp);

  factory WebsocketContext.fromRequest($wp.ServerMessage msg) {
    var eventType = WebsocketEvent.connect;
    if (msg.websocketEventRequest.hasDisconnection()) {
      eventType = WebsocketEvent.disconnect;
    } else if (msg.websocketEventRequest.hasMessage()) {
      eventType = WebsocketEvent.message;
    }

    var message = "";
    if (msg.websocketEventRequest.hasMessage()) {
      message = utf8.decode(msg.websocketEventRequest.message.body);
    }

    Map<String, List<String>> queryParams = {};
    if (msg.websocketEventRequest.hasConnection()) {
      queryParams = msg.websocketEventRequest.connection.queryParams
          .map((key, value) => MapEntry(key, value.value));
    }

    return WebsocketContext(
        msg.id,
        WebsocketRequest(
            msg.websocketEventRequest.socketName,
            msg.websocketEventRequest.connectionId,
            eventType,
            queryParams,
            message),
        WebsocketResponse());
  }

  $wp.ClientMessage toResponse() {
    return $wp.ClientMessage(id: id, websocketEventResponse: res.toWire());
  }
}

/// Represents a websocket request.
class WebsocketRequest extends TriggerRequest {
  /// The name of the websocket that received teh request.
  String socketName;

  /// The unique connection id
  String connectionId;

  /// The event type that triggered this request
  WebsocketEvent eventType;

  // The query parameters passed during the connection request.
  Map<String, List<String>> queryParams;

  /// The message that was sent with the message request.
  String message;

  WebsocketRequest(this.socketName, this.connectionId, this.eventType,
      this.queryParams, this.message);
}

/// Represents a response from a websocket request.
class WebsocketResponse extends TriggerResponse {
  /// If the connection should be accepted or rejected. Defaults to accepting (false).
  bool reject;

  WebsocketResponse([this.reject = false]);

  $wp.WebsocketEventResponse toWire() {
    return $wp.WebsocketEventResponse(
        connectionResponse: WebsocketConnectionResponse(reject: reject));
  }
}
