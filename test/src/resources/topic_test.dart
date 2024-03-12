import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/src/nitric/proto/resources/v1/resources.pb.dart';
import 'package:nitric_sdk/src/resources/common.dart';
import 'package:test/test.dart';

import '../common.dart';

void main() {
  late MockResourceClient resourceClient;

  setUp(() => resourceClient = MockResourceClient());

  tearDown(() => reset(resourceClient));

  test("Test build topic", () async {
    var topic = Topic("topicName", client: resourceClient);

    expect(topic.name, "topicName");
  });

  test("Test register topic", () async {
    var topic = Topic("topicName", client: resourceClient);

    var req = ResourceDeclareRequest(
        id: ResourceIdentifier(name: "topicName", type: ResourceType.Topic),
        topic: TopicResource());

    var resp = ResourceDeclareResponse();

    when(() => resourceClient.declare(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    await topic.register();

    verify(() => resourceClient.declare(req)).called(1);
  });
}
