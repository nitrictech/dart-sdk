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

import 'deployments.pb.dart' as $4;

export 'deployments.pb.dart';

@$pb.GrpcServiceName('nitric.proto.deployments.v1.Deployment')
class DeploymentClient extends $grpc.Client {
  static final _$up =
      $grpc.ClientMethod<$4.DeploymentUpRequest, $4.DeploymentUpEvent>(
          '/nitric.proto.deployments.v1.Deployment/Up',
          ($4.DeploymentUpRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.DeploymentUpEvent.fromBuffer(value));
  static final _$down =
      $grpc.ClientMethod<$4.DeploymentDownRequest, $4.DeploymentDownEvent>(
          '/nitric.proto.deployments.v1.Deployment/Down',
          ($4.DeploymentDownRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $4.DeploymentDownEvent.fromBuffer(value));

  DeploymentClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$4.DeploymentUpEvent> up($4.DeploymentUpRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$up, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$4.DeploymentDownEvent> down(
      $4.DeploymentDownRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$down, $async.Stream.fromIterable([request]),
        options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.deployments.v1.Deployment')
abstract class DeploymentServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.deployments.v1.Deployment';

  DeploymentServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$4.DeploymentUpRequest, $4.DeploymentUpEvent>(
            'Up',
            up_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $4.DeploymentUpRequest.fromBuffer(value),
            ($4.DeploymentUpEvent value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.DeploymentDownRequest, $4.DeploymentDownEvent>(
            'Down',
            down_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $4.DeploymentDownRequest.fromBuffer(value),
            ($4.DeploymentDownEvent value) => value.writeToBuffer()));
  }

  $async.Stream<$4.DeploymentUpEvent> up_Pre($grpc.ServiceCall call,
      $async.Future<$4.DeploymentUpRequest> request) async* {
    yield* up(call, await request);
  }

  $async.Stream<$4.DeploymentDownEvent> down_Pre($grpc.ServiceCall call,
      $async.Future<$4.DeploymentDownRequest> request) async* {
    yield* down(call, await request);
  }

  $async.Stream<$4.DeploymentUpEvent> up(
      $grpc.ServiceCall call, $4.DeploymentUpRequest request);
  $async.Stream<$4.DeploymentDownEvent> down(
      $grpc.ServiceCall call, $4.DeploymentDownRequest request);
}
