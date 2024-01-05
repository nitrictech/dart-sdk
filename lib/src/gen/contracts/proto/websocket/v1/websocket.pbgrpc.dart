//
//  Generated code. Do not modify.
//  source: contracts/proto/websocket/v1/websocket.proto
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

import 'websocket.pb.dart' as $8;

export 'websocket.pb.dart';

@$pb.GrpcServiceName('nitric.websocket.v1.WebsocketService')
class WebsocketServiceClient extends $grpc.Client {
  static final _$send = $grpc.ClientMethod<$8.WebsocketSendRequest, $8.WebsocketSendResponse>(
      '/nitric.websocket.v1.WebsocketService/Send',
      ($8.WebsocketSendRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.WebsocketSendResponse.fromBuffer(value));
  static final _$close = $grpc.ClientMethod<$8.WebsocketCloseRequest, $8.WebsocketCloseResponse>(
      '/nitric.websocket.v1.WebsocketService/Close',
      ($8.WebsocketCloseRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.WebsocketCloseResponse.fromBuffer(value));

  WebsocketServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$8.WebsocketSendResponse> send($8.WebsocketSendRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$send, request, options: options);
  }

  $grpc.ResponseFuture<$8.WebsocketCloseResponse> close($8.WebsocketCloseRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$close, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.websocket.v1.WebsocketService')
abstract class WebsocketServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.websocket.v1.WebsocketService';

  WebsocketServiceBase() {
    $addMethod($grpc.ServiceMethod<$8.WebsocketSendRequest, $8.WebsocketSendResponse>(
        'Send',
        send_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.WebsocketSendRequest.fromBuffer(value),
        ($8.WebsocketSendResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.WebsocketCloseRequest, $8.WebsocketCloseResponse>(
        'Close',
        close_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.WebsocketCloseRequest.fromBuffer(value),
        ($8.WebsocketCloseResponse value) => value.writeToBuffer()));
  }

  $async.Future<$8.WebsocketSendResponse> send_Pre($grpc.ServiceCall call, $async.Future<$8.WebsocketSendRequest> request) async {
    return send(call, await request);
  }

  $async.Future<$8.WebsocketCloseResponse> close_Pre($grpc.ServiceCall call, $async.Future<$8.WebsocketCloseRequest> request) async {
    return close(call, await request);
  }

  $async.Future<$8.WebsocketSendResponse> send($grpc.ServiceCall call, $8.WebsocketSendRequest request);
  $async.Future<$8.WebsocketCloseResponse> close($grpc.ServiceCall call, $8.WebsocketCloseRequest request);
}
