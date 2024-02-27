//
//  Generated code. Do not modify.
//  source: nitric/proto/queues/v1/queues.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/struct.pb.dart' as $12;

class QueueEnqueueRequest extends $pb.GeneratedMessage {
  factory QueueEnqueueRequest({
    $core.String? queueName,
    $core.Iterable<QueueMessage>? messages,
  }) {
    final $result = create();
    if (queueName != null) {
      $result.queueName = queueName;
    }
    if (messages != null) {
      $result.messages.addAll(messages);
    }
    return $result;
  }
  QueueEnqueueRequest._() : super();
  factory QueueEnqueueRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueueEnqueueRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueueEnqueueRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.queues.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'queueName')
    ..pc<QueueMessage>(2, _omitFieldNames ? '' : 'messages', $pb.PbFieldType.PM,
        subBuilder: QueueMessage.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  QueueEnqueueRequest clone() => QueueEnqueueRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  QueueEnqueueRequest copyWith(void Function(QueueEnqueueRequest) updates) =>
      super.copyWith((message) => updates(message as QueueEnqueueRequest))
          as QueueEnqueueRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueueEnqueueRequest create() => QueueEnqueueRequest._();
  QueueEnqueueRequest createEmptyInstance() => create();
  static $pb.PbList<QueueEnqueueRequest> createRepeated() =>
      $pb.PbList<QueueEnqueueRequest>();
  @$core.pragma('dart2js:noInline')
  static QueueEnqueueRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueueEnqueueRequest>(create);
  static QueueEnqueueRequest? _defaultInstance;

  /// The Nitric name for the queue
  /// this will automatically be resolved to the provider specific queue identifier.
  @$pb.TagNumber(1)
  $core.String get queueName => $_getSZ(0);
  @$pb.TagNumber(1)
  set queueName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasQueueName() => $_has(0);
  @$pb.TagNumber(1)
  void clearQueueName() => clearField(1);

  /// Array of messages to push to the queue
  @$pb.TagNumber(2)
  $core.List<QueueMessage> get messages => $_getList(1);
}

/// Response for sending messages to a queue
class QueueEnqueueResponse extends $pb.GeneratedMessage {
  factory QueueEnqueueResponse({
    $core.Iterable<FailedEnqueueMessage>? failedMessages,
  }) {
    final $result = create();
    if (failedMessages != null) {
      $result.failedMessages.addAll(failedMessages);
    }
    return $result;
  }
  QueueEnqueueResponse._() : super();
  factory QueueEnqueueResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueueEnqueueResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueueEnqueueResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.queues.v1'),
      createEmptyInstance: create)
    ..pc<FailedEnqueueMessage>(
        1, _omitFieldNames ? '' : 'failedMessages', $pb.PbFieldType.PM,
        subBuilder: FailedEnqueueMessage.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  QueueEnqueueResponse clone() =>
      QueueEnqueueResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  QueueEnqueueResponse copyWith(void Function(QueueEnqueueResponse) updates) =>
      super.copyWith((message) => updates(message as QueueEnqueueResponse))
          as QueueEnqueueResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueueEnqueueResponse create() => QueueEnqueueResponse._();
  QueueEnqueueResponse createEmptyInstance() => create();
  static $pb.PbList<QueueEnqueueResponse> createRepeated() =>
      $pb.PbList<QueueEnqueueResponse>();
  @$core.pragma('dart2js:noInline')
  static QueueEnqueueResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueueEnqueueResponse>(create);
  static QueueEnqueueResponse? _defaultInstance;

  /// A list of messages that failed to be queued
  @$pb.TagNumber(1)
  $core.List<FailedEnqueueMessage> get failedMessages => $_getList(0);
}

class QueueDequeueRequest extends $pb.GeneratedMessage {
  factory QueueDequeueRequest({
    $core.String? queueName,
    $core.int? depth,
  }) {
    final $result = create();
    if (queueName != null) {
      $result.queueName = queueName;
    }
    if (depth != null) {
      $result.depth = depth;
    }
    return $result;
  }
  QueueDequeueRequest._() : super();
  factory QueueDequeueRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueueDequeueRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueueDequeueRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.queues.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'queueName')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'depth', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  QueueDequeueRequest clone() => QueueDequeueRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  QueueDequeueRequest copyWith(void Function(QueueDequeueRequest) updates) =>
      super.copyWith((message) => updates(message as QueueDequeueRequest))
          as QueueDequeueRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueueDequeueRequest create() => QueueDequeueRequest._();
  QueueDequeueRequest createEmptyInstance() => create();
  static $pb.PbList<QueueDequeueRequest> createRepeated() =>
      $pb.PbList<QueueDequeueRequest>();
  @$core.pragma('dart2js:noInline')
  static QueueDequeueRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueueDequeueRequest>(create);
  static QueueDequeueRequest? _defaultInstance;

  /// The nitric name for the queue
  /// this will automatically be resolved to the provider specific queue identifier.
  @$pb.TagNumber(1)
  $core.String get queueName => $_getSZ(0);
  @$pb.TagNumber(1)
  set queueName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasQueueName() => $_has(0);
  @$pb.TagNumber(1)
  void clearQueueName() => clearField(1);

  /// The max number of messages to pop off the queue, may be capped by provider specific limitations
  @$pb.TagNumber(2)
  $core.int get depth => $_getIZ(1);
  @$pb.TagNumber(2)
  set depth($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDepth() => $_has(1);
  @$pb.TagNumber(2)
  void clearDepth() => clearField(2);
}

class QueueDequeueResponse extends $pb.GeneratedMessage {
  factory QueueDequeueResponse({
    $core.Iterable<DequeuedMessage>? messages,
  }) {
    final $result = create();
    if (messages != null) {
      $result.messages.addAll(messages);
    }
    return $result;
  }
  QueueDequeueResponse._() : super();
  factory QueueDequeueResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueueDequeueResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueueDequeueResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.queues.v1'),
      createEmptyInstance: create)
    ..pc<DequeuedMessage>(
        1, _omitFieldNames ? '' : 'messages', $pb.PbFieldType.PM,
        subBuilder: DequeuedMessage.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  QueueDequeueResponse clone() =>
      QueueDequeueResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  QueueDequeueResponse copyWith(void Function(QueueDequeueResponse) updates) =>
      super.copyWith((message) => updates(message as QueueDequeueResponse))
          as QueueDequeueResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueueDequeueResponse create() => QueueDequeueResponse._();
  QueueDequeueResponse createEmptyInstance() => create();
  static $pb.PbList<QueueDequeueResponse> createRepeated() =>
      $pb.PbList<QueueDequeueResponse>();
  @$core.pragma('dart2js:noInline')
  static QueueDequeueResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueueDequeueResponse>(create);
  static QueueDequeueResponse? _defaultInstance;

  /// Array of messages popped off the queue
  @$pb.TagNumber(1)
  $core.List<DequeuedMessage> get messages => $_getList(0);
}

class QueueCompleteRequest extends $pb.GeneratedMessage {
  factory QueueCompleteRequest({
    $core.String? queueName,
    $core.String? leaseId,
  }) {
    final $result = create();
    if (queueName != null) {
      $result.queueName = queueName;
    }
    if (leaseId != null) {
      $result.leaseId = leaseId;
    }
    return $result;
  }
  QueueCompleteRequest._() : super();
  factory QueueCompleteRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueueCompleteRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueueCompleteRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.queues.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'queueName')
    ..aOS(2, _omitFieldNames ? '' : 'leaseId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  QueueCompleteRequest clone() =>
      QueueCompleteRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  QueueCompleteRequest copyWith(void Function(QueueCompleteRequest) updates) =>
      super.copyWith((message) => updates(message as QueueCompleteRequest))
          as QueueCompleteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueueCompleteRequest create() => QueueCompleteRequest._();
  QueueCompleteRequest createEmptyInstance() => create();
  static $pb.PbList<QueueCompleteRequest> createRepeated() =>
      $pb.PbList<QueueCompleteRequest>();
  @$core.pragma('dart2js:noInline')
  static QueueCompleteRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueueCompleteRequest>(create);
  static QueueCompleteRequest? _defaultInstance;

  /// The nitric name for the queue
  ///  this will automatically be resolved to the provider specific queue identifier.
  @$pb.TagNumber(1)
  $core.String get queueName => $_getSZ(0);
  @$pb.TagNumber(1)
  set queueName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasQueueName() => $_has(0);
  @$pb.TagNumber(1)
  void clearQueueName() => clearField(1);

  /// Lease id of the message to be completed
  @$pb.TagNumber(2)
  $core.String get leaseId => $_getSZ(1);
  @$pb.TagNumber(2)
  set leaseId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasLeaseId() => $_has(1);
  @$pb.TagNumber(2)
  void clearLeaseId() => clearField(2);
}

class QueueCompleteResponse extends $pb.GeneratedMessage {
  factory QueueCompleteResponse() => create();
  QueueCompleteResponse._() : super();
  factory QueueCompleteResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueueCompleteResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueueCompleteResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.queues.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  QueueCompleteResponse clone() =>
      QueueCompleteResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  QueueCompleteResponse copyWith(
          void Function(QueueCompleteResponse) updates) =>
      super.copyWith((message) => updates(message as QueueCompleteResponse))
          as QueueCompleteResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueueCompleteResponse create() => QueueCompleteResponse._();
  QueueCompleteResponse createEmptyInstance() => create();
  static $pb.PbList<QueueCompleteResponse> createRepeated() =>
      $pb.PbList<QueueCompleteResponse>();
  @$core.pragma('dart2js:noInline')
  static QueueCompleteResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueueCompleteResponse>(create);
  static QueueCompleteResponse? _defaultInstance;
}

enum QueueMessage_Content { structPayload, notSet }

/// An message to be sent to a queue.
class QueueMessage extends $pb.GeneratedMessage {
  factory QueueMessage({
    $12.Struct? structPayload,
  }) {
    final $result = create();
    if (structPayload != null) {
      $result.structPayload = structPayload;
    }
    return $result;
  }
  QueueMessage._() : super();
  factory QueueMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueueMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, QueueMessage_Content>
      _QueueMessage_ContentByTag = {
    1: QueueMessage_Content.structPayload,
    0: QueueMessage_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueueMessage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.queues.v1'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<$12.Struct>(1, _omitFieldNames ? '' : 'structPayload',
        subBuilder: $12.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  QueueMessage clone() => QueueMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  QueueMessage copyWith(void Function(QueueMessage) updates) =>
      super.copyWith((message) => updates(message as QueueMessage))
          as QueueMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueueMessage create() => QueueMessage._();
  QueueMessage createEmptyInstance() => create();
  static $pb.PbList<QueueMessage> createRepeated() =>
      $pb.PbList<QueueMessage>();
  @$core.pragma('dart2js:noInline')
  static QueueMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueueMessage>(create);
  static QueueMessage? _defaultInstance;

  QueueMessage_Content whichContent() =>
      _QueueMessage_ContentByTag[$_whichOneof(0)]!;
  void clearContent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $12.Struct get structPayload => $_getN(0);
  @$pb.TagNumber(1)
  set structPayload($12.Struct v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStructPayload() => $_has(0);
  @$pb.TagNumber(1)
  void clearStructPayload() => clearField(1);
  @$pb.TagNumber(1)
  $12.Struct ensureStructPayload() => $_ensure(0);
}

class DequeuedMessage extends $pb.GeneratedMessage {
  factory DequeuedMessage({
    $core.String? leaseId,
    QueueMessage? message,
  }) {
    final $result = create();
    if (leaseId != null) {
      $result.leaseId = leaseId;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  DequeuedMessage._() : super();
  factory DequeuedMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DequeuedMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DequeuedMessage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.queues.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'leaseId')
    ..aOM<QueueMessage>(2, _omitFieldNames ? '' : 'message',
        subBuilder: QueueMessage.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DequeuedMessage clone() => DequeuedMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DequeuedMessage copyWith(void Function(DequeuedMessage) updates) =>
      super.copyWith((message) => updates(message as DequeuedMessage))
          as DequeuedMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DequeuedMessage create() => DequeuedMessage._();
  DequeuedMessage createEmptyInstance() => create();
  static $pb.PbList<DequeuedMessage> createRepeated() =>
      $pb.PbList<DequeuedMessage>();
  @$core.pragma('dart2js:noInline')
  static DequeuedMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DequeuedMessage>(create);
  static DequeuedMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get leaseId => $_getSZ(0);
  @$pb.TagNumber(1)
  set leaseId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLeaseId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeaseId() => clearField(1);

  @$pb.TagNumber(2)
  QueueMessage get message => $_getN(1);
  @$pb.TagNumber(2)
  set message(QueueMessage v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
  @$pb.TagNumber(2)
  QueueMessage ensureMessage() => $_ensure(1);
}

class FailedEnqueueMessage extends $pb.GeneratedMessage {
  factory FailedEnqueueMessage({
    QueueMessage? message,
    $core.String? details,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    if (details != null) {
      $result.details = details;
    }
    return $result;
  }
  FailedEnqueueMessage._() : super();
  factory FailedEnqueueMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FailedEnqueueMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FailedEnqueueMessage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.queues.v1'),
      createEmptyInstance: create)
    ..aOM<QueueMessage>(1, _omitFieldNames ? '' : 'message',
        subBuilder: QueueMessage.create)
    ..aOS(2, _omitFieldNames ? '' : 'details')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FailedEnqueueMessage clone() =>
      FailedEnqueueMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FailedEnqueueMessage copyWith(void Function(FailedEnqueueMessage) updates) =>
      super.copyWith((message) => updates(message as FailedEnqueueMessage))
          as FailedEnqueueMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FailedEnqueueMessage create() => FailedEnqueueMessage._();
  FailedEnqueueMessage createEmptyInstance() => create();
  static $pb.PbList<FailedEnqueueMessage> createRepeated() =>
      $pb.PbList<FailedEnqueueMessage>();
  @$core.pragma('dart2js:noInline')
  static FailedEnqueueMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FailedEnqueueMessage>(create);
  static FailedEnqueueMessage? _defaultInstance;

  /// The message that failed to be pushed
  @$pb.TagNumber(1)
  QueueMessage get message => $_getN(0);
  @$pb.TagNumber(1)
  set message(QueueMessage v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
  @$pb.TagNumber(1)
  QueueMessage ensureMessage() => $_ensure(0);

  /// A description of the failure
  @$pb.TagNumber(2)
  $core.String get details => $_getSZ(1);
  @$pb.TagNumber(2)
  set details($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDetails() => $_has(1);
  @$pb.TagNumber(2)
  void clearDetails() => clearField(2);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
