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

import 'secrets.pb.dart' as $10;

export 'secrets.pb.dart';

@$pb.GrpcServiceName('nitric.proto.secrets.v1.SecretManager')
class SecretManagerClient extends $grpc.Client {
  static final _$put =
      $grpc.ClientMethod<$10.SecretPutRequest, $10.SecretPutResponse>(
          '/nitric.proto.secrets.v1.SecretManager/Put',
          ($10.SecretPutRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $10.SecretPutResponse.fromBuffer(value));
  static final _$access =
      $grpc.ClientMethod<$10.SecretAccessRequest, $10.SecretAccessResponse>(
          '/nitric.proto.secrets.v1.SecretManager/Access',
          ($10.SecretAccessRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $10.SecretAccessResponse.fromBuffer(value));

  SecretManagerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$10.SecretPutResponse> put($10.SecretPutRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$put, request, options: options);
  }

  $grpc.ResponseFuture<$10.SecretAccessResponse> access(
      $10.SecretAccessRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$access, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.secrets.v1.SecretManager')
abstract class SecretManagerServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.secrets.v1.SecretManager';

  SecretManagerServiceBase() {
    $addMethod($grpc.ServiceMethod<$10.SecretPutRequest, $10.SecretPutResponse>(
        'Put',
        put_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.SecretPutRequest.fromBuffer(value),
        ($10.SecretPutResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$10.SecretAccessRequest, $10.SecretAccessResponse>(
            'Access',
            access_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $10.SecretAccessRequest.fromBuffer(value),
            ($10.SecretAccessResponse value) => value.writeToBuffer()));
  }

  $async.Future<$10.SecretPutResponse> put_Pre($grpc.ServiceCall call,
      $async.Future<$10.SecretPutRequest> request) async {
    return put(call, await request);
  }

  $async.Future<$10.SecretAccessResponse> access_Pre($grpc.ServiceCall call,
      $async.Future<$10.SecretAccessRequest> request) async {
    return access(call, await request);
  }

  $async.Future<$10.SecretPutResponse> put(
      $grpc.ServiceCall call, $10.SecretPutRequest request);
  $async.Future<$10.SecretAccessResponse> access(
      $grpc.ServiceCall call, $10.SecretAccessRequest request);
}
