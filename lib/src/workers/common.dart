import 'dart:async';
import 'dart:io';

import 'package:grpc/grpc.dart';

import 'package:nitric_sdk/nitric.dart';
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
import 'package:nitric_sdk/src/nitric/proto/batch/v1/batch.pbgrpc.dart' as $jp;

part 'api.dart';
part 'blob_event.dart';
part 'interval.dart';
part 'subscription.dart';
part 'file_event.dart';
part 'websocket.dart';
part 'batch.dart';

abstract class Worker<T extends Client> {
  Future<void> _startWorkerLoop();

  Future<void> start() async {
    ProcessSignal.sigint.watch().listen((signal) {
      exit(0);
    });

    ProcessSignal.sigterm.watch().listen((signal) {
      exit(0);
    });

    await _startWorkerLoop();
  }
}
