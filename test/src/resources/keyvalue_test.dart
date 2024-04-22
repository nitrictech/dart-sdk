import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/resources.dart';
import 'package:nitric_sdk/src/nitric/proto/resources/v1/resources.pb.dart'
    as $p;
import 'package:nitric_sdk/src/resources/common.dart';
import 'package:test/test.dart';

import '../common.dart';

void main() {
  late MockResourceClient resourceClient;

  setUp(() => resourceClient = MockResourceClient());

  tearDown(() => reset(resourceClient));

  test("Test build key value resource", () async {
    var kv = KeyValueStoreResource("kvStoreName", client: resourceClient);

    expect(kv.name, "kvStoreName");
  });

  test("Test register key value resource", () async {
    var kv = KeyValueStoreResource("kvStoreName", client: resourceClient);

    var req = $p.ResourceDeclareRequest(
        id: $p.ResourceIdentifier(
            name: "kvStoreName", type: $p.ResourceType.KeyValueStore),
        keyValueStore: $p.KeyValueStoreResource());

    var resp = $p.ResourceDeclareResponse();

    when(() => resourceClient.declare(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    await kv.register();

    verify(() => resourceClient.declare(req)).called(1);
  });

  test("Test converting key value permissions to actions", () async {
    var kv = KeyValueStoreResource("kvStoreName", client: resourceClient);

    var getActions = kv.permissionsToActions([KeyValueStorePermission.get]);
    expect(getActions, [$p.Action.KeyValueStoreRead]);

    var setActions = kv.permissionsToActions([KeyValueStorePermission.set]);
    expect(setActions, [$p.Action.KeyValueStoreWrite]);

    var deleteActions =
        kv.permissionsToActions([KeyValueStorePermission.delete]);
    expect(deleteActions, [$p.Action.KeyValueStoreDelete]);

    var allActions = kv.permissionsToActions([
      KeyValueStorePermission.get,
      KeyValueStorePermission.set,
      KeyValueStorePermission.delete
    ]);
    expect(allActions, [
      $p.Action.KeyValueStoreRead,
      $p.Action.KeyValueStoreWrite,
      $p.Action.KeyValueStoreDelete,
    ]);
  });

  test("Test register key value policies", () async {
    var kvResource =
        KeyValueStoreResource("keyvalueName", client: resourceClient);

    var resourceIdentifier = $p.ResourceIdentifier(
        type: $p.ResourceType.KeyValueStore, name: "keyvalueName");
    var policyResource = $p.ResourceIdentifier(type: $p.ResourceType.Policy);

    var policy = $p.PolicyResource(principals: [
      $p.ResourceIdentifier(type: $p.ResourceType.Service)
    ], resources: [
      resourceIdentifier
    ], actions: [
      $p.Action.KeyValueStoreDelete,
      $p.Action.KeyValueStoreRead,
      $p.Action.KeyValueStoreWrite
    ]);

    var req = $p.ResourceDeclareRequest(policy: policy, id: policyResource);

    var resp = $p.ResourceDeclareResponse();

    when(() => resourceClient.declare(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var kv = kvResource.allow([
      KeyValueStorePermission.delete,
      KeyValueStorePermission.get,
      KeyValueStorePermission.set
    ]);

    expect(kv.name, "keyvalueName");
  });
}
