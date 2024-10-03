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

  test("Test build queue resource", () async {
    var queue = QueueResource("queueName");

    expect(queue.name, "queueName");
  });

  test("Test register queue resource", () async {
    var queue = QueueResource("queueName");

    var req = $p.ResourceDeclareRequest(
        id: $p.ResourceIdentifier(
            name: "queueName", type: $p.ResourceType.Queue),
        queue: $p.QueueResource());

    var resp = $p.ResourceDeclareResponse();

    when(() => resourceClient.declare(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    await queue.register();

    verify(() => resourceClient.declare(req)).called(1);
  });

  test("Test converting queue permissions to actions", () async {
    var queue = QueueResource("queueName");

    var enqueueActions = queue.permissionsToActions([QueuePermission.enqueue]);
    expect(enqueueActions, [$p.Action.QueueEnqueue]);

    var dequeueActions = queue.permissionsToActions([QueuePermission.dequeue]);
    expect(dequeueActions, [$p.Action.QueueDequeue]);

    var allActions = queue.permissionsToActions([
      QueuePermission.enqueue,
      QueuePermission.dequeue,
    ]);
    expect(allActions, [
      $p.Action.QueueEnqueue,
      $p.Action.QueueDequeue,
    ]);
  });

  test("Test register queue policies", () async {
    var queueResource = QueueResource("queueName");

    var resourceIdentifier =
        $p.ResourceIdentifier(type: $p.ResourceType.Queue, name: "queueName");
    var policyResource = $p.ResourceIdentifier(type: $p.ResourceType.Policy);

    var policy = $p.PolicyResource(
        principals: [$p.ResourceIdentifier(type: $p.ResourceType.Service)],
        resources: [resourceIdentifier],
        actions: [$p.Action.QueueEnqueue, $p.Action.QueueDequeue]);

    var req = $p.ResourceDeclareRequest(policy: policy, id: policyResource);

    var resp = $p.ResourceDeclareResponse();

    when(() => resourceClient.declare(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var queue =
        queueResource.allow([QueuePermission.enqueue, QueuePermission.dequeue]);

    expect(queue.name, "queueName");
  });
}
