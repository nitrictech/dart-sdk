import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/resources.dart';
import 'package:nitric_sdk/src/grpc_helper.dart';
import 'package:nitric_sdk/src/nitric/proto/resources/v1/resources.pbgrpc.dart'
    as $p;
import 'package:nitric_sdk/src/resources/common.dart';
import 'package:test/test.dart';

import '../common.dart';

void main() {
  late MockResourceClient resourceClient;

  setUp(() {
    resourceClient = MockResourceClient();

    ClientChannelSingleton.registerClientConstructors(Map.from({
      $p.ResourcesClient: resourceClient,
    }));
  });

  tearDown(() => reset(resourceClient));

  test("Test build secret resource", () async {
    var secret = SecretResource("secretName");

    expect(secret.name, "secretName");
  });

  test("Test register secret resource", () async {
    var secret = SecretResource("secretName");

    var req = $p.ResourceDeclareRequest(
        id: $p.ResourceIdentifier(
            name: "secretName", type: $p.ResourceType.Secret),
        secret: $p.SecretResource());

    var resp = $p.ResourceDeclareResponse();

    when(() => resourceClient.declare(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    await secret.register();

    verify(() => resourceClient.declare(req)).called(1);
  });

  test("Test converting secret permissions to actions", () async {
    var secret = SecretResource("secretName");

    var accessActions = secret.permissionsToActions([SecretPermission.access]);
    expect(accessActions, [$p.Action.SecretAccess]);

    var dequeueActions = secret.permissionsToActions([SecretPermission.put]);
    expect(dequeueActions, [$p.Action.SecretPut]);

    var allActions = secret.permissionsToActions([
      SecretPermission.access,
      SecretPermission.put,
    ]);
    expect(allActions, [
      $p.Action.SecretAccess,
      $p.Action.SecretPut,
    ]);
  });

  test("Test register secret policies", () async {
    var secretResource = SecretResource("secretName");

    var resourceIdentifier =
        $p.ResourceIdentifier(type: $p.ResourceType.Secret, name: "secretName");
    var policyResource = $p.ResourceIdentifier(type: $p.ResourceType.Policy);

    var policy = $p.PolicyResource(
        principals: [$p.ResourceIdentifier(type: $p.ResourceType.Service)],
        resources: [resourceIdentifier],
        actions: [$p.Action.SecretAccess, $p.Action.SecretPut]);

    var req = $p.ResourceDeclareRequest(policy: policy, id: policyResource);

    var resp = $p.ResourceDeclareResponse();

    when(() => resourceClient.declare(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var secret =
        secretResource.allow([SecretPermission.access, SecretPermission.put]);

    expect(secret.name, "secretName");
  });
}
