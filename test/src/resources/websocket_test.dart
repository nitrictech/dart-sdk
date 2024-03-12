import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/src/nitric/proto/resources/v1/resources.pb.dart';
import 'package:nitric_sdk/src/resources/common.dart';
import 'package:test/test.dart';

import '../common.dart';

void main() {
  late MockResourceClient resourceClient;

  setUp(() => resourceClient = MockResourceClient());

  tearDown(() => reset(resourceClient));

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
}
