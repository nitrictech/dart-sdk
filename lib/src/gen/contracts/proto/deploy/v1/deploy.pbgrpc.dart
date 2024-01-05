//
//  Generated code. Do not modify.
//  source: contracts/proto/deploy/v1/deploy.proto
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

import 'deploy.pb.dart' as $2;

export 'deploy.pb.dart';

@$pb.GrpcServiceName('nitric.deploy.v1.DeployService')
class DeployServiceClient extends $grpc.Client {
  static final _$up = $grpc.ClientMethod<$2.DeployUpRequest, $2.DeployUpEvent>(
      '/nitric.deploy.v1.DeployService/Up',
      ($2.DeployUpRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.DeployUpEvent.fromBuffer(value));
  static final _$down = $grpc.ClientMethod<$2.DeployDownRequest, $2.DeployDownEvent>(
      '/nitric.deploy.v1.DeployService/Down',
      ($2.DeployDownRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.DeployDownEvent.fromBuffer(value));

  DeployServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$2.DeployUpEvent> up($2.DeployUpRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$up, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$2.DeployDownEvent> down($2.DeployDownRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$down, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('nitric.deploy.v1.DeployService')
abstract class DeployServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.deploy.v1.DeployService';

  DeployServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.DeployUpRequest, $2.DeployUpEvent>(
        'Up',
        up_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.DeployUpRequest.fromBuffer(value),
        ($2.DeployUpEvent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.DeployDownRequest, $2.DeployDownEvent>(
        'Down',
        down_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $2.DeployDownRequest.fromBuffer(value),
        ($2.DeployDownEvent value) => value.writeToBuffer()));
  }

  $async.Stream<$2.DeployUpEvent> up_Pre($grpc.ServiceCall call, $async.Future<$2.DeployUpRequest> request) async* {
    yield* up(call, await request);
  }

  $async.Stream<$2.DeployDownEvent> down_Pre($grpc.ServiceCall call, $async.Future<$2.DeployDownRequest> request) async* {
    yield* down(call, await request);
  }

  $async.Stream<$2.DeployUpEvent> up($grpc.ServiceCall call, $2.DeployUpRequest request);
  $async.Stream<$2.DeployDownEvent> down($grpc.ServiceCall call, $2.DeployDownRequest request);
}
