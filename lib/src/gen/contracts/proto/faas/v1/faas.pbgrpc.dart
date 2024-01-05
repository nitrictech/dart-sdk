//
//  Generated code. Do not modify.
//  source: contracts/proto/faas/v1/faas.proto
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

import 'faas.pb.dart' as $1;

export 'faas.pb.dart';

@$pb.GrpcServiceName('nitric.faas.v1.FaasService')
class FaasServiceClient extends $grpc.Client {
  static final _$triggerStream = $grpc.ClientMethod<$1.ClientMessage, $1.ServerMessage>(
      '/nitric.faas.v1.FaasService/TriggerStream',
      ($1.ClientMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ServerMessage.fromBuffer(value));

  FaasServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$1.ServerMessage> triggerStream($async.Stream<$1.ClientMessage> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$triggerStream, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.faas.v1.FaasService')
abstract class FaasServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.faas.v1.FaasService';

  FaasServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.ClientMessage, $1.ServerMessage>(
        'TriggerStream',
        triggerStream,
        true,
        true,
        ($core.List<$core.int> value) => $1.ClientMessage.fromBuffer(value),
        ($1.ServerMessage value) => value.writeToBuffer()));
  }

  $async.Stream<$1.ServerMessage> triggerStream($grpc.ServiceCall call, $async.Stream<$1.ClientMessage> request);
}
