//
//  Generated code. Do not modify.
//  source: nitric/proto/topics/v1/topics.proto
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

import 'topics.pb.dart' as $12;

export 'topics.pb.dart';

@$pb.GrpcServiceName('nitric.proto.topics.v1.Topics')
class TopicsClient extends $grpc.Client {
  static final _$publish =
      $grpc.ClientMethod<$12.TopicPublishRequest, $12.TopicPublishResponse>(
          '/nitric.proto.topics.v1.Topics/Publish',
          ($12.TopicPublishRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $12.TopicPublishResponse.fromBuffer(value));

  TopicsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$12.TopicPublishResponse> publish(
      $12.TopicPublishRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$publish, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.topics.v1.Topics')
abstract class TopicsServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.topics.v1.Topics';

  TopicsServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$12.TopicPublishRequest, $12.TopicPublishResponse>(
            'Publish',
            publish_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $12.TopicPublishRequest.fromBuffer(value),
            ($12.TopicPublishResponse value) => value.writeToBuffer()));
  }

  $async.Future<$12.TopicPublishResponse> publish_Pre($grpc.ServiceCall call,
      $async.Future<$12.TopicPublishRequest> request) async {
    return publish(call, await request);
  }

  $async.Future<$12.TopicPublishResponse> publish(
      $grpc.ServiceCall call, $12.TopicPublishRequest request);
}

@$pb.GrpcServiceName('nitric.proto.topics.v1.Subscriber')
class SubscriberClient extends $grpc.Client {
  static final _$subscribe =
      $grpc.ClientMethod<$12.ClientMessage, $12.ServerMessage>(
          '/nitric.proto.topics.v1.Subscriber/Subscribe',
          ($12.ClientMessage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $12.ServerMessage.fromBuffer(value));

  SubscriberClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$12.ServerMessage> subscribe(
      $async.Stream<$12.ClientMessage> request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$subscribe, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.topics.v1.Subscriber')
abstract class SubscriberServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.topics.v1.Subscriber';

  SubscriberServiceBase() {
    $addMethod($grpc.ServiceMethod<$12.ClientMessage, $12.ServerMessage>(
        'Subscribe',
        subscribe,
        true,
        true,
        ($core.List<$core.int> value) => $12.ClientMessage.fromBuffer(value),
        ($12.ServerMessage value) => value.writeToBuffer()));
  }

  $async.Stream<$12.ServerMessage> subscribe(
      $grpc.ServiceCall call, $async.Stream<$12.ClientMessage> request);
}
