import 'package:grpc/grpc.dart';
import 'package:nitric_sdk/src/api/api.dart';
import 'package:nitric_sdk/src/grpc_helper.dart';

import 'package:nitric_sdk/src/google/protobuf/duration.pb.dart' as $d;
import 'package:nitric_sdk/src/nitric/proto/topics/v1/topics.pbgrpc.dart' as $p;
import 'package:fixnum/fixnum.dart';

/// A Topic for publishing events to subscribers of this topic.
class Topic {
  /// The name of the topic
  final String name;
  late final $p.TopicsClient? _topicsClient;

  Topic(this.name, {$p.TopicsClient? client}) {
    _topicsClient = client;
  }

  Future<Resp> _useClient<Resp>(
      UseClientCallback<$p.TopicsClient, Resp> callback) async {
    final client = _topicsClient ??
        $p.TopicsClient(ClientChannelSingleton.instance.clientChannel);

    var resp = callback(client);

    if (_topicsClient == null) {
      await ClientChannelSingleton.instance.release();
    }

    return resp;
  }

  /// Publish a [message] to the topic. Optional [delay] (in seconds) can be set to delay the message publish time.
  Future<void> publish(Map<String, dynamic> message, {int delay = 0}) async {
    // Convert the message to a proto struct wrapped in an event message
    final messageStruct = Proto.structFromMap(message);

    var req = $p.TopicPublishRequest(
      topicName: name,
      message: $p.TopicMessage(structPayload: messageStruct),
      delay: $d.Duration(seconds: Int64(delay)),
    );

    await _useClient((client) async => await client.publish(req));
  }
}
