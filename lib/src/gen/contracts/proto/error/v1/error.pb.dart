//
//  Generated code. Do not modify.
//  source: contracts/proto/error/v1/error.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ErrorScope extends $pb.GeneratedMessage {
  factory ErrorScope({
    $core.String? service,
    $core.String? plugin,
    $core.Map<$core.String, $core.String>? args,
  }) {
    final $result = create();
    if (service != null) {
      $result.service = service;
    }
    if (plugin != null) {
      $result.plugin = plugin;
    }
    if (args != null) {
      $result.args.addAll(args);
    }
    return $result;
  }
  ErrorScope._() : super();
  factory ErrorScope.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrorScope.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ErrorScope', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.error.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'service')
    ..aOS(2, _omitFieldNames ? '' : 'plugin')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'args', entryClassName: 'ErrorScope.ArgsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('nitric.error.v1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ErrorScope clone() => ErrorScope()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ErrorScope copyWith(void Function(ErrorScope) updates) => super.copyWith((message) => updates(message as ErrorScope)) as ErrorScope;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ErrorScope create() => ErrorScope._();
  ErrorScope createEmptyInstance() => create();
  static $pb.PbList<ErrorScope> createRepeated() => $pb.PbList<ErrorScope>();
  @$core.pragma('dart2js:noInline')
  static ErrorScope getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ErrorScope>(create);
  static ErrorScope? _defaultInstance;

  /// The API service invoked, e.g. 'Service.Method'.
  @$pb.TagNumber(1)
  $core.String get service => $_getSZ(0);
  @$pb.TagNumber(1)
  set service($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasService() => $_has(0);
  @$pb.TagNumber(1)
  void clearService() => clearField(1);

  /// The plugin method invoked, e.g. 'PluginService.Method'.
  @$pb.TagNumber(2)
  $core.String get plugin => $_getSZ(1);
  @$pb.TagNumber(2)
  set plugin($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPlugin() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlugin() => clearField(2);

  /// The plugin method arguments, ensure only non-sensitive data is specified.
  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get args => $_getMap(2);
}

class ErrorDetails extends $pb.GeneratedMessage {
  factory ErrorDetails({
    $core.String? message,
    $core.String? cause,
    ErrorScope? scope,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    if (cause != null) {
      $result.cause = cause;
    }
    if (scope != null) {
      $result.scope = scope;
    }
    return $result;
  }
  ErrorDetails._() : super();
  factory ErrorDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrorDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ErrorDetails', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.error.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..aOS(2, _omitFieldNames ? '' : 'cause')
    ..aOM<ErrorScope>(3, _omitFieldNames ? '' : 'scope', subBuilder: ErrorScope.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ErrorDetails clone() => ErrorDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ErrorDetails copyWith(void Function(ErrorDetails) updates) => super.copyWith((message) => updates(message as ErrorDetails)) as ErrorDetails;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ErrorDetails create() => ErrorDetails._();
  ErrorDetails createEmptyInstance() => create();
  static $pb.PbList<ErrorDetails> createRepeated() => $pb.PbList<ErrorDetails>();
  @$core.pragma('dart2js:noInline')
  static ErrorDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ErrorDetails>(create);
  static ErrorDetails? _defaultInstance;

  /// The developer error message, explaining the error and ideally solution.
  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  /// The error root cause.
  @$pb.TagNumber(2)
  $core.String get cause => $_getSZ(1);
  @$pb.TagNumber(2)
  set cause($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCause() => $_has(1);
  @$pb.TagNumber(2)
  void clearCause() => clearField(2);

  /// The scope of the error.
  @$pb.TagNumber(3)
  ErrorScope get scope => $_getN(2);
  @$pb.TagNumber(3)
  set scope(ErrorScope v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasScope() => $_has(2);
  @$pb.TagNumber(3)
  void clearScope() => clearField(3);
  @$pb.TagNumber(3)
  ErrorScope ensureScope() => $_ensure(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
