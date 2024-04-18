import 'dart:async';

import 'package:nitric_sdk/src/api/api.dart';
import 'package:nitric_sdk/src/grpc_helper.dart';
import 'package:nitric_sdk/src/nitric/proto/queues/v1/queues.pbgrpc.dart' as $p;

class Queue {
  late $p.QueuesClient _queuesClient;

  /// The name of the queue.
  String name;

  /// Construct a new queue.
  Queue(this.name, {$p.QueuesClient? client}) {
    if (client == null) {
      _queuesClient =
          $p.QueuesClient(ClientChannelSingleton.instance.clientChannel);
    } else {
      _queuesClient = client;
    }
  }

  /// Enqueue a list of [messages] to the queue.
  Future<List<FailedMessage>> enqueue(
      List<Map<String, dynamic>> messages) async {
    var messageStructs = messages.map((message) =>
        $p.QueueMessage(structPayload: Proto.structFromMap(message)));

    var req = $p.QueueEnqueueRequest(
      messages: messageStructs,
      queueName: name,
    );

    var resp = await _queuesClient.enqueue(req);

    return resp.failedMessages.map((fm) => FailedMessage(fm)).toList();
  }

  /// Dequeue a list of messages from the queue. The number of messages dequeued can be between 0 and [depth] messages.
  Future<List<DequeuedMessage>> dequeue({int depth = 1}) async {
    var req = $p.QueueDequeueRequest(queueName: name, depth: depth);

    var resp = await _queuesClient.dequeue(req);

    return resp.messages.map((m) => DequeuedMessage(this, m)).toList();
  }
}

class DequeuedMessage {
  late Queue _queue;
  late String _leaseId;

  /// The message contents.
  late Map<String, dynamic> message;

  DequeuedMessage(Queue queue, $p.DequeuedMessage message) {
    _leaseId = message.leaseId;
    _queue = queue;
    this.message = Proto.mapFromStruct(message.message.structPayload);
  }

  /// Inform the queue that the message was handled successfully.
  Future<void> complete() async {
    var req =
        $p.QueueCompleteRequest(leaseId: _leaseId, queueName: _queue.name);

    await _queue._queuesClient.complete(req);
  }
}

class FailedMessage {
  /// The [details] of the failure.
  late String details;

  /// The [message] that failed.
  late Map<String, dynamic> message;

  FailedMessage($p.FailedEnqueueMessage failedMessage) {
    details = failedMessage.details;
    message = Proto.mapFromStruct(failedMessage.message.structPayload);
  }
}
