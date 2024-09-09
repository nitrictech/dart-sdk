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

import 'storage.pb.dart' as $3;

export 'storage.pb.dart';

@$pb.GrpcServiceName('nitric.proto.storage.v1.Storage')
class StorageClient extends $grpc.Client {
  static final _$read =
      $grpc.ClientMethod<$3.StorageReadRequest, $3.StorageReadResponse>(
          '/nitric.proto.storage.v1.Storage/Read',
          ($3.StorageReadRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.StorageReadResponse.fromBuffer(value));
  static final _$write =
      $grpc.ClientMethod<$3.StorageWriteRequest, $3.StorageWriteResponse>(
          '/nitric.proto.storage.v1.Storage/Write',
          ($3.StorageWriteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.StorageWriteResponse.fromBuffer(value));
  static final _$delete =
      $grpc.ClientMethod<$3.StorageDeleteRequest, $3.StorageDeleteResponse>(
          '/nitric.proto.storage.v1.Storage/Delete',
          ($3.StorageDeleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.StorageDeleteResponse.fromBuffer(value));
  static final _$preSignUrl = $grpc.ClientMethod<$3.StoragePreSignUrlRequest,
          $3.StoragePreSignUrlResponse>(
      '/nitric.proto.storage.v1.Storage/PreSignUrl',
      ($3.StoragePreSignUrlRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.StoragePreSignUrlResponse.fromBuffer(value));
  static final _$listBlobs = $grpc.ClientMethod<$3.StorageListBlobsRequest,
          $3.StorageListBlobsResponse>(
      '/nitric.proto.storage.v1.Storage/ListBlobs',
      ($3.StorageListBlobsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $3.StorageListBlobsResponse.fromBuffer(value));
  static final _$exists =
      $grpc.ClientMethod<$3.StorageExistsRequest, $3.StorageExistsResponse>(
          '/nitric.proto.storage.v1.Storage/Exists',
          ($3.StorageExistsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.StorageExistsResponse.fromBuffer(value));

  StorageClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.StorageReadResponse> read(
      $3.StorageReadRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$read, request, options: options);
  }

  $grpc.ResponseFuture<$3.StorageWriteResponse> write(
      $3.StorageWriteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$write, request, options: options);
  }

  $grpc.ResponseFuture<$3.StorageDeleteResponse> delete(
      $3.StorageDeleteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$3.StoragePreSignUrlResponse> preSignUrl(
      $3.StoragePreSignUrlRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$preSignUrl, request, options: options);
  }

  $grpc.ResponseFuture<$3.StorageListBlobsResponse> listBlobs(
      $3.StorageListBlobsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listBlobs, request, options: options);
  }

  $grpc.ResponseFuture<$3.StorageExistsResponse> exists(
      $3.StorageExistsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$exists, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.storage.v1.Storage')
abstract class StorageServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.storage.v1.Storage';

  StorageServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$3.StorageReadRequest, $3.StorageReadResponse>(
            'Read',
            read_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.StorageReadRequest.fromBuffer(value),
            ($3.StorageReadResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.StorageWriteRequest, $3.StorageWriteResponse>(
            'Write',
            write_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.StorageWriteRequest.fromBuffer(value),
            ($3.StorageWriteResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.StorageDeleteRequest, $3.StorageDeleteResponse>(
            'Delete',
            delete_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.StorageDeleteRequest.fromBuffer(value),
            ($3.StorageDeleteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.StoragePreSignUrlRequest,
            $3.StoragePreSignUrlResponse>(
        'PreSignUrl',
        preSignUrl_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.StoragePreSignUrlRequest.fromBuffer(value),
        ($3.StoragePreSignUrlResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.StorageListBlobsRequest,
            $3.StorageListBlobsResponse>(
        'ListBlobs',
        listBlobs_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $3.StorageListBlobsRequest.fromBuffer(value),
        ($3.StorageListBlobsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$3.StorageExistsRequest, $3.StorageExistsResponse>(
            'Exists',
            exists_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $3.StorageExistsRequest.fromBuffer(value),
            ($3.StorageExistsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.StorageReadResponse> read_Pre($grpc.ServiceCall call,
      $async.Future<$3.StorageReadRequest> request) async {
    return read(call, await request);
  }

  $async.Future<$3.StorageWriteResponse> write_Pre($grpc.ServiceCall call,
      $async.Future<$3.StorageWriteRequest> request) async {
    return write(call, await request);
  }

  $async.Future<$3.StorageDeleteResponse> delete_Pre($grpc.ServiceCall call,
      $async.Future<$3.StorageDeleteRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$3.StoragePreSignUrlResponse> preSignUrl_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.StoragePreSignUrlRequest> request) async {
    return preSignUrl(call, await request);
  }

  $async.Future<$3.StorageListBlobsResponse> listBlobs_Pre(
      $grpc.ServiceCall call,
      $async.Future<$3.StorageListBlobsRequest> request) async {
    return listBlobs(call, await request);
  }

  $async.Future<$3.StorageExistsResponse> exists_Pre($grpc.ServiceCall call,
      $async.Future<$3.StorageExistsRequest> request) async {
    return exists(call, await request);
  }

  $async.Future<$3.StorageReadResponse> read(
      $grpc.ServiceCall call, $3.StorageReadRequest request);
  $async.Future<$3.StorageWriteResponse> write(
      $grpc.ServiceCall call, $3.StorageWriteRequest request);
  $async.Future<$3.StorageDeleteResponse> delete(
      $grpc.ServiceCall call, $3.StorageDeleteRequest request);
  $async.Future<$3.StoragePreSignUrlResponse> preSignUrl(
      $grpc.ServiceCall call, $3.StoragePreSignUrlRequest request);
  $async.Future<$3.StorageListBlobsResponse> listBlobs(
      $grpc.ServiceCall call, $3.StorageListBlobsRequest request);
  $async.Future<$3.StorageExistsResponse> exists(
      $grpc.ServiceCall call, $3.StorageExistsRequest request);
}

@$pb.GrpcServiceName('nitric.proto.storage.v1.StorageListener')
class StorageListenerClient extends $grpc.Client {
  static final _$listen =
      $grpc.ClientMethod<$3.ClientMessage, $3.ServerMessage>(
          '/nitric.proto.storage.v1.StorageListener/Listen',
          ($3.ClientMessage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.ServerMessage.fromBuffer(value));

  StorageListenerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$3.ServerMessage> listen(
      $async.Stream<$3.ClientMessage> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$listen, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.storage.v1.StorageListener')
abstract class StorageListenerServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.storage.v1.StorageListener';

  StorageListenerServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.ClientMessage, $3.ServerMessage>(
        'Listen',
        listen,
        true,
        true,
        ($core.List<$core.int> value) => $3.ClientMessage.fromBuffer(value),
        ($3.ServerMessage value) => value.writeToBuffer()));
  }

  $async.Stream<$3.ServerMessage> listen(
      $grpc.ServiceCall call, $async.Stream<$3.ClientMessage> request);
}
