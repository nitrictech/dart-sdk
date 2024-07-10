//
//  Generated code. Do not modify.
//  source: nitric/proto/topics/v1/topics.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/duration.pb.dart' as $13;
import '../../../../google/protobuf/struct.pb.dart' as $14;

enum ClientMessage_Content { registrationRequest, messageResponse, notSet }

/// ClientMessage is the message sent from the service to the nitric server
class ClientMessage extends $pb.GeneratedMessage {
  factory ClientMessage({
    $core.String? id,
    RegistrationRequest? registrationRequest,
    MessageResponse? messageResponse,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (registrationRequest != null) {
      $result.registrationRequest = registrationRequest;
    }
    if (messageResponse != null) {
      $result.messageResponse = messageResponse;
    }
    return $result;
  }
  ClientMessage._() : super();
  factory ClientMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ClientMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ClientMessage_Content>
      _ClientMessage_ContentByTag = {
    2: ClientMessage_Content.registrationRequest,
    3: ClientMessage_Content.messageResponse,
    0: ClientMessage_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClientMessage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.topics.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<RegistrationRequest>(2, _omitFieldNames ? '' : 'registrationRequest',
        subBuilder: RegistrationRequest.create)
    ..aOM<MessageResponse>(3, _omitFieldNames ? '' : 'messageResponse',
        subBuilder: MessageResponse.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ClientMessage clone() => ClientMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ClientMessage copyWith(void Function(ClientMessage) updates) =>
      super.copyWith((message) => updates(message as ClientMessage))
          as ClientMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClientMessage create() => ClientMessage._();
  ClientMessage createEmptyInstance() => create();
  static $pb.PbList<ClientMessage> createRepeated() =>
      $pb.PbList<ClientMessage>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClientMessage>(create);
  static ClientMessage? _defaultInstance;

  ClientMessage_Content whichContent() =>
      _ClientMessage_ContentByTag[$_whichOneof(0)]!;
  void clearContent() => clearField($_whichOneof(0));

  /// globally unique ID of the request/response pair
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// Register a subscription to a topic
  @$pb.TagNumber(2)
  RegistrationRequest get registrationRequest => $_getN(1);
  @$pb.TagNumber(2)
  set registrationRequest(RegistrationRequest v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRegistrationRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegistrationRequest() => clearField(2);
  @$pb.TagNumber(2)
  RegistrationRequest ensureRegistrationRequest() => $_ensure(1);

  /// Handle a message received from a topic
  @$pb.TagNumber(3)
  MessageResponse get messageResponse => $_getN(2);
  @$pb.TagNumber(3)
  set messageResponse(MessageResponse v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMessageResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessageResponse() => clearField(3);
  @$pb.TagNumber(3)
  MessageResponse ensureMessageResponse() => $_ensure(2);
}

class MessageRequest extends $pb.GeneratedMessage {
  factory MessageRequest({
    $core.String? topicName,
    TopicMessage? message,
  }) {
    final $result = create();
    if (topicName != null) {
      $result.topicName = topicName;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  MessageRequest._() : super();
  factory MessageRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MessageRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.topics.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'topicName')
    ..aOM<TopicMessage>(2, _omitFieldNames ? '' : 'message',
        subBuilder: TopicMessage.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MessageRequest clone() => MessageRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MessageRequest copyWith(void Function(MessageRequest) updates) =>
      super.copyWith((message) => updates(message as MessageRequest))
          as MessageRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageRequest create() => MessageRequest._();
  MessageRequest createEmptyInstance() => create();
  static $pb.PbList<MessageRequest> createRepeated() =>
      $pb.PbList<MessageRequest>();
  @$core.pragma('dart2js:noInline')
  static MessageRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageRequest>(create);
  static MessageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get topicName => $_getSZ(0);
  @$pb.TagNumber(1)
  set topicName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTopicName() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopicName() => clearField(1);

  /// Message Type
  @$pb.TagNumber(2)
  TopicMessage get message => $_getN(1);
  @$pb.TagNumber(2)
  set message(TopicMessage v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
  @$pb.TagNumber(2)
  TopicMessage ensureMessage() => $_ensure(1);
}

class MessageResponse extends $pb.GeneratedMessage {
  factory MessageResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  MessageResponse._() : super();
  factory MessageResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MessageResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MessageResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.topics.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MessageResponse clone() => MessageResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MessageResponse copyWith(void Function(MessageResponse) updates) =>
      super.copyWith((message) => updates(message as MessageResponse))
          as MessageResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MessageResponse create() => MessageResponse._();
  MessageResponse createEmptyInstance() => create();
  static $pb.PbList<MessageResponse> createRepeated() =>
      $pb.PbList<MessageResponse>();
  @$core.pragma('dart2js:noInline')
  static MessageResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MessageResponse>(create);
  static MessageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

enum ServerMessage_Content { registrationResponse, messageRequest, notSet }

/// ServerMessage is the message sent from the nitric server to the service
class ServerMessage extends $pb.GeneratedMessage {
  factory ServerMessage({
    $core.String? id,
    RegistrationResponse? registrationResponse,
    MessageRequest? messageRequest,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (registrationResponse != null) {
      $result.registrationResponse = registrationResponse;
    }
    if (messageRequest != null) {
      $result.messageRequest = messageRequest;
    }
    return $result;
  }
  ServerMessage._() : super();
  factory ServerMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ServerMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ServerMessage_Content>
      _ServerMessage_ContentByTag = {
    2: ServerMessage_Content.registrationResponse,
    3: ServerMessage_Content.messageRequest,
    0: ServerMessage_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ServerMessage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.topics.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<RegistrationResponse>(
        2, _omitFieldNames ? '' : 'registrationResponse',
        subBuilder: RegistrationResponse.create)
    ..aOM<MessageRequest>(3, _omitFieldNames ? '' : 'messageRequest',
        subBuilder: MessageRequest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ServerMessage clone() => ServerMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ServerMessage copyWith(void Function(ServerMessage) updates) =>
      super.copyWith((message) => updates(message as ServerMessage))
          as ServerMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServerMessage create() => ServerMessage._();
  ServerMessage createEmptyInstance() => create();
  static $pb.PbList<ServerMessage> createRepeated() =>
      $pb.PbList<ServerMessage>();
  @$core.pragma('dart2js:noInline')
  static ServerMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ServerMessage>(create);
  static ServerMessage? _defaultInstance;

  ServerMessage_Content whichContent() =>
      _ServerMessage_ContentByTag[$_whichOneof(0)]!;
  void clearContent() => clearField($_whichOneof(0));

  /// globally unique ID of the request/response pair
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// Response to a topic subscription request
  @$pb.TagNumber(2)
  RegistrationResponse get registrationResponse => $_getN(1);
  @$pb.TagNumber(2)
  set registrationResponse(RegistrationResponse v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRegistrationResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegistrationResponse() => clearField(2);
  @$pb.TagNumber(2)
  RegistrationResponse ensureRegistrationResponse() => $_ensure(1);

  /// Response to a topic message request
  @$pb.TagNumber(3)
  MessageRequest get messageRequest => $_getN(2);
  @$pb.TagNumber(3)
  set messageRequest(MessageRequest v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMessageRequest() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessageRequest() => clearField(3);
  @$pb.TagNumber(3)
  MessageRequest ensureMessageRequest() => $_ensure(2);
}

class RegistrationRequest extends $pb.GeneratedMessage {
  factory RegistrationRequest({
    $core.String? topicName,
  }) {
    final $result = create();
    if (topicName != null) {
      $result.topicName = topicName;
    }
    return $result;
  }
  RegistrationRequest._() : super();
  factory RegistrationRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegistrationRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegistrationRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.topics.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'topicName')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegistrationRequest clone() => RegistrationRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegistrationRequest copyWith(void Function(RegistrationRequest) updates) =>
      super.copyWith((message) => updates(message as RegistrationRequest))
          as RegistrationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegistrationRequest create() => RegistrationRequest._();
  RegistrationRequest createEmptyInstance() => create();
  static $pb.PbList<RegistrationRequest> createRepeated() =>
      $pb.PbList<RegistrationRequest>();
  @$core.pragma('dart2js:noInline')
  static RegistrationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegistrationRequest>(create);
  static RegistrationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get topicName => $_getSZ(0);
  @$pb.TagNumber(1)
  set topicName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTopicName() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopicName() => clearField(1);
}

class RegistrationResponse extends $pb.GeneratedMessage {
  factory RegistrationResponse() => create();
  RegistrationResponse._() : super();
  factory RegistrationResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegistrationResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegistrationResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.topics.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegistrationResponse clone() =>
      RegistrationResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegistrationResponse copyWith(void Function(RegistrationResponse) updates) =>
      super.copyWith((message) => updates(message as RegistrationResponse))
          as RegistrationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegistrationResponse create() => RegistrationResponse._();
  RegistrationResponse createEmptyInstance() => create();
  static $pb.PbList<RegistrationResponse> createRepeated() =>
      $pb.PbList<RegistrationResponse>();
  @$core.pragma('dart2js:noInline')
  static RegistrationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegistrationResponse>(create);
  static RegistrationResponse? _defaultInstance;
}

enum TopicMessage_Content { structPayload, notSet }

class TopicMessage extends $pb.GeneratedMessage {
  factory TopicMessage({
    $14.Struct? structPayload,
  }) {
    final $result = create();
    if (structPayload != null) {
      $result.structPayload = structPayload;
    }
    return $result;
  }
  TopicMessage._() : super();
  factory TopicMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TopicMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, TopicMessage_Content>
      _TopicMessage_ContentByTag = {
    1: TopicMessage_Content.structPayload,
    0: TopicMessage_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TopicMessage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.topics.v1'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<$14.Struct>(1, _omitFieldNames ? '' : 'structPayload',
        subBuilder: $14.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TopicMessage clone() => TopicMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TopicMessage copyWith(void Function(TopicMessage) updates) =>
      super.copyWith((message) => updates(message as TopicMessage))
          as TopicMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TopicMessage create() => TopicMessage._();
  TopicMessage createEmptyInstance() => create();
  static $pb.PbList<TopicMessage> createRepeated() =>
      $pb.PbList<TopicMessage>();
  @$core.pragma('dart2js:noInline')
  static TopicMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TopicMessage>(create);
  static TopicMessage? _defaultInstance;

  TopicMessage_Content whichContent() =>
      _TopicMessage_ContentByTag[$_whichOneof(0)]!;
  void clearContent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $14.Struct get structPayload => $_getN(0);
  @$pb.TagNumber(1)
  set structPayload($14.Struct v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStructPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearStructPayload() => clearField(1);
  @$pb.TagNumber(1)
  $14.Struct ensureStructPayload() => $_ensure(0);
}

/// Request to publish a message to a topic
class TopicPublishRequest extends $pb.GeneratedMessage {
  factory TopicPublishRequest({
    $core.String? topicName,
    TopicMessage? message,
    $13.Duration? delay,
  }) {
    final $result = create();
    if (topicName != null) {
      $result.topicName = topicName;
    }
    if (message != null) {
      $result.message = message;
    }
    if (delay != null) {
      $result.delay = delay;
    }
    return $result;
  }
  TopicPublishRequest._() : super();
  factory TopicPublishRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TopicPublishRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TopicPublishRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.topics.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'topicName')
    ..aOM<TopicMessage>(2, _omitFieldNames ? '' : 'message',
        subBuilder: TopicMessage.create)
    ..aOM<$13.Duration>(3, _omitFieldNames ? '' : 'delay',
        subBuilder: $13.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TopicPublishRequest clone() => TopicPublishRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TopicPublishRequest copyWith(void Function(TopicPublishRequest) updates) =>
      super.copyWith((message) => updates(message as TopicPublishRequest))
          as TopicPublishRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TopicPublishRequest create() => TopicPublishRequest._();
  TopicPublishRequest createEmptyInstance() => create();
  static $pb.PbList<TopicPublishRequest> createRepeated() =>
      $pb.PbList<TopicPublishRequest>();
  @$core.pragma('dart2js:noInline')
  static TopicPublishRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TopicPublishRequest>(create);
  static TopicPublishRequest? _defaultInstance;

  /// The name of the topic to publish the topic to
  @$pb.TagNumber(1)
  $core.String get topicName => $_getSZ(0);
  @$pb.TagNumber(1)
  set topicName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTopicName() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopicName() => clearField(1);

  /// The message to be published
  @$pb.TagNumber(2)
  TopicMessage get message => $_getN(1);
  @$pb.TagNumber(2)
  set message(TopicMessage v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
  @$pb.TagNumber(2)
  TopicMessage ensureMessage() => $_ensure(1);

  /// An optional delay specified in seconds (minimum 10 seconds)
  @$pb.TagNumber(3)
  $13.Duration get delay => $_getN(2);
  @$pb.TagNumber(3)
  set delay($13.Duration v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDelay() => $_has(2);
  @$pb.TagNumber(3)
  void clearDelay() => clearField(3);
  @$pb.TagNumber(3)
  $13.Duration ensureDelay() => $_ensure(2);
}

/// Result of publishing an topic
class TopicPublishResponse extends $pb.GeneratedMessage {
  factory TopicPublishResponse() => create();
  TopicPublishResponse._() : super();
  factory TopicPublishResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TopicPublishResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TopicPublishResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.topics.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TopicPublishResponse clone() =>
      TopicPublishResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TopicPublishResponse copyWith(void Function(TopicPublishResponse) updates) =>
      super.copyWith((message) => updates(message as TopicPublishResponse))
          as TopicPublishResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TopicPublishResponse create() => TopicPublishResponse._();
  TopicPublishResponse createEmptyInstance() => create();
  static $pb.PbList<TopicPublishResponse> createRepeated() =>
      $pb.PbList<TopicPublishResponse>();
  @$core.pragma('dart2js:noInline')
  static TopicPublishResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TopicPublishResponse>(create);
  static TopicPublishResponse? _defaultInstance;
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
