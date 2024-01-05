//
//  Generated code. Do not modify.
//  source: contracts/proto/queue/v1/queue.proto
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

import 'queue.pb.dart' as $5;

export 'queue.pb.dart';

@$pb.GrpcServiceName('nitric.queue.v1.QueueService')
class QueueServiceClient extends $grpc.Client {
  static final _$send = $grpc.ClientMethod<$5.QueueSendRequest, $5.QueueSendResponse>(
      '/nitric.queue.v1.QueueService/Send',
      ($5.QueueSendRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.QueueSendResponse.fromBuffer(value));
  static final _$sendBatch = $grpc.ClientMethod<$5.QueueSendBatchRequest, $5.QueueSendBatchResponse>(
      '/nitric.queue.v1.QueueService/SendBatch',
      ($5.QueueSendBatchRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.QueueSendBatchResponse.fromBuffer(value));
  static final _$receive = $grpc.ClientMethod<$5.QueueReceiveRequest, $5.QueueReceiveResponse>(
      '/nitric.queue.v1.QueueService/Receive',
      ($5.QueueReceiveRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.QueueReceiveResponse.fromBuffer(value));
  static final _$complete = $grpc.ClientMethod<$5.QueueCompleteRequest, $5.QueueCompleteResponse>(
      '/nitric.queue.v1.QueueService/Complete',
      ($5.QueueCompleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.QueueCompleteResponse.fromBuffer(value));

  QueueServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.QueueSendResponse> send($5.QueueSendRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$send, request, options: options);
  }

  $grpc.ResponseFuture<$5.QueueSendBatchResponse> sendBatch($5.QueueSendBatchRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendBatch, request, options: options);
  }

  $grpc.ResponseFuture<$5.QueueReceiveResponse> receive($5.QueueReceiveRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$receive, request, options: options);
  }

  $grpc.ResponseFuture<$5.QueueCompleteResponse> complete($5.QueueCompleteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$complete, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.queue.v1.QueueService')
abstract class QueueServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.queue.v1.QueueService';

  QueueServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.QueueSendRequest, $5.QueueSendResponse>(
        'Send',
        send_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.QueueSendRequest.fromBuffer(value),
        ($5.QueueSendResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.QueueSendBatchRequest, $5.QueueSendBatchResponse>(
        'SendBatch',
        sendBatch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.QueueSendBatchRequest.fromBuffer(value),
        ($5.QueueSendBatchResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.QueueReceiveRequest, $5.QueueReceiveResponse>(
        'Receive',
        receive_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.QueueReceiveRequest.fromBuffer(value),
        ($5.QueueReceiveResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.QueueCompleteRequest, $5.QueueCompleteResponse>(
        'Complete',
        complete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.QueueCompleteRequest.fromBuffer(value),
        ($5.QueueCompleteResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.QueueSendResponse> send_Pre($grpc.ServiceCall call, $async.Future<$5.QueueSendRequest> request) async {
    return send(call, await request);
  }

  $async.Future<$5.QueueSendBatchResponse> sendBatch_Pre($grpc.ServiceCall call, $async.Future<$5.QueueSendBatchRequest> request) async {
    return sendBatch(call, await request);
  }

  $async.Future<$5.QueueReceiveResponse> receive_Pre($grpc.ServiceCall call, $async.Future<$5.QueueReceiveRequest> request) async {
    return receive(call, await request);
  }

  $async.Future<$5.QueueCompleteResponse> complete_Pre($grpc.ServiceCall call, $async.Future<$5.QueueCompleteRequest> request) async {
    return complete(call, await request);
  }

  $async.Future<$5.QueueSendResponse> send($grpc.ServiceCall call, $5.QueueSendRequest request);
  $async.Future<$5.QueueSendBatchResponse> sendBatch($grpc.ServiceCall call, $5.QueueSendBatchRequest request);
  $async.Future<$5.QueueReceiveResponse> receive($grpc.ServiceCall call, $5.QueueReceiveRequest request);
  $async.Future<$5.QueueCompleteResponse> complete($grpc.ServiceCall call, $5.QueueCompleteRequest request);
}
