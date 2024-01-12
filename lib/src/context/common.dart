library context;

import 'dart:convert';
import 'dart:io';

import 'package:dart_sdk/src/api/bucket.dart';
import 'package:dart_sdk/src/nitric/proto/apis/v1/apis.pb.dart' as $ap;
import 'package:dart_sdk/src/nitric/proto/schedules/v1/schedules.pb.dart'
    as $sp;
import 'package:dart_sdk/src/nitric/proto/topics/v1/topics.pb.dart' as $ep;
import 'package:dart_sdk/src/nitric/proto/storage/v1/storage.pb.dart' as $bp;
import 'package:dart_sdk/src/nitric/proto/websockets/v1/websockets.pb.dart'
    as $wp;

part 'http.dart';
part 'interval.dart';
part 'middleware.dart';
part 'event.dart';
part 'blobevent.dart';
part 'websocket.dart';

class TriggerContext<Req extends TriggerRequest, Resp extends TriggerResponse> {
  String id;
  Req req;
  Resp resp;

  TriggerContext(this.id, this.req, this.resp);
}

class TriggerRequest {}

class TriggerResponse {}
