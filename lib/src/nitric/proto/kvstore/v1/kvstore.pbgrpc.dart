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

import 'kvstore.pb.dart' as $6;

export 'kvstore.pb.dart';

@$pb.GrpcServiceName('nitric.proto.kvstore.v1.KvStore')
class KvStoreClient extends $grpc.Client {
  static final _$getValue =
      $grpc.ClientMethod<$6.KvStoreGetValueRequest, $6.KvStoreGetValueResponse>(
          '/nitric.proto.kvstore.v1.KvStore/GetValue',
          ($6.KvStoreGetValueRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.KvStoreGetValueResponse.fromBuffer(value));
  static final _$setValue =
      $grpc.ClientMethod<$6.KvStoreSetValueRequest, $6.KvStoreSetValueResponse>(
          '/nitric.proto.kvstore.v1.KvStore/SetValue',
          ($6.KvStoreSetValueRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.KvStoreSetValueResponse.fromBuffer(value));
  static final _$deleteKey = $grpc.ClientMethod<$6.KvStoreDeleteKeyRequest,
          $6.KvStoreDeleteKeyResponse>(
      '/nitric.proto.kvstore.v1.KvStore/DeleteKey',
      ($6.KvStoreDeleteKeyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $6.KvStoreDeleteKeyResponse.fromBuffer(value));
  static final _$scanKeys =
      $grpc.ClientMethod<$6.KvStoreScanKeysRequest, $6.KvStoreScanKeysResponse>(
          '/nitric.proto.kvstore.v1.KvStore/ScanKeys',
          ($6.KvStoreScanKeysRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.KvStoreScanKeysResponse.fromBuffer(value));

  KvStoreClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$6.KvStoreGetValueResponse> getValue(
      $6.KvStoreGetValueRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getValue, request, options: options);
  }

  $grpc.ResponseFuture<$6.KvStoreSetValueResponse> setValue(
      $6.KvStoreSetValueRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setValue, request, options: options);
  }

  $grpc.ResponseFuture<$6.KvStoreDeleteKeyResponse> deleteKey(
      $6.KvStoreDeleteKeyRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteKey, request, options: options);
  }

  $grpc.ResponseStream<$6.KvStoreScanKeysResponse> scanKeys(
      $6.KvStoreScanKeysRequest request,
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
    $addMethod($grpc.ServiceMethod<$6.KvStoreGetValueRequest,
            $6.KvStoreGetValueResponse>(
        'GetValue',
        getValue_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.KvStoreGetValueRequest.fromBuffer(value),
        ($6.KvStoreGetValueResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.KvStoreSetValueRequest,
            $6.KvStoreSetValueResponse>(
        'SetValue',
        setValue_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.KvStoreSetValueRequest.fromBuffer(value),
        ($6.KvStoreSetValueResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.KvStoreDeleteKeyRequest,
            $6.KvStoreDeleteKeyResponse>(
        'DeleteKey',
        deleteKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.KvStoreDeleteKeyRequest.fromBuffer(value),
        ($6.KvStoreDeleteKeyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.KvStoreScanKeysRequest,
            $6.KvStoreScanKeysResponse>(
        'ScanKeys',
        scanKeys_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $6.KvStoreScanKeysRequest.fromBuffer(value),
        ($6.KvStoreScanKeysResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.KvStoreGetValueResponse> getValue_Pre($grpc.ServiceCall call,
      $async.Future<$6.KvStoreGetValueRequest> request) async {
    return getValue(call, await request);
  }

  $async.Future<$6.KvStoreSetValueResponse> setValue_Pre($grpc.ServiceCall call,
      $async.Future<$6.KvStoreSetValueRequest> request) async {
    return setValue(call, await request);
  }

  $async.Future<$6.KvStoreDeleteKeyResponse> deleteKey_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.KvStoreDeleteKeyRequest> request) async {
    return deleteKey(call, await request);
  }

  $async.Stream<$6.KvStoreScanKeysResponse> scanKeys_Pre($grpc.ServiceCall call,
      $async.Future<$6.KvStoreScanKeysRequest> request) async* {
    yield* scanKeys(call, await request);
  }

  $async.Future<$6.KvStoreGetValueResponse> getValue(
      $grpc.ServiceCall call, $6.KvStoreGetValueRequest request);
  $async.Future<$6.KvStoreSetValueResponse> setValue(
      $grpc.ServiceCall call, $6.KvStoreSetValueRequest request);
  $async.Future<$6.KvStoreDeleteKeyResponse> deleteKey(
      $grpc.ServiceCall call, $6.KvStoreDeleteKeyRequest request);
  $async.Stream<$6.KvStoreScanKeysResponse> scanKeys(
      $grpc.ServiceCall call, $6.KvStoreScanKeysRequest request);
}
