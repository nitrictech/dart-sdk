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

import 'queues.pb.dart' as $6;

export 'queues.pb.dart';

@$pb.GrpcServiceName('nitric.proto.queues.v1.Queues')
class QueuesClient extends $grpc.Client {
  static final _$enqueue = $grpc.ClientMethod<$6.QueueEnqueueRequest, $6.QueueEnqueueResponse>(
      '/nitric.proto.queues.v1.Queues/Enqueue',
      ($6.QueueEnqueueRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.QueueEnqueueResponse.fromBuffer(value));
  static final _$dequeue = $grpc.ClientMethod<$6.QueueDequeueRequest, $6.QueueDequeueResponse>(
      '/nitric.proto.queues.v1.Queues/Dequeue',
      ($6.QueueDequeueRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.QueueDequeueResponse.fromBuffer(value));
  static final _$complete = $grpc.ClientMethod<$6.QueueCompleteRequest, $6.QueueCompleteResponse>(
      '/nitric.proto.queues.v1.Queues/Complete',
      ($6.QueueCompleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.QueueCompleteResponse.fromBuffer(value));

  QueuesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$6.QueueEnqueueResponse> enqueue($6.QueueEnqueueRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$enqueue, request, options: options);
  }

  $grpc.ResponseFuture<$6.QueueDequeueResponse> dequeue($6.QueueDequeueRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$dequeue, request, options: options);
  }

  $grpc.ResponseFuture<$6.QueueCompleteResponse> complete($6.QueueCompleteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$complete, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.queues.v1.Queues')
abstract class QueuesServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.queues.v1.Queues';

  QueuesServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.QueueEnqueueRequest, $6.QueueEnqueueResponse>(
        'Enqueue',
        enqueue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.QueueEnqueueRequest.fromBuffer(value),
        ($6.QueueEnqueueResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.QueueDequeueRequest, $6.QueueDequeueResponse>(
        'Dequeue',
        dequeue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.QueueDequeueRequest.fromBuffer(value),
        ($6.QueueDequeueResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.QueueCompleteRequest, $6.QueueCompleteResponse>(
        'Complete',
        complete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.QueueCompleteRequest.fromBuffer(value),
        ($6.QueueCompleteResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.QueueEnqueueResponse> enqueue_Pre($grpc.ServiceCall call, $async.Future<$6.QueueEnqueueRequest> request) async {
    return enqueue(call, await request);
  }

  $async.Future<$6.QueueDequeueResponse> dequeue_Pre($grpc.ServiceCall call, $async.Future<$6.QueueDequeueRequest> request) async {
    return dequeue(call, await request);
  }

  $async.Future<$6.QueueCompleteResponse> complete_Pre($grpc.ServiceCall call, $async.Future<$6.QueueCompleteRequest> request) async {
    return complete(call, await request);
  }

  $async.Future<$6.QueueEnqueueResponse> enqueue($grpc.ServiceCall call, $6.QueueEnqueueRequest request);
  $async.Future<$6.QueueDequeueResponse> dequeue($grpc.ServiceCall call, $6.QueueDequeueRequest request);
  $async.Future<$6.QueueCompleteResponse> complete($grpc.ServiceCall call, $6.QueueCompleteRequest request);
}
