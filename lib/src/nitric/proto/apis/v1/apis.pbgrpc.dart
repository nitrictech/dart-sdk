//
//  Generated code. Do not modify.
//  source: nitric/proto/apis/v1/apis.proto
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

import 'apis.pb.dart' as $0;

export 'apis.pb.dart';

@$pb.GrpcServiceName('nitric.proto.apis.v1.Api')
class ApiClient extends $grpc.Client {
  static final _$serve = $grpc.ClientMethod<$0.ClientMessage, $0.ServerMessage>(
      '/nitric.proto.apis.v1.Api/Serve',
      ($0.ClientMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ServerMessage.fromBuffer(value));
  static final _$apiDetails =
      $grpc.ClientMethod<$0.ApiDetailsRequest, $0.ApiDetailsResponse>(
          '/nitric.proto.apis.v1.Api/ApiDetails',
          ($0.ApiDetailsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ApiDetailsResponse.fromBuffer(value));

  ApiClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.ServerMessage> serve(
      $async.Stream<$0.ClientMessage> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$serve, request, options: options);
  }

  $grpc.ResponseFuture<$0.ApiDetailsResponse> apiDetails(
      $0.ApiDetailsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$apiDetails, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.apis.v1.Api')
abstract class ApiServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.apis.v1.Api';

  ApiServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ClientMessage, $0.ServerMessage>(
        'Serve',
        serve,
        true,
        true,
        ($core.List<$core.int> value) => $0.ClientMessage.fromBuffer(value),
        ($0.ServerMessage value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ApiDetailsRequest, $0.ApiDetailsResponse>(
        'ApiDetails',
        apiDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ApiDetailsRequest.fromBuffer(value),
        ($0.ApiDetailsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ApiDetailsResponse> apiDetails_Pre($grpc.ServiceCall call,
      $async.Future<$0.ApiDetailsRequest> request) async {
    return apiDetails(call, await request);
  }

  $async.Stream<$0.ServerMessage> serve(
      $grpc.ServiceCall call, $async.Stream<$0.ClientMessage> request);
  $async.Future<$0.ApiDetailsResponse> apiDetails(
      $grpc.ServiceCall call, $0.ApiDetailsRequest request);
}
