//
//  Generated code. Do not modify.
//  source: contracts/proto/secret/v1/secret.proto
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

import 'secret.pb.dart' as $6;

export 'secret.pb.dart';

@$pb.GrpcServiceName('nitric.secret.v1.SecretService')
class SecretServiceClient extends $grpc.Client {
  static final _$put = $grpc.ClientMethod<$6.SecretPutRequest, $6.SecretPutResponse>(
      '/nitric.secret.v1.SecretService/Put',
      ($6.SecretPutRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.SecretPutResponse.fromBuffer(value));
  static final _$access = $grpc.ClientMethod<$6.SecretAccessRequest, $6.SecretAccessResponse>(
      '/nitric.secret.v1.SecretService/Access',
      ($6.SecretAccessRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.SecretAccessResponse.fromBuffer(value));

  SecretServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$6.SecretPutResponse> put($6.SecretPutRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$put, request, options: options);
  }

  $grpc.ResponseFuture<$6.SecretAccessResponse> access($6.SecretAccessRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$access, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.secret.v1.SecretService')
abstract class SecretServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.secret.v1.SecretService';

  SecretServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.SecretPutRequest, $6.SecretPutResponse>(
        'Put',
        put_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.SecretPutRequest.fromBuffer(value),
        ($6.SecretPutResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.SecretAccessRequest, $6.SecretAccessResponse>(
        'Access',
        access_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.SecretAccessRequest.fromBuffer(value),
        ($6.SecretAccessResponse value) => value.writeToBuffer()));
  }

  $async.Future<$6.SecretPutResponse> put_Pre($grpc.ServiceCall call, $async.Future<$6.SecretPutRequest> request) async {
    return put(call, await request);
  }

  $async.Future<$6.SecretAccessResponse> access_Pre($grpc.ServiceCall call, $async.Future<$6.SecretAccessRequest> request) async {
    return access(call, await request);
  }

  $async.Future<$6.SecretPutResponse> put($grpc.ServiceCall call, $6.SecretPutRequest request);
  $async.Future<$6.SecretAccessResponse> access($grpc.ServiceCall call, $6.SecretAccessRequest request);
}
