//
//  Generated code. Do not modify.
//  source: contracts/proto/storage/v1/storage.proto
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

import 'storage.pb.dart' as $7;

export 'storage.pb.dart';

@$pb.GrpcServiceName('nitric.storage.v1.StorageService')
class StorageServiceClient extends $grpc.Client {
  static final _$read = $grpc.ClientMethod<$7.StorageReadRequest, $7.StorageReadResponse>(
      '/nitric.storage.v1.StorageService/Read',
      ($7.StorageReadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.StorageReadResponse.fromBuffer(value));
  static final _$write = $grpc.ClientMethod<$7.StorageWriteRequest, $7.StorageWriteResponse>(
      '/nitric.storage.v1.StorageService/Write',
      ($7.StorageWriteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.StorageWriteResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$7.StorageDeleteRequest, $7.StorageDeleteResponse>(
      '/nitric.storage.v1.StorageService/Delete',
      ($7.StorageDeleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.StorageDeleteResponse.fromBuffer(value));
  static final _$preSignUrl = $grpc.ClientMethod<$7.StoragePreSignUrlRequest, $7.StoragePreSignUrlResponse>(
      '/nitric.storage.v1.StorageService/PreSignUrl',
      ($7.StoragePreSignUrlRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.StoragePreSignUrlResponse.fromBuffer(value));
  static final _$listFiles = $grpc.ClientMethod<$7.StorageListFilesRequest, $7.StorageListFilesResponse>(
      '/nitric.storage.v1.StorageService/ListFiles',
      ($7.StorageListFilesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.StorageListFilesResponse.fromBuffer(value));
  static final _$exists = $grpc.ClientMethod<$7.StorageExistsRequest, $7.StorageExistsResponse>(
      '/nitric.storage.v1.StorageService/Exists',
      ($7.StorageExistsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.StorageExistsResponse.fromBuffer(value));

  StorageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$7.StorageReadResponse> read($7.StorageReadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$read, request, options: options);
  }

  $grpc.ResponseFuture<$7.StorageWriteResponse> write($7.StorageWriteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$write, request, options: options);
  }

  $grpc.ResponseFuture<$7.StorageDeleteResponse> delete($7.StorageDeleteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }

  $grpc.ResponseFuture<$7.StoragePreSignUrlResponse> preSignUrl($7.StoragePreSignUrlRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$preSignUrl, request, options: options);
  }

  $grpc.ResponseFuture<$7.StorageListFilesResponse> listFiles($7.StorageListFilesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listFiles, request, options: options);
  }

  $grpc.ResponseFuture<$7.StorageExistsResponse> exists($7.StorageExistsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$exists, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.storage.v1.StorageService')
abstract class StorageServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.storage.v1.StorageService';

  StorageServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.StorageReadRequest, $7.StorageReadResponse>(
        'Read',
        read_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.StorageReadRequest.fromBuffer(value),
        ($7.StorageReadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.StorageWriteRequest, $7.StorageWriteResponse>(
        'Write',
        write_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.StorageWriteRequest.fromBuffer(value),
        ($7.StorageWriteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.StorageDeleteRequest, $7.StorageDeleteResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.StorageDeleteRequest.fromBuffer(value),
        ($7.StorageDeleteResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.StoragePreSignUrlRequest, $7.StoragePreSignUrlResponse>(
        'PreSignUrl',
        preSignUrl_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.StoragePreSignUrlRequest.fromBuffer(value),
        ($7.StoragePreSignUrlResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.StorageListFilesRequest, $7.StorageListFilesResponse>(
        'ListFiles',
        listFiles_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.StorageListFilesRequest.fromBuffer(value),
        ($7.StorageListFilesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.StorageExistsRequest, $7.StorageExistsResponse>(
        'Exists',
        exists_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.StorageExistsRequest.fromBuffer(value),
        ($7.StorageExistsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.StorageReadResponse> read_Pre($grpc.ServiceCall call, $async.Future<$7.StorageReadRequest> request) async {
    return read(call, await request);
  }

  $async.Future<$7.StorageWriteResponse> write_Pre($grpc.ServiceCall call, $async.Future<$7.StorageWriteRequest> request) async {
    return write(call, await request);
  }

  $async.Future<$7.StorageDeleteResponse> delete_Pre($grpc.ServiceCall call, $async.Future<$7.StorageDeleteRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$7.StoragePreSignUrlResponse> preSignUrl_Pre($grpc.ServiceCall call, $async.Future<$7.StoragePreSignUrlRequest> request) async {
    return preSignUrl(call, await request);
  }

  $async.Future<$7.StorageListFilesResponse> listFiles_Pre($grpc.ServiceCall call, $async.Future<$7.StorageListFilesRequest> request) async {
    return listFiles(call, await request);
  }

  $async.Future<$7.StorageExistsResponse> exists_Pre($grpc.ServiceCall call, $async.Future<$7.StorageExistsRequest> request) async {
    return exists(call, await request);
  }

  $async.Future<$7.StorageReadResponse> read($grpc.ServiceCall call, $7.StorageReadRequest request);
  $async.Future<$7.StorageWriteResponse> write($grpc.ServiceCall call, $7.StorageWriteRequest request);
  $async.Future<$7.StorageDeleteResponse> delete($grpc.ServiceCall call, $7.StorageDeleteRequest request);
  $async.Future<$7.StoragePreSignUrlResponse> preSignUrl($grpc.ServiceCall call, $7.StoragePreSignUrlRequest request);
  $async.Future<$7.StorageListFilesResponse> listFiles($grpc.ServiceCall call, $7.StorageListFilesRequest request);
  $async.Future<$7.StorageExistsResponse> exists($grpc.ServiceCall call, $7.StorageExistsRequest request);
}
