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

import 'websockets.pb.dart' as $10;

export 'websockets.pb.dart';

@$pb.GrpcServiceName('nitric.proto.websockets.v1.Websocket')
class WebsocketClient extends $grpc.Client {
  static final _$sendMessage = $grpc.ClientMethod<$10.WebsocketSendRequest, $10.WebsocketSendResponse>(
      '/nitric.proto.websockets.v1.Websocket/SendMessage',
      ($10.WebsocketSendRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.WebsocketSendResponse.fromBuffer(value));
  static final _$closeConnection = $grpc.ClientMethod<$10.WebsocketCloseConnectionRequest, $10.WebsocketCloseConnectionResponse>(
      '/nitric.proto.websockets.v1.Websocket/CloseConnection',
      ($10.WebsocketCloseConnectionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.WebsocketCloseConnectionResponse.fromBuffer(value));
  static final _$socketDetails = $grpc.ClientMethod<$10.WebsocketDetailsRequest, $10.WebsocketDetailsResponse>(
      '/nitric.proto.websockets.v1.Websocket/SocketDetails',
      ($10.WebsocketDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.WebsocketDetailsResponse.fromBuffer(value));

  WebsocketClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$10.WebsocketSendResponse> sendMessage($10.WebsocketSendRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sendMessage, request, options: options);
  }

  $grpc.ResponseFuture<$10.WebsocketCloseConnectionResponse> closeConnection($10.WebsocketCloseConnectionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$closeConnection, request, options: options);
  }

  $grpc.ResponseFuture<$10.WebsocketDetailsResponse> socketDetails($10.WebsocketDetailsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$socketDetails, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.websockets.v1.Websocket')
abstract class WebsocketServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.websockets.v1.Websocket';

  WebsocketServiceBase() {
    $addMethod($grpc.ServiceMethod<$10.WebsocketSendRequest, $10.WebsocketSendResponse>(
        'SendMessage',
        sendMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.WebsocketSendRequest.fromBuffer(value),
        ($10.WebsocketSendResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.WebsocketCloseConnectionRequest, $10.WebsocketCloseConnectionResponse>(
        'CloseConnection',
        closeConnection_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.WebsocketCloseConnectionRequest.fromBuffer(value),
        ($10.WebsocketCloseConnectionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.WebsocketDetailsRequest, $10.WebsocketDetailsResponse>(
        'SocketDetails',
        socketDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.WebsocketDetailsRequest.fromBuffer(value),
        ($10.WebsocketDetailsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$10.WebsocketSendResponse> sendMessage_Pre($grpc.ServiceCall call, $async.Future<$10.WebsocketSendRequest> request) async {
    return sendMessage(call, await request);
  }

  $async.Future<$10.WebsocketCloseConnectionResponse> closeConnection_Pre($grpc.ServiceCall call, $async.Future<$10.WebsocketCloseConnectionRequest> request) async {
    return closeConnection(call, await request);
  }

  $async.Future<$10.WebsocketDetailsResponse> socketDetails_Pre($grpc.ServiceCall call, $async.Future<$10.WebsocketDetailsRequest> request) async {
    return socketDetails(call, await request);
  }

  $async.Future<$10.WebsocketSendResponse> sendMessage($grpc.ServiceCall call, $10.WebsocketSendRequest request);
  $async.Future<$10.WebsocketCloseConnectionResponse> closeConnection($grpc.ServiceCall call, $10.WebsocketCloseConnectionRequest request);
  $async.Future<$10.WebsocketDetailsResponse> socketDetails($grpc.ServiceCall call, $10.WebsocketDetailsRequest request);
}
@$pb.GrpcServiceName('nitric.proto.websockets.v1.WebsocketHandler')
class WebsocketHandlerClient extends $grpc.Client {
  static final _$handleEvents = $grpc.ClientMethod<$10.ClientMessage, $10.ServerMessage>(
      '/nitric.proto.websockets.v1.WebsocketHandler/HandleEvents',
      ($10.ClientMessage value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.ServerMessage.fromBuffer(value));

  WebsocketHandlerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseStream<$10.ServerMessage> handleEvents($async.Stream<$10.ClientMessage> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$handleEvents, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.websockets.v1.WebsocketHandler')
abstract class WebsocketHandlerServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.websockets.v1.WebsocketHandler';

  WebsocketHandlerServiceBase() {
    $addMethod($grpc.ServiceMethod<$10.ClientMessage, $10.ServerMessage>(
        'HandleEvents',
        handleEvents,
        true,
        true,
        ($core.List<$core.int> value) => $10.ClientMessage.fromBuffer(value),
        ($10.ServerMessage value) => value.writeToBuffer()));
  }

  $async.Stream<$10.ServerMessage> handleEvents($grpc.ServiceCall call, $async.Stream<$10.ClientMessage> request);
}
