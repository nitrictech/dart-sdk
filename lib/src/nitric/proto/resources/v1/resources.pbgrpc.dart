//
//  Generated code. Do not modify.
//  source: nitric/proto/resources/v1/resources.proto
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

import 'resources.pb.dart' as $2;

export 'resources.pb.dart';

@$pb.GrpcServiceName('nitric.proto.resources.v1.Resources')
class ResourcesClient extends $grpc.Client {
  static final _$declare =
      $grpc.ClientMethod<$2.ResourceDeclareRequest, $2.ResourceDeclareResponse>(
          '/nitric.proto.resources.v1.Resources/Declare',
          ($2.ResourceDeclareRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $2.ResourceDeclareResponse.fromBuffer(value));

  ResourcesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.ResourceDeclareResponse> declare(
      $2.ResourceDeclareRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$declare, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.resources.v1.Resources')
abstract class ResourcesServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.resources.v1.Resources';

  ResourcesServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.ResourceDeclareRequest,
            $2.ResourceDeclareResponse>(
        'Declare',
        declare_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.ResourceDeclareRequest.fromBuffer(value),
        ($2.ResourceDeclareResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.ResourceDeclareResponse> declare_Pre($grpc.ServiceCall call,
      $async.Future<$2.ResourceDeclareRequest> request) async {
    return declare(call, await request);
  }

  $async.Future<$2.ResourceDeclareResponse> declare(
      $grpc.ServiceCall call, $2.ResourceDeclareRequest request);
}
