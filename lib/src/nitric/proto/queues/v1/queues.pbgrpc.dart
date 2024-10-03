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

import 'queues.pb.dart' as $8;

export 'queues.pb.dart';

@$pb.GrpcServiceName('nitric.proto.queues.v1.Queues')
class QueuesClient extends $grpc.Client {
  static final _$enqueue =
      $grpc.ClientMethod<$8.QueueEnqueueRequest, $8.QueueEnqueueResponse>(
          '/nitric.proto.queues.v1.Queues/Enqueue',
          ($8.QueueEnqueueRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.QueueEnqueueResponse.fromBuffer(value));
  static final _$dequeue =
      $grpc.ClientMethod<$8.QueueDequeueRequest, $8.QueueDequeueResponse>(
          '/nitric.proto.queues.v1.Queues/Dequeue',
          ($8.QueueDequeueRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.QueueDequeueResponse.fromBuffer(value));
  static final _$complete =
      $grpc.ClientMethod<$8.QueueCompleteRequest, $8.QueueCompleteResponse>(
          '/nitric.proto.queues.v1.Queues/Complete',
          ($8.QueueCompleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $8.QueueCompleteResponse.fromBuffer(value));

  QueuesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$8.QueueEnqueueResponse> enqueue(
      $8.QueueEnqueueRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enqueue, request, options: options);
  }

  $grpc.ResponseFuture<$8.QueueDequeueResponse> dequeue(
      $8.QueueDequeueRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dequeue, request, options: options);
  }

  $grpc.ResponseFuture<$8.QueueCompleteResponse> complete(
      $8.QueueCompleteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$complete, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.queues.v1.Queues')
abstract class QueuesServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.queues.v1.Queues';

  QueuesServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$8.QueueEnqueueRequest, $8.QueueEnqueueResponse>(
            'Enqueue',
            enqueue_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $8.QueueEnqueueRequest.fromBuffer(value),
            ($8.QueueEnqueueResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$8.QueueDequeueRequest, $8.QueueDequeueResponse>(
            'Dequeue',
            dequeue_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $8.QueueDequeueRequest.fromBuffer(value),
            ($8.QueueDequeueResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$8.QueueCompleteRequest, $8.QueueCompleteResponse>(
            'Complete',
            complete_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $8.QueueCompleteRequest.fromBuffer(value),
            ($8.QueueCompleteResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.QueueEnqueueResponse> enqueue_Pre($grpc.ServiceCall call,
      $async.Future<$8.QueueEnqueueRequest> request) async {
    return enqueue(call, await request);
  }

  $async.Future<$8.QueueDequeueResponse> dequeue_Pre($grpc.ServiceCall call,
      $async.Future<$8.QueueDequeueRequest> request) async {
    return dequeue(call, await request);
  }

  $async.Future<$8.QueueCompleteResponse> complete_Pre($grpc.ServiceCall call,
      $async.Future<$8.QueueCompleteRequest> request) async {
    return complete(call, await request);
  }

  $async.Future<$8.QueueEnqueueResponse> enqueue(
      $grpc.ServiceCall call, $8.QueueEnqueueRequest request);
  $async.Future<$8.QueueDequeueResponse> dequeue(
      $grpc.ServiceCall call, $8.QueueDequeueRequest request);
  $async.Future<$8.QueueCompleteResponse> complete(
      $grpc.ServiceCall call, $8.QueueCompleteRequest request);
}
