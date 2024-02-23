//
//  Generated code. Do not modify.
//  source: nitric/proto/secrets/v1/secrets.proto
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

import 'secrets.pb.dart' as $8;

export 'secrets.pb.dart';

@$pb.GrpcServiceName('nitric.proto.secrets.v1.SecretManager')
class SecretManagerClient extends $grpc.Client {
  static final _$put = $grpc.ClientMethod<$8.SecretPutRequest, $8.SecretPutResponse>(
      '/nitric.proto.secrets.v1.SecretManager/Put',
      ($8.SecretPutRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.SecretPutResponse.fromBuffer(value));
  static final _$access = $grpc.ClientMethod<$8.SecretAccessRequest, $8.SecretAccessResponse>(
      '/nitric.proto.secrets.v1.SecretManager/Access',
      ($8.SecretAccessRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.SecretAccessResponse.fromBuffer(value));

  SecretManagerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$8.SecretPutResponse> put($8.SecretPutRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$put, request, options: options);
  }

  $grpc.ResponseFuture<$8.SecretAccessResponse> access($8.SecretAccessRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$access, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.secrets.v1.SecretManager')
abstract class SecretManagerServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.secrets.v1.SecretManager';

  SecretManagerServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.SecretPutRequest, $8.SecretPutResponse>(
        'Put',
        put_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.SecretPutRequest.fromBuffer(value),
        ($8.SecretPutResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.SecretAccessRequest, $8.SecretAccessResponse>(
        'Access',
        access_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.SecretAccessRequest.fromBuffer(value),
        ($8.SecretAccessResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.SecretPutResponse> put_Pre($grpc.ServiceCall call, $async.Future<$8.SecretPutRequest> request) async {
    return put(call, await request);
  }

  $async.Future<$8.SecretAccessResponse> access_Pre($grpc.ServiceCall call, $async.Future<$8.SecretAccessRequest> request) async {
    return access(call, await request);
  }

  $async.Future<$8.SecretPutResponse> put($grpc.ServiceCall call, $8.SecretPutRequest request);
  $async.Future<$8.SecretAccessResponse> access($grpc.ServiceCall call, $8.SecretAccessRequest request);
}
