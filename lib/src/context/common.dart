library context;

import 'dart:convert';

import 'package:dart_sdk/src/api/bucket.dart';
import 'package:dart_sdk/src/nitric/proto/apis/v1/apis.pb.dart' as $ap;
import 'package:dart_sdk/src/nitric/proto/schedules/v1/schedules.pb.dart'
    as $sp;
import 'package:dart_sdk/src/nitric/proto/topics/v1/topics.pb.dart' as $ep;
import 'package:dart_sdk/src/nitric/proto/storage/v1/storage.pb.dart' as $bp;
import 'package:dart_sdk/src/nitric/proto/websockets/v1/websockets.pb.dart'
    as $wp;
import 'package:meta/meta.dart';

part 'http.dart';
part 'interval.dart';
part 'middleware.dart';
part 'message.dart';
part 'blobevent.dart';
part 'websocket.dart';

/// Base context to wrap request/response objects from the server.
class TriggerContext<Req extends TriggerRequest, Resp extends TriggerResponse> {
  /// The ID which connects the request/response for the server handling.
  @protected
  final String id;

  /// The request object.
  final Req req;

  /// The response object.
  final Resp resp;

  TriggerContext(this.id, this.req, this.resp);
}

/// The trigger request.
class TriggerRequest {}

/// The trigger response.
class TriggerResponse {}
