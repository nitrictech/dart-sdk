//
//  Generated code. Do not modify.
//  source: contracts/proto/deploy/v1/deploy.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import "package:protobuf_wellknown/protobuf_wellknown.dart" as $9;
import '../../faas/v1/faas.pb.dart' as $1;
import '../../resource/v1/resource.pbenum.dart' as $0;

class DeployUpRequest extends $pb.GeneratedMessage {
  factory DeployUpRequest({
    Spec? spec,
    $9.Struct? attributes,
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
  DeployUpRequest._() : super();
  factory DeployUpRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeployUpRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeployUpRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
      createEmptyInstance: create)
    ..aOM<Spec>(1, _omitFieldNames ? '' : 'spec', subBuilder: Spec.create)
    ..aOM<$9.Struct>(2, _omitFieldNames ? '' : 'attributes',
        subBuilder: $9.Struct.create)
    ..aOB(3, _omitFieldNames ? '' : 'interactive')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeployUpRequest clone() => DeployUpRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeployUpRequest copyWith(void Function(DeployUpRequest) updates) =>
      super.copyWith((message) => updates(message as DeployUpRequest))
          as DeployUpRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeployUpRequest create() => DeployUpRequest._();
  DeployUpRequest createEmptyInstance() => create();
  static $pb.PbList<DeployUpRequest> createRepeated() =>
      $pb.PbList<DeployUpRequest>();
  @$core.pragma('dart2js:noInline')
  static DeployUpRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeployUpRequest>(create);
  static DeployUpRequest? _defaultInstance;

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
  $9.Struct get attributes => $_getN(1);
  @$pb.TagNumber(2)
  set attributes($9.Struct v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAttributes() => $_has(1);
  @$pb.TagNumber(2)
  void clearAttributes() => clearField(2);
  @$pb.TagNumber(2)
  $9.Struct ensureAttributes() => $_ensure(1);

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

enum DeployUpEvent_Content { message, result, notSet }

class DeployUpEvent extends $pb.GeneratedMessage {
  factory DeployUpEvent({
    DeployEventMessage? message,
    DeployUpEventResult? result,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  DeployUpEvent._() : super();
  factory DeployUpEvent.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeployUpEvent.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, DeployUpEvent_Content>
      _DeployUpEvent_ContentByTag = {
    1: DeployUpEvent_Content.message,
    2: DeployUpEvent_Content.result,
    0: DeployUpEvent_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeployUpEvent',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<DeployEventMessage>(1, _omitFieldNames ? '' : 'message',
        subBuilder: DeployEventMessage.create)
    ..aOM<DeployUpEventResult>(2, _omitFieldNames ? '' : 'result',
        subBuilder: DeployUpEventResult.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeployUpEvent clone() => DeployUpEvent()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeployUpEvent copyWith(void Function(DeployUpEvent) updates) =>
      super.copyWith((message) => updates(message as DeployUpEvent))
          as DeployUpEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeployUpEvent create() => DeployUpEvent._();
  DeployUpEvent createEmptyInstance() => create();
  static $pb.PbList<DeployUpEvent> createRepeated() =>
      $pb.PbList<DeployUpEvent>();
  @$core.pragma('dart2js:noInline')
  static DeployUpEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeployUpEvent>(create);
  static DeployUpEvent? _defaultInstance;

  DeployUpEvent_Content whichContent() =>
      _DeployUpEvent_ContentByTag[$_whichOneof(0)]!;
  void clearContent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  DeployEventMessage get message => $_getN(0);
  @$pb.TagNumber(1)
  set message(DeployEventMessage v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
  @$pb.TagNumber(1)
  DeployEventMessage ensureMessage() => $_ensure(0);

  @$pb.TagNumber(2)
  DeployUpEventResult get result => $_getN(1);
  @$pb.TagNumber(2)
  set result(DeployUpEventResult v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearResult() => clearField(2);
  @$pb.TagNumber(2)
  DeployUpEventResult ensureResult() => $_ensure(1);
}

/// Messages to provide status updates on the deployment
class DeployEventMessage extends $pb.GeneratedMessage {
  factory DeployEventMessage({
    $core.String? message,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  DeployEventMessage._() : super();
  factory DeployEventMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeployEventMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeployEventMessage',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeployEventMessage clone() => DeployEventMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeployEventMessage copyWith(void Function(DeployEventMessage) updates) =>
      super.copyWith((message) => updates(message as DeployEventMessage))
          as DeployEventMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeployEventMessage create() => DeployEventMessage._();
  DeployEventMessage createEmptyInstance() => create();
  static $pb.PbList<DeployEventMessage> createRepeated() =>
      $pb.PbList<DeployEventMessage>();
  @$core.pragma('dart2js:noInline')
  static DeployEventMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeployEventMessage>(create);
  static DeployEventMessage? _defaultInstance;

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
}

enum UpResult_Content { stringResult, notSet }

class UpResult extends $pb.GeneratedMessage {
  factory UpResult({
    $core.String? stringResult,
  }) {
    final $result = create();
    if (stringResult != null) {
      $result.stringResult = stringResult;
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
    1: UpResult_Content.stringResult,
    0: UpResult_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpResult',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, _omitFieldNames ? '' : 'stringResult')
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

  /// Simple formatted string output as result
  @$pb.TagNumber(1)
  $core.String get stringResult => $_getSZ(0);
  @$pb.TagNumber(1)
  set stringResult($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStringResult() => $_has(0);
  @$pb.TagNumber(1)
  void clearStringResult() => clearField(1);
}

/// Terminal message indicating deployment success
class DeployUpEventResult extends $pb.GeneratedMessage {
  factory DeployUpEventResult({
    $core.bool? success,
    UpResult? result,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  DeployUpEventResult._() : super();
  factory DeployUpEventResult.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeployUpEventResult.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeployUpEventResult',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..aOM<UpResult>(2, _omitFieldNames ? '' : 'result',
        subBuilder: UpResult.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeployUpEventResult clone() => DeployUpEventResult()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeployUpEventResult copyWith(void Function(DeployUpEventResult) updates) =>
      super.copyWith((message) => updates(message as DeployUpEventResult))
          as DeployUpEventResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeployUpEventResult create() => DeployUpEventResult._();
  DeployUpEventResult createEmptyInstance() => create();
  static $pb.PbList<DeployUpEventResult> createRepeated() =>
      $pb.PbList<DeployUpEventResult>();
  @$core.pragma('dart2js:noInline')
  static DeployUpEventResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeployUpEventResult>(create);
  static DeployUpEventResult? _defaultInstance;

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

  /// Output state as a struct, this can be provided as an output file
  /// or pretty printed for CLI output
  @$pb.TagNumber(2)
  UpResult get result => $_getN(1);
  @$pb.TagNumber(2)
  set result(UpResult v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearResult() => clearField(2);
  @$pb.TagNumber(2)
  UpResult ensureResult() => $_ensure(1);
}

class DeployDownRequest extends $pb.GeneratedMessage {
  factory DeployDownRequest({
    $9.Struct? attributes,
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
  DeployDownRequest._() : super();
  factory DeployDownRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeployDownRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeployDownRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
      createEmptyInstance: create)
    ..aOM<$9.Struct>(1, _omitFieldNames ? '' : 'attributes',
        subBuilder: $9.Struct.create)
    ..aOB(2, _omitFieldNames ? '' : 'interactive')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeployDownRequest clone() => DeployDownRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeployDownRequest copyWith(void Function(DeployDownRequest) updates) =>
      super.copyWith((message) => updates(message as DeployDownRequest))
          as DeployDownRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeployDownRequest create() => DeployDownRequest._();
  DeployDownRequest createEmptyInstance() => create();
  static $pb.PbList<DeployDownRequest> createRepeated() =>
      $pb.PbList<DeployDownRequest>();
  @$core.pragma('dart2js:noInline')
  static DeployDownRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeployDownRequest>(create);
  static DeployDownRequest? _defaultInstance;

  /// A map of attributes related to the deploy request
  /// this allows for adding project identifiers etc.
  @$pb.TagNumber(1)
  $9.Struct get attributes => $_getN(0);
  @$pb.TagNumber(1)
  set attributes($9.Struct v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAttributes() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttributes() => clearField(1);
  @$pb.TagNumber(1)
  $9.Struct ensureAttributes() => $_ensure(0);

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

enum DeployDownEvent_Content { message, result, notSet }

class DeployDownEvent extends $pb.GeneratedMessage {
  factory DeployDownEvent({
    DeployEventMessage? message,
    DeployDownEventResult? result,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  DeployDownEvent._() : super();
  factory DeployDownEvent.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeployDownEvent.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, DeployDownEvent_Content>
      _DeployDownEvent_ContentByTag = {
    1: DeployDownEvent_Content.message,
    2: DeployDownEvent_Content.result,
    0: DeployDownEvent_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeployDownEvent',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<DeployEventMessage>(1, _omitFieldNames ? '' : 'message',
        subBuilder: DeployEventMessage.create)
    ..aOM<DeployDownEventResult>(2, _omitFieldNames ? '' : 'result',
        subBuilder: DeployDownEventResult.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeployDownEvent clone() => DeployDownEvent()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeployDownEvent copyWith(void Function(DeployDownEvent) updates) =>
      super.copyWith((message) => updates(message as DeployDownEvent))
          as DeployDownEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeployDownEvent create() => DeployDownEvent._();
  DeployDownEvent createEmptyInstance() => create();
  static $pb.PbList<DeployDownEvent> createRepeated() =>
      $pb.PbList<DeployDownEvent>();
  @$core.pragma('dart2js:noInline')
  static DeployDownEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeployDownEvent>(create);
  static DeployDownEvent? _defaultInstance;

  DeployDownEvent_Content whichContent() =>
      _DeployDownEvent_ContentByTag[$_whichOneof(0)]!;
  void clearContent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  DeployEventMessage get message => $_getN(0);
  @$pb.TagNumber(1)
  set message(DeployEventMessage v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
  @$pb.TagNumber(1)
  DeployEventMessage ensureMessage() => $_ensure(0);

  @$pb.TagNumber(2)
  DeployDownEventResult get result => $_getN(1);
  @$pb.TagNumber(2)
  set result(DeployDownEventResult v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasResult() => $_has(1);
  @$pb.TagNumber(2)
  void clearResult() => clearField(2);
  @$pb.TagNumber(2)
  DeployDownEventResult ensureResult() => $_ensure(1);
}

/// Terminal message indicating deployment success
class DeployDownEventResult extends $pb.GeneratedMessage {
  factory DeployDownEventResult() => create();
  DeployDownEventResult._() : super();
  factory DeployDownEventResult.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeployDownEventResult.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeployDownEventResult',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeployDownEventResult clone() =>
      DeployDownEventResult()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeployDownEventResult copyWith(
          void Function(DeployDownEventResult) updates) =>
      super.copyWith((message) => updates(message as DeployDownEventResult))
          as DeployDownEventResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeployDownEventResult create() => DeployDownEventResult._();
  DeployDownEventResult createEmptyInstance() => create();
  static $pb.PbList<DeployDownEventResult> createRepeated() =>
      $pb.PbList<DeployDownEventResult>();
  @$core.pragma('dart2js:noInline')
  static DeployDownEventResult getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeployDownEventResult>(create);
  static DeployDownEventResult? _defaultInstance;
}

/// An image source to be used for execution unit deployment
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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
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
  /// TODO: May also need to provide auth information (although this should just be configured on the running client already)
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

enum ExecutionUnit_Source { image, notSet }

/// A unit of execution (i.e. function/container)
class ExecutionUnit extends $pb.GeneratedMessage {
  factory ExecutionUnit({
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
  ExecutionUnit._() : super();
  factory ExecutionUnit.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExecutionUnit.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ExecutionUnit_Source>
      _ExecutionUnit_SourceByTag = {
    1: ExecutionUnit_Source.image,
    0: ExecutionUnit_Source.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ExecutionUnit',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<ImageSource>(1, _omitFieldNames ? '' : 'image',
        subBuilder: ImageSource.create)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'workers', $pb.PbFieldType.O3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'timeout', $pb.PbFieldType.O3)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'memory', $pb.PbFieldType.O3)
    ..aOS(13, _omitFieldNames ? '' : 'type')
    ..m<$core.String, $core.String>(14, _omitFieldNames ? '' : 'env',
        entryClassName: 'ExecutionUnit.EnvEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('nitric.deploy.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ExecutionUnit clone() => ExecutionUnit()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ExecutionUnit copyWith(void Function(ExecutionUnit) updates) =>
      super.copyWith((message) => updates(message as ExecutionUnit))
          as ExecutionUnit;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExecutionUnit create() => ExecutionUnit._();
  ExecutionUnit createEmptyInstance() => create();
  static $pb.PbList<ExecutionUnit> createRepeated() =>
      $pb.PbList<ExecutionUnit>();
  @$core.pragma('dart2js:noInline')
  static ExecutionUnit getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ExecutionUnit>(create);
  static ExecutionUnit? _defaultInstance;

  ExecutionUnit_Source whichSource() =>
      _ExecutionUnit_SourceByTag[$_whichOneof(0)]!;
  void clearSource() => clearField($_whichOneof(0));

  /// Container image as a execution unit
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

  /// Expected worker count for this execution unit
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
  /// describes the requested type of execution unit that this should be
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

  /// Environment variables for this execution unit
  @$pb.TagNumber(14)
  $core.Map<$core.String, $core.String> get env => $_getMap(5);
}

class Bucket extends $pb.GeneratedMessage {
  factory Bucket({
    $core.Iterable<BucketNotificationTarget>? notifications,
  }) {
    final $result = create();
    if (notifications != null) {
      $result.notifications.addAll(notifications);
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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
      createEmptyInstance: create)
    ..pc<BucketNotificationTarget>(
        1, _omitFieldNames ? '' : 'notifications', $pb.PbFieldType.PM,
        subBuilder: BucketNotificationTarget.create)
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
  $core.List<BucketNotificationTarget> get notifications => $_getList(0);
}

enum BucketNotificationTarget_Target { executionUnit, notSet }

class BucketNotificationTarget extends $pb.GeneratedMessage {
  factory BucketNotificationTarget({
    $1.BucketNotificationConfig? config,
    $core.String? executionUnit,
  }) {
    final $result = create();
    if (config != null) {
      $result.config = config;
    }
    if (executionUnit != null) {
      $result.executionUnit = executionUnit;
    }
    return $result;
  }
  BucketNotificationTarget._() : super();
  factory BucketNotificationTarget.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BucketNotificationTarget.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, BucketNotificationTarget_Target>
      _BucketNotificationTarget_TargetByTag = {
    2: BucketNotificationTarget_Target.executionUnit,
    0: BucketNotificationTarget_Target.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BucketNotificationTarget',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
      createEmptyInstance: create)
    ..oo(0, [2])
    ..aOM<$1.BucketNotificationConfig>(1, _omitFieldNames ? '' : 'config',
        subBuilder: $1.BucketNotificationConfig.create)
    ..aOS(2, _omitFieldNames ? '' : 'executionUnit')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BucketNotificationTarget clone() =>
      BucketNotificationTarget()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BucketNotificationTarget copyWith(
          void Function(BucketNotificationTarget) updates) =>
      super.copyWith((message) => updates(message as BucketNotificationTarget))
          as BucketNotificationTarget;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BucketNotificationTarget create() => BucketNotificationTarget._();
  BucketNotificationTarget createEmptyInstance() => create();
  static $pb.PbList<BucketNotificationTarget> createRepeated() =>
      $pb.PbList<BucketNotificationTarget>();
  @$core.pragma('dart2js:noInline')
  static BucketNotificationTarget getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BucketNotificationTarget>(create);
  static BucketNotificationTarget? _defaultInstance;

  BucketNotificationTarget_Target whichTarget() =>
      _BucketNotificationTarget_TargetByTag[$_whichOneof(0)]!;
  void clearTarget() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $1.BucketNotificationConfig get config => $_getN(0);
  @$pb.TagNumber(1)
  set config($1.BucketNotificationConfig v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfig() => clearField(1);
  @$pb.TagNumber(1)
  $1.BucketNotificationConfig ensureConfig() => $_ensure(0);

  /// The name of an execution unit to target
  @$pb.TagNumber(2)
  $core.String get executionUnit => $_getSZ(1);
  @$pb.TagNumber(2)
  set executionUnit($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasExecutionUnit() => $_has(1);
  @$pb.TagNumber(2)
  void clearExecutionUnit() => clearField(2);
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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
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

  /// TODO: Include topic specifications here
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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
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

class Collection extends $pb.GeneratedMessage {
  factory Collection() => create();
  Collection._() : super();
  factory Collection.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Collection.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Collection',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Collection clone() => Collection()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Collection copyWith(void Function(Collection) updates) =>
      super.copyWith((message) => updates(message as Collection)) as Collection;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Collection create() => Collection._();
  Collection createEmptyInstance() => create();
  static $pb.PbList<Collection> createRepeated() => $pb.PbList<Collection>();
  @$core.pragma('dart2js:noInline')
  static Collection getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Collection>(create);
  static Collection? _defaultInstance;
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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
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

enum SubscriptionTarget_Target { executionUnit, notSet }

class SubscriptionTarget extends $pb.GeneratedMessage {
  factory SubscriptionTarget({
    $core.String? executionUnit,
  }) {
    final $result = create();
    if (executionUnit != null) {
      $result.executionUnit = executionUnit;
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
    1: SubscriptionTarget_Target.executionUnit,
    0: SubscriptionTarget_Target.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SubscriptionTarget',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, _omitFieldNames ? '' : 'executionUnit')
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

  /// The name of an execution unit to target
  @$pb.TagNumber(1)
  $core.String get executionUnit => $_getSZ(0);
  @$pb.TagNumber(1)
  set executionUnit($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasExecutionUnit() => $_has(0);
  @$pb.TagNumber(1)
  void clearExecutionUnit() => clearField(1);
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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
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

enum HttpTarget_Target { executionUnit, notSet }

class HttpTarget extends $pb.GeneratedMessage {
  factory HttpTarget({
    $core.String? executionUnit,
  }) {
    final $result = create();
    if (executionUnit != null) {
      $result.executionUnit = executionUnit;
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
      {1: HttpTarget_Target.executionUnit, 0: HttpTarget_Target.notSet};
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HttpTarget',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, _omitFieldNames ? '' : 'executionUnit')
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

  /// The name of an execution unit to target
  @$pb.TagNumber(1)
  $core.String get executionUnit => $_getSZ(0);
  @$pb.TagNumber(1)
  set executionUnit($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasExecutionUnit() => $_has(0);
  @$pb.TagNumber(1)
  void clearExecutionUnit() => clearField(1);
}

/// A http resource
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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
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
  /// This document will contain extensions that hint of execution units that should be targeted as part of the deployment
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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
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

enum WebsocketTarget_Target { executionUnit, notSet }

class WebsocketTarget extends $pb.GeneratedMessage {
  factory WebsocketTarget({
    $core.String? executionUnit,
  }) {
    final $result = create();
    if (executionUnit != null) {
      $result.executionUnit = executionUnit;
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
    1: WebsocketTarget_Target.executionUnit,
    0: WebsocketTarget_Target.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WebsocketTarget',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, _omitFieldNames ? '' : 'executionUnit')
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

  /// The name of an execution unit to target
  @$pb.TagNumber(1)
  $core.String get executionUnit => $_getSZ(0);
  @$pb.TagNumber(1)
  set executionUnit($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasExecutionUnit() => $_has(0);
  @$pb.TagNumber(1)
  void clearExecutionUnit() => clearField(1);
}

enum ScheduleTarget_Target { executionUnit, notSet }

class ScheduleTarget extends $pb.GeneratedMessage {
  factory ScheduleTarget({
    $core.String? executionUnit,
  }) {
    final $result = create();
    if (executionUnit != null) {
      $result.executionUnit = executionUnit;
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
    1: ScheduleTarget_Target.executionUnit,
    0: ScheduleTarget_Target.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ScheduleTarget',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, _omitFieldNames ? '' : 'executionUnit')
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

  /// The name of an execution unit to target
  @$pb.TagNumber(1)
  $core.String get executionUnit => $_getSZ(0);
  @$pb.TagNumber(1)
  set executionUnit($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasExecutionUnit() => $_has(0);
  @$pb.TagNumber(1)
  void clearExecutionUnit() => clearField(1);
}

class Schedule extends $pb.GeneratedMessage {
  factory Schedule({
    $core.String? cron,
    ScheduleTarget? target,
  }) {
    final $result = create();
    if (cron != null) {
      $result.cron = cron;
    }
    if (target != null) {
      $result.target = target;
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Schedule',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cron')
    ..aOM<ScheduleTarget>(2, _omitFieldNames ? '' : 'target',
        subBuilder: ScheduleTarget.create)
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

  @$pb.TagNumber(1)
  $core.String get cron => $_getSZ(0);
  @$pb.TagNumber(1)
  set cron($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCron() => $_has(0);
  @$pb.TagNumber(1)
  void clearCron() => clearField(1);

  @$pb.TagNumber(2)
  ScheduleTarget get target => $_getN(1);
  @$pb.TagNumber(2)
  set target(ScheduleTarget v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTarget() => $_has(1);
  @$pb.TagNumber(2)
  void clearTarget() => clearField(2);
  @$pb.TagNumber(2)
  ScheduleTarget ensureTarget() => $_ensure(1);
}

enum Resource_Config {
  executionUnit,
  bucket,
  topic,
  queue,
  api,
  policy,
  schedule,
  collection,
  secret,
  websocket,
  http,
  notSet
}

class Resource extends $pb.GeneratedMessage {
  factory Resource({
    $core.String? name,
    $0.ResourceType? type,
    ExecutionUnit? executionUnit,
    Bucket? bucket,
    Topic? topic,
    Queue? queue,
    Api? api,
    Policy? policy,
    Schedule? schedule,
    Collection? collection,
    Secret? secret,
    Websocket? websocket,
    Http? http,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (type != null) {
      $result.type = type;
    }
    if (executionUnit != null) {
      $result.executionUnit = executionUnit;
    }
    if (bucket != null) {
      $result.bucket = bucket;
    }
    if (topic != null) {
      $result.topic = topic;
    }
    if (queue != null) {
      $result.queue = queue;
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
    if (collection != null) {
      $result.collection = collection;
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
    10: Resource_Config.executionUnit,
    11: Resource_Config.bucket,
    12: Resource_Config.topic,
    13: Resource_Config.queue,
    14: Resource_Config.api,
    15: Resource_Config.policy,
    16: Resource_Config.schedule,
    17: Resource_Config.collection,
    18: Resource_Config.secret,
    19: Resource_Config.websocket,
    20: Resource_Config.http,
    0: Resource_Config.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Resource',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
      createEmptyInstance: create)
    ..oo(0, [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20])
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..e<$0.ResourceType>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE,
        defaultOrMaker: $0.ResourceType.Api,
        valueOf: $0.ResourceType.valueOf,
        enumValues: $0.ResourceType.values)
    ..aOM<ExecutionUnit>(10, _omitFieldNames ? '' : 'executionUnit',
        subBuilder: ExecutionUnit.create)
    ..aOM<Bucket>(11, _omitFieldNames ? '' : 'bucket',
        subBuilder: Bucket.create)
    ..aOM<Topic>(12, _omitFieldNames ? '' : 'topic', subBuilder: Topic.create)
    ..aOM<Queue>(13, _omitFieldNames ? '' : 'queue', subBuilder: Queue.create)
    ..aOM<Api>(14, _omitFieldNames ? '' : 'api', subBuilder: Api.create)
    ..aOM<Policy>(15, _omitFieldNames ? '' : 'policy',
        subBuilder: Policy.create)
    ..aOM<Schedule>(16, _omitFieldNames ? '' : 'schedule',
        subBuilder: Schedule.create)
    ..aOM<Collection>(17, _omitFieldNames ? '' : 'collection',
        subBuilder: Collection.create)
    ..aOM<Secret>(18, _omitFieldNames ? '' : 'secret',
        subBuilder: Secret.create)
    ..aOM<Websocket>(19, _omitFieldNames ? '' : 'websocket',
        subBuilder: Websocket.create)
    ..aOM<Http>(20, _omitFieldNames ? '' : 'http', subBuilder: Http.create)
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
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $0.ResourceType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type($0.ResourceType v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  @$pb.TagNumber(10)
  ExecutionUnit get executionUnit => $_getN(2);
  @$pb.TagNumber(10)
  set executionUnit(ExecutionUnit v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasExecutionUnit() => $_has(2);
  @$pb.TagNumber(10)
  void clearExecutionUnit() => clearField(10);
  @$pb.TagNumber(10)
  ExecutionUnit ensureExecutionUnit() => $_ensure(2);

  @$pb.TagNumber(11)
  Bucket get bucket => $_getN(3);
  @$pb.TagNumber(11)
  set bucket(Bucket v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasBucket() => $_has(3);
  @$pb.TagNumber(11)
  void clearBucket() => clearField(11);
  @$pb.TagNumber(11)
  Bucket ensureBucket() => $_ensure(3);

  @$pb.TagNumber(12)
  Topic get topic => $_getN(4);
  @$pb.TagNumber(12)
  set topic(Topic v) {
    setField(12, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasTopic() => $_has(4);
  @$pb.TagNumber(12)
  void clearTopic() => clearField(12);
  @$pb.TagNumber(12)
  Topic ensureTopic() => $_ensure(4);

  @$pb.TagNumber(13)
  Queue get queue => $_getN(5);
  @$pb.TagNumber(13)
  set queue(Queue v) {
    setField(13, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasQueue() => $_has(5);
  @$pb.TagNumber(13)
  void clearQueue() => clearField(13);
  @$pb.TagNumber(13)
  Queue ensureQueue() => $_ensure(5);

  @$pb.TagNumber(14)
  Api get api => $_getN(6);
  @$pb.TagNumber(14)
  set api(Api v) {
    setField(14, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasApi() => $_has(6);
  @$pb.TagNumber(14)
  void clearApi() => clearField(14);
  @$pb.TagNumber(14)
  Api ensureApi() => $_ensure(6);

  @$pb.TagNumber(15)
  Policy get policy => $_getN(7);
  @$pb.TagNumber(15)
  set policy(Policy v) {
    setField(15, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasPolicy() => $_has(7);
  @$pb.TagNumber(15)
  void clearPolicy() => clearField(15);
  @$pb.TagNumber(15)
  Policy ensurePolicy() => $_ensure(7);

  @$pb.TagNumber(16)
  Schedule get schedule => $_getN(8);
  @$pb.TagNumber(16)
  set schedule(Schedule v) {
    setField(16, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasSchedule() => $_has(8);
  @$pb.TagNumber(16)
  void clearSchedule() => clearField(16);
  @$pb.TagNumber(16)
  Schedule ensureSchedule() => $_ensure(8);

  @$pb.TagNumber(17)
  Collection get collection => $_getN(9);
  @$pb.TagNumber(17)
  set collection(Collection v) {
    setField(17, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasCollection() => $_has(9);
  @$pb.TagNumber(17)
  void clearCollection() => clearField(17);
  @$pb.TagNumber(17)
  Collection ensureCollection() => $_ensure(9);

  @$pb.TagNumber(18)
  Secret get secret => $_getN(10);
  @$pb.TagNumber(18)
  set secret(Secret v) {
    setField(18, v);
  }

  @$pb.TagNumber(18)
  $core.bool hasSecret() => $_has(10);
  @$pb.TagNumber(18)
  void clearSecret() => clearField(18);
  @$pb.TagNumber(18)
  Secret ensureSecret() => $_ensure(10);

  @$pb.TagNumber(19)
  Websocket get websocket => $_getN(11);
  @$pb.TagNumber(19)
  set websocket(Websocket v) {
    setField(19, v);
  }

  @$pb.TagNumber(19)
  $core.bool hasWebsocket() => $_has(11);
  @$pb.TagNumber(19)
  void clearWebsocket() => clearField(19);
  @$pb.TagNumber(19)
  Websocket ensureWebsocket() => $_ensure(11);

  @$pb.TagNumber(20)
  Http get http => $_getN(12);
  @$pb.TagNumber(20)
  set http(Http v) {
    setField(20, v);
  }

  @$pb.TagNumber(20)
  $core.bool hasHttp() => $_has(12);
  @$pb.TagNumber(20)
  void clearHttp() => clearField(20);
  @$pb.TagNumber(20)
  Http ensureHttp() => $_ensure(12);
}

/// TODO: This is already defined in our resource contracts...
/// Need to determine if it's worth re-using
/// unfortunately there are parts we don't want to duplicate, such as API config
class Policy extends $pb.GeneratedMessage {
  factory Policy({
    $core.Iterable<Resource>? principals,
    $core.Iterable<$0.Action>? actions,
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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
      createEmptyInstance: create)
    ..pc<Resource>(1, _omitFieldNames ? '' : 'principals', $pb.PbFieldType.PM,
        subBuilder: Resource.create)
    ..pc<$0.Action>(2, _omitFieldNames ? '' : 'actions', $pb.PbFieldType.KE,
        valueOf: $0.Action.valueOf,
        enumValues: $0.Action.values,
        defaultEnumValue: $0.Action.BucketFileList)
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

  /// TODO: Split out discrete action definitions from resources
  /// Also need to allow custom action types as well
  /// Should incorporate action re-use here...
  @$pb.TagNumber(2)
  $core.List<$0.Action> get actions => $_getList(1);

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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.deploy.v1'),
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
