//
//  Generated code. Do not modify.
//  source: contracts/proto/event/v1/event.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import "package:protobuf_wellknown/protobuf_wellknown.dart" as $9;

/// Request to publish an event to a topic
class EventPublishRequest extends $pb.GeneratedMessage {
  factory EventPublishRequest({
    $core.String? topic,
    NitricEvent? event,
    $core.int? delay,
  }) {
    final $result = create();
    if (topic != null) {
      $result.topic = topic;
    }
    if (event != null) {
      $result.event = event;
    }
    if (delay != null) {
      $result.delay = delay;
    }
    return $result;
  }
  EventPublishRequest._() : super();
  factory EventPublishRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EventPublishRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EventPublishRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.event.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'topic')
    ..aOM<NitricEvent>(2, _omitFieldNames ? '' : 'event',
        subBuilder: NitricEvent.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'delay', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  EventPublishRequest clone() => EventPublishRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  EventPublishRequest copyWith(void Function(EventPublishRequest) updates) =>
      super.copyWith((message) => updates(message as EventPublishRequest))
          as EventPublishRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventPublishRequest create() => EventPublishRequest._();
  EventPublishRequest createEmptyInstance() => create();
  static $pb.PbList<EventPublishRequest> createRepeated() =>
      $pb.PbList<EventPublishRequest>();
  @$core.pragma('dart2js:noInline')
  static EventPublishRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EventPublishRequest>(create);
  static EventPublishRequest? _defaultInstance;

  /// The name of the topic to publish the event to
  @$pb.TagNumber(1)
  $core.String get topic => $_getSZ(0);
  @$pb.TagNumber(1)
  set topic($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTopic() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopic() => clearField(1);

  /// The event to be published
  @$pb.TagNumber(2)
  NitricEvent get event => $_getN(1);
  @$pb.TagNumber(2)
  set event(NitricEvent v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasEvent() => $_has(1);
  @$pb.TagNumber(2)
  void clearEvent() => clearField(2);
  @$pb.TagNumber(2)
  NitricEvent ensureEvent() => $_ensure(1);

  /// An optional delay specified in seconds (minimum 10 seconds)
  @$pb.TagNumber(3)
  $core.int get delay => $_getIZ(2);
  @$pb.TagNumber(3)
  set delay($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasDelay() => $_has(2);
  @$pb.TagNumber(3)
  void clearDelay() => clearField(3);
}

/// Result of publishing an event
class EventPublishResponse extends $pb.GeneratedMessage {
  factory EventPublishResponse({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
  EventPublishResponse._() : super();
  factory EventPublishResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EventPublishResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EventPublishResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.event.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  EventPublishResponse clone() =>
      EventPublishResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  EventPublishResponse copyWith(void Function(EventPublishResponse) updates) =>
      super.copyWith((message) => updates(message as EventPublishResponse))
          as EventPublishResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventPublishResponse create() => EventPublishResponse._();
  EventPublishResponse createEmptyInstance() => create();
  static $pb.PbList<EventPublishResponse> createRepeated() =>
      $pb.PbList<EventPublishResponse>();
  @$core.pragma('dart2js:noInline')
  static EventPublishResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EventPublishResponse>(create);
  static EventPublishResponse? _defaultInstance;

  /// The id of the published message
  /// When an id was not supplied
  /// one should be automatically generated
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
}

/// Request for the Topic List method
class TopicListRequest extends $pb.GeneratedMessage {
  factory TopicListRequest() => create();
  TopicListRequest._() : super();
  factory TopicListRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TopicListRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TopicListRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.event.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TopicListRequest clone() => TopicListRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TopicListRequest copyWith(void Function(TopicListRequest) updates) =>
      super.copyWith((message) => updates(message as TopicListRequest))
          as TopicListRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TopicListRequest create() => TopicListRequest._();
  TopicListRequest createEmptyInstance() => create();
  static $pb.PbList<TopicListRequest> createRepeated() =>
      $pb.PbList<TopicListRequest>();
  @$core.pragma('dart2js:noInline')
  static TopicListRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TopicListRequest>(create);
  static TopicListRequest? _defaultInstance;
}

/// Topic List Response
class TopicListResponse extends $pb.GeneratedMessage {
  factory TopicListResponse({
    $core.Iterable<NitricTopic>? topics,
  }) {
    final $result = create();
    if (topics != null) {
      $result.topics.addAll(topics);
    }
    return $result;
  }
  TopicListResponse._() : super();
  factory TopicListResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TopicListResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TopicListResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.event.v1'),
      createEmptyInstance: create)
    ..pc<NitricTopic>(1, _omitFieldNames ? '' : 'topics', $pb.PbFieldType.PM,
        subBuilder: NitricTopic.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TopicListResponse clone() => TopicListResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TopicListResponse copyWith(void Function(TopicListResponse) updates) =>
      super.copyWith((message) => updates(message as TopicListResponse))
          as TopicListResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TopicListResponse create() => TopicListResponse._();
  TopicListResponse createEmptyInstance() => create();
  static $pb.PbList<TopicListResponse> createRepeated() =>
      $pb.PbList<TopicListResponse>();
  @$core.pragma('dart2js:noInline')
  static TopicListResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TopicListResponse>(create);
  static TopicListResponse? _defaultInstance;

  /// The list of found topics
  @$pb.TagNumber(1)
  $core.List<NitricTopic> get topics => $_getList(0);
}

/// Represents an event topic
class NitricTopic extends $pb.GeneratedMessage {
  factory NitricTopic({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  NitricTopic._() : super();
  factory NitricTopic.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NitricTopic.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NitricTopic',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.event.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NitricTopic clone() => NitricTopic()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NitricTopic copyWith(void Function(NitricTopic) updates) =>
      super.copyWith((message) => updates(message as NitricTopic))
          as NitricTopic;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NitricTopic create() => NitricTopic._();
  NitricTopic createEmptyInstance() => create();
  static $pb.PbList<NitricTopic> createRepeated() => $pb.PbList<NitricTopic>();
  @$core.pragma('dart2js:noInline')
  static NitricTopic getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NitricTopic>(create);
  static NitricTopic? _defaultInstance;

  /// The Nitric name for the topic
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

/// Nitric Event Model
class NitricEvent extends $pb.GeneratedMessage {
  factory NitricEvent({
    $core.String? id,
    $core.String? payloadType,
    $9.Struct? payload,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (payloadType != null) {
      $result.payloadType = payloadType;
    }
    if (payload != null) {
      $result.payload = payload;
    }
    return $result;
  }
  NitricEvent._() : super();
  factory NitricEvent.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NitricEvent.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NitricEvent',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.event.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'payloadType')
    ..aOM<$9.Struct>(3, _omitFieldNames ? '' : 'payload',
        subBuilder: $9.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NitricEvent clone() => NitricEvent()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NitricEvent copyWith(void Function(NitricEvent) updates) =>
      super.copyWith((message) => updates(message as NitricEvent))
          as NitricEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NitricEvent create() => NitricEvent._();
  NitricEvent createEmptyInstance() => create();
  static $pb.PbList<NitricEvent> createRepeated() => $pb.PbList<NitricEvent>();
  @$core.pragma('dart2js:noInline')
  static NitricEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NitricEvent>(create);
  static NitricEvent? _defaultInstance;

  /// A Unique ID for the Nitric Event
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

  /// A content hint for the events payload
  @$pb.TagNumber(2)
  $core.String get payloadType => $_getSZ(1);
  @$pb.TagNumber(2)
  set payloadType($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPayloadType() => $_has(1);
  @$pb.TagNumber(2)
  void clearPayloadType() => clearField(2);

  /// The payload of the event
  @$pb.TagNumber(3)
  $9.Struct get payload => $_getN(2);
  @$pb.TagNumber(3)
  set payload($9.Struct v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPayload() => $_has(2);
  @$pb.TagNumber(3)
  void clearPayload() => clearField(3);
  @$pb.TagNumber(3)
  $9.Struct ensurePayload() => $_ensure(2);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
