//
//  Generated code. Do not modify.
//  source: contracts/proto/resource/v1/resource.proto
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

import 'resource.pb.dart' as $0;

export 'resource.pb.dart';

@$pb.GrpcServiceName('nitric.resource.v1.ResourceService')
class ResourceServiceClient extends $grpc.Client {
  static final _$declare = $grpc.ClientMethod<$0.ResourceDeclareRequest, $0.ResourceDeclareResponse>(
      '/nitric.resource.v1.ResourceService/Declare',
      ($0.ResourceDeclareRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ResourceDeclareResponse.fromBuffer(value));
  static final _$details = $grpc.ClientMethod<$0.ResourceDetailsRequest, $0.ResourceDetailsResponse>(
      '/nitric.resource.v1.ResourceService/Details',
      ($0.ResourceDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ResourceDetailsResponse.fromBuffer(value));

  ResourceServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.ResourceDeclareResponse> declare($0.ResourceDeclareRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$declare, request, options: options);
  }

  $grpc.ResponseFuture<$0.ResourceDetailsResponse> details($0.ResourceDetailsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$details, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.resource.v1.ResourceService')
abstract class ResourceServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.resource.v1.ResourceService';

  ResourceServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ResourceDeclareRequest, $0.ResourceDeclareResponse>(
        'Declare',
        declare_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ResourceDeclareRequest.fromBuffer(value),
        ($0.ResourceDeclareResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ResourceDetailsRequest, $0.ResourceDetailsResponse>(
        'Details',
        details_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ResourceDetailsRequest.fromBuffer(value),
        ($0.ResourceDetailsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ResourceDeclareResponse> declare_Pre($grpc.ServiceCall call, $async.Future<$0.ResourceDeclareRequest> request) async {
    return declare(call, await request);
  }

  $async.Future<$0.ResourceDetailsResponse> details_Pre($grpc.ServiceCall call, $async.Future<$0.ResourceDetailsRequest> request) async {
    return details(call, await request);
  }

  $async.Future<$0.ResourceDeclareResponse> declare($grpc.ServiceCall call, $0.ResourceDeclareRequest request);
  $async.Future<$0.ResourceDetailsResponse> details($grpc.ServiceCall call, $0.ResourceDetailsRequest request);
}
