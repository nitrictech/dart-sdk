import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/src/google/protobuf/struct.pb.dart';
import 'package:nitric_sdk/src/nitric/proto/resources/v1/resources.pb.dart';
import 'package:nitric_sdk/src/nitric/proto/topics/v1/topics.pbgrpc.dart';
import 'package:nitric_sdk/src/resources/common.dart';
import 'package:test/test.dart';

import '../common.dart';

class MockSubscriberClient extends Mock implements SubscriberClient {}

void main() {
  late MockResourceClient resourceClient;
  late MockSubscriberClient subscriberClient;

  setUp(() {
    resourceClient = MockResourceClient();
    subscriberClient = MockSubscriberClient();
  });

  setUpAll(() {
    registerFallbackValue(Stream<ClientMessage>.empty());
  });

  tearDown(() {
    reset(resourceClient);
    reset(subscriberClient);
  });

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

  test("Test register topic policies", () async {
    var topicResource = Topic("topicName", client: resourceClient);

    var resourceIdentifier =
        ResourceIdentifier(type: ResourceType.Topic, name: "topicName");
    var policyResource = ResourceIdentifier(type: ResourceType.Policy);

    var policy = PolicyResource(
        principals: [ResourceIdentifier(type: ResourceType.Service)],
        resources: [resourceIdentifier],
        actions: [Action.TopicPublish]);

    var req = ResourceDeclareRequest(policy: policy, id: policyResource);

    var resp = ResourceDeclareResponse();

    when(() => resourceClient.declare(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var topic = topicResource.allow([TopicPermission.publish]);

    expect(topic.name, "topicName");
  });

  test("Test converting topic permissions to actions", () async {
    var topic = Topic("topicName", client: resourceClient);

    var actions = topic.permissionsToActions([TopicPermission.publish]);
    expect(actions, [Action.TopicPublish]);
  });

  test('Test subscription worker', () async {
    var topic = Topic("topicName",
        client: resourceClient, subscriberClient: subscriberClient);

    when(() => subscriberClient.subscribe(any()))
        .thenAnswer((_) => MockResponseStream.fromIterable([
              ServerMessage(
                  id: "id-1", registrationResponse: RegistrationResponse()),
              ServerMessage(
                  id: "id-2",
                  messageRequest: MessageRequest(
                      topicName: "topicName",
                      message: TopicMessage(structPayload: Struct(fields: {}))))
            ]));

    await topic.subscribe((ctx) async => ctx);

    verify(() => subscriberClient.subscribe(any())).called(1);
  });

  test('Test subscription worker error ', () async {
    var topic = Topic("topicName",
        client: resourceClient, subscriberClient: subscriberClient);

    when(() => subscriberClient.subscribe(any()))
        .thenAnswer((_) => MockResponseStream.fromIterable([
              ServerMessage(
                  id: "id-1", registrationResponse: RegistrationResponse()),
              ServerMessage(
                  id: "id-2",
                  messageRequest: MessageRequest(
                      topicName: "topicName",
                      message: TopicMessage(structPayload: Struct(fields: {}))))
            ]));

    await topic
        .subscribe((ctx) async => throw Exception("test application error"));

    verify(() => subscriberClient.subscribe(any())).called(1);
  });
}
