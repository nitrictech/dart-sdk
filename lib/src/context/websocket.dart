part of 'common.dart';

enum WebsocketEventType { connect, disconnect, message }

class WebsocketContext<Req extends WebsocketRequest>
    extends TriggerContext<Req, WebsocketResponse> {
  WebsocketContext(String id, WebsocketRequest req, WebsocketResponse resp)
      : super(id, req, resp);

      WebsocketContext.fromRequest($wp.ServerMessage msg) : super(msg.id) {
        final eventReq = msg.websocketEventRequest;        

        id = msg.id;
        req = WebsocketRequest(eventReq.connectionId, eventReq.);
        resp = WebsocketResponse();
      }
}


abstract class WebsocketRequest {
  late String connectionId;
  late WebsocketEventType eventType;
}

class WebsocketConnection extends TriggerRequest with WebsocketRequest {
  List<String, List<String>> queryParams;

  WebsocketConnection(this.queryParams) : super();
}

class WebsocketDisconnection extends WebsocketRequest {}

class Websocket

class WebsocketResponse extends TriggerResponse {}
