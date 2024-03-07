import 'package:fixnum/fixnum.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/api.dart';
import 'package:nitric_sdk/src/google/protobuf/duration.pb.dart';
import 'package:nitric_sdk/src/google/protobuf/struct.pb.dart';
import 'package:nitric_sdk/src/nitric/proto/topics/v1/topics.pbgrpc.dart' as $p;
import 'package:test/test.dart';

import '../common.dart';

class MockTopicsClient extends Mock implements $p.TopicsClient {}

void main() {
  late MockTopicsClient topicsClient;

  setUp(() => topicsClient = MockTopicsClient());

  tearDown(() => reset(topicsClient));

  test('Test build topic', () {
    var topic = Topic("topicName", client: topicsClient);

    expect(topic.name, "topicName");
  });

  test('Test publish event from topic', () async {
    var contents = Struct();
    contents.fields["message"] = Value(stringValue: "test");

    var req = $p.TopicPublishRequest(
        topicName: "topicName",
        message: $p.TopicMessage(structPayload: contents),
        delay: Duration(seconds: Int64()));

    var resp = $p.TopicPublishResponse();

    when(() => topicsClient.publish(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var secret = Topic("topicName", client: topicsClient);

    await secret.publish({"message": "test"});

    verify(() => topicsClient.publish(req)).called(1);
  });

  test('Test publish empty event', () async {
    var req = $p.TopicPublishRequest(
        topicName: "topicName",
        message: $p.TopicMessage(structPayload: Struct()),
        delay: Duration(seconds: Int64()));

    var resp = $p.TopicPublishResponse();

    when(() => topicsClient.publish(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var secret = Topic("topicName", client: topicsClient);

    await secret.publish({});

    verify(() => topicsClient.publish(req)).called(1);
  });

  test('Test publish event with 30 second delay', () async {
    var contents = Struct();
    contents.fields["message"] = Value(stringValue: "test");

    var req = $p.TopicPublishRequest(
        topicName: "topicName",
        message: $p.TopicMessage(structPayload: contents),
        delay: Duration(seconds: Int64(30)));

    var resp = $p.TopicPublishResponse();

    when(() => topicsClient.publish(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var secret = Topic("topicName", client: topicsClient);

    await secret.publish({"message": "test"}, delay: 30);

    verify(() => topicsClient.publish(req)).called(1);
  });
}
