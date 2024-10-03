//
//  Generated code. Do not modify.
//  source: nitric/proto/keyvalue/v1/keyvalue.proto
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

import 'keyvalue.pb.dart' as $6;

export 'keyvalue.pb.dart';

@$pb.GrpcServiceName('nitric.proto.KeyValue.v1.KeyValue')
class KeyValueClient extends $grpc.Client {
  static final _$get =
      $grpc.ClientMethod<$6.KeyValueGetRequest, $6.KeyValueGetResponse>(
          '/nitric.proto.KeyValue.v1.KeyValue/Get',
          ($6.KeyValueGetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.KeyValueGetResponse.fromBuffer(value));
  static final _$set =
      $grpc.ClientMethod<$6.KeyValueSetRequest, $6.KeyValueSetResponse>(
          '/nitric.proto.KeyValue.v1.KeyValue/Set',
          ($6.KeyValueSetRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.KeyValueSetResponse.fromBuffer(value));
  static final _$delete =
      $grpc.ClientMethod<$6.KeyValueDeleteRequest, $6.KeyValueDeleteResponse>(
          '/nitric.proto.KeyValue.v1.KeyValue/Delete',
          ($6.KeyValueDeleteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.KeyValueDeleteResponse.fromBuffer(value));

  KeyValueClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$6.KeyValueGetResponse> get(
      $6.KeyValueGetRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$6.KeyValueSetResponse> set(
      $6.KeyValueSetRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$set, request, options: options);
  }

  $grpc.ResponseFuture<$6.KeyValueDeleteResponse> delete(
      $6.KeyValueDeleteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.KeyValue.v1.KeyValue')
abstract class KeyValueServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.KeyValue.v1.KeyValue';

  KeyValueServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$6.KeyValueGetRequest, $6.KeyValueGetResponse>(
            'Get',
            get_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $6.KeyValueGetRequest.fromBuffer(value),
            ($6.KeyValueGetResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$6.KeyValueSetRequest, $6.KeyValueSetResponse>(
            'Set',
            set_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $6.KeyValueSetRequest.fromBuffer(value),
            ($6.KeyValueSetResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.KeyValueDeleteRequest,
            $6.KeyValueDeleteResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.KeyValueDeleteRequest.fromBuffer(value),
        ($6.KeyValueDeleteResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.KeyValueGetResponse> get_Pre($grpc.ServiceCall call,
      $async.Future<$6.KeyValueGetRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$6.KeyValueSetResponse> set_Pre($grpc.ServiceCall call,
      $async.Future<$6.KeyValueSetRequest> request) async {
    return set(call, await request);
  }

  $async.Future<$6.KeyValueDeleteResponse> delete_Pre($grpc.ServiceCall call,
      $async.Future<$6.KeyValueDeleteRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$6.KeyValueGetResponse> get(
      $grpc.ServiceCall call, $6.KeyValueGetRequest request);
  $async.Future<$6.KeyValueSetResponse> set(
      $grpc.ServiceCall call, $6.KeyValueSetRequest request);
  $async.Future<$6.KeyValueDeleteResponse> delete(
      $grpc.ServiceCall call, $6.KeyValueDeleteRequest request);
}
