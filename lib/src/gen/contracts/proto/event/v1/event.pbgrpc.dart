//
//  Generated code. Do not modify.
//  source: contracts/proto/event/v1/event.proto
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

import 'event.pb.dart' as $4;

export 'event.pb.dart';

@$pb.GrpcServiceName('nitric.event.v1.EventService')
class EventServiceClient extends $grpc.Client {
  static final _$publish = $grpc.ClientMethod<$4.EventPublishRequest, $4.EventPublishResponse>(
      '/nitric.event.v1.EventService/Publish',
      ($4.EventPublishRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.EventPublishResponse.fromBuffer(value));

  EventServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.EventPublishResponse> publish($4.EventPublishRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$publish, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.event.v1.EventService')
abstract class EventServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.event.v1.EventService';

  EventServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.EventPublishRequest, $4.EventPublishResponse>(
        'Publish',
        publish_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.EventPublishRequest.fromBuffer(value),
        ($4.EventPublishResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.EventPublishResponse> publish_Pre($grpc.ServiceCall call, $async.Future<$4.EventPublishRequest> request) async {
    return publish(call, await request);
  }

  $async.Future<$4.EventPublishResponse> publish($grpc.ServiceCall call, $4.EventPublishRequest request);
}
@$pb.GrpcServiceName('nitric.event.v1.TopicService')
class TopicServiceClient extends $grpc.Client {
  static final _$list = $grpc.ClientMethod<$4.TopicListRequest, $4.TopicListResponse>(
      '/nitric.event.v1.TopicService/List',
      ($4.TopicListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.TopicListResponse.fromBuffer(value));

  TopicServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.TopicListResponse> list($4.TopicListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.event.v1.TopicService')
abstract class TopicServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.event.v1.TopicService';

  TopicServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.TopicListRequest, $4.TopicListResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.TopicListRequest.fromBuffer(value),
        ($4.TopicListResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.TopicListResponse> list_Pre($grpc.ServiceCall call, $async.Future<$4.TopicListRequest> request) async {
    return list(call, await request);
  }

  $async.Future<$4.TopicListResponse> list($grpc.ServiceCall call, $4.TopicListRequest request);
}
