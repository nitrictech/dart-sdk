import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/src/nitric/proto/resources/v1/resources.pb.dart';
import 'package:nitric_sdk/src/resources/common.dart';
import 'package:test/test.dart';

import '../common.dart';

void main() {
  late MockResourceClient resourceClient;

  setUp(() => resourceClient = MockResourceClient());

  tearDown(() => reset(resourceClient));

  test("Test build api", () async {
    var api = Api("apiName", client: resourceClient);

    expect(api.name, "apiName");
  });

  test("Test register api", () async {
    var api = Api("apiName", client: resourceClient);

    var req = ResourceDeclareRequest(
        id: ResourceIdentifier(name: "apiName", type: ResourceType.Api),
        api: ApiResource(security: {}));

    var resp = ResourceDeclareResponse();

    when(() => resourceClient.declare(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    await api.register();

    verify(() => resourceClient.declare(req)).called(1);
  });
}
