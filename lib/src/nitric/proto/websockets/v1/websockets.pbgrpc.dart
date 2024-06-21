//
//  Generated code. Do not modify.
//  source: nitric/proto/websockets/v1/websockets.proto
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

import 'websockets.pb.dart' as $12;

export 'websockets.pb.dart';

@$pb.GrpcServiceName('nitric.proto.websockets.v1.Websocket')
class WebsocketClient extends $grpc.Client {
  static final _$sendMessage =
      $grpc.ClientMethod<$12.WebsocketSendRequest, $12.WebsocketSendResponse>(
          '/nitric.proto.websockets.v1.Websocket/SendMessage',
          ($12.WebsocketSendRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $12.WebsocketSendResponse.fromBuffer(value));
  static final _$closeConnection = $grpc.ClientMethod<
          $12.WebsocketCloseConnectionRequest,
          $12.WebsocketCloseConnectionResponse>(
      '/nitric.proto.websockets.v1.Websocket/CloseConnection',
      ($12.WebsocketCloseConnectionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $12.WebsocketCloseConnectionResponse.fromBuffer(value));
  static final _$socketDetails = $grpc.ClientMethod<$12.WebsocketDetailsRequest,
          $12.WebsocketDetailsResponse>(
      '/nitric.proto.websockets.v1.Websocket/SocketDetails',
      ($12.WebsocketDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $12.WebsocketDetailsResponse.fromBuffer(value));

  WebsocketClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$12.WebsocketSendResponse> sendMessage(
      $12.WebsocketSendRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendMessage, request, options: options);
  }

  $grpc.ResponseFuture<$12.WebsocketCloseConnectionResponse> closeConnection(
      $12.WebsocketCloseConnectionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$closeConnection, request, options: options);
  }

  $grpc.ResponseFuture<$12.WebsocketDetailsResponse> socketDetails(
      $12.WebsocketDetailsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$socketDetails, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.websockets.v1.Websocket')
abstract class WebsocketServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.websockets.v1.Websocket';

  WebsocketServiceBase() {
    $addMethod($grpc.ServiceMethod<$12.WebsocketSendRequest,
            $12.WebsocketSendResponse>(
        'SendMessage',
        sendMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $12.WebsocketSendRequest.fromBuffer(value),
        ($12.WebsocketSendResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.WebsocketCloseConnectionRequest,
            $12.WebsocketCloseConnectionResponse>(
        'CloseConnection',
        closeConnection_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $12.WebsocketCloseConnectionRequest.fromBuffer(value),
        ($12.WebsocketCloseConnectionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$12.WebsocketDetailsRequest,
            $12.WebsocketDetailsResponse>(
        'SocketDetails',
        socketDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $12.WebsocketDetailsRequest.fromBuffer(value),
        ($12.WebsocketDetailsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$12.WebsocketSendResponse> sendMessage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$12.WebsocketSendRequest> request) async {
    return sendMessage(call, await request);
  }

  $async.Future<$12.WebsocketCloseConnectionResponse> closeConnection_Pre(
      $grpc.ServiceCall call,
      $async.Future<$12.WebsocketCloseConnectionRequest> request) async {
    return closeConnection(call, await request);
  }

  $async.Future<$12.WebsocketDetailsResponse> socketDetails_Pre(
      $grpc.ServiceCall call,
      $async.Future<$12.WebsocketDetailsRequest> request) async {
    return socketDetails(call, await request);
  }

  $async.Future<$12.WebsocketSendResponse> sendMessage(
      $grpc.ServiceCall call, $12.WebsocketSendRequest request);
  $async.Future<$12.WebsocketCloseConnectionResponse> closeConnection(
      $grpc.ServiceCall call, $12.WebsocketCloseConnectionRequest request);
  $async.Future<$12.WebsocketDetailsResponse> socketDetails(
      $grpc.ServiceCall call, $12.WebsocketDetailsRequest request);
}

@$pb.GrpcServiceName('nitric.proto.websockets.v1.WebsocketHandler')
class WebsocketHandlerClient extends $grpc.Client {
  static final _$handleEvents =
      $grpc.ClientMethod<$12.ClientMessage, $12.ServerMessage>(
          '/nitric.proto.websockets.v1.WebsocketHandler/HandleEvents',
          ($12.ClientMessage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $12.ServerMessage.fromBuffer(value));

  WebsocketHandlerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$12.ServerMessage> handleEvents(
      $async.Stream<$12.ClientMessage> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$handleEvents, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.websockets.v1.WebsocketHandler')
abstract class WebsocketHandlerServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.websockets.v1.WebsocketHandler';

  WebsocketHandlerServiceBase() {
    $addMethod($grpc.ServiceMethod<$12.ClientMessage, $12.ServerMessage>(
        'HandleEvents',
        handleEvents,
        true,
        true,
        ($core.List<$core.int> value) => $12.ClientMessage.fromBuffer(value),
        ($12.ServerMessage value) => value.writeToBuffer()));
  }

  $async.Stream<$12.ServerMessage> handleEvents(
      $grpc.ServiceCall call, $async.Stream<$12.ClientMessage> request);
}
