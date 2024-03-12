//
//  Generated code. Do not modify.
//  source: nitric/proto/queues/v1/queues.proto
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

import 'queues.pb.dart' as $7;

export 'queues.pb.dart';

@$pb.GrpcServiceName('nitric.proto.queues.v1.Queues')
class QueuesClient extends $grpc.Client {
  static final _$enqueue =
      $grpc.ClientMethod<$7.QueueEnqueueRequest, $7.QueueEnqueueResponse>(
          '/nitric.proto.queues.v1.Queues/Enqueue',
          ($7.QueueEnqueueRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.QueueEnqueueResponse.fromBuffer(value));
  static final _$dequeue =
      $grpc.ClientMethod<$7.QueueDequeueRequest, $7.QueueDequeueResponse>(
          '/nitric.proto.queues.v1.Queues/Dequeue',
          ($7.QueueDequeueRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.QueueDequeueResponse.fromBuffer(value));
  static final _$complete =
      $grpc.ClientMethod<$7.QueueCompleteRequest, $7.QueueCompleteResponse>(
          '/nitric.proto.queues.v1.Queues/Complete',
          ($7.QueueCompleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.QueueCompleteResponse.fromBuffer(value));

  QueuesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$7.QueueEnqueueResponse> enqueue(
      $7.QueueEnqueueRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enqueue, request, options: options);
  }

  $grpc.ResponseFuture<$7.QueueDequeueResponse> dequeue(
      $7.QueueDequeueRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dequeue, request, options: options);
  }

  $grpc.ResponseFuture<$7.QueueCompleteResponse> complete(
      $7.QueueCompleteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$complete, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.queues.v1.Queues')
abstract class QueuesServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.queues.v1.Queues';

  QueuesServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$7.QueueEnqueueRequest, $7.QueueEnqueueResponse>(
            'Enqueue',
            enqueue_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.QueueEnqueueRequest.fromBuffer(value),
            ($7.QueueEnqueueResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$7.QueueDequeueRequest, $7.QueueDequeueResponse>(
            'Dequeue',
            dequeue_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.QueueDequeueRequest.fromBuffer(value),
            ($7.QueueDequeueResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$7.QueueCompleteRequest, $7.QueueCompleteResponse>(
            'Complete',
            complete_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $7.QueueCompleteRequest.fromBuffer(value),
            ($7.QueueCompleteResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.QueueEnqueueResponse> enqueue_Pre($grpc.ServiceCall call,
      $async.Future<$7.QueueEnqueueRequest> request) async {
    return enqueue(call, await request);
  }

  $async.Future<$7.QueueDequeueResponse> dequeue_Pre($grpc.ServiceCall call,
      $async.Future<$7.QueueDequeueRequest> request) async {
    return dequeue(call, await request);
  }

  $async.Future<$7.QueueCompleteResponse> complete_Pre($grpc.ServiceCall call,
      $async.Future<$7.QueueCompleteRequest> request) async {
    return complete(call, await request);
  }

  $async.Future<$7.QueueEnqueueResponse> enqueue(
      $grpc.ServiceCall call, $7.QueueEnqueueRequest request);
  $async.Future<$7.QueueDequeueResponse> dequeue(
      $grpc.ServiceCall call, $7.QueueDequeueRequest request);
  $async.Future<$7.QueueCompleteResponse> complete(
      $grpc.ServiceCall call, $7.QueueCompleteRequest request);
}
