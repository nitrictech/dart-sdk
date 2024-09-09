//
//  Generated code. Do not modify.
//  source: nitric/proto/kvstore/v1/kvstore.proto
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

import 'kvstore.pb.dart' as $7;

export 'kvstore.pb.dart';

@$pb.GrpcServiceName('nitric.proto.kvstore.v1.KvStore')
class KvStoreClient extends $grpc.Client {
  static final _$getValue =
      $grpc.ClientMethod<$7.KvStoreGetValueRequest, $7.KvStoreGetValueResponse>(
          '/nitric.proto.kvstore.v1.KvStore/GetValue',
          ($7.KvStoreGetValueRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.KvStoreGetValueResponse.fromBuffer(value));
  static final _$setValue =
      $grpc.ClientMethod<$7.KvStoreSetValueRequest, $7.KvStoreSetValueResponse>(
          '/nitric.proto.kvstore.v1.KvStore/SetValue',
          ($7.KvStoreSetValueRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.KvStoreSetValueResponse.fromBuffer(value));
  static final _$deleteKey = $grpc.ClientMethod<$7.KvStoreDeleteKeyRequest,
          $7.KvStoreDeleteKeyResponse>(
      '/nitric.proto.kvstore.v1.KvStore/DeleteKey',
      ($7.KvStoreDeleteKeyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $7.KvStoreDeleteKeyResponse.fromBuffer(value));
  static final _$scanKeys =
      $grpc.ClientMethod<$7.KvStoreScanKeysRequest, $7.KvStoreScanKeysResponse>(
          '/nitric.proto.kvstore.v1.KvStore/ScanKeys',
          ($7.KvStoreScanKeysRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $7.KvStoreScanKeysResponse.fromBuffer(value));

  KvStoreClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$7.KvStoreGetValueResponse> getValue(
      $7.KvStoreGetValueRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getValue, request, options: options);
  }

  $grpc.ResponseFuture<$7.KvStoreSetValueResponse> setValue(
      $7.KvStoreSetValueRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setValue, request, options: options);
  }

  $grpc.ResponseFuture<$7.KvStoreDeleteKeyResponse> deleteKey(
      $7.KvStoreDeleteKeyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteKey, request, options: options);
  }

  $grpc.ResponseStream<$7.KvStoreScanKeysResponse> scanKeys(
      $7.KvStoreScanKeysRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$scanKeys, $async.Stream.fromIterable([request]),
        options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.kvstore.v1.KvStore')
abstract class KvStoreServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.kvstore.v1.KvStore';

  KvStoreServiceBase() {
    $addMethod($grpc.ServiceMethod<$7.KvStoreGetValueRequest,
            $7.KvStoreGetValueResponse>(
        'GetValue',
        getValue_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.KvStoreGetValueRequest.fromBuffer(value),
        ($7.KvStoreGetValueResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.KvStoreSetValueRequest,
            $7.KvStoreSetValueResponse>(
        'SetValue',
        setValue_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.KvStoreSetValueRequest.fromBuffer(value),
        ($7.KvStoreSetValueResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.KvStoreDeleteKeyRequest,
            $7.KvStoreDeleteKeyResponse>(
        'DeleteKey',
        deleteKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $7.KvStoreDeleteKeyRequest.fromBuffer(value),
        ($7.KvStoreDeleteKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.KvStoreScanKeysRequest,
            $7.KvStoreScanKeysResponse>(
        'ScanKeys',
        scanKeys_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $7.KvStoreScanKeysRequest.fromBuffer(value),
        ($7.KvStoreScanKeysResponse value) => value.writeToBuffer()));
  }

  $async.Future<$7.KvStoreGetValueResponse> getValue_Pre($grpc.ServiceCall call,
      $async.Future<$7.KvStoreGetValueRequest> request) async {
    return getValue(call, await request);
  }

  $async.Future<$7.KvStoreSetValueResponse> setValue_Pre($grpc.ServiceCall call,
      $async.Future<$7.KvStoreSetValueRequest> request) async {
    return setValue(call, await request);
  }

  $async.Future<$7.KvStoreDeleteKeyResponse> deleteKey_Pre(
      $grpc.ServiceCall call,
      $async.Future<$7.KvStoreDeleteKeyRequest> request) async {
    return deleteKey(call, await request);
  }

  $async.Stream<$7.KvStoreScanKeysResponse> scanKeys_Pre($grpc.ServiceCall call,
      $async.Future<$7.KvStoreScanKeysRequest> request) async* {
    yield* scanKeys(call, await request);
  }

  $async.Future<$7.KvStoreGetValueResponse> getValue(
      $grpc.ServiceCall call, $7.KvStoreGetValueRequest request);
  $async.Future<$7.KvStoreSetValueResponse> setValue(
      $grpc.ServiceCall call, $7.KvStoreSetValueRequest request);
  $async.Future<$7.KvStoreDeleteKeyResponse> deleteKey(
      $grpc.ServiceCall call, $7.KvStoreDeleteKeyRequest request);
  $async.Stream<$7.KvStoreScanKeysResponse> scanKeys(
      $grpc.ServiceCall call, $7.KvStoreScanKeysRequest request);
}
