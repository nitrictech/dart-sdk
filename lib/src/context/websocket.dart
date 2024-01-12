part of 'common.dart';

enum WebsocketEvent { connect, disconnect, message }

class WebsocketContext
    extends TriggerContext<WebsocketRequest, WebsocketResponse> {
  WebsocketContext(String id, WebsocketRequest req, WebsocketResponse resp)
      : super(id, req, resp);

  WebsocketContext.fromRequest($wp.ServerMessage msg)
      : this(
            msg.id,
            WebsocketRequest(
                msg.websocketEventRequest.socketName,
                msg.websocketEventRequest.connectionId,
                msg.websocketEventRequest.hasConnection()
                    ? WebsocketEvent.connect
                    : msg.websocketEventRequest.hasDisconnection()
                        ? WebsocketEvent.disconnect
                        : WebsocketEvent.message),
            msg.websocketEventRequest.hasConnection()
                ? WebsocketConnectResponse()
                : WebsocketResponse());

  toResponse() {
    return resp.toWire();
  }
}

class WebsocketRequest extends TriggerRequest {
  String socketName;
  String connectionId;
  WebsocketEvent eventType;

  WebsocketRequest(this.socketName, this.connectionId, this.eventType);
}

class WebsocketConnectResponse extends WebsocketResponse {
  bool reject;

  WebsocketConnectResponse([this.reject = false]);

  @override
  $wp.WebsocketEventResponse toWire() {
    return $wp.WebsocketEventResponse(
        connectionResponse: $wp.WebsocketConnectionResponse(reject: reject));
  }
}

class WebsocketResponse extends TriggerResponse {
  WebsocketResponse();

  $wp.WebsocketEventResponse toWire() {
    return $wp.WebsocketEventResponse();
  }
}
