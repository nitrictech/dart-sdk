//
//  Generated code. Do not modify.
//  source: contracts/proto/document/v1/document.proto
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

import 'document.pb.dart' as $3;

export 'document.pb.dart';

@$pb.GrpcServiceName('nitric.document.v1.DocumentService')
class DocumentServiceClient extends $grpc.Client {
  static final _$get = $grpc.ClientMethod<$3.DocumentGetRequest, $3.DocumentGetResponse>(
      '/nitric.document.v1.DocumentService/Get',
      ($3.DocumentGetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DocumentGetResponse.fromBuffer(value));
  static final _$set = $grpc.ClientMethod<$3.DocumentSetRequest, $3.DocumentSetResponse>(
      '/nitric.document.v1.DocumentService/Set',
      ($3.DocumentSetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DocumentSetResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$3.DocumentDeleteRequest, $3.DocumentDeleteResponse>(
      '/nitric.document.v1.DocumentService/Delete',
      ($3.DocumentDeleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DocumentDeleteResponse.fromBuffer(value));
  static final _$query = $grpc.ClientMethod<$3.DocumentQueryRequest, $3.DocumentQueryResponse>(
      '/nitric.document.v1.DocumentService/Query',
      ($3.DocumentQueryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DocumentQueryResponse.fromBuffer(value));
  static final _$queryStream = $grpc.ClientMethod<$3.DocumentQueryStreamRequest, $3.DocumentQueryStreamResponse>(
      '/nitric.document.v1.DocumentService/QueryStream',
      ($3.DocumentQueryStreamRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.DocumentQueryStreamResponse.fromBuffer(value));

  DocumentServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.DocumentGetResponse> get($3.DocumentGetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$3.DocumentSetResponse> set($3.DocumentSetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$set, request, options: options);
  }

  $grpc.ResponseFuture<$3.DocumentDeleteResponse> delete($3.DocumentDeleteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$3.DocumentQueryResponse> query($3.DocumentQueryRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$query, request, options: options);
  }

  $grpc.ResponseStream<$3.DocumentQueryStreamResponse> queryStream($3.DocumentQueryStreamRequest request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$queryStream, $async.Stream.fromIterable([request]), options: options);
  }
}

@$pb.GrpcServiceName('nitric.document.v1.DocumentService')
abstract class DocumentServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.document.v1.DocumentService';

  DocumentServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.DocumentGetRequest, $3.DocumentGetResponse>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DocumentGetRequest.fromBuffer(value),
        ($3.DocumentGetResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DocumentSetRequest, $3.DocumentSetResponse>(
        'Set',
        set_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DocumentSetRequest.fromBuffer(value),
        ($3.DocumentSetResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DocumentDeleteRequest, $3.DocumentDeleteResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DocumentDeleteRequest.fromBuffer(value),
        ($3.DocumentDeleteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DocumentQueryRequest, $3.DocumentQueryResponse>(
        'Query',
        query_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DocumentQueryRequest.fromBuffer(value),
        ($3.DocumentQueryResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DocumentQueryStreamRequest, $3.DocumentQueryStreamResponse>(
        'QueryStream',
        queryStream_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $3.DocumentQueryStreamRequest.fromBuffer(value),
        ($3.DocumentQueryStreamResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.DocumentGetResponse> get_Pre($grpc.ServiceCall call, $async.Future<$3.DocumentGetRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$3.DocumentSetResponse> set_Pre($grpc.ServiceCall call, $async.Future<$3.DocumentSetRequest> request) async {
    return set(call, await request);
  }

  $async.Future<$3.DocumentDeleteResponse> delete_Pre($grpc.ServiceCall call, $async.Future<$3.DocumentDeleteRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$3.DocumentQueryResponse> query_Pre($grpc.ServiceCall call, $async.Future<$3.DocumentQueryRequest> request) async {
    return query(call, await request);
  }

  $async.Stream<$3.DocumentQueryStreamResponse> queryStream_Pre($grpc.ServiceCall call, $async.Future<$3.DocumentQueryStreamRequest> request) async* {
    yield* queryStream(call, await request);
  }

  $async.Future<$3.DocumentGetResponse> get($grpc.ServiceCall call, $3.DocumentGetRequest request);
  $async.Future<$3.DocumentSetResponse> set($grpc.ServiceCall call, $3.DocumentSetRequest request);
  $async.Future<$3.DocumentDeleteResponse> delete($grpc.ServiceCall call, $3.DocumentDeleteRequest request);
  $async.Future<$3.DocumentQueryResponse> query($grpc.ServiceCall call, $3.DocumentQueryRequest request);
  $async.Stream<$3.DocumentQueryStreamResponse> queryStream($grpc.ServiceCall call, $3.DocumentQueryStreamRequest request);
}
