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

import 'keyvalue.pb.dart' as $5;

export 'keyvalue.pb.dart';

@$pb.GrpcServiceName('nitric.proto.KeyValue.v1.KeyValue')
class KeyValueClient extends $grpc.Client {
  static final _$get = $grpc.ClientMethod<$5.KeyValueGetRequest, $5.KeyValueGetResponse>(
      '/nitric.proto.KeyValue.v1.KeyValue/Get',
      ($5.KeyValueGetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.KeyValueGetResponse.fromBuffer(value));
  static final _$set = $grpc.ClientMethod<$5.KeyValueSetRequest, $5.KeyValueSetResponse>(
      '/nitric.proto.KeyValue.v1.KeyValue/Set',
      ($5.KeyValueSetRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.KeyValueSetResponse.fromBuffer(value));
  static final _$delete = $grpc.ClientMethod<$5.KeyValueDeleteRequest, $5.KeyValueDeleteResponse>(
      '/nitric.proto.KeyValue.v1.KeyValue/Delete',
      ($5.KeyValueDeleteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.KeyValueDeleteResponse.fromBuffer(value));

  KeyValueClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.KeyValueGetResponse> get($5.KeyValueGetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$get, request, options: options);
  }

  $grpc.ResponseFuture<$5.KeyValueSetResponse> set($5.KeyValueSetRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$set, request, options: options);
  }

  $grpc.ResponseFuture<$5.KeyValueDeleteResponse> delete($5.KeyValueDeleteRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$delete, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.KeyValue.v1.KeyValue')
abstract class KeyValueServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.KeyValue.v1.KeyValue';

  KeyValueServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.KeyValueGetRequest, $5.KeyValueGetResponse>(
        'Get',
        get_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.KeyValueGetRequest.fromBuffer(value),
        ($5.KeyValueGetResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.KeyValueSetRequest, $5.KeyValueSetResponse>(
        'Set',
        set_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.KeyValueSetRequest.fromBuffer(value),
        ($5.KeyValueSetResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.KeyValueDeleteRequest, $5.KeyValueDeleteResponse>(
        'Delete',
        delete_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.KeyValueDeleteRequest.fromBuffer(value),
        ($5.KeyValueDeleteResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.KeyValueGetResponse> get_Pre($grpc.ServiceCall call, $async.Future<$5.KeyValueGetRequest> request) async {
    return get(call, await request);
  }

  $async.Future<$5.KeyValueSetResponse> set_Pre($grpc.ServiceCall call, $async.Future<$5.KeyValueSetRequest> request) async {
    return set(call, await request);
  }

  $async.Future<$5.KeyValueDeleteResponse> delete_Pre($grpc.ServiceCall call, $async.Future<$5.KeyValueDeleteRequest> request) async {
    return delete(call, await request);
  }

  $async.Future<$5.KeyValueGetResponse> get($grpc.ServiceCall call, $5.KeyValueGetRequest request);
  $async.Future<$5.KeyValueSetResponse> set($grpc.ServiceCall call, $5.KeyValueSetRequest request);
  $async.Future<$5.KeyValueDeleteResponse> delete($grpc.ServiceCall call, $5.KeyValueDeleteRequest request);
}
