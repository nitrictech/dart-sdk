//
//  Generated code. Do not modify.
//  source: nitric/proto/storage/v1/storage.proto
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

import 'storage.pb.dart' as $2;

export 'storage.pb.dart';

@$pb.GrpcServiceName('nitric.proto.storage.v1.Storage')
class StorageClient extends $grpc.Client {
  static final _$read = $grpc.ClientMethod<$2.StorageReadRequest, $2.StorageReadResponse>(
      '/nitric.proto.storage.v1.Storage/Read',
      ($2.StorageReadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.StorageReadResponse.fromBuffer(value));
  static final _$write = $grpc.ClientMethod<$2.StorageWriteRequest, $2.StorageWriteResponse>(
      '/nitric.proto.storage.v1.Storage/Write',
      ($2.StorageWriteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.StorageWriteResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$2.StorageDeleteRequest, $2.StorageDeleteResponse>(
      '/nitric.proto.storage.v1.Storage/Delete',
      ($2.StorageDeleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.StorageDeleteResponse.fromBuffer(value));
  static final _$preSignUrl = $grpc.ClientMethod<$2.StoragePreSignUrlRequest, $2.StoragePreSignUrlResponse>(
      '/nitric.proto.storage.v1.Storage/PreSignUrl',
      ($2.StoragePreSignUrlRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.StoragePreSignUrlResponse.fromBuffer(value));
  static final _$listBlobs = $grpc.ClientMethod<$2.StorageListBlobsRequest, $2.StorageListBlobsResponse>(
      '/nitric.proto.storage.v1.Storage/ListBlobs',
      ($2.StorageListBlobsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.StorageListBlobsResponse.fromBuffer(value));
  static final _$exists = $grpc.ClientMethod<$2.StorageExistsRequest, $2.StorageExistsResponse>(
      '/nitric.proto.storage.v1.Storage/Exists',
      ($2.StorageExistsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.StorageExistsResponse.fromBuffer(value));

  StorageClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.StorageReadResponse> read($2.StorageReadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$read, request, options: options);
  }

  $grpc.ResponseFuture<$2.StorageWriteResponse> write($2.StorageWriteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$write, request, options: options);
  }

  $grpc.ResponseFuture<$2.StorageDeleteResponse> delete($2.StorageDeleteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$2.StoragePreSignUrlResponse> preSignUrl($2.StoragePreSignUrlRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$preSignUrl, request, options: options);
  }

  $grpc.ResponseFuture<$2.StorageListBlobsResponse> listBlobs($2.StorageListBlobsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listBlobs, request, options: options);
  }

  $grpc.ResponseFuture<$2.StorageExistsResponse> exists($2.StorageExistsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$exists, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.storage.v1.Storage')
abstract class StorageServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.storage.v1.Storage';

  StorageServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.StorageReadRequest, $2.StorageReadResponse>(
        'Read',
        read_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StorageReadRequest.fromBuffer(value),
        ($2.StorageReadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StorageWriteRequest, $2.StorageWriteResponse>(
        'Write',
        write_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StorageWriteRequest.fromBuffer(value),
        ($2.StorageWriteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StorageDeleteRequest, $2.StorageDeleteResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StorageDeleteRequest.fromBuffer(value),
        ($2.StorageDeleteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StoragePreSignUrlRequest, $2.StoragePreSignUrlResponse>(
        'PreSignUrl',
        preSignUrl_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StoragePreSignUrlRequest.fromBuffer(value),
        ($2.StoragePreSignUrlResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StorageListBlobsRequest, $2.StorageListBlobsResponse>(
        'ListBlobs',
        listBlobs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StorageListBlobsRequest.fromBuffer(value),
        ($2.StorageListBlobsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.StorageExistsRequest, $2.StorageExistsResponse>(
        'Exists',
        exists_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.StorageExistsRequest.fromBuffer(value),
        ($2.StorageExistsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.StorageReadResponse> read_Pre($grpc.ServiceCall call, $async.Future<$2.StorageReadRequest> request) async {
    return read(call, await request);
  }

  $async.Future<$2.StorageWriteResponse> write_Pre($grpc.ServiceCall call, $async.Future<$2.StorageWriteRequest> request) async {
    return write(call, await request);
  }

  $async.Future<$2.StorageDeleteResponse> delete_Pre($grpc.ServiceCall call, $async.Future<$2.StorageDeleteRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$2.StoragePreSignUrlResponse> preSignUrl_Pre($grpc.ServiceCall call, $async.Future<$2.StoragePreSignUrlRequest> request) async {
    return preSignUrl(call, await request);
  }

  $async.Future<$2.StorageListBlobsResponse> listBlobs_Pre($grpc.ServiceCall call, $async.Future<$2.StorageListBlobsRequest> request) async {
    return listBlobs(call, await request);
  }

  $async.Future<$2.StorageExistsResponse> exists_Pre($grpc.ServiceCall call, $async.Future<$2.StorageExistsRequest> request) async {
    return exists(call, await request);
  }

  $async.Future<$2.StorageReadResponse> read($grpc.ServiceCall call, $2.StorageReadRequest request);
  $async.Future<$2.StorageWriteResponse> write($grpc.ServiceCall call, $2.StorageWriteRequest request);
  $async.Future<$2.StorageDeleteResponse> delete($grpc.ServiceCall call, $2.StorageDeleteRequest request);
  $async.Future<$2.StoragePreSignUrlResponse> preSignUrl($grpc.ServiceCall call, $2.StoragePreSignUrlRequest request);
  $async.Future<$2.StorageListBlobsResponse> listBlobs($grpc.ServiceCall call, $2.StorageListBlobsRequest request);
  $async.Future<$2.StorageExistsResponse> exists($grpc.ServiceCall call, $2.StorageExistsRequest request);
}
@$pb.GrpcServiceName('nitric.proto.storage.v1.StorageListener')
class StorageListenerClient extends $grpc.Client {
  static final _$listen = $grpc.ClientMethod<$2.ClientMessage, $2.ServerMessage>(
      '/nitric.proto.storage.v1.StorageListener/Listen',
      ($2.ClientMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.ServerMessage.fromBuffer(value));

  StorageListenerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$2.ServerMessage> listen($async.Stream<$2.ClientMessage> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$listen, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.storage.v1.StorageListener')
abstract class StorageListenerServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.storage.v1.StorageListener';

  StorageListenerServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.ClientMessage, $2.ServerMessage>(
        'Listen',
        listen,
        true,
        true,
        ($core.List<$core.int> value) => $2.ClientMessage.fromBuffer(value),
        ($2.ServerMessage value) => value.writeToBuffer()));
  }

  $async.Stream<$2.ServerMessage> listen($grpc.ServiceCall call, $async.Stream<$2.ClientMessage> request);
}
