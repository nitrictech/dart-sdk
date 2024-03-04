import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/src/nitric/proto/resources/v1/resources.pb.dart';
import 'package:nitric_sdk/src/resources/common.dart';
import 'package:test/test.dart';

import '../common.dart';

void main() {
  late MockResourceClient resourceClient;

  setUp(() => resourceClient = MockResourceClient());

  tearDown(() => reset(resourceClient));

  test("Test build schedule", () async {
    var schedule = Schedule("scheduleName", client: resourceClient);

    expect(schedule.name, "scheduleName");
  });

  test("Test register schedule", () async {
    var api = Schedule("scheduleName", client: resourceClient);

    var req = ResourceDeclareRequest(
        id: ResourceIdentifier(
            name: "scheduleName", type: ResourceType.Schedule));

    var resp = ResourceDeclareResponse();

    when(() => resourceClient.declare(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    await api.register();

    verify(() => resourceClient.declare(req)).called(1);
  });
}
