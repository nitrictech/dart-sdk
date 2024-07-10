//
//  Generated code. Do not modify.
//  source: nitric/proto/storage/v1/storage.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/duration.pb.dart' as $13;
import 'storage.pbenum.dart';

export 'storage.pbenum.dart';

enum ClientMessage_Content { registrationRequest, blobEventResponse, notSet }

/// ClientMessages are sent from the service to the nitric server
class ClientMessage extends $pb.GeneratedMessage {
  factory ClientMessage({
    $core.String? id,
    RegistrationRequest? registrationRequest,
    BlobEventResponse? blobEventResponse,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (registrationRequest != null) {
      $result.registrationRequest = registrationRequest;
    }
    if (blobEventResponse != null) {
      $result.blobEventResponse = blobEventResponse;
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
    3: ClientMessage_Content.blobEventResponse,
    0: ClientMessage_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClientMessage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.storage.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<RegistrationRequest>(2, _omitFieldNames ? '' : 'registrationRequest',
        subBuilder: RegistrationRequest.create)
    ..aOM<BlobEventResponse>(3, _omitFieldNames ? '' : 'blobEventResponse',
        subBuilder: BlobEventResponse.create)
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

  /// Watch for changes on a bucket
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

  /// Response to a blob event (change to a blob)
  @$pb.TagNumber(3)
  BlobEventResponse get blobEventResponse => $_getN(2);
  @$pb.TagNumber(3)
  set blobEventResponse(BlobEventResponse v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasBlobEventResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearBlobEventResponse() => clearField(3);
  @$pb.TagNumber(3)
  BlobEventResponse ensureBlobEventResponse() => $_ensure(2);
}

enum ServerMessage_Content { registrationResponse, blobEventRequest, notSet }

/// ServerMessages are sent from the nitric server to the service
class ServerMessage extends $pb.GeneratedMessage {
  factory ServerMessage({
    $core.String? id,
    RegistrationResponse? registrationResponse,
    BlobEventRequest? blobEventRequest,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (registrationResponse != null) {
      $result.registrationResponse = registrationResponse;
    }
    if (blobEventRequest != null) {
      $result.blobEventRequest = blobEventRequest;
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
    3: ServerMessage_Content.blobEventRequest,
    0: ServerMessage_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ServerMessage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.storage.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<RegistrationResponse>(
        2, _omitFieldNames ? '' : 'registrationResponse',
        subBuilder: RegistrationResponse.create)
    ..aOM<BlobEventRequest>(3, _omitFieldNames ? '' : 'blobEventRequest',
        subBuilder: BlobEventRequest.create)
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

  /// Watch for changes on a bucket
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

  /// Event for a blob in a bucket
  @$pb.TagNumber(3)
  BlobEventRequest get blobEventRequest => $_getN(2);
  @$pb.TagNumber(3)
  set blobEventRequest(BlobEventRequest v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasBlobEventRequest() => $_has(2);
  @$pb.TagNumber(3)
  void clearBlobEventRequest() => clearField(3);
  @$pb.TagNumber(3)
  BlobEventRequest ensureBlobEventRequest() => $_ensure(2);
}

enum BlobEventRequest_Event { blobEvent, notSet }

class BlobEventRequest extends $pb.GeneratedMessage {
  factory BlobEventRequest({
    $core.String? bucketName,
    BlobEvent? blobEvent,
  }) {
    final $result = create();
    if (bucketName != null) {
      $result.bucketName = bucketName;
    }
    if (blobEvent != null) {
      $result.blobEvent = blobEvent;
    }
    return $result;
  }
  BlobEventRequest._() : super();
  factory BlobEventRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BlobEventRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, BlobEventRequest_Event>
      _BlobEventRequest_EventByTag = {
    10: BlobEventRequest_Event.blobEvent,
    0: BlobEventRequest_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BlobEventRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.storage.v1'),
      createEmptyInstance: create)
    ..oo(0, [10])
    ..aOS(1, _omitFieldNames ? '' : 'bucketName')
    ..aOM<BlobEvent>(10, _omitFieldNames ? '' : 'blobEvent',
        subBuilder: BlobEvent.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BlobEventRequest clone() => BlobEventRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BlobEventRequest copyWith(void Function(BlobEventRequest) updates) =>
      super.copyWith((message) => updates(message as BlobEventRequest))
          as BlobEventRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BlobEventRequest create() => BlobEventRequest._();
  BlobEventRequest createEmptyInstance() => create();
  static $pb.PbList<BlobEventRequest> createRepeated() =>
      $pb.PbList<BlobEventRequest>();
  @$core.pragma('dart2js:noInline')
  static BlobEventRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BlobEventRequest>(create);
  static BlobEventRequest? _defaultInstance;

  BlobEventRequest_Event whichEvent() =>
      _BlobEventRequest_EventByTag[$_whichOneof(0)]!;
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get bucketName => $_getSZ(0);
  @$pb.TagNumber(1)
  set bucketName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBucketName() => $_has(0);
  @$pb.TagNumber(1)
  void clearBucketName() => clearField(1);

  @$pb.TagNumber(10)
  BlobEvent get blobEvent => $_getN(1);
  @$pb.TagNumber(10)
  set blobEvent(BlobEvent v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasBlobEvent() => $_has(1);
  @$pb.TagNumber(10)
  void clearBlobEvent() => clearField(10);
  @$pb.TagNumber(10)
  BlobEvent ensureBlobEvent() => $_ensure(1);
}

class BlobEvent extends $pb.GeneratedMessage {
  factory BlobEvent({
    $core.String? key,
    BlobEventType? type,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  BlobEvent._() : super();
  factory BlobEvent.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BlobEvent.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BlobEvent',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.storage.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..e<BlobEventType>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE,
        defaultOrMaker: BlobEventType.Created,
        valueOf: BlobEventType.valueOf,
        enumValues: BlobEventType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BlobEvent clone() => BlobEvent()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BlobEvent copyWith(void Function(BlobEvent) updates) =>
      super.copyWith((message) => updates(message as BlobEvent)) as BlobEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BlobEvent create() => BlobEvent._();
  BlobEvent createEmptyInstance() => create();
  static $pb.PbList<BlobEvent> createRepeated() => $pb.PbList<BlobEvent>();
  @$core.pragma('dart2js:noInline')
  static BlobEvent getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlobEvent>(create);
  static BlobEvent? _defaultInstance;

  /// The key of the blob the event is for
  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  /// The type of event that occurred
  @$pb.TagNumber(2)
  BlobEventType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(BlobEventType v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

class BlobEventResponse extends $pb.GeneratedMessage {
  factory BlobEventResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  BlobEventResponse._() : super();
  factory BlobEventResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BlobEventResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BlobEventResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.storage.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BlobEventResponse clone() => BlobEventResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BlobEventResponse copyWith(void Function(BlobEventResponse) updates) =>
      super.copyWith((message) => updates(message as BlobEventResponse))
          as BlobEventResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BlobEventResponse create() => BlobEventResponse._();
  BlobEventResponse createEmptyInstance() => create();
  static $pb.PbList<BlobEventResponse> createRepeated() =>
      $pb.PbList<BlobEventResponse>();
  @$core.pragma('dart2js:noInline')
  static BlobEventResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BlobEventResponse>(create);
  static BlobEventResponse? _defaultInstance;

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

class RegistrationRequest extends $pb.GeneratedMessage {
  factory RegistrationRequest({
    $core.String? bucketName,
    BlobEventType? blobEventType,
    $core.String? keyPrefixFilter,
  }) {
    final $result = create();
    if (bucketName != null) {
      $result.bucketName = bucketName;
    }
    if (blobEventType != null) {
      $result.blobEventType = blobEventType;
    }
    if (keyPrefixFilter != null) {
      $result.keyPrefixFilter = keyPrefixFilter;
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
          _omitMessageNames ? '' : 'nitric.proto.storage.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'bucketName')
    ..e<BlobEventType>(
        2, _omitFieldNames ? '' : 'blobEventType', $pb.PbFieldType.OE,
        defaultOrMaker: BlobEventType.Created,
        valueOf: BlobEventType.valueOf,
        enumValues: BlobEventType.values)
    ..aOS(3, _omitFieldNames ? '' : 'keyPrefixFilter')
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

  /// Name of the bucket to watch
  @$pb.TagNumber(1)
  $core.String get bucketName => $_getSZ(0);
  @$pb.TagNumber(1)
  set bucketName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBucketName() => $_has(0);
  @$pb.TagNumber(1)
  void clearBucketName() => clearField(1);

  /// Event type to listen for
  @$pb.TagNumber(2)
  BlobEventType get blobEventType => $_getN(1);
  @$pb.TagNumber(2)
  set blobEventType(BlobEventType v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasBlobEventType() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlobEventType() => clearField(2);

  /// A blob key prefix to filter events by
  @$pb.TagNumber(3)
  $core.String get keyPrefixFilter => $_getSZ(2);
  @$pb.TagNumber(3)
  set keyPrefixFilter($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasKeyPrefixFilter() => $_has(2);
  @$pb.TagNumber(3)
  void clearKeyPrefixFilter() => clearField(3);
}

class RegistrationResponse extends $pb.GeneratedMessage {
  factory RegistrationResponse({
    $core.String? id,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    return $result;
  }
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
          _omitMessageNames ? '' : 'nitric.proto.storage.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
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

  /// The ID of the registration
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

/// Request to put (create/update) a storage item
class StorageWriteRequest extends $pb.GeneratedMessage {
  factory StorageWriteRequest({
    $core.String? bucketName,
    $core.String? key,
    $core.List<$core.int>? body,
  }) {
    final $result = create();
    if (bucketName != null) {
      $result.bucketName = bucketName;
    }
    if (key != null) {
      $result.key = key;
    }
    if (body != null) {
      $result.body = body;
    }
    return $result;
  }
  StorageWriteRequest._() : super();
  factory StorageWriteRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StorageWriteRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StorageWriteRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.storage.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'bucketName')
    ..aOS(2, _omitFieldNames ? '' : 'key')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'body', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StorageWriteRequest clone() => StorageWriteRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StorageWriteRequest copyWith(void Function(StorageWriteRequest) updates) =>
      super.copyWith((message) => updates(message as StorageWriteRequest))
          as StorageWriteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageWriteRequest create() => StorageWriteRequest._();
  StorageWriteRequest createEmptyInstance() => create();
  static $pb.PbList<StorageWriteRequest> createRepeated() =>
      $pb.PbList<StorageWriteRequest>();
  @$core.pragma('dart2js:noInline')
  static StorageWriteRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StorageWriteRequest>(create);
  static StorageWriteRequest? _defaultInstance;

  /// Nitric name of the bucket to store in
  ///  this will be automatically resolved to the provider specific bucket identifier.
  @$pb.TagNumber(1)
  $core.String get bucketName => $_getSZ(0);
  @$pb.TagNumber(1)
  set bucketName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBucketName() => $_has(0);
  @$pb.TagNumber(1)
  void clearBucketName() => clearField(1);

  /// Key to store the item under
  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  /// bytes array to store
  @$pb.TagNumber(3)
  $core.List<$core.int> get body => $_getN(2);
  @$pb.TagNumber(3)
  set body($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasBody() => $_has(2);
  @$pb.TagNumber(3)
  void clearBody() => clearField(3);
}

/// Result of putting a storage item
class StorageWriteResponse extends $pb.GeneratedMessage {
  factory StorageWriteResponse() => create();
  StorageWriteResponse._() : super();
  factory StorageWriteResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StorageWriteResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StorageWriteResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.storage.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StorageWriteResponse clone() =>
      StorageWriteResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StorageWriteResponse copyWith(void Function(StorageWriteResponse) updates) =>
      super.copyWith((message) => updates(message as StorageWriteResponse))
          as StorageWriteResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageWriteResponse create() => StorageWriteResponse._();
  StorageWriteResponse createEmptyInstance() => create();
  static $pb.PbList<StorageWriteResponse> createRepeated() =>
      $pb.PbList<StorageWriteResponse>();
  @$core.pragma('dart2js:noInline')
  static StorageWriteResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StorageWriteResponse>(create);
  static StorageWriteResponse? _defaultInstance;
}

/// Request to retrieve a storage item
class StorageReadRequest extends $pb.GeneratedMessage {
  factory StorageReadRequest({
    $core.String? bucketName,
    $core.String? key,
  }) {
    final $result = create();
    if (bucketName != null) {
      $result.bucketName = bucketName;
    }
    if (key != null) {
      $result.key = key;
    }
    return $result;
  }
  StorageReadRequest._() : super();
  factory StorageReadRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StorageReadRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StorageReadRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.storage.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'bucketName')
    ..aOS(2, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StorageReadRequest clone() => StorageReadRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StorageReadRequest copyWith(void Function(StorageReadRequest) updates) =>
      super.copyWith((message) => updates(message as StorageReadRequest))
          as StorageReadRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageReadRequest create() => StorageReadRequest._();
  StorageReadRequest createEmptyInstance() => create();
  static $pb.PbList<StorageReadRequest> createRepeated() =>
      $pb.PbList<StorageReadRequest>();
  @$core.pragma('dart2js:noInline')
  static StorageReadRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StorageReadRequest>(create);
  static StorageReadRequest? _defaultInstance;

  /// Nitric name of the bucket to retrieve from
  ///  this will be automatically resolved to the provider specific bucket identifier.
  @$pb.TagNumber(1)
  $core.String get bucketName => $_getSZ(0);
  @$pb.TagNumber(1)
  set bucketName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBucketName() => $_has(0);
  @$pb.TagNumber(1)
  void clearBucketName() => clearField(1);

  /// Key of item to retrieve
  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);
}

/// Returned storage item
class StorageReadResponse extends $pb.GeneratedMessage {
  factory StorageReadResponse({
    $core.List<$core.int>? body,
  }) {
    final $result = create();
    if (body != null) {
      $result.body = body;
    }
    return $result;
  }
  StorageReadResponse._() : super();
  factory StorageReadResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StorageReadResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StorageReadResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.storage.v1'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'body', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StorageReadResponse clone() => StorageReadResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StorageReadResponse copyWith(void Function(StorageReadResponse) updates) =>
      super.copyWith((message) => updates(message as StorageReadResponse))
          as StorageReadResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageReadResponse create() => StorageReadResponse._();
  StorageReadResponse createEmptyInstance() => create();
  static $pb.PbList<StorageReadResponse> createRepeated() =>
      $pb.PbList<StorageReadResponse>();
  @$core.pragma('dart2js:noInline')
  static StorageReadResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StorageReadResponse>(create);
  static StorageReadResponse? _defaultInstance;

  /// The body bytes of the retrieved storage item
  @$pb.TagNumber(1)
  $core.List<$core.int> get body => $_getN(0);
  @$pb.TagNumber(1)
  set body($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
}

/// Request to delete a storage item
class StorageDeleteRequest extends $pb.GeneratedMessage {
  factory StorageDeleteRequest({
    $core.String? bucketName,
    $core.String? key,
  }) {
    final $result = create();
    if (bucketName != null) {
      $result.bucketName = bucketName;
    }
    if (key != null) {
      $result.key = key;
    }
    return $result;
  }
  StorageDeleteRequest._() : super();
  factory StorageDeleteRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StorageDeleteRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StorageDeleteRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.storage.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'bucketName')
    ..aOS(2, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StorageDeleteRequest clone() =>
      StorageDeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StorageDeleteRequest copyWith(void Function(StorageDeleteRequest) updates) =>
      super.copyWith((message) => updates(message as StorageDeleteRequest))
          as StorageDeleteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageDeleteRequest create() => StorageDeleteRequest._();
  StorageDeleteRequest createEmptyInstance() => create();
  static $pb.PbList<StorageDeleteRequest> createRepeated() =>
      $pb.PbList<StorageDeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static StorageDeleteRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StorageDeleteRequest>(create);
  static StorageDeleteRequest? _defaultInstance;

  /// Name of the bucket to delete from
  @$pb.TagNumber(1)
  $core.String get bucketName => $_getSZ(0);
  @$pb.TagNumber(1)
  set bucketName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBucketName() => $_has(0);
  @$pb.TagNumber(1)
  void clearBucketName() => clearField(1);

  /// Key of item to delete
  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);
}

/// Result of deleting a storage item
class StorageDeleteResponse extends $pb.GeneratedMessage {
  factory StorageDeleteResponse() => create();
  StorageDeleteResponse._() : super();
  factory StorageDeleteResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StorageDeleteResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StorageDeleteResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.storage.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StorageDeleteResponse clone() =>
      StorageDeleteResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StorageDeleteResponse copyWith(
          void Function(StorageDeleteResponse) updates) =>
      super.copyWith((message) => updates(message as StorageDeleteResponse))
          as StorageDeleteResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageDeleteResponse create() => StorageDeleteResponse._();
  StorageDeleteResponse createEmptyInstance() => create();
  static $pb.PbList<StorageDeleteResponse> createRepeated() =>
      $pb.PbList<StorageDeleteResponse>();
  @$core.pragma('dart2js:noInline')
  static StorageDeleteResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StorageDeleteResponse>(create);
  static StorageDeleteResponse? _defaultInstance;
}

/// Request to generate a pre-signed URL for a blob to perform a specific operation, such as read or write.
class StoragePreSignUrlRequest extends $pb.GeneratedMessage {
  factory StoragePreSignUrlRequest({
    $core.String? bucketName,
    $core.String? key,
    StoragePreSignUrlRequest_Operation? operation,
    $13.Duration? expiry,
  }) {
    final $result = create();
    if (bucketName != null) {
      $result.bucketName = bucketName;
    }
    if (key != null) {
      $result.key = key;
    }
    if (operation != null) {
      $result.operation = operation;
    }
    if (expiry != null) {
      $result.expiry = expiry;
    }
    return $result;
  }
  StoragePreSignUrlRequest._() : super();
  factory StoragePreSignUrlRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StoragePreSignUrlRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StoragePreSignUrlRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.storage.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'bucketName')
    ..aOS(2, _omitFieldNames ? '' : 'key')
    ..e<StoragePreSignUrlRequest_Operation>(
        3, _omitFieldNames ? '' : 'operation', $pb.PbFieldType.OE,
        defaultOrMaker: StoragePreSignUrlRequest_Operation.READ,
        valueOf: StoragePreSignUrlRequest_Operation.valueOf,
        enumValues: StoragePreSignUrlRequest_Operation.values)
    ..aOM<$13.Duration>(4, _omitFieldNames ? '' : 'expiry',
        subBuilder: $13.Duration.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StoragePreSignUrlRequest clone() =>
      StoragePreSignUrlRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StoragePreSignUrlRequest copyWith(
          void Function(StoragePreSignUrlRequest) updates) =>
      super.copyWith((message) => updates(message as StoragePreSignUrlRequest))
          as StoragePreSignUrlRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StoragePreSignUrlRequest create() => StoragePreSignUrlRequest._();
  StoragePreSignUrlRequest createEmptyInstance() => create();
  static $pb.PbList<StoragePreSignUrlRequest> createRepeated() =>
      $pb.PbList<StoragePreSignUrlRequest>();
  @$core.pragma('dart2js:noInline')
  static StoragePreSignUrlRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StoragePreSignUrlRequest>(create);
  static StoragePreSignUrlRequest? _defaultInstance;

  /// Nitric name of the bucket to retrieve from
  ///  this will be automatically resolved to the provider specific bucket identifier.
  @$pb.TagNumber(1)
  $core.String get bucketName => $_getSZ(0);
  @$pb.TagNumber(1)
  set bucketName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBucketName() => $_has(0);
  @$pb.TagNumber(1)
  void clearBucketName() => clearField(1);

  /// Key of item to generate the signed URL for.
  /// The URL and the token it contains will only be valid for operations on this resource specifically.
  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);

  @$pb.TagNumber(3)
  StoragePreSignUrlRequest_Operation get operation => $_getN(2);
  @$pb.TagNumber(3)
  set operation(StoragePreSignUrlRequest_Operation v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasOperation() => $_has(2);
  @$pb.TagNumber(3)
  void clearOperation() => clearField(3);

  /// Expiry defined as as protobuf duration
  @$pb.TagNumber(4)
  $13.Duration get expiry => $_getN(3);
  @$pb.TagNumber(4)
  set expiry($13.Duration v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasExpiry() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpiry() => clearField(4);
  @$pb.TagNumber(4)
  $13.Duration ensureExpiry() => $_ensure(3);
}

class StoragePreSignUrlResponse extends $pb.GeneratedMessage {
  factory StoragePreSignUrlResponse({
    $core.String? url,
  }) {
    final $result = create();
    if (url != null) {
      $result.url = url;
    }
    return $result;
  }
  StoragePreSignUrlResponse._() : super();
  factory StoragePreSignUrlResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StoragePreSignUrlResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StoragePreSignUrlResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.storage.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StoragePreSignUrlResponse clone() =>
      StoragePreSignUrlResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StoragePreSignUrlResponse copyWith(
          void Function(StoragePreSignUrlResponse) updates) =>
      super.copyWith((message) => updates(message as StoragePreSignUrlResponse))
          as StoragePreSignUrlResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StoragePreSignUrlResponse create() => StoragePreSignUrlResponse._();
  StoragePreSignUrlResponse createEmptyInstance() => create();
  static $pb.PbList<StoragePreSignUrlResponse> createRepeated() =>
      $pb.PbList<StoragePreSignUrlResponse>();
  @$core.pragma('dart2js:noInline')
  static StoragePreSignUrlResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StoragePreSignUrlResponse>(create);
  static StoragePreSignUrlResponse? _defaultInstance;

  /// The pre-signed url, restricted to the operation, resource and expiry time specified in the request.
  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);
}

class StorageListBlobsRequest extends $pb.GeneratedMessage {
  factory StorageListBlobsRequest({
    $core.String? bucketName,
    $core.String? prefix,
  }) {
    final $result = create();
    if (bucketName != null) {
      $result.bucketName = bucketName;
    }
    if (prefix != null) {
      $result.prefix = prefix;
    }
    return $result;
  }
  StorageListBlobsRequest._() : super();
  factory StorageListBlobsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StorageListBlobsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StorageListBlobsRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.storage.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'bucketName')
    ..aOS(2, _omitFieldNames ? '' : 'prefix')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StorageListBlobsRequest clone() =>
      StorageListBlobsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StorageListBlobsRequest copyWith(
          void Function(StorageListBlobsRequest) updates) =>
      super.copyWith((message) => updates(message as StorageListBlobsRequest))
          as StorageListBlobsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageListBlobsRequest create() => StorageListBlobsRequest._();
  StorageListBlobsRequest createEmptyInstance() => create();
  static $pb.PbList<StorageListBlobsRequest> createRepeated() =>
      $pb.PbList<StorageListBlobsRequest>();
  @$core.pragma('dart2js:noInline')
  static StorageListBlobsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StorageListBlobsRequest>(create);
  static StorageListBlobsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bucketName => $_getSZ(0);
  @$pb.TagNumber(1)
  set bucketName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBucketName() => $_has(0);
  @$pb.TagNumber(1)
  void clearBucketName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get prefix => $_getSZ(1);
  @$pb.TagNumber(2)
  set prefix($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPrefix() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrefix() => clearField(2);
}

class Blob extends $pb.GeneratedMessage {
  factory Blob({
    $core.String? key,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    return $result;
  }
  Blob._() : super();
  factory Blob.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Blob.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Blob',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.storage.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Blob clone() => Blob()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Blob copyWith(void Function(Blob) updates) =>
      super.copyWith((message) => updates(message as Blob)) as Blob;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Blob create() => Blob._();
  Blob createEmptyInstance() => create();
  static $pb.PbList<Blob> createRepeated() => $pb.PbList<Blob>();
  @$core.pragma('dart2js:noInline')
  static Blob getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Blob>(create);
  static Blob? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);
}

class StorageListBlobsResponse extends $pb.GeneratedMessage {
  factory StorageListBlobsResponse({
    $core.Iterable<Blob>? blobs,
  }) {
    final $result = create();
    if (blobs != null) {
      $result.blobs.addAll(blobs);
    }
    return $result;
  }
  StorageListBlobsResponse._() : super();
  factory StorageListBlobsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StorageListBlobsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StorageListBlobsResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.storage.v1'),
      createEmptyInstance: create)
    ..pc<Blob>(1, _omitFieldNames ? '' : 'blobs', $pb.PbFieldType.PM,
        subBuilder: Blob.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StorageListBlobsResponse clone() =>
      StorageListBlobsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StorageListBlobsResponse copyWith(
          void Function(StorageListBlobsResponse) updates) =>
      super.copyWith((message) => updates(message as StorageListBlobsResponse))
          as StorageListBlobsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageListBlobsResponse create() => StorageListBlobsResponse._();
  StorageListBlobsResponse createEmptyInstance() => create();
  static $pb.PbList<StorageListBlobsResponse> createRepeated() =>
      $pb.PbList<StorageListBlobsResponse>();
  @$core.pragma('dart2js:noInline')
  static StorageListBlobsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StorageListBlobsResponse>(create);
  static StorageListBlobsResponse? _defaultInstance;

  /// keys of the blobs in the bucket
  @$pb.TagNumber(1)
  $core.List<Blob> get blobs => $_getList(0);
}

class StorageExistsRequest extends $pb.GeneratedMessage {
  factory StorageExistsRequest({
    $core.String? bucketName,
    $core.String? key,
  }) {
    final $result = create();
    if (bucketName != null) {
      $result.bucketName = bucketName;
    }
    if (key != null) {
      $result.key = key;
    }
    return $result;
  }
  StorageExistsRequest._() : super();
  factory StorageExistsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StorageExistsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StorageExistsRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.storage.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'bucketName')
    ..aOS(2, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StorageExistsRequest clone() =>
      StorageExistsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StorageExistsRequest copyWith(void Function(StorageExistsRequest) updates) =>
      super.copyWith((message) => updates(message as StorageExistsRequest))
          as StorageExistsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageExistsRequest create() => StorageExistsRequest._();
  StorageExistsRequest createEmptyInstance() => create();
  static $pb.PbList<StorageExistsRequest> createRepeated() =>
      $pb.PbList<StorageExistsRequest>();
  @$core.pragma('dart2js:noInline')
  static StorageExistsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StorageExistsRequest>(create);
  static StorageExistsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bucketName => $_getSZ(0);
  @$pb.TagNumber(1)
  set bucketName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBucketName() => $_has(0);
  @$pb.TagNumber(1)
  void clearBucketName() => clearField(1);

  /// Key of item to retrieve
  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);
}

class StorageExistsResponse extends $pb.GeneratedMessage {
  factory StorageExistsResponse({
    $core.bool? exists,
  }) {
    final $result = create();
    if (exists != null) {
      $result.exists = exists;
    }
    return $result;
  }
  StorageExistsResponse._() : super();
  factory StorageExistsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StorageExistsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StorageExistsResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.storage.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'exists')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StorageExistsResponse clone() =>
      StorageExistsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StorageExistsResponse copyWith(
          void Function(StorageExistsResponse) updates) =>
      super.copyWith((message) => updates(message as StorageExistsResponse))
          as StorageExistsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageExistsResponse create() => StorageExistsResponse._();
  StorageExistsResponse createEmptyInstance() => create();
  static $pb.PbList<StorageExistsResponse> createRepeated() =>
      $pb.PbList<StorageExistsResponse>();
  @$core.pragma('dart2js:noInline')
  static StorageExistsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StorageExistsResponse>(create);
  static StorageExistsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get exists => $_getBF(0);
  @$pb.TagNumber(1)
  set exists($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasExists() => $_has(0);
  @$pb.TagNumber(1)
  void clearExists() => clearField(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
