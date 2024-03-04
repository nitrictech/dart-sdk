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

  test("Test build queue resource", () async {
    var queue = QueueResource("queueName", client: resourceClient);

    expect(queue.name, "queueName");
  });

  test("Test register queue resource", () async {
    var queue = QueueResource("queueName", client: resourceClient);

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
    var queue = QueueResource("queueName", client: resourceClient);

    var enqueueActions =
        queue.permissionsToActions([QueuePermission.enqueueing]);
    expect(enqueueActions, [$p.Action.QueueEnqueue]);

    var dequeueActions =
        queue.permissionsToActions([QueuePermission.dequeueing]);
    expect(dequeueActions, [$p.Action.QueueDequeue]);

    var allActions = queue.permissionsToActions([
      QueuePermission.enqueueing,
      QueuePermission.dequeueing,
    ]);
    expect(allActions, [
      $p.Action.QueueEnqueue,
      $p.Action.QueueDequeue,
    ]);
  });
}
