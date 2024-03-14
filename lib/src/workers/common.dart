import 'dart:async';

import 'package:grpc/grpc.dart';

import 'package:nitric_sdk/nitric.dart';
import 'package:nitric_sdk/resources.dart';
import 'package:nitric_sdk/src/api/api.dart';
import 'package:nitric_sdk/src/grpc_helper.dart';

import 'package:nitric_sdk/src/nitric/proto/apis/v1/apis.pbgrpc.dart' as $ap;
import 'package:nitric_sdk/src/nitric/proto/schedules/v1/schedules.pbgrpc.dart'
    as $sp;
import 'package:nitric_sdk/src/nitric/proto/topics/v1/topics.pbgrpc.dart'
    as $tp;
import 'package:nitric_sdk/src/nitric/proto/websockets/v1/websockets.pbgrpc.dart'
    as $wp;
import 'package:nitric_sdk/src/nitric/proto/storage/v1/storage.pbgrpc.dart'
    as $bp;

part 'api.dart';
part 'blob_event.dart';
part 'interval.dart';
part 'subscription.dart';
part 'file_event.dart';
part 'websocket.dart';

abstract class Worker<T extends Client> {
  late T _client;
  late ClientChannel? _channel;

  Worker(T? client) {
    if (client == null) {
      final channel = createClientChannelFromEnvVar();

      client = $ap.ApiClient(channel) as T;
      _channel = channel;
    } else {
      _channel = null;
      _client = client;
    }
  }

  /// Shuts down the client channel
  Future<void> _shutdownChannel() async {
    if (_channel != null) {
      await _channel!.shutdown();
    }
  }

  Future<void> start();
}
