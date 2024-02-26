//
//  Generated code. Do not modify.
//  source: nitric/proto/http/v1/http.proto
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

import 'http.pb.dart' as $4;

export 'http.pb.dart';

@$pb.GrpcServiceName('nitric.proto.http.v1.Http')
class HttpClient extends $grpc.Client {
  static final _$proxy = $grpc.ClientMethod<$4.ClientMessage, $4.ServerMessage>(
      '/nitric.proto.http.v1.Http/Proxy',
      ($4.ClientMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.ServerMessage.fromBuffer(value));

  HttpClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$4.ServerMessage> proxy(
      $async.Stream<$4.ClientMessage> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$proxy, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.http.v1.Http')
abstract class HttpServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.http.v1.Http';

  HttpServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.ClientMessage, $4.ServerMessage>(
        'Proxy',
        proxy,
        true,
        true,
        ($core.List<$core.int> value) => $4.ClientMessage.fromBuffer(value),
        ($4.ServerMessage value) => value.writeToBuffer()));
  }

  $async.Stream<$4.ServerMessage> proxy(
      $grpc.ServiceCall call, $async.Stream<$4.ClientMessage> request);
}
