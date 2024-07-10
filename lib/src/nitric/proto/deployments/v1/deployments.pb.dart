//
//  Generated code. Do not modify.
//  source: nitric/proto/deployments/v1/deployments.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/struct.pb.dart' as $14;
import '../../resources/v1/resources.pb.dart' as $1;
import '../../resources/v1/resources.pbenum.dart' as $1;
import '../../storage/v1/storage.pb.dart' as $2;
import 'deployments.pbenum.dart';

export 'deployments.pbenum.dart';

class DeploymentUpRequest extends $pb.GeneratedMessage {
  factory DeploymentUpRequest({
    Spec? spec,
    $14.Struct? attributes,
    $core.bool? interactive,
  }) {
    final $result = create();
    if (spec != null) {
      $result.spec = spec;
    }
    if (attributes != null) {
      $result.attributes = attributes;
    }
    if (interactive != null) {
      $result.interactive = interactive;
    }
    return $result;
  }
  DeploymentUpRequest._() : super();
  factory DeploymentUpRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeploymentUpRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeploymentUpRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..aOM<Spec>(1, _omitFieldNames ? '' : 'spec', subBuilder: Spec.create)
    ..aOM<$14.Struct>(2, _omitFieldNames ? '' : 'attributes',
        subBuilder: $14.Struct.create)
    ..aOB(3, _omitFieldNames ? '' : 'interactive')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeploymentUpRequest clone() => DeploymentUpRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeploymentUpRequest copyWith(void Function(DeploymentUpRequest) updates) =>
      super.copyWith((message) => updates(message as DeploymentUpRequest))
          as DeploymentUpRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeploymentUpRequest create() => DeploymentUpRequest._();
  DeploymentUpRequest createEmptyInstance() => create();
  static $pb.PbList<DeploymentUpRequest> createRepeated() =>
      $pb.PbList<DeploymentUpRequest>();
  @$core.pragma('dart2js:noInline')
  static DeploymentUpRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeploymentUpRequest>(create);
  static DeploymentUpRequest? _defaultInstance;

  /// The spec to deploy
  @$pb.TagNumber(1)
  Spec get spec => $_getN(0);
  @$pb.TagNumber(1)
  set spec(Spec v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSpec() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpec() => clearField(1);
  @$pb.TagNumber(1)
  Spec ensureSpec() => $_ensure(0);

  /// A map of attributes related to the deploy request
  /// this allows for adding project identifiers etc.
  @$pb.TagNumber(2)
  $14.Struct get attributes => $_getN(1);
  @$pb.TagNumber(2)
  set attributes($14.Struct v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAttributes() => $_has(1);
  @$pb.TagNumber(2)
  void clearAttributes() => clearField(2);
  @$pb.TagNumber(2)
  $14.Struct ensureAttributes() => $_ensure(1);

  /// A hint to the provider of the kind of output that the client can accept
  /// This will allow provider developers to provider richer output back to clients.
  @$pb.TagNumber(3)
  $core.bool get interactive => $_getBF(2);
  @$pb.TagNumber(3)
  set interactive($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasInteractive() => $_has(2);
  @$pb.TagNumber(3)
  void clearInteractive() => clearField(3);
}

enum DeploymentUpEvent_Content { message, update, result, notSet }

class DeploymentUpEvent extends $pb.GeneratedMessage {
  factory DeploymentUpEvent({
    $core.String? message,
    ResourceUpdate? update,
    UpResult? result,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    if (update != null) {
      $result.update = update;
    }
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  DeploymentUpEvent._() : super();
  factory DeploymentUpEvent.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeploymentUpEvent.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, DeploymentUpEvent_Content>
      _DeploymentUpEvent_ContentByTag = {
    1: DeploymentUpEvent_Content.message,
    2: DeploymentUpEvent_Content.update,
    3: DeploymentUpEvent_Content.result,
    0: DeploymentUpEvent_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeploymentUpEvent',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..aOM<ResourceUpdate>(2, _omitFieldNames ? '' : 'update',
        subBuilder: ResourceUpdate.create)
    ..aOM<UpResult>(3, _omitFieldNames ? '' : 'result',
        subBuilder: UpResult.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeploymentUpEvent clone() => DeploymentUpEvent()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeploymentUpEvent copyWith(void Function(DeploymentUpEvent) updates) =>
      super.copyWith((message) => updates(message as DeploymentUpEvent))
          as DeploymentUpEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeploymentUpEvent create() => DeploymentUpEvent._();
  DeploymentUpEvent createEmptyInstance() => create();
  static $pb.PbList<DeploymentUpEvent> createRepeated() =>
      $pb.PbList<DeploymentUpEvent>();
  @$core.pragma('dart2js:noInline')
  static DeploymentUpEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeploymentUpEvent>(create);
  static DeploymentUpEvent? _defaultInstance;

  DeploymentUpEvent_Content whichContent() =>
      _DeploymentUpEvent_ContentByTag[$_whichOneof(0)]!;
  void clearContent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  ResourceUpdate get update => $_getN(1);
  @$pb.TagNumber(2)
  set update(ResourceUpdate v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUpdate() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdate() => clearField(2);
  @$pb.TagNumber(2)
  ResourceUpdate ensureUpdate() => $_ensure(1);

  @$pb.TagNumber(3)
  UpResult get result => $_getN(2);
  @$pb.TagNumber(3)
  set result(UpResult v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearResult() => clearField(3);
  @$pb.TagNumber(3)
  UpResult ensureResult() => $_ensure(2);
}

class ResourceUpdate extends $pb.GeneratedMessage {
  factory ResourceUpdate({
    $1.ResourceIdentifier? id,
    ResourceDeploymentAction? action,
    ResourceDeploymentStatus? status,
    $core.String? subResource,
    $core.String? message,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (action != null) {
      $result.action = action;
    }
    if (status != null) {
      $result.status = status;
    }
    if (subResource != null) {
      $result.subResource = subResource;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  ResourceUpdate._() : super();
  factory ResourceUpdate.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResourceUpdate.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResourceUpdate',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..aOM<$1.ResourceIdentifier>(1, _omitFieldNames ? '' : 'id',
        subBuilder: $1.ResourceIdentifier.create)
    ..e<ResourceDeploymentAction>(
        3, _omitFieldNames ? '' : 'action', $pb.PbFieldType.OE,
        defaultOrMaker: ResourceDeploymentAction.CREATE,
        valueOf: ResourceDeploymentAction.valueOf,
        enumValues: ResourceDeploymentAction.values)
    ..e<ResourceDeploymentStatus>(
        4, _omitFieldNames ? '' : 'status', $pb.PbFieldType.OE,
        defaultOrMaker: ResourceDeploymentStatus.PENDING,
        valueOf: ResourceDeploymentStatus.valueOf,
        enumValues: ResourceDeploymentStatus.values)
    ..aOS(5, _omitFieldNames ? '' : 'subResource')
    ..aOS(6, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResourceUpdate clone() => ResourceUpdate()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResourceUpdate copyWith(void Function(ResourceUpdate) updates) =>
      super.copyWith((message) => updates(message as ResourceUpdate))
          as ResourceUpdate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceUpdate create() => ResourceUpdate._();
  ResourceUpdate createEmptyInstance() => create();
  static $pb.PbList<ResourceUpdate> createRepeated() =>
      $pb.PbList<ResourceUpdate>();
  @$core.pragma('dart2js:noInline')
  static ResourceUpdate getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResourceUpdate>(create);
  static ResourceUpdate? _defaultInstance;

  /// The resource being updated, if this is nil the update applies to the stack
  @$pb.TagNumber(1)
  $1.ResourceIdentifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($1.ResourceIdentifier v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $1.ResourceIdentifier ensureId() => $_ensure(0);

  /// The type of update being applied
  @$pb.TagNumber(3)
  ResourceDeploymentAction get action => $_getN(1);
  @$pb.TagNumber(3)
  set action(ResourceDeploymentAction v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAction() => $_has(1);
  @$pb.TagNumber(3)
  void clearAction() => clearField(3);

  /// The current status of the action being applied
  @$pb.TagNumber(4)
  ResourceDeploymentStatus get status => $_getN(2);
  @$pb.TagNumber(4)
  set status(ResourceDeploymentStatus v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(4)
  void clearStatus() => clearField(4);

  /// (optional) A globally unique identifier (scoped to the id above), used when Nitric Resources map 1:many in a cloud provider.
  /// e.g. the container image repository for a service deployment.
  /// This can also be set when id is nil above and it will imply a non-nitric resource that is necessary to deploy for a stack to operate
  /// e.g. an Azure StorageAccount
  @$pb.TagNumber(5)
  $core.String get subResource => $_getSZ(3);
  @$pb.TagNumber(5)
  set subResource($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasSubResource() => $_has(3);
  @$pb.TagNumber(5)
  void clearSubResource() => clearField(5);

  /// Additional information about the update
  @$pb.TagNumber(6)
  $core.String get message => $_getSZ(4);
  @$pb.TagNumber(6)
  set message($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(6)
  void clearMessage() => clearField(6);
}

enum UpResult_Content { text, notSet }

/// Terminal message indicating deployment success
class UpResult extends $pb.GeneratedMessage {
  factory UpResult({
    $core.bool? success,
    $core.String? text,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (text != null) {
      $result.text = text;
    }
    return $result;
  }
  UpResult._() : super();
  factory UpResult.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpResult.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, UpResult_Content> _UpResult_ContentByTag = {
    2: UpResult_Content.text,
    0: UpResult_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpResult',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..oo(0, [2])
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpResult clone() => UpResult()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpResult copyWith(void Function(UpResult) updates) =>
      super.copyWith((message) => updates(message as UpResult)) as UpResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpResult create() => UpResult._();
  UpResult createEmptyInstance() => create();
  static $pb.PbList<UpResult> createRepeated() => $pb.PbList<UpResult>();
  @$core.pragma('dart2js:noInline')
  static UpResult getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpResult>(create);
  static UpResult? _defaultInstance;

  UpResult_Content whichContent() => _UpResult_ContentByTag[$_whichOneof(0)]!;
  void clearContent() => clearField($_whichOneof(0));

  /// Indicate the success status
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

  /// Simple text output as result
  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);
}

class DeploymentDownRequest extends $pb.GeneratedMessage {
  factory DeploymentDownRequest({
    $14.Struct? attributes,
    $core.bool? interactive,
  }) {
    final $result = create();
    if (attributes != null) {
      $result.attributes = attributes;
    }
    if (interactive != null) {
      $result.interactive = interactive;
    }
    return $result;
  }
  DeploymentDownRequest._() : super();
  factory DeploymentDownRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeploymentDownRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeploymentDownRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..aOM<$14.Struct>(1, _omitFieldNames ? '' : 'attributes',
        subBuilder: $14.Struct.create)
    ..aOB(2, _omitFieldNames ? '' : 'interactive')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeploymentDownRequest clone() =>
      DeploymentDownRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeploymentDownRequest copyWith(
          void Function(DeploymentDownRequest) updates) =>
      super.copyWith((message) => updates(message as DeploymentDownRequest))
          as DeploymentDownRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeploymentDownRequest create() => DeploymentDownRequest._();
  DeploymentDownRequest createEmptyInstance() => create();
  static $pb.PbList<DeploymentDownRequest> createRepeated() =>
      $pb.PbList<DeploymentDownRequest>();
  @$core.pragma('dart2js:noInline')
  static DeploymentDownRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeploymentDownRequest>(create);
  static DeploymentDownRequest? _defaultInstance;

  /// A map of attributes related to the deploy request
  /// this allows for adding project identifiers etc.
  @$pb.TagNumber(1)
  $14.Struct get attributes => $_getN(0);
  @$pb.TagNumber(1)
  set attributes($14.Struct v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAttributes() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttributes() => clearField(1);
  @$pb.TagNumber(1)
  $14.Struct ensureAttributes() => $_ensure(0);

  /// A hint to the provider of the kind of output that the client can accept
  /// This will allow provider developers to provider richer output back to clients.
  @$pb.TagNumber(2)
  $core.bool get interactive => $_getBF(1);
  @$pb.TagNumber(2)
  set interactive($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasInteractive() => $_has(1);
  @$pb.TagNumber(2)
  void clearInteractive() => clearField(2);
}

enum DeploymentDownEvent_Content { message, result, update, notSet }

class DeploymentDownEvent extends $pb.GeneratedMessage {
  factory DeploymentDownEvent({
    $core.String? message,
    DownResult? result,
    ResourceUpdate? update,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    if (result != null) {
      $result.result = result;
    }
    if (update != null) {
      $result.update = update;
    }
    return $result;
  }
  DeploymentDownEvent._() : super();
  factory DeploymentDownEvent.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeploymentDownEvent.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, DeploymentDownEvent_Content>
      _DeploymentDownEvent_ContentByTag = {
    1: DeploymentDownEvent_Content.message,
    2: DeploymentDownEvent_Content.result,
    3: DeploymentDownEvent_Content.update,
    0: DeploymentDownEvent_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeploymentDownEvent',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..aOM<DownResult>(2, _omitFieldNames ? '' : 'result',
        subBuilder: DownResult.create)
    ..aOM<ResourceUpdate>(3, _omitFieldNames ? '' : 'update',
        subBuilder: ResourceUpdate.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeploymentDownEvent clone() => DeploymentDownEvent()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeploymentDownEvent copyWith(void Function(DeploymentDownEvent) updates) =>
      super.copyWith((message) => updates(message as DeploymentDownEvent))
          as DeploymentDownEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeploymentDownEvent create() => DeploymentDownEvent._();
  DeploymentDownEvent createEmptyInstance() => create();
  static $pb.PbList<DeploymentDownEvent> createRepeated() =>
      $pb.PbList<DeploymentDownEvent>();
  @$core.pragma('dart2js:noInline')
  static DeploymentDownEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeploymentDownEvent>(create);
  static DeploymentDownEvent? _defaultInstance;

  DeploymentDownEvent_Content whichContent() =>
      _DeploymentDownEvent_ContentByTag[$_whichOneof(0)]!;
  void clearContent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  DownResult get result => $_getN(1);
  @$pb.TagNumber(2)
  set result(DownResult v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearResult() => clearField(2);
  @$pb.TagNumber(2)
  DownResult ensureResult() => $_ensure(1);

  @$pb.TagNumber(3)
  ResourceUpdate get update => $_getN(2);
  @$pb.TagNumber(3)
  set update(ResourceUpdate v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasUpdate() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdate() => clearField(3);
  @$pb.TagNumber(3)
  ResourceUpdate ensureUpdate() => $_ensure(2);
}

/// Terminal message indicating deployment success
class DownResult extends $pb.GeneratedMessage {
  factory DownResult() => create();
  DownResult._() : super();
  factory DownResult.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DownResult.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DownResult',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DownResult clone() => DownResult()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DownResult copyWith(void Function(DownResult) updates) =>
      super.copyWith((message) => updates(message as DownResult)) as DownResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DownResult create() => DownResult._();
  DownResult createEmptyInstance() => create();
  static $pb.PbList<DownResult> createRepeated() => $pb.PbList<DownResult>();
  @$core.pragma('dart2js:noInline')
  static DownResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DownResult>(create);
  static DownResult? _defaultInstance;
}

/// An image source to be used for service deployment
class ImageSource extends $pb.GeneratedMessage {
  factory ImageSource({
    $core.String? uri,
  }) {
    final $result = create();
    if (uri != null) {
      $result.uri = uri;
    }
    return $result;
  }
  ImageSource._() : super();
  factory ImageSource.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ImageSource.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ImageSource',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uri')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ImageSource clone() => ImageSource()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ImageSource copyWith(void Function(ImageSource) updates) =>
      super.copyWith((message) => updates(message as ImageSource))
          as ImageSource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImageSource create() => ImageSource._();
  ImageSource createEmptyInstance() => create();
  static $pb.PbList<ImageSource> createRepeated() => $pb.PbList<ImageSource>();
  @$core.pragma('dart2js:noInline')
  static ImageSource getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ImageSource>(create);
  static ImageSource? _defaultInstance;

  /// URI of the docker image
  /// To support remote images this may also need to provide auth information
  @$pb.TagNumber(1)
  $core.String get uri => $_getSZ(0);
  @$pb.TagNumber(1)
  set uri($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUri() => $_has(0);
  @$pb.TagNumber(1)
  void clearUri() => clearField(1);
}

enum Service_Source { image, notSet }

/// A unit of compute (i.e. function/container)
class Service extends $pb.GeneratedMessage {
  factory Service({
    ImageSource? image,
    $core.int? workers,
    @$core.Deprecated('This field is deprecated.') $core.int? timeout,
    @$core.Deprecated('This field is deprecated.') $core.int? memory,
    $core.String? type,
    $core.Map<$core.String, $core.String>? env,
  }) {
    final $result = create();
    if (image != null) {
      $result.image = image;
    }
    if (workers != null) {
      $result.workers = workers;
    }
    if (timeout != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.timeout = timeout;
    }
    if (memory != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.memory = memory;
    }
    if (type != null) {
      $result.type = type;
    }
    if (env != null) {
      $result.env.addAll(env);
    }
    return $result;
  }
  Service._() : super();
  factory Service.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Service.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Service_Source> _Service_SourceByTag = {
    1: Service_Source.image,
    0: Service_Source.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Service',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<ImageSource>(1, _omitFieldNames ? '' : 'image',
        subBuilder: ImageSource.create)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'workers', $pb.PbFieldType.O3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'timeout', $pb.PbFieldType.O3)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'memory', $pb.PbFieldType.O3)
    ..aOS(13, _omitFieldNames ? '' : 'type')
    ..m<$core.String, $core.String>(14, _omitFieldNames ? '' : 'env',
        entryClassName: 'Service.EnvEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('nitric.proto.deployments.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Service clone() => Service()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Service copyWith(void Function(Service) updates) =>
      super.copyWith((message) => updates(message as Service)) as Service;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Service create() => Service._();
  Service createEmptyInstance() => create();
  static $pb.PbList<Service> createRepeated() => $pb.PbList<Service>();
  @$core.pragma('dart2js:noInline')
  static Service getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Service>(create);
  static Service? _defaultInstance;

  Service_Source whichSource() => _Service_SourceByTag[$_whichOneof(0)]!;
  void clearSource() => clearField($_whichOneof(0));

  /// Container image as a service
  @$pb.TagNumber(1)
  ImageSource get image => $_getN(0);
  @$pb.TagNumber(1)
  set image(ImageSource v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasImage() => $_has(0);
  @$pb.TagNumber(1)
  void clearImage() => clearField(1);
  @$pb.TagNumber(1)
  ImageSource ensureImage() => $_ensure(0);

  /// Expected worker count for this service
  @$pb.TagNumber(10)
  $core.int get workers => $_getIZ(1);
  @$pb.TagNumber(10)
  set workers($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasWorkers() => $_has(1);
  @$pb.TagNumber(10)
  void clearWorkers() => clearField(10);

  /// Configurable timeout for request handling
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  $core.int get timeout => $_getIZ(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  set timeout($core.int v) {
    $_setSignedInt32(2, v);
  }

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  $core.bool hasTimeout() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(11)
  void clearTimeout() => clearField(11);

  /// Configurable memory size for this instance
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  $core.int get memory => $_getIZ(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  set memory($core.int v) {
    $_setSignedInt32(3, v);
  }

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  $core.bool hasMemory() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(12)
  void clearMemory() => clearField(12);

  /// A simple type property
  /// describes the requested type of service that this should be
  /// for this project, a provider can implement how this request is satisfied
  /// in any way
  @$pb.TagNumber(13)
  $core.String get type => $_getSZ(4);
  @$pb.TagNumber(13)
  set type($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(13)
  void clearType() => clearField(13);

  /// Environment variables for this service
  @$pb.TagNumber(14)
  $core.Map<$core.String, $core.String> get env => $_getMap(5);
}

class Bucket extends $pb.GeneratedMessage {
  factory Bucket({
    $core.Iterable<BucketListener>? listeners,
  }) {
    final $result = create();
    if (listeners != null) {
      $result.listeners.addAll(listeners);
    }
    return $result;
  }
  Bucket._() : super();
  factory Bucket.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Bucket.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Bucket',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..pc<BucketListener>(
        1, _omitFieldNames ? '' : 'listeners', $pb.PbFieldType.PM,
        subBuilder: BucketListener.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Bucket clone() => Bucket()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Bucket copyWith(void Function(Bucket) updates) =>
      super.copyWith((message) => updates(message as Bucket)) as Bucket;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Bucket create() => Bucket._();
  Bucket createEmptyInstance() => create();
  static $pb.PbList<Bucket> createRepeated() => $pb.PbList<Bucket>();
  @$core.pragma('dart2js:noInline')
  static Bucket getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Bucket>(create);
  static Bucket? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BucketListener> get listeners => $_getList(0);
}

enum BucketListener_Target { service, notSet }

class BucketListener extends $pb.GeneratedMessage {
  factory BucketListener({
    $2.RegistrationRequest? config,
    $core.String? service,
  }) {
    final $result = create();
    if (config != null) {
      $result.config = config;
    }
    if (service != null) {
      $result.service = service;
    }
    return $result;
  }
  BucketListener._() : super();
  factory BucketListener.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BucketListener.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, BucketListener_Target>
      _BucketListener_TargetByTag = {
    2: BucketListener_Target.service,
    0: BucketListener_Target.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BucketListener',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..oo(0, [2])
    ..aOM<$2.RegistrationRequest>(1, _omitFieldNames ? '' : 'config',
        subBuilder: $2.RegistrationRequest.create)
    ..aOS(2, _omitFieldNames ? '' : 'service')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BucketListener clone() => BucketListener()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BucketListener copyWith(void Function(BucketListener) updates) =>
      super.copyWith((message) => updates(message as BucketListener))
          as BucketListener;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BucketListener create() => BucketListener._();
  BucketListener createEmptyInstance() => create();
  static $pb.PbList<BucketListener> createRepeated() =>
      $pb.PbList<BucketListener>();
  @$core.pragma('dart2js:noInline')
  static BucketListener getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BucketListener>(create);
  static BucketListener? _defaultInstance;

  BucketListener_Target whichTarget() =>
      _BucketListener_TargetByTag[$_whichOneof(0)]!;
  void clearTarget() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $2.RegistrationRequest get config => $_getN(0);
  @$pb.TagNumber(1)
  set config($2.RegistrationRequest v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => clearField(1);
  @$pb.TagNumber(1)
  $2.RegistrationRequest ensureConfig() => $_ensure(0);

  /// The name of an service to target
  @$pb.TagNumber(2)
  $core.String get service => $_getSZ(1);
  @$pb.TagNumber(2)
  set service($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasService() => $_has(1);
  @$pb.TagNumber(2)
  void clearService() => clearField(2);
}

class Topic extends $pb.GeneratedMessage {
  factory Topic({
    $core.Iterable<SubscriptionTarget>? subscriptions,
  }) {
    final $result = create();
    if (subscriptions != null) {
      $result.subscriptions.addAll(subscriptions);
    }
    return $result;
  }
  Topic._() : super();
  factory Topic.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Topic.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Topic',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..pc<SubscriptionTarget>(
        1, _omitFieldNames ? '' : 'subscriptions', $pb.PbFieldType.PM,
        subBuilder: SubscriptionTarget.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Topic clone() => Topic()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Topic copyWith(void Function(Topic) updates) =>
      super.copyWith((message) => updates(message as Topic)) as Topic;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Topic create() => Topic._();
  Topic createEmptyInstance() => create();
  static $pb.PbList<Topic> createRepeated() => $pb.PbList<Topic>();
  @$core.pragma('dart2js:noInline')
  static Topic getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Topic>(create);
  static Topic? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SubscriptionTarget> get subscriptions => $_getList(0);
}

class Queue extends $pb.GeneratedMessage {
  factory Queue() => create();
  Queue._() : super();
  factory Queue.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Queue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Queue',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Queue clone() => Queue()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Queue copyWith(void Function(Queue) updates) =>
      super.copyWith((message) => updates(message as Queue)) as Queue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Queue create() => Queue._();
  Queue createEmptyInstance() => create();
  static $pb.PbList<Queue> createRepeated() => $pb.PbList<Queue>();
  @$core.pragma('dart2js:noInline')
  static Queue getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Queue>(create);
  static Queue? _defaultInstance;
}

class KeyValueStore extends $pb.GeneratedMessage {
  factory KeyValueStore() => create();
  KeyValueStore._() : super();
  factory KeyValueStore.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory KeyValueStore.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'KeyValueStore',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  KeyValueStore clone() => KeyValueStore()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  KeyValueStore copyWith(void Function(KeyValueStore) updates) =>
      super.copyWith((message) => updates(message as KeyValueStore))
          as KeyValueStore;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeyValueStore create() => KeyValueStore._();
  KeyValueStore createEmptyInstance() => create();
  static $pb.PbList<KeyValueStore> createRepeated() =>
      $pb.PbList<KeyValueStore>();
  @$core.pragma('dart2js:noInline')
  static KeyValueStore getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<KeyValueStore>(create);
  static KeyValueStore? _defaultInstance;
}

class Secret extends $pb.GeneratedMessage {
  factory Secret() => create();
  Secret._() : super();
  factory Secret.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Secret.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Secret',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Secret clone() => Secret()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Secret copyWith(void Function(Secret) updates) =>
      super.copyWith((message) => updates(message as Secret)) as Secret;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Secret create() => Secret._();
  Secret createEmptyInstance() => create();
  static $pb.PbList<Secret> createRepeated() => $pb.PbList<Secret>();
  @$core.pragma('dart2js:noInline')
  static Secret getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Secret>(create);
  static Secret? _defaultInstance;
}

enum SubscriptionTarget_Target { service, notSet }

class SubscriptionTarget extends $pb.GeneratedMessage {
  factory SubscriptionTarget({
    $core.String? service,
  }) {
    final $result = create();
    if (service != null) {
      $result.service = service;
    }
    return $result;
  }
  SubscriptionTarget._() : super();
  factory SubscriptionTarget.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SubscriptionTarget.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SubscriptionTarget_Target>
      _SubscriptionTarget_TargetByTag = {
    1: SubscriptionTarget_Target.service,
    0: SubscriptionTarget_Target.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SubscriptionTarget',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, _omitFieldNames ? '' : 'service')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SubscriptionTarget clone() => SubscriptionTarget()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SubscriptionTarget copyWith(void Function(SubscriptionTarget) updates) =>
      super.copyWith((message) => updates(message as SubscriptionTarget))
          as SubscriptionTarget;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubscriptionTarget create() => SubscriptionTarget._();
  SubscriptionTarget createEmptyInstance() => create();
  static $pb.PbList<SubscriptionTarget> createRepeated() =>
      $pb.PbList<SubscriptionTarget>();
  @$core.pragma('dart2js:noInline')
  static SubscriptionTarget getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SubscriptionTarget>(create);
  static SubscriptionTarget? _defaultInstance;

  SubscriptionTarget_Target whichTarget() =>
      _SubscriptionTarget_TargetByTag[$_whichOneof(0)]!;
  void clearTarget() => clearField($_whichOneof(0));

  /// The name of an service to target
  @$pb.TagNumber(1)
  $core.String get service => $_getSZ(0);
  @$pb.TagNumber(1)
  set service($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasService() => $_has(0);
  @$pb.TagNumber(1)
  void clearService() => clearField(1);
}

class TopicSubscription extends $pb.GeneratedMessage {
  factory TopicSubscription({
    SubscriptionTarget? target,
  }) {
    final $result = create();
    if (target != null) {
      $result.target = target;
    }
    return $result;
  }
  TopicSubscription._() : super();
  factory TopicSubscription.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TopicSubscription.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TopicSubscription',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..aOM<SubscriptionTarget>(1, _omitFieldNames ? '' : 'target',
        subBuilder: SubscriptionTarget.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TopicSubscription clone() => TopicSubscription()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TopicSubscription copyWith(void Function(TopicSubscription) updates) =>
      super.copyWith((message) => updates(message as TopicSubscription))
          as TopicSubscription;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TopicSubscription create() => TopicSubscription._();
  TopicSubscription createEmptyInstance() => create();
  static $pb.PbList<TopicSubscription> createRepeated() =>
      $pb.PbList<TopicSubscription>();
  @$core.pragma('dart2js:noInline')
  static TopicSubscription getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TopicSubscription>(create);
  static TopicSubscription? _defaultInstance;

  @$pb.TagNumber(1)
  SubscriptionTarget get target => $_getN(0);
  @$pb.TagNumber(1)
  set target(SubscriptionTarget v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTarget() => $_has(0);
  @$pb.TagNumber(1)
  void clearTarget() => clearField(1);
  @$pb.TagNumber(1)
  SubscriptionTarget ensureTarget() => $_ensure(0);
}

enum HttpTarget_Target { service, notSet }

class HttpTarget extends $pb.GeneratedMessage {
  factory HttpTarget({
    $core.String? service,
  }) {
    final $result = create();
    if (service != null) {
      $result.service = service;
    }
    return $result;
  }
  HttpTarget._() : super();
  factory HttpTarget.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory HttpTarget.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, HttpTarget_Target> _HttpTarget_TargetByTag =
      {1: HttpTarget_Target.service, 0: HttpTarget_Target.notSet};
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HttpTarget',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, _omitFieldNames ? '' : 'service')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  HttpTarget clone() => HttpTarget()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  HttpTarget copyWith(void Function(HttpTarget) updates) =>
      super.copyWith((message) => updates(message as HttpTarget)) as HttpTarget;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HttpTarget create() => HttpTarget._();
  HttpTarget createEmptyInstance() => create();
  static $pb.PbList<HttpTarget> createRepeated() => $pb.PbList<HttpTarget>();
  @$core.pragma('dart2js:noInline')
  static HttpTarget getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HttpTarget>(create);
  static HttpTarget? _defaultInstance;

  HttpTarget_Target whichTarget() => _HttpTarget_TargetByTag[$_whichOneof(0)]!;
  void clearTarget() => clearField($_whichOneof(0));

  /// The name of an service to target
  @$pb.TagNumber(1)
  $core.String get service => $_getSZ(0);
  @$pb.TagNumber(1)
  set service($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasService() => $_has(0);
  @$pb.TagNumber(1)
  void clearService() => clearField(1);
}

/// An http proxy resource
class Http extends $pb.GeneratedMessage {
  factory Http({
    HttpTarget? target,
  }) {
    final $result = create();
    if (target != null) {
      $result.target = target;
    }
    return $result;
  }
  Http._() : super();
  factory Http.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Http.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Http',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..aOM<HttpTarget>(1, _omitFieldNames ? '' : 'target',
        subBuilder: HttpTarget.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Http clone() => Http()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Http copyWith(void Function(Http) updates) =>
      super.copyWith((message) => updates(message as Http)) as Http;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Http create() => Http._();
  Http createEmptyInstance() => create();
  static $pb.PbList<Http> createRepeated() => $pb.PbList<Http>();
  @$core.pragma('dart2js:noInline')
  static Http getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Http>(create);
  static Http? _defaultInstance;

  @$pb.TagNumber(1)
  HttpTarget get target => $_getN(0);
  @$pb.TagNumber(1)
  set target(HttpTarget v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTarget() => $_has(0);
  @$pb.TagNumber(1)
  void clearTarget() => clearField(1);
  @$pb.TagNumber(1)
  HttpTarget ensureTarget() => $_ensure(0);
}

enum Api_Document { openapi, notSet }

class Api extends $pb.GeneratedMessage {
  factory Api({
    $core.String? openapi,
  }) {
    final $result = create();
    if (openapi != null) {
      $result.openapi = openapi;
    }
    return $result;
  }
  Api._() : super();
  factory Api.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Api.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Api_Document> _Api_DocumentByTag = {
    1: Api_Document.openapi,
    0: Api_Document.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Api',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, _omitFieldNames ? '' : 'openapi')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Api clone() => Api()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Api copyWith(void Function(Api) updates) =>
      super.copyWith((message) => updates(message as Api)) as Api;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Api create() => Api._();
  Api createEmptyInstance() => create();
  static $pb.PbList<Api> createRepeated() => $pb.PbList<Api>();
  @$core.pragma('dart2js:noInline')
  static Api getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Api>(create);
  static Api? _defaultInstance;

  Api_Document whichDocument() => _Api_DocumentByTag[$_whichOneof(0)]!;
  void clearDocument() => clearField($_whichOneof(0));

  /// An OpenAPI document for deployment
  /// This document will contain extensions that hint of services that should be targeted as part of the deployment
  @$pb.TagNumber(1)
  $core.String get openapi => $_getSZ(0);
  @$pb.TagNumber(1)
  set openapi($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasOpenapi() => $_has(0);
  @$pb.TagNumber(1)
  void clearOpenapi() => clearField(1);
}

/// Declare a new websocket
class Websocket extends $pb.GeneratedMessage {
  factory Websocket({
    WebsocketTarget? connectTarget,
    WebsocketTarget? disconnectTarget,
    WebsocketTarget? messageTarget,
  }) {
    final $result = create();
    if (connectTarget != null) {
      $result.connectTarget = connectTarget;
    }
    if (disconnectTarget != null) {
      $result.disconnectTarget = disconnectTarget;
    }
    if (messageTarget != null) {
      $result.messageTarget = messageTarget;
    }
    return $result;
  }
  Websocket._() : super();
  factory Websocket.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Websocket.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Websocket',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..aOM<WebsocketTarget>(1, _omitFieldNames ? '' : 'connectTarget',
        subBuilder: WebsocketTarget.create)
    ..aOM<WebsocketTarget>(2, _omitFieldNames ? '' : 'disconnectTarget',
        subBuilder: WebsocketTarget.create)
    ..aOM<WebsocketTarget>(3, _omitFieldNames ? '' : 'messageTarget',
        subBuilder: WebsocketTarget.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Websocket clone() => Websocket()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Websocket copyWith(void Function(Websocket) updates) =>
      super.copyWith((message) => updates(message as Websocket)) as Websocket;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Websocket create() => Websocket._();
  Websocket createEmptyInstance() => create();
  static $pb.PbList<Websocket> createRepeated() => $pb.PbList<Websocket>();
  @$core.pragma('dart2js:noInline')
  static Websocket getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Websocket>(create);
  static Websocket? _defaultInstance;

  /// Target for handling new client connections
  @$pb.TagNumber(1)
  WebsocketTarget get connectTarget => $_getN(0);
  @$pb.TagNumber(1)
  set connectTarget(WebsocketTarget v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasConnectTarget() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectTarget() => clearField(1);
  @$pb.TagNumber(1)
  WebsocketTarget ensureConnectTarget() => $_ensure(0);

  /// Target for handling client disconnections
  @$pb.TagNumber(2)
  WebsocketTarget get disconnectTarget => $_getN(1);
  @$pb.TagNumber(2)
  set disconnectTarget(WebsocketTarget v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDisconnectTarget() => $_has(1);
  @$pb.TagNumber(2)
  void clearDisconnectTarget() => clearField(2);
  @$pb.TagNumber(2)
  WebsocketTarget ensureDisconnectTarget() => $_ensure(1);

  /// Target for handling all other message types
  @$pb.TagNumber(3)
  WebsocketTarget get messageTarget => $_getN(2);
  @$pb.TagNumber(3)
  set messageTarget(WebsocketTarget v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMessageTarget() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessageTarget() => clearField(3);
  @$pb.TagNumber(3)
  WebsocketTarget ensureMessageTarget() => $_ensure(2);
}

enum WebsocketTarget_Target { service, notSet }

class WebsocketTarget extends $pb.GeneratedMessage {
  factory WebsocketTarget({
    $core.String? service,
  }) {
    final $result = create();
    if (service != null) {
      $result.service = service;
    }
    return $result;
  }
  WebsocketTarget._() : super();
  factory WebsocketTarget.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WebsocketTarget.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, WebsocketTarget_Target>
      _WebsocketTarget_TargetByTag = {
    1: WebsocketTarget_Target.service,
    0: WebsocketTarget_Target.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WebsocketTarget',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, _omitFieldNames ? '' : 'service')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WebsocketTarget clone() => WebsocketTarget()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WebsocketTarget copyWith(void Function(WebsocketTarget) updates) =>
      super.copyWith((message) => updates(message as WebsocketTarget))
          as WebsocketTarget;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebsocketTarget create() => WebsocketTarget._();
  WebsocketTarget createEmptyInstance() => create();
  static $pb.PbList<WebsocketTarget> createRepeated() =>
      $pb.PbList<WebsocketTarget>();
  @$core.pragma('dart2js:noInline')
  static WebsocketTarget getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WebsocketTarget>(create);
  static WebsocketTarget? _defaultInstance;

  WebsocketTarget_Target whichTarget() =>
      _WebsocketTarget_TargetByTag[$_whichOneof(0)]!;
  void clearTarget() => clearField($_whichOneof(0));

  /// The name of an service to target
  @$pb.TagNumber(1)
  $core.String get service => $_getSZ(0);
  @$pb.TagNumber(1)
  set service($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasService() => $_has(0);
  @$pb.TagNumber(1)
  void clearService() => clearField(1);
}

enum ScheduleTarget_Target { service, notSet }

class ScheduleTarget extends $pb.GeneratedMessage {
  factory ScheduleTarget({
    $core.String? service,
  }) {
    final $result = create();
    if (service != null) {
      $result.service = service;
    }
    return $result;
  }
  ScheduleTarget._() : super();
  factory ScheduleTarget.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ScheduleTarget.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ScheduleTarget_Target>
      _ScheduleTarget_TargetByTag = {
    1: ScheduleTarget_Target.service,
    0: ScheduleTarget_Target.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ScheduleTarget',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, _omitFieldNames ? '' : 'service')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ScheduleTarget clone() => ScheduleTarget()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ScheduleTarget copyWith(void Function(ScheduleTarget) updates) =>
      super.copyWith((message) => updates(message as ScheduleTarget))
          as ScheduleTarget;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScheduleTarget create() => ScheduleTarget._();
  ScheduleTarget createEmptyInstance() => create();
  static $pb.PbList<ScheduleTarget> createRepeated() =>
      $pb.PbList<ScheduleTarget>();
  @$core.pragma('dart2js:noInline')
  static ScheduleTarget getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ScheduleTarget>(create);
  static ScheduleTarget? _defaultInstance;

  ScheduleTarget_Target whichTarget() =>
      _ScheduleTarget_TargetByTag[$_whichOneof(0)]!;
  void clearTarget() => clearField($_whichOneof(0));

  /// The name of an service to target
  @$pb.TagNumber(1)
  $core.String get service => $_getSZ(0);
  @$pb.TagNumber(1)
  set service($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasService() => $_has(0);
  @$pb.TagNumber(1)
  void clearService() => clearField(1);
}

enum Schedule_Cadence { every, cron, notSet }

class Schedule extends $pb.GeneratedMessage {
  factory Schedule({
    ScheduleTarget? target,
    ScheduleEvery? every,
    ScheduleCron? cron,
  }) {
    final $result = create();
    if (target != null) {
      $result.target = target;
    }
    if (every != null) {
      $result.every = every;
    }
    if (cron != null) {
      $result.cron = cron;
    }
    return $result;
  }
  Schedule._() : super();
  factory Schedule.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Schedule.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Schedule_Cadence> _Schedule_CadenceByTag = {
    10: Schedule_Cadence.every,
    11: Schedule_Cadence.cron,
    0: Schedule_Cadence.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Schedule',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..oo(0, [10, 11])
    ..aOM<ScheduleTarget>(1, _omitFieldNames ? '' : 'target',
        subBuilder: ScheduleTarget.create)
    ..aOM<ScheduleEvery>(10, _omitFieldNames ? '' : 'every',
        subBuilder: ScheduleEvery.create)
    ..aOM<ScheduleCron>(11, _omitFieldNames ? '' : 'cron',
        subBuilder: ScheduleCron.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Schedule clone() => Schedule()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Schedule copyWith(void Function(Schedule) updates) =>
      super.copyWith((message) => updates(message as Schedule)) as Schedule;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Schedule create() => Schedule._();
  Schedule createEmptyInstance() => create();
  static $pb.PbList<Schedule> createRepeated() => $pb.PbList<Schedule>();
  @$core.pragma('dart2js:noInline')
  static Schedule getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Schedule>(create);
  static Schedule? _defaultInstance;

  Schedule_Cadence whichCadence() => _Schedule_CadenceByTag[$_whichOneof(0)]!;
  void clearCadence() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ScheduleTarget get target => $_getN(0);
  @$pb.TagNumber(1)
  set target(ScheduleTarget v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTarget() => $_has(0);
  @$pb.TagNumber(1)
  void clearTarget() => clearField(1);
  @$pb.TagNumber(1)
  ScheduleTarget ensureTarget() => $_ensure(0);

  @$pb.TagNumber(10)
  ScheduleEvery get every => $_getN(1);
  @$pb.TagNumber(10)
  set every(ScheduleEvery v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasEvery() => $_has(1);
  @$pb.TagNumber(10)
  void clearEvery() => clearField(10);
  @$pb.TagNumber(10)
  ScheduleEvery ensureEvery() => $_ensure(1);

  @$pb.TagNumber(11)
  ScheduleCron get cron => $_getN(2);
  @$pb.TagNumber(11)
  set cron(ScheduleCron v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasCron() => $_has(2);
  @$pb.TagNumber(11)
  void clearCron() => clearField(11);
  @$pb.TagNumber(11)
  ScheduleCron ensureCron() => $_ensure(2);
}

enum SqlDatabase_Migrations { imageUri, notSet }

class SqlDatabase extends $pb.GeneratedMessage {
  factory SqlDatabase({
    $core.String? imageUri,
  }) {
    final $result = create();
    if (imageUri != null) {
      $result.imageUri = imageUri;
    }
    return $result;
  }
  SqlDatabase._() : super();
  factory SqlDatabase.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SqlDatabase.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SqlDatabase_Migrations>
      _SqlDatabase_MigrationsByTag = {
    1: SqlDatabase_Migrations.imageUri,
    0: SqlDatabase_Migrations.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SqlDatabase',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, _omitFieldNames ? '' : 'imageUri')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SqlDatabase clone() => SqlDatabase()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SqlDatabase copyWith(void Function(SqlDatabase) updates) =>
      super.copyWith((message) => updates(message as SqlDatabase))
          as SqlDatabase;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SqlDatabase create() => SqlDatabase._();
  SqlDatabase createEmptyInstance() => create();
  static $pb.PbList<SqlDatabase> createRepeated() => $pb.PbList<SqlDatabase>();
  @$core.pragma('dart2js:noInline')
  static SqlDatabase getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SqlDatabase>(create);
  static SqlDatabase? _defaultInstance;

  SqlDatabase_Migrations whichMigrations() =>
      _SqlDatabase_MigrationsByTag[$_whichOneof(0)]!;
  void clearMigrations() => clearField($_whichOneof(0));

  /// The URI of a docker image to use to execute the migrations for this database
  @$pb.TagNumber(1)
  $core.String get imageUri => $_getSZ(0);
  @$pb.TagNumber(1)
  set imageUri($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasImageUri() => $_has(0);
  @$pb.TagNumber(1)
  void clearImageUri() => clearField(1);
}

class ScheduleEvery extends $pb.GeneratedMessage {
  factory ScheduleEvery({
    $core.String? rate,
  }) {
    final $result = create();
    if (rate != null) {
      $result.rate = rate;
    }
    return $result;
  }
  ScheduleEvery._() : super();
  factory ScheduleEvery.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ScheduleEvery.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ScheduleEvery',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'rate')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ScheduleEvery clone() => ScheduleEvery()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ScheduleEvery copyWith(void Function(ScheduleEvery) updates) =>
      super.copyWith((message) => updates(message as ScheduleEvery))
          as ScheduleEvery;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScheduleEvery create() => ScheduleEvery._();
  ScheduleEvery createEmptyInstance() => create();
  static $pb.PbList<ScheduleEvery> createRepeated() =>
      $pb.PbList<ScheduleEvery>();
  @$core.pragma('dart2js:noInline')
  static ScheduleEvery getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ScheduleEvery>(create);
  static ScheduleEvery? _defaultInstance;

  /// rate string e.g. '5 minutes'. Value frequencies are 'minutes', 'hours', 'days'.
  @$pb.TagNumber(1)
  $core.String get rate => $_getSZ(0);
  @$pb.TagNumber(1)
  set rate($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRate() => $_has(0);
  @$pb.TagNumber(1)
  void clearRate() => clearField(1);
}

class ScheduleCron extends $pb.GeneratedMessage {
  factory ScheduleCron({
    $core.String? expression,
  }) {
    final $result = create();
    if (expression != null) {
      $result.expression = expression;
    }
    return $result;
  }
  ScheduleCron._() : super();
  factory ScheduleCron.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ScheduleCron.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ScheduleCron',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'expression')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ScheduleCron clone() => ScheduleCron()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ScheduleCron copyWith(void Function(ScheduleCron) updates) =>
      super.copyWith((message) => updates(message as ScheduleCron))
          as ScheduleCron;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScheduleCron create() => ScheduleCron._();
  ScheduleCron createEmptyInstance() => create();
  static $pb.PbList<ScheduleCron> createRepeated() =>
      $pb.PbList<ScheduleCron>();
  @$core.pragma('dart2js:noInline')
  static ScheduleCron getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ScheduleCron>(create);
  static ScheduleCron? _defaultInstance;

  /// standard unix cron expression
  @$pb.TagNumber(1)
  $core.String get expression => $_getSZ(0);
  @$pb.TagNumber(1)
  set expression($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasExpression() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpression() => clearField(1);
}

enum Resource_Config {
  service,
  bucket,
  topic,
  api,
  policy,
  schedule,
  keyValueStore,
  secret,
  websocket,
  http,
  queue,
  sqlDatabase,
  notSet
}

class Resource extends $pb.GeneratedMessage {
  factory Resource({
    $1.ResourceIdentifier? id,
    Service? service,
    Bucket? bucket,
    Topic? topic,
    Api? api,
    Policy? policy,
    Schedule? schedule,
    KeyValueStore? keyValueStore,
    Secret? secret,
    Websocket? websocket,
    Http? http,
    Queue? queue,
    SqlDatabase? sqlDatabase,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (service != null) {
      $result.service = service;
    }
    if (bucket != null) {
      $result.bucket = bucket;
    }
    if (topic != null) {
      $result.topic = topic;
    }
    if (api != null) {
      $result.api = api;
    }
    if (policy != null) {
      $result.policy = policy;
    }
    if (schedule != null) {
      $result.schedule = schedule;
    }
    if (keyValueStore != null) {
      $result.keyValueStore = keyValueStore;
    }
    if (secret != null) {
      $result.secret = secret;
    }
    if (websocket != null) {
      $result.websocket = websocket;
    }
    if (http != null) {
      $result.http = http;
    }
    if (queue != null) {
      $result.queue = queue;
    }
    if (sqlDatabase != null) {
      $result.sqlDatabase = sqlDatabase;
    }
    return $result;
  }
  Resource._() : super();
  factory Resource.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Resource.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, Resource_Config> _Resource_ConfigByTag = {
    10: Resource_Config.service,
    11: Resource_Config.bucket,
    12: Resource_Config.topic,
    13: Resource_Config.api,
    14: Resource_Config.policy,
    15: Resource_Config.schedule,
    16: Resource_Config.keyValueStore,
    17: Resource_Config.secret,
    18: Resource_Config.websocket,
    19: Resource_Config.http,
    20: Resource_Config.queue,
    21: Resource_Config.sqlDatabase,
    0: Resource_Config.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Resource',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..oo(0, [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21])
    ..aOM<$1.ResourceIdentifier>(1, _omitFieldNames ? '' : 'id',
        subBuilder: $1.ResourceIdentifier.create)
    ..aOM<Service>(10, _omitFieldNames ? '' : 'service',
        subBuilder: Service.create)
    ..aOM<Bucket>(11, _omitFieldNames ? '' : 'bucket',
        subBuilder: Bucket.create)
    ..aOM<Topic>(12, _omitFieldNames ? '' : 'topic', subBuilder: Topic.create)
    ..aOM<Api>(13, _omitFieldNames ? '' : 'api', subBuilder: Api.create)
    ..aOM<Policy>(14, _omitFieldNames ? '' : 'policy',
        subBuilder: Policy.create)
    ..aOM<Schedule>(15, _omitFieldNames ? '' : 'schedule',
        subBuilder: Schedule.create)
    ..aOM<KeyValueStore>(16, _omitFieldNames ? '' : 'keyValueStore',
        subBuilder: KeyValueStore.create)
    ..aOM<Secret>(17, _omitFieldNames ? '' : 'secret',
        subBuilder: Secret.create)
    ..aOM<Websocket>(18, _omitFieldNames ? '' : 'websocket',
        subBuilder: Websocket.create)
    ..aOM<Http>(19, _omitFieldNames ? '' : 'http', subBuilder: Http.create)
    ..aOM<Queue>(20, _omitFieldNames ? '' : 'queue', subBuilder: Queue.create)
    ..aOM<SqlDatabase>(21, _omitFieldNames ? '' : 'sqlDatabase',
        subBuilder: SqlDatabase.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Resource clone() => Resource()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Resource copyWith(void Function(Resource) updates) =>
      super.copyWith((message) => updates(message as Resource)) as Resource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Resource create() => Resource._();
  Resource createEmptyInstance() => create();
  static $pb.PbList<Resource> createRepeated() => $pb.PbList<Resource>();
  @$core.pragma('dart2js:noInline')
  static Resource getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Resource>(create);
  static Resource? _defaultInstance;

  Resource_Config whichConfig() => _Resource_ConfigByTag[$_whichOneof(0)]!;
  void clearConfig() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $1.ResourceIdentifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id($1.ResourceIdentifier v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  $1.ResourceIdentifier ensureId() => $_ensure(0);

  @$pb.TagNumber(10)
  Service get service => $_getN(1);
  @$pb.TagNumber(10)
  set service(Service v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasService() => $_has(1);
  @$pb.TagNumber(10)
  void clearService() => clearField(10);
  @$pb.TagNumber(10)
  Service ensureService() => $_ensure(1);

  @$pb.TagNumber(11)
  Bucket get bucket => $_getN(2);
  @$pb.TagNumber(11)
  set bucket(Bucket v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasBucket() => $_has(2);
  @$pb.TagNumber(11)
  void clearBucket() => clearField(11);
  @$pb.TagNumber(11)
  Bucket ensureBucket() => $_ensure(2);

  @$pb.TagNumber(12)
  Topic get topic => $_getN(3);
  @$pb.TagNumber(12)
  set topic(Topic v) {
    setField(12, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasTopic() => $_has(3);
  @$pb.TagNumber(12)
  void clearTopic() => clearField(12);
  @$pb.TagNumber(12)
  Topic ensureTopic() => $_ensure(3);

  @$pb.TagNumber(13)
  Api get api => $_getN(4);
  @$pb.TagNumber(13)
  set api(Api v) {
    setField(13, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasApi() => $_has(4);
  @$pb.TagNumber(13)
  void clearApi() => clearField(13);
  @$pb.TagNumber(13)
  Api ensureApi() => $_ensure(4);

  @$pb.TagNumber(14)
  Policy get policy => $_getN(5);
  @$pb.TagNumber(14)
  set policy(Policy v) {
    setField(14, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasPolicy() => $_has(5);
  @$pb.TagNumber(14)
  void clearPolicy() => clearField(14);
  @$pb.TagNumber(14)
  Policy ensurePolicy() => $_ensure(5);

  @$pb.TagNumber(15)
  Schedule get schedule => $_getN(6);
  @$pb.TagNumber(15)
  set schedule(Schedule v) {
    setField(15, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasSchedule() => $_has(6);
  @$pb.TagNumber(15)
  void clearSchedule() => clearField(15);
  @$pb.TagNumber(15)
  Schedule ensureSchedule() => $_ensure(6);

  @$pb.TagNumber(16)
  KeyValueStore get keyValueStore => $_getN(7);
  @$pb.TagNumber(16)
  set keyValueStore(KeyValueStore v) {
    setField(16, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasKeyValueStore() => $_has(7);
  @$pb.TagNumber(16)
  void clearKeyValueStore() => clearField(16);
  @$pb.TagNumber(16)
  KeyValueStore ensureKeyValueStore() => $_ensure(7);

  @$pb.TagNumber(17)
  Secret get secret => $_getN(8);
  @$pb.TagNumber(17)
  set secret(Secret v) {
    setField(17, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasSecret() => $_has(8);
  @$pb.TagNumber(17)
  void clearSecret() => clearField(17);
  @$pb.TagNumber(17)
  Secret ensureSecret() => $_ensure(8);

  @$pb.TagNumber(18)
  Websocket get websocket => $_getN(9);
  @$pb.TagNumber(18)
  set websocket(Websocket v) {
    setField(18, v);
  }

  @$pb.TagNumber(18)
  $core.bool hasWebsocket() => $_has(9);
  @$pb.TagNumber(18)
  void clearWebsocket() => clearField(18);
  @$pb.TagNumber(18)
  Websocket ensureWebsocket() => $_ensure(9);

  @$pb.TagNumber(19)
  Http get http => $_getN(10);
  @$pb.TagNumber(19)
  set http(Http v) {
    setField(19, v);
  }

  @$pb.TagNumber(19)
  $core.bool hasHttp() => $_has(10);
  @$pb.TagNumber(19)
  void clearHttp() => clearField(19);
  @$pb.TagNumber(19)
  Http ensureHttp() => $_ensure(10);

  @$pb.TagNumber(20)
  Queue get queue => $_getN(11);
  @$pb.TagNumber(20)
  set queue(Queue v) {
    setField(20, v);
  }

  @$pb.TagNumber(20)
  $core.bool hasQueue() => $_has(11);
  @$pb.TagNumber(20)
  void clearQueue() => clearField(20);
  @$pb.TagNumber(20)
  Queue ensureQueue() => $_ensure(11);

  @$pb.TagNumber(21)
  SqlDatabase get sqlDatabase => $_getN(12);
  @$pb.TagNumber(21)
  set sqlDatabase(SqlDatabase v) {
    setField(21, v);
  }

  @$pb.TagNumber(21)
  $core.bool hasSqlDatabase() => $_has(12);
  @$pb.TagNumber(21)
  void clearSqlDatabase() => clearField(21);
  @$pb.TagNumber(21)
  SqlDatabase ensureSqlDatabase() => $_ensure(12);
}

/// This is already defined in the resource contracts,
/// unfortunately there are parts we don't want to duplicate, such as API config
class Policy extends $pb.GeneratedMessage {
  factory Policy({
    $core.Iterable<Resource>? principals,
    $core.Iterable<$1.Action>? actions,
    $core.Iterable<Resource>? resources,
  }) {
    final $result = create();
    if (principals != null) {
      $result.principals.addAll(principals);
    }
    if (actions != null) {
      $result.actions.addAll(actions);
    }
    if (resources != null) {
      $result.resources.addAll(resources);
    }
    return $result;
  }
  Policy._() : super();
  factory Policy.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Policy.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Policy',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..pc<Resource>(1, _omitFieldNames ? '' : 'principals', $pb.PbFieldType.PM,
        subBuilder: Resource.create)
    ..pc<$1.Action>(2, _omitFieldNames ? '' : 'actions', $pb.PbFieldType.KE,
        valueOf: $1.Action.valueOf,
        enumValues: $1.Action.values,
        defaultEnumValue: $1.Action.BucketFileList)
    ..pc<Resource>(3, _omitFieldNames ? '' : 'resources', $pb.PbFieldType.PM,
        subBuilder: Resource.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Policy clone() => Policy()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Policy copyWith(void Function(Policy) updates) =>
      super.copyWith((message) => updates(message as Policy)) as Policy;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Policy create() => Policy._();
  Policy createEmptyInstance() => create();
  static $pb.PbList<Policy> createRepeated() => $pb.PbList<Policy>();
  @$core.pragma('dart2js:noInline')
  static Policy getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Policy>(create);
  static Policy? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Resource> get principals => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$1.Action> get actions => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<Resource> get resources => $_getList(2);
}

class Spec extends $pb.GeneratedMessage {
  factory Spec({
    $core.Iterable<Resource>? resources,
  }) {
    final $result = create();
    if (resources != null) {
      $result.resources.addAll(resources);
    }
    return $result;
  }
  Spec._() : super();
  factory Spec.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Spec.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Spec',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.deployments.v1'),
      createEmptyInstance: create)
    ..pc<Resource>(1, _omitFieldNames ? '' : 'resources', $pb.PbFieldType.PM,
        subBuilder: Resource.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Spec clone() => Spec()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Spec copyWith(void Function(Spec) updates) =>
      super.copyWith((message) => updates(message as Spec)) as Spec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Spec create() => Spec._();
  Spec createEmptyInstance() => create();
  static $pb.PbList<Spec> createRepeated() => $pb.PbList<Spec>();
  @$core.pragma('dart2js:noInline')
  static Spec getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Spec>(create);
  static Spec? _defaultInstance;

  /// list of resources to deploy
  @$pb.TagNumber(1)
  $core.List<Resource> get resources => $_getList(0);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
