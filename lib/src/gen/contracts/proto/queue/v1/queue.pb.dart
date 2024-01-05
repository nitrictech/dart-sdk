//
//  Generated code. Do not modify.
//  source: contracts/proto/queue/v1/queue.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import "package:protobuf_wellknown/protobuf_wellknown.dart" as $9;

/// Request to push a single event to a queue
class QueueSendRequest extends $pb.GeneratedMessage {
  factory QueueSendRequest({
    $core.String? queue,
    NitricTask? task,
  }) {
    final $result = create();
    if (queue != null) {
      $result.queue = queue;
    }
    if (task != null) {
      $result.task = task;
    }
    return $result;
  }
  QueueSendRequest._() : super();
  factory QueueSendRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueueSendRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueueSendRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.queue.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'queue')
    ..aOM<NitricTask>(2, _omitFieldNames ? '' : 'task',
        subBuilder: NitricTask.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  QueueSendRequest clone() => QueueSendRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  QueueSendRequest copyWith(void Function(QueueSendRequest) updates) =>
      super.copyWith((message) => updates(message as QueueSendRequest))
          as QueueSendRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueueSendRequest create() => QueueSendRequest._();
  QueueSendRequest createEmptyInstance() => create();
  static $pb.PbList<QueueSendRequest> createRepeated() =>
      $pb.PbList<QueueSendRequest>();
  @$core.pragma('dart2js:noInline')
  static QueueSendRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueueSendRequest>(create);
  static QueueSendRequest? _defaultInstance;

  /// The Nitric name for the queue
  /// this will automatically be resolved to the provider specific queue identifier.
  @$pb.TagNumber(1)
  $core.String get queue => $_getSZ(0);
  @$pb.TagNumber(1)
  set queue($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasQueue() => $_has(0);
  @$pb.TagNumber(1)
  void clearQueue() => clearField(1);

  /// The task to push to the queue
  @$pb.TagNumber(2)
  NitricTask get task => $_getN(1);
  @$pb.TagNumber(2)
  set task(NitricTask v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTask() => $_has(1);
  @$pb.TagNumber(2)
  void clearTask() => clearField(2);
  @$pb.TagNumber(2)
  NitricTask ensureTask() => $_ensure(1);
}

/// Result of pushing a single task to a queue
class QueueSendResponse extends $pb.GeneratedMessage {
  factory QueueSendResponse() => create();
  QueueSendResponse._() : super();
  factory QueueSendResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueueSendResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueueSendResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.queue.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  QueueSendResponse clone() => QueueSendResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  QueueSendResponse copyWith(void Function(QueueSendResponse) updates) =>
      super.copyWith((message) => updates(message as QueueSendResponse))
          as QueueSendResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueueSendResponse create() => QueueSendResponse._();
  QueueSendResponse createEmptyInstance() => create();
  static $pb.PbList<QueueSendResponse> createRepeated() =>
      $pb.PbList<QueueSendResponse>();
  @$core.pragma('dart2js:noInline')
  static QueueSendResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueueSendResponse>(create);
  static QueueSendResponse? _defaultInstance;
}

class QueueSendBatchRequest extends $pb.GeneratedMessage {
  factory QueueSendBatchRequest({
    $core.String? queue,
    $core.Iterable<NitricTask>? tasks,
  }) {
    final $result = create();
    if (queue != null) {
      $result.queue = queue;
    }
    if (tasks != null) {
      $result.tasks.addAll(tasks);
    }
    return $result;
  }
  QueueSendBatchRequest._() : super();
  factory QueueSendBatchRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueueSendBatchRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueueSendBatchRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.queue.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'queue')
    ..pc<NitricTask>(2, _omitFieldNames ? '' : 'tasks', $pb.PbFieldType.PM,
        subBuilder: NitricTask.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  QueueSendBatchRequest clone() =>
      QueueSendBatchRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  QueueSendBatchRequest copyWith(
          void Function(QueueSendBatchRequest) updates) =>
      super.copyWith((message) => updates(message as QueueSendBatchRequest))
          as QueueSendBatchRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueueSendBatchRequest create() => QueueSendBatchRequest._();
  QueueSendBatchRequest createEmptyInstance() => create();
  static $pb.PbList<QueueSendBatchRequest> createRepeated() =>
      $pb.PbList<QueueSendBatchRequest>();
  @$core.pragma('dart2js:noInline')
  static QueueSendBatchRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueueSendBatchRequest>(create);
  static QueueSendBatchRequest? _defaultInstance;

  /// The Nitric name for the queue
  /// this will automatically be resolved to the provider specific queue identifier.
  @$pb.TagNumber(1)
  $core.String get queue => $_getSZ(0);
  @$pb.TagNumber(1)
  set queue($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasQueue() => $_has(0);
  @$pb.TagNumber(1)
  void clearQueue() => clearField(1);

  /// Array of tasks to push to the queue
  @$pb.TagNumber(2)
  $core.List<NitricTask> get tasks => $_getList(1);
}

/// Response for sending a collection of tasks
class QueueSendBatchResponse extends $pb.GeneratedMessage {
  factory QueueSendBatchResponse({
    $core.Iterable<FailedTask>? failedTasks,
  }) {
    final $result = create();
    if (failedTasks != null) {
      $result.failedTasks.addAll(failedTasks);
    }
    return $result;
  }
  QueueSendBatchResponse._() : super();
  factory QueueSendBatchResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueueSendBatchResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueueSendBatchResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.queue.v1'),
      createEmptyInstance: create)
    ..pc<FailedTask>(
        1, _omitFieldNames ? '' : 'failedTasks', $pb.PbFieldType.PM,
        protoName: 'failedTasks', subBuilder: FailedTask.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  QueueSendBatchResponse clone() =>
      QueueSendBatchResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  QueueSendBatchResponse copyWith(
          void Function(QueueSendBatchResponse) updates) =>
      super.copyWith((message) => updates(message as QueueSendBatchResponse))
          as QueueSendBatchResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueueSendBatchResponse create() => QueueSendBatchResponse._();
  QueueSendBatchResponse createEmptyInstance() => create();
  static $pb.PbList<QueueSendBatchResponse> createRepeated() =>
      $pb.PbList<QueueSendBatchResponse>();
  @$core.pragma('dart2js:noInline')
  static QueueSendBatchResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueueSendBatchResponse>(create);
  static QueueSendBatchResponse? _defaultInstance;

  /// A list of tasks that failed to be queued
  @$pb.TagNumber(1)
  $core.List<FailedTask> get failedTasks => $_getList(0);
}

class QueueReceiveRequest extends $pb.GeneratedMessage {
  factory QueueReceiveRequest({
    $core.String? queue,
    $core.int? depth,
  }) {
    final $result = create();
    if (queue != null) {
      $result.queue = queue;
    }
    if (depth != null) {
      $result.depth = depth;
    }
    return $result;
  }
  QueueReceiveRequest._() : super();
  factory QueueReceiveRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueueReceiveRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueueReceiveRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.queue.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'queue')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'depth', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  QueueReceiveRequest clone() => QueueReceiveRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  QueueReceiveRequest copyWith(void Function(QueueReceiveRequest) updates) =>
      super.copyWith((message) => updates(message as QueueReceiveRequest))
          as QueueReceiveRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueueReceiveRequest create() => QueueReceiveRequest._();
  QueueReceiveRequest createEmptyInstance() => create();
  static $pb.PbList<QueueReceiveRequest> createRepeated() =>
      $pb.PbList<QueueReceiveRequest>();
  @$core.pragma('dart2js:noInline')
  static QueueReceiveRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueueReceiveRequest>(create);
  static QueueReceiveRequest? _defaultInstance;

  /// The nitric name for the queue
  /// this will automatically be resolved to the provider specific queue identifier.
  @$pb.TagNumber(1)
  $core.String get queue => $_getSZ(0);
  @$pb.TagNumber(1)
  set queue($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasQueue() => $_has(0);
  @$pb.TagNumber(1)
  void clearQueue() => clearField(1);

  /// The max number of items to pop off the queue, may be capped by provider specific limitations
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

class QueueReceiveResponse extends $pb.GeneratedMessage {
  factory QueueReceiveResponse({
    $core.Iterable<NitricTask>? tasks,
  }) {
    final $result = create();
    if (tasks != null) {
      $result.tasks.addAll(tasks);
    }
    return $result;
  }
  QueueReceiveResponse._() : super();
  factory QueueReceiveResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueueReceiveResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueueReceiveResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.queue.v1'),
      createEmptyInstance: create)
    ..pc<NitricTask>(1, _omitFieldNames ? '' : 'tasks', $pb.PbFieldType.PM,
        subBuilder: NitricTask.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  QueueReceiveResponse clone() =>
      QueueReceiveResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  QueueReceiveResponse copyWith(void Function(QueueReceiveResponse) updates) =>
      super.copyWith((message) => updates(message as QueueReceiveResponse))
          as QueueReceiveResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueueReceiveResponse create() => QueueReceiveResponse._();
  QueueReceiveResponse createEmptyInstance() => create();
  static $pb.PbList<QueueReceiveResponse> createRepeated() =>
      $pb.PbList<QueueReceiveResponse>();
  @$core.pragma('dart2js:noInline')
  static QueueReceiveResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueueReceiveResponse>(create);
  static QueueReceiveResponse? _defaultInstance;

  /// Array of tasks popped off the queue
  @$pb.TagNumber(1)
  $core.List<NitricTask> get tasks => $_getList(0);
}

class QueueCompleteRequest extends $pb.GeneratedMessage {
  factory QueueCompleteRequest({
    $core.String? queue,
    $core.String? leaseId,
  }) {
    final $result = create();
    if (queue != null) {
      $result.queue = queue;
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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.queue.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'queue')
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
  $core.String get queue => $_getSZ(0);
  @$pb.TagNumber(1)
  set queue($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasQueue() => $_has(0);
  @$pb.TagNumber(1)
  void clearQueue() => clearField(1);

  /// Lease id of the task to be completed
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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.queue.v1'),
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

class FailedTask extends $pb.GeneratedMessage {
  factory FailedTask({
    NitricTask? task,
    $core.String? message,
  }) {
    final $result = create();
    if (task != null) {
      $result.task = task;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  FailedTask._() : super();
  factory FailedTask.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FailedTask.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FailedTask',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.queue.v1'),
      createEmptyInstance: create)
    ..aOM<NitricTask>(1, _omitFieldNames ? '' : 'task',
        subBuilder: NitricTask.create)
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  FailedTask clone() => FailedTask()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  FailedTask copyWith(void Function(FailedTask) updates) =>
      super.copyWith((message) => updates(message as FailedTask)) as FailedTask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FailedTask create() => FailedTask._();
  FailedTask createEmptyInstance() => create();
  static $pb.PbList<FailedTask> createRepeated() => $pb.PbList<FailedTask>();
  @$core.pragma('dart2js:noInline')
  static FailedTask getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FailedTask>(create);
  static FailedTask? _defaultInstance;

  /// The task that failed to be pushed
  @$pb.TagNumber(1)
  NitricTask get task => $_getN(0);
  @$pb.TagNumber(1)
  set task(NitricTask v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTask() => $_has(0);
  @$pb.TagNumber(1)
  void clearTask() => clearField(1);
  @$pb.TagNumber(1)
  NitricTask ensureTask() => $_ensure(0);

  /// A message describing the failure
  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

/// A task to be sent or received from a queue.
class NitricTask extends $pb.GeneratedMessage {
  factory NitricTask({
    $core.String? id,
    $core.String? leaseId,
    $core.String? payloadType,
    $9.Struct? payload,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (leaseId != null) {
      $result.leaseId = leaseId;
    }
    if (payloadType != null) {
      $result.payloadType = payloadType;
    }
    if (payload != null) {
      $result.payload = payload;
    }
    return $result;
  }
  NitricTask._() : super();
  factory NitricTask.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NitricTask.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NitricTask',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.queue.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'leaseId')
    ..aOS(3, _omitFieldNames ? '' : 'payloadType')
    ..aOM<$9.Struct>(4, _omitFieldNames ? '' : 'payload',
        subBuilder: $9.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  NitricTask clone() => NitricTask()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  NitricTask copyWith(void Function(NitricTask) updates) =>
      super.copyWith((message) => updates(message as NitricTask)) as NitricTask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NitricTask create() => NitricTask._();
  NitricTask createEmptyInstance() => create();
  static $pb.PbList<NitricTask> createRepeated() => $pb.PbList<NitricTask>();
  @$core.pragma('dart2js:noInline')
  static NitricTask getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NitricTask>(create);
  static NitricTask? _defaultInstance;

  /// A unique id for the task
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

  /// The lease id unique to the pop request, this must be used to complete, extend the lease or release the task.
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

  /// A content hint for the tasks payload
  @$pb.TagNumber(3)
  $core.String get payloadType => $_getSZ(2);
  @$pb.TagNumber(3)
  set payloadType($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPayloadType() => $_has(2);
  @$pb.TagNumber(3)
  void clearPayloadType() => clearField(3);

  /// The payload of the task
  @$pb.TagNumber(4)
  $9.Struct get payload => $_getN(3);
  @$pb.TagNumber(4)
  set payload($9.Struct v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasPayload() => $_has(3);
  @$pb.TagNumber(4)
  void clearPayload() => clearField(4);
  @$pb.TagNumber(4)
  $9.Struct ensurePayload() => $_ensure(3);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
