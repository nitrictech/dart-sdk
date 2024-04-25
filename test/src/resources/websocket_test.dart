import 'dart:convert';

import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/src/nitric/proto/resources/v1/resources.pb.dart';
import 'package:nitric_sdk/src/nitric/proto/websockets/v1/websockets.pbgrpc.dart';
import 'package:nitric_sdk/src/resources/common.dart';
import 'package:test/test.dart';

import '../common.dart';

class MockWebsocketClient extends Mock implements WebsocketClient {}

class MockWebsocketHandlerClient extends Mock
    implements WebsocketHandlerClient {}

void main() {
  late MockResourceClient resourceClient;
  late MockWebsocketClient websocketClient;
  late MockWebsocketHandlerClient websocketHandlerClient;

  setUp(() {
    resourceClient = MockResourceClient();
    websocketClient = MockWebsocketClient();
    websocketHandlerClient = MockWebsocketHandlerClient();
  });

  setUpAll(() {
    registerFallbackValue(Stream<ClientMessage>.empty());
  });

  tearDown(() {
    reset(resourceClient);
    reset(websocketClient);
    reset(websocketHandlerClient);
  });

  test("Test build websocket", () async {
    var websocket = Websocket("websocketName", client: resourceClient);

    expect(websocket.name, "websocketName");
  });

  test("Test register websocket", () async {
    var websocket = Websocket("websocketName", client: resourceClient);

    var req = ResourceDeclareRequest(
        id: ResourceIdentifier(
            name: "websocketName", type: ResourceType.Websocket));

    var resp = ResourceDeclareResponse();

    when(() => resourceClient.declare(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    await websocket.register();

    verify(() => resourceClient.declare(req)).called(1);
  });

  test('Test websocket send message', () async {
    var req = WebsocketSendRequest(
        socketName: "socketName",
        connectionId: "connectionId",
        data: utf8.encode("hello world"));

    var resp = WebsocketSendResponse();

    when(() => websocketClient.sendMessage(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var websocket = Websocket("socketName",
        client: resourceClient, websocketClient: websocketClient);

    await websocket.send("connectionId", "hello world");

    verify(() => websocketClient.sendMessage(req)).called(1);
  });

  test('Test websocket close connection', () async {
    var req = WebsocketCloseConnectionRequest(
      socketName: "socketName",
      connectionId: "connectionId",
    );

    var resp = WebsocketCloseConnectionResponse();

    when(() => websocketClient.closeConnection(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var websocket = Websocket("socketName",
        client: resourceClient, websocketClient: websocketClient);

    await websocket.close("connectionId");

    verify(() => websocketClient.closeConnection(req)).called(1);
  });

  test('Test websocket connect worker', () async {
    var websocket = Websocket("websocketName",
        client: resourceClient,
        websocketClient: websocketClient,
        websocketHandlerClient: websocketHandlerClient);

    when(() => websocketHandlerClient.handleEvents(any()))
        .thenAnswer((_) => MockResponseStream.fromIterable([
              ServerMessage(
                  id: "id-1", registrationResponse: RegistrationResponse()),
              ServerMessage(
                  id: "id-2",
                  websocketEventRequest: WebsocketEventRequest(
                      socketName: "socketName",
                      connectionId: "connectionId",
                      connection: WebsocketConnectionEvent(queryParams: {
                        "message": QueryValue(value: ["Hello World"])
                      })))
            ]));

    await websocket.onConnect((ctx) async => ctx);

    verify(() => websocketHandlerClient.handleEvents(any())).called(1);
  });

  test('Test websocket disconnect worker', () async {
    var websocket = Websocket("websocketName",
        client: resourceClient,
        websocketClient: websocketClient,
        websocketHandlerClient: websocketHandlerClient);

    when(() => websocketHandlerClient.handleEvents(any()))
        .thenAnswer((_) => MockResponseStream.fromIterable([
              ServerMessage(
                  id: "id-1", registrationResponse: RegistrationResponse()),
              ServerMessage(
                  id: "id-2",
                  websocketEventRequest: WebsocketEventRequest(
                      socketName: "socketName",
                      connectionId: "connectionId",
                      disconnection: WebsocketDisconnectionEvent()))
            ]));

    await websocket.onDisconnect((ctx) async => ctx);

    verify(() => websocketHandlerClient.handleEvents(any())).called(1);
  });

  test('Test websocket message worker', () async {
    var websocket = Websocket("websocketName",
        client: resourceClient,
        websocketClient: websocketClient,
        websocketHandlerClient: websocketHandlerClient);

    when(() => websocketHandlerClient.handleEvents(any()))
        .thenAnswer((_) => MockResponseStream.fromIterable([
              ServerMessage(
                  id: "id-1", registrationResponse: RegistrationResponse()),
              ServerMessage(
                  id: "id-2",
                  websocketEventRequest: WebsocketEventRequest(
                      socketName: "socketName",
                      connectionId: "connectionId",
                      disconnection: WebsocketDisconnectionEvent()))
            ]));

    await websocket.onMessage((ctx) async => ctx);

    verify(() => websocketHandlerClient.handleEvents(any())).called(1);
  });

  test('Test websocket worker error', () async {
    var websocket = Websocket("websocketName",
        client: resourceClient,
        websocketClient: websocketClient,
        websocketHandlerClient: websocketHandlerClient);

    when(() => websocketHandlerClient.handleEvents(any()))
        .thenAnswer((_) => MockResponseStream.fromIterable([
              ServerMessage(
                  id: "id-1", registrationResponse: RegistrationResponse()),
              ServerMessage(
                  id: "id-2",
                  websocketEventRequest: WebsocketEventRequest(
                      socketName: "socketName",
                      connectionId: "connectionId",
                      disconnection: WebsocketDisconnectionEvent()))
            ]));

    await websocket
        .onMessage((ctx) async => throw Exception("test application error"));

    verify(() => websocketHandlerClient.handleEvents(any())).called(1);
  });
}
