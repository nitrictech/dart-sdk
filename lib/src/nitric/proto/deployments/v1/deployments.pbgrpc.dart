//
//  Generated code. Do not modify.
//  source: nitric/proto/deployments/v1/deployments.proto
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

import 'deployments.pb.dart' as $3;

export 'deployments.pb.dart';

@$pb.GrpcServiceName('nitric.proto.deployments.v1.Deployment')
class DeploymentClient extends $grpc.Client {
  static final _$up = $grpc.ClientMethod<$3.DeploymentUpRequest, $3.DeploymentUpEvent>(
      '/nitric.proto.deployments.v1.Deployment/Up',
      ($3.DeploymentUpRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DeploymentUpEvent.fromBuffer(value));
  static final _$down = $grpc.ClientMethod<$3.DeploymentDownRequest, $3.DeploymentDownEvent>(
      '/nitric.proto.deployments.v1.Deployment/Down',
      ($3.DeploymentDownRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DeploymentDownEvent.fromBuffer(value));

  DeploymentClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$3.DeploymentUpEvent> up($3.DeploymentUpRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$up, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$3.DeploymentDownEvent> down($3.DeploymentDownRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$down, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.deployments.v1.Deployment')
abstract class DeploymentServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.deployments.v1.Deployment';

  DeploymentServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.DeploymentUpRequest, $3.DeploymentUpEvent>(
        'Up',
        up_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $3.DeploymentUpRequest.fromBuffer(value),
        ($3.DeploymentUpEvent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeploymentDownRequest, $3.DeploymentDownEvent>(
        'Down',
        down_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $3.DeploymentDownRequest.fromBuffer(value),
        ($3.DeploymentDownEvent value) => value.writeToBuffer()));
  }

  $async.Stream<$3.DeploymentUpEvent> up_Pre($grpc.ServiceCall call, $async.Future<$3.DeploymentUpRequest> request) async* {
    yield* up(call, await request);
  }

  $async.Stream<$3.DeploymentDownEvent> down_Pre($grpc.ServiceCall call, $async.Future<$3.DeploymentDownRequest> request) async* {
    yield* down(call, await request);
  }

  $async.Stream<$3.DeploymentUpEvent> up($grpc.ServiceCall call, $3.DeploymentUpRequest request);
  $async.Stream<$3.DeploymentDownEvent> down($grpc.ServiceCall call, $3.DeploymentDownRequest request);
}
