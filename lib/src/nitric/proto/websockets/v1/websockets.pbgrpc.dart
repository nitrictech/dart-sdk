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

import 'websockets.pb.dart' as $11;

export 'websockets.pb.dart';

@$pb.GrpcServiceName('nitric.proto.websockets.v1.Websocket')
class WebsocketClient extends $grpc.Client {
  static final _$sendMessage =
      $grpc.ClientMethod<$11.WebsocketSendRequest, $11.WebsocketSendResponse>(
          '/nitric.proto.websockets.v1.Websocket/SendMessage',
          ($11.WebsocketSendRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $11.WebsocketSendResponse.fromBuffer(value));
  static final _$closeConnection = $grpc.ClientMethod<
          $11.WebsocketCloseConnectionRequest,
          $11.WebsocketCloseConnectionResponse>(
      '/nitric.proto.websockets.v1.Websocket/CloseConnection',
      ($11.WebsocketCloseConnectionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $11.WebsocketCloseConnectionResponse.fromBuffer(value));
  static final _$socketDetails = $grpc.ClientMethod<$11.WebsocketDetailsRequest,
          $11.WebsocketDetailsResponse>(
      '/nitric.proto.websockets.v1.Websocket/SocketDetails',
      ($11.WebsocketDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $11.WebsocketDetailsResponse.fromBuffer(value));

  WebsocketClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$11.WebsocketSendResponse> sendMessage(
      $11.WebsocketSendRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendMessage, request, options: options);
  }

  $grpc.ResponseFuture<$11.WebsocketCloseConnectionResponse> closeConnection(
      $11.WebsocketCloseConnectionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$closeConnection, request, options: options);
  }

  $grpc.ResponseFuture<$11.WebsocketDetailsResponse> socketDetails(
      $11.WebsocketDetailsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$socketDetails, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.websockets.v1.Websocket')
abstract class WebsocketServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.websockets.v1.Websocket';

  WebsocketServiceBase() {
    $addMethod($grpc.ServiceMethod<$11.WebsocketSendRequest,
            $11.WebsocketSendResponse>(
        'SendMessage',
        sendMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $11.WebsocketSendRequest.fromBuffer(value),
        ($11.WebsocketSendResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.WebsocketCloseConnectionRequest,
            $11.WebsocketCloseConnectionResponse>(
        'CloseConnection',
        closeConnection_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $11.WebsocketCloseConnectionRequest.fromBuffer(value),
        ($11.WebsocketCloseConnectionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$11.WebsocketDetailsRequest,
            $11.WebsocketDetailsResponse>(
        'SocketDetails',
        socketDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $11.WebsocketDetailsRequest.fromBuffer(value),
        ($11.WebsocketDetailsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$11.WebsocketSendResponse> sendMessage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$11.WebsocketSendRequest> request) async {
    return sendMessage(call, await request);
  }

  $async.Future<$11.WebsocketCloseConnectionResponse> closeConnection_Pre(
      $grpc.ServiceCall call,
      $async.Future<$11.WebsocketCloseConnectionRequest> request) async {
    return closeConnection(call, await request);
  }

  $async.Future<$11.WebsocketDetailsResponse> socketDetails_Pre(
      $grpc.ServiceCall call,
      $async.Future<$11.WebsocketDetailsRequest> request) async {
    return socketDetails(call, await request);
  }

  $async.Future<$11.WebsocketSendResponse> sendMessage(
      $grpc.ServiceCall call, $11.WebsocketSendRequest request);
  $async.Future<$11.WebsocketCloseConnectionResponse> closeConnection(
      $grpc.ServiceCall call, $11.WebsocketCloseConnectionRequest request);
  $async.Future<$11.WebsocketDetailsResponse> socketDetails(
      $grpc.ServiceCall call, $11.WebsocketDetailsRequest request);
}

@$pb.GrpcServiceName('nitric.proto.websockets.v1.WebsocketHandler')
class WebsocketHandlerClient extends $grpc.Client {
  static final _$handleEvents =
      $grpc.ClientMethod<$11.ClientMessage, $11.ServerMessage>(
          '/nitric.proto.websockets.v1.WebsocketHandler/HandleEvents',
          ($11.ClientMessage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $11.ServerMessage.fromBuffer(value));

  WebsocketHandlerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$11.ServerMessage> handleEvents(
      $async.Stream<$11.ClientMessage> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$handleEvents, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.websockets.v1.WebsocketHandler')
abstract class WebsocketHandlerServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.websockets.v1.WebsocketHandler';

  WebsocketHandlerServiceBase() {
    $addMethod($grpc.ServiceMethod<$11.ClientMessage, $11.ServerMessage>(
        'HandleEvents',
        handleEvents,
        true,
        true,
        ($core.List<$core.int> value) => $11.ClientMessage.fromBuffer(value),
        ($11.ServerMessage value) => value.writeToBuffer()));
  }

  $async.Stream<$11.ServerMessage> handleEvents(
      $grpc.ServiceCall call, $async.Stream<$11.ClientMessage> request);
}
