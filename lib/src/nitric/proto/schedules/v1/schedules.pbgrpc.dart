//
//  Generated code. Do not modify.
//  source: nitric/proto/schedules/v1/schedules.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'schedules.pb.dart' as $7;

export 'schedules.pb.dart';

@$pb.GrpcServiceName('nitric.proto.schedules.v1.Schedules')
class SchedulesClient extends $grpc.Client {
  static final _$schedule = $grpc.ClientMethod<$7.ClientMessage, $7.ServerMessage>(
      '/nitric.proto.schedules.v1.Schedules/Schedule',
      ($7.ClientMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.ServerMessage.fromBuffer(value));

  SchedulesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$7.ServerMessage> schedule($async.Stream<$7.ClientMessage> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$schedule, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.schedules.v1.Schedules')
abstract class SchedulesServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.schedules.v1.Schedules';

  SchedulesServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.ClientMessage, $7.ServerMessage>(
        'Schedule',
        schedule,
        true,
        true,
        ($core.List<$core.int> value) => $7.ClientMessage.fromBuffer(value),
        ($7.ServerMessage value) => value.writeToBuffer()));
  }

  $async.Stream<$7.ServerMessage> schedule($grpc.ServiceCall call, $async.Stream<$7.ClientMessage> request);
}
