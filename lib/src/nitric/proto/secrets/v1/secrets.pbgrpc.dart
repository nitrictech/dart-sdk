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

import 'secrets.pb.dart' as $9;

export 'secrets.pb.dart';

@$pb.GrpcServiceName('nitric.proto.secrets.v1.SecretManager')
class SecretManagerClient extends $grpc.Client {
  static final _$put =
      $grpc.ClientMethod<$9.SecretPutRequest, $9.SecretPutResponse>(
          '/nitric.proto.secrets.v1.SecretManager/Put',
          ($9.SecretPutRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.SecretPutResponse.fromBuffer(value));
  static final _$access =
      $grpc.ClientMethod<$9.SecretAccessRequest, $9.SecretAccessResponse>(
          '/nitric.proto.secrets.v1.SecretManager/Access',
          ($9.SecretAccessRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $9.SecretAccessResponse.fromBuffer(value));

  SecretManagerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$9.SecretPutResponse> put($9.SecretPutRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$put, request, options: options);
  }

  $grpc.ResponseFuture<$9.SecretAccessResponse> access(
      $9.SecretAccessRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$access, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.secrets.v1.SecretManager')
abstract class SecretManagerServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.secrets.v1.SecretManager';

  SecretManagerServiceBase() {
    $addMethod($grpc.ServiceMethod<$9.SecretPutRequest, $9.SecretPutResponse>(
        'Put',
        put_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.SecretPutRequest.fromBuffer(value),
        ($9.SecretPutResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$9.SecretAccessRequest, $9.SecretAccessResponse>(
            'Access',
            access_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $9.SecretAccessRequest.fromBuffer(value),
            ($9.SecretAccessResponse value) => value.writeToBuffer()));
  }

  $async.Future<$9.SecretPutResponse> put_Pre($grpc.ServiceCall call,
      $async.Future<$9.SecretPutRequest> request) async {
    return put(call, await request);
  }

  $async.Future<$9.SecretAccessResponse> access_Pre($grpc.ServiceCall call,
      $async.Future<$9.SecretAccessRequest> request) async {
    return access(call, await request);
  }

  $async.Future<$9.SecretPutResponse> put(
      $grpc.ServiceCall call, $9.SecretPutRequest request);
  $async.Future<$9.SecretAccessResponse> access(
      $grpc.ServiceCall call, $9.SecretAccessRequest request);
}
