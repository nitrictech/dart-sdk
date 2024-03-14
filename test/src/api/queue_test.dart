import 'dart:convert';

import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/src/api/api.dart';
import 'package:nitric_sdk/src/google/protobuf/struct.pb.dart';
import 'package:nitric_sdk/src/nitric/proto/queues/v1/queues.pbgrpc.dart' as $p;
import 'package:test/test.dart';

import '../common.dart';

class MockQueuesClient extends Mock implements $p.QueuesClient {}

void main() {
  late MockQueuesClient queuesClient;

  setUp(() => queuesClient = MockQueuesClient());

  tearDown(() => reset(queuesClient));

  test('Test build queue', () {
    var queue = Queue("queueName", client: queuesClient);

    expect(queue.name, "queueName");
  });

  test("Test enqueue messages with no failures", () async {
    var queue = Queue("queueName", client: queuesClient);

    var req = $p.QueueEnqueueRequest(queueName: "queueName", messages: [
      $p.QueueMessage(
          structPayload:
              Struct(fields: {"message": Value(stringValue: "Hello World")}))
    ]);

    var resp = $p.QueueEnqueueResponse(failedMessages: []);

    when(() => queuesClient.enqueue(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var failedMessages = await queue.enqueue([
      {"message": "Hello World"}
    ]);

    verify(() => queuesClient.enqueue(req)).called(1);

    expect(failedMessages.length, 0);
  });

  test("Test enqueue messages with failures", () async {
    var queue = Queue("queueName", client: queuesClient);

    var req = $p.QueueEnqueueRequest(queueName: "queueName", messages: [
      $p.QueueMessage(
          structPayload:
              Struct(fields: {"message": Value(stringValue: "Hello World")}))
    ]);

    var resp = $p.QueueEnqueueResponse(failedMessages: [
      $p.FailedEnqueueMessage(
          details: "a failure occurred",
          message: $p.QueueMessage(
              structPayload: Struct(
                  fields: {"message": Value(stringValue: "Hello World")})))
    ]);

    when(() => queuesClient.enqueue(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var failedMessages = await queue.enqueue([
      {"message": "Hello World"}
    ]);

    verify(() => queuesClient.enqueue(req)).called(1);

    expect(failedMessages.length, 1);
    expect(failedMessages[0].details, "a failure occurred");
    expect(failedMessages[0].message, {"message": "Hello World"});
  });

  test("Test dequeue messages with default depth", () async {
    var queue = Queue("queueName", client: queuesClient);

    var req = $p.QueueDequeueRequest(queueName: "queueName", depth: 1);

    var resp = $p.QueueDequeueResponse(messages: [
      $p.DequeuedMessage(
          leaseId: "1234",
          message: $p.QueueMessage(
              structPayload: Struct(
                  fields: {"message": Value(stringValue: "Hello World")})))
    ]);

    when(() => queuesClient.dequeue(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var messages = await queue.dequeue();

    verify(() => queuesClient.dequeue(req)).called(1);

    expect(messages.length, 1);
    expect(messages[0].message, {"message": "Hello World"});
  });

  test("Test dequeue messages with specific depth", () async {
    var queue = Queue("queueName", client: queuesClient);

    var req = $p.QueueDequeueRequest(queueName: "queueName", depth: 2);

    var resp = $p.QueueDequeueResponse(messages: [
      $p.DequeuedMessage(
          leaseId: "1234",
          message: $p.QueueMessage(
              structPayload: Struct(
                  fields: {"message": Value(stringValue: "Batch Message 1")}))),
      $p.DequeuedMessage(
          leaseId: "abcd",
          message: $p.QueueMessage(
              structPayload: Struct(
                  fields: {"message": Value(stringValue: "Batch Message 2")})))
    ]);

    when(() => queuesClient.dequeue(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var messages = await queue.dequeue(depth: 2);

    verify(() => queuesClient.dequeue(req)).called(1);

    expect(messages.length, 2);
    expect(messages[0].message, {"message": "Batch Message 1"});
    expect(messages[1].message, {"message": "Batch Message 2"});
  });

  test("Test complete message", () async {
    var queue = Queue("queueName", client: queuesClient);

    var protoDequeuedMessage = $p.DequeuedMessage(
        leaseId: "1234",
        message: $p.QueueMessage(
            structPayload: Struct(
                fields: {"message": Value(stringValue: "Batch Message 1")})));

    var dequeuedMessage = DequeuedMessage(queue, protoDequeuedMessage);

    var req = $p.QueueCompleteRequest(queueName: "queueName", leaseId: "1234");

    var resp = $p.QueueCompleteResponse();

    when(() => queuesClient.complete(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    await dequeuedMessage.complete();

    verify(() => queuesClient.complete(req)).called(1);
  });
}
