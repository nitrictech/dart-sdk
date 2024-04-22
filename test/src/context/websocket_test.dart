import 'dart:convert';

import 'package:nitric_sdk/nitric.dart';
import 'package:nitric_sdk/src/context/common.dart';
import 'package:nitric_sdk/src/nitric/proto/websockets/v1/websockets.pbgrpc.dart'
    as $pb;
import 'package:test/test.dart';

void main() {
  test('Websocket Message Context from ServerMessage', () {
    var msg = $pb.ServerMessage(
        id: 'id',
        websocketEventRequest: $pb.WebsocketEventRequest(
          socketName: 'socketName',
          connectionId: "connectionId",
          message: $pb.WebsocketMessageEvent(
              body: utf8.encode("application message")),
        ));

    final ctx = WebsocketContext.fromRequest(msg);

    expect(ctx.req.socketName, "socketName");
    expect(ctx.req.connectionId, "connectionId");
    expect(ctx.req.message, "application message");
    expect(ctx.req.eventType, WebsocketEvent.message);
  });

  test('Websocket Connection Context from ServerMessage', () {
    var msg = $pb.ServerMessage(
        id: 'id',
        websocketEventRequest: $pb.WebsocketEventRequest(
          socketName: 'socketName',
          connectionId: "connectionId",
          connection: $pb.WebsocketConnectionEvent(queryParams: {
            "message": $pb.QueryValue(value: ["connection"])
          }),
        ));

    final ctx = WebsocketContext.fromRequest(msg);

    expect(ctx.req.socketName, "socketName");
    expect(ctx.req.connectionId, "connectionId");
    expect(ctx.req.eventType, WebsocketEvent.connect);
    expect(ctx.req.queryParams, {
      "message": ["connection"]
    });
  });

  test('Websocket Disconnection Context from ServerMessage', () {
    var msg = $pb.ServerMessage(
        id: 'id',
        websocketEventRequest: $pb.WebsocketEventRequest(
          socketName: 'socketName',
          connectionId: "connectionId",
          disconnection: $pb.WebsocketDisconnectionEvent(),
        ));

    final ctx = WebsocketContext.fromRequest(msg);

    expect(ctx.req.socketName, "socketName");
    expect(ctx.req.connectionId, "connectionId");
    expect(ctx.req.eventType, WebsocketEvent.disconnect);
  });

  test('ClientMessage from Websocket Context', () {
    final ctx = WebsocketContext(
        "id",
        WebsocketRequest(
            "socketName", "connectionId", WebsocketEvent.connect, {}, ""),
        WebsocketResponse(true));

    final clientMessage = ctx.toResponse();

    expect(clientMessage.id, "id");
    expect(clientMessage.hasWebsocketEventResponse(), true);
    expect(
        clientMessage.websocketEventResponse.connectionResponse.reject, true);
  });
}
