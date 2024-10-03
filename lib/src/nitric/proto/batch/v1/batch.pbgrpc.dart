//
//  Generated code. Do not modify.
//  source: nitric/proto/batch/v1/batch.proto
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

import 'batch.pb.dart' as $1;

export 'batch.pb.dart';

@$pb.GrpcServiceName('nitric.proto.batch.v1.Job')
class JobClient extends $grpc.Client {
  static final _$handleJob =
      $grpc.ClientMethod<$1.ClientMessage, $1.ServerMessage>(
          '/nitric.proto.batch.v1.Job/HandleJob',
          ($1.ClientMessage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.ServerMessage.fromBuffer(value));

  JobClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$1.ServerMessage> handleJob(
      $async.Stream<$1.ClientMessage> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$handleJob, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.batch.v1.Job')
abstract class JobServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.batch.v1.Job';

  JobServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.ClientMessage, $1.ServerMessage>(
        'HandleJob',
        handleJob,
        true,
        true,
        ($core.List<$core.int> value) => $1.ClientMessage.fromBuffer(value),
        ($1.ServerMessage value) => value.writeToBuffer()));
  }

  $async.Stream<$1.ServerMessage> handleJob(
      $grpc.ServiceCall call, $async.Stream<$1.ClientMessage> request);
}

@$pb.GrpcServiceName('nitric.proto.batch.v1.Batch')
class BatchClient extends $grpc.Client {
  static final _$submitJob =
      $grpc.ClientMethod<$1.JobSubmitRequest, $1.JobSubmitResponse>(
          '/nitric.proto.batch.v1.Batch/SubmitJob',
          ($1.JobSubmitRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.JobSubmitResponse.fromBuffer(value));

  BatchClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.JobSubmitResponse> submitJob(
      $1.JobSubmitRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$submitJob, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.batch.v1.Batch')
abstract class BatchServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.batch.v1.Batch';

  BatchServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.JobSubmitRequest, $1.JobSubmitResponse>(
        'SubmitJob',
        submitJob_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.JobSubmitRequest.fromBuffer(value),
        ($1.JobSubmitResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.JobSubmitResponse> submitJob_Pre($grpc.ServiceCall call,
      $async.Future<$1.JobSubmitRequest> request) async {
    return submitJob(call, await request);
  }

  $async.Future<$1.JobSubmitResponse> submitJob(
      $grpc.ServiceCall call, $1.JobSubmitRequest request);
}
