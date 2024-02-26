//
//  Generated code. Do not modify.
//  source: nitric/proto/secrets/v1/secrets.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Request to put a secret to a Secret Store
class SecretPutRequest extends $pb.GeneratedMessage {
  factory SecretPutRequest({
    Secret? secret,
    $core.List<$core.int>? value,
  }) {
    final $result = create();
    if (secret != null) {
      $result.secret = secret;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  SecretPutRequest._() : super();
  factory SecretPutRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SecretPutRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SecretPutRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.secrets.v1'),
      createEmptyInstance: create)
    ..aOM<Secret>(1, _omitFieldNames ? '' : 'secret', subBuilder: Secret.create)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SecretPutRequest clone() => SecretPutRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SecretPutRequest copyWith(void Function(SecretPutRequest) updates) =>
      super.copyWith((message) => updates(message as SecretPutRequest))
          as SecretPutRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SecretPutRequest create() => SecretPutRequest._();
  SecretPutRequest createEmptyInstance() => create();
  static $pb.PbList<SecretPutRequest> createRepeated() =>
      $pb.PbList<SecretPutRequest>();
  @$core.pragma('dart2js:noInline')
  static SecretPutRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SecretPutRequest>(create);
  static SecretPutRequest? _defaultInstance;

  /// The Secret to put to the Secret store
  @$pb.TagNumber(1)
  Secret get secret => $_getN(0);
  @$pb.TagNumber(1)
  set secret(Secret v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSecret() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecret() => clearField(1);
  @$pb.TagNumber(1)
  Secret ensureSecret() => $_ensure(0);

  /// The value to assign to that secret
  @$pb.TagNumber(2)
  $core.List<$core.int> get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

/// Result from putting the secret to a Secret Store
class SecretPutResponse extends $pb.GeneratedMessage {
  factory SecretPutResponse({
    SecretVersion? secretVersion,
  }) {
    final $result = create();
    if (secretVersion != null) {
      $result.secretVersion = secretVersion;
    }
    return $result;
  }
  SecretPutResponse._() : super();
  factory SecretPutResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SecretPutResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SecretPutResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.secrets.v1'),
      createEmptyInstance: create)
    ..aOM<SecretVersion>(1, _omitFieldNames ? '' : 'secretVersion',
        subBuilder: SecretVersion.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SecretPutResponse clone() => SecretPutResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SecretPutResponse copyWith(void Function(SecretPutResponse) updates) =>
      super.copyWith((message) => updates(message as SecretPutResponse))
          as SecretPutResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SecretPutResponse create() => SecretPutResponse._();
  SecretPutResponse createEmptyInstance() => create();
  static $pb.PbList<SecretPutResponse> createRepeated() =>
      $pb.PbList<SecretPutResponse>();
  @$core.pragma('dart2js:noInline')
  static SecretPutResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SecretPutResponse>(create);
  static SecretPutResponse? _defaultInstance;

  /// The id of the secret
  @$pb.TagNumber(1)
  SecretVersion get secretVersion => $_getN(0);
  @$pb.TagNumber(1)
  set secretVersion(SecretVersion v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSecretVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecretVersion() => clearField(1);
  @$pb.TagNumber(1)
  SecretVersion ensureSecretVersion() => $_ensure(0);
}

/// Request to get a secret from a Secret Store
class SecretAccessRequest extends $pb.GeneratedMessage {
  factory SecretAccessRequest({
    SecretVersion? secretVersion,
  }) {
    final $result = create();
    if (secretVersion != null) {
      $result.secretVersion = secretVersion;
    }
    return $result;
  }
  SecretAccessRequest._() : super();
  factory SecretAccessRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SecretAccessRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SecretAccessRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.secrets.v1'),
      createEmptyInstance: create)
    ..aOM<SecretVersion>(1, _omitFieldNames ? '' : 'secretVersion',
        subBuilder: SecretVersion.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SecretAccessRequest clone() => SecretAccessRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SecretAccessRequest copyWith(void Function(SecretAccessRequest) updates) =>
      super.copyWith((message) => updates(message as SecretAccessRequest))
          as SecretAccessRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SecretAccessRequest create() => SecretAccessRequest._();
  SecretAccessRequest createEmptyInstance() => create();
  static $pb.PbList<SecretAccessRequest> createRepeated() =>
      $pb.PbList<SecretAccessRequest>();
  @$core.pragma('dart2js:noInline')
  static SecretAccessRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SecretAccessRequest>(create);
  static SecretAccessRequest? _defaultInstance;

  /// The id of the secret
  @$pb.TagNumber(1)
  SecretVersion get secretVersion => $_getN(0);
  @$pb.TagNumber(1)
  set secretVersion(SecretVersion v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSecretVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecretVersion() => clearField(1);
  @$pb.TagNumber(1)
  SecretVersion ensureSecretVersion() => $_ensure(0);
}

/// The secret response
class SecretAccessResponse extends $pb.GeneratedMessage {
  factory SecretAccessResponse({
    SecretVersion? secretVersion,
    $core.List<$core.int>? value,
  }) {
    final $result = create();
    if (secretVersion != null) {
      $result.secretVersion = secretVersion;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  SecretAccessResponse._() : super();
  factory SecretAccessResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SecretAccessResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SecretAccessResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.secrets.v1'),
      createEmptyInstance: create)
    ..aOM<SecretVersion>(1, _omitFieldNames ? '' : 'secretVersion',
        subBuilder: SecretVersion.create)
    ..a<$core.List<$core.int>>(
        2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SecretAccessResponse clone() =>
      SecretAccessResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SecretAccessResponse copyWith(void Function(SecretAccessResponse) updates) =>
      super.copyWith((message) => updates(message as SecretAccessResponse))
          as SecretAccessResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SecretAccessResponse create() => SecretAccessResponse._();
  SecretAccessResponse createEmptyInstance() => create();
  static $pb.PbList<SecretAccessResponse> createRepeated() =>
      $pb.PbList<SecretAccessResponse>();
  @$core.pragma('dart2js:noInline')
  static SecretAccessResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SecretAccessResponse>(create);
  static SecretAccessResponse? _defaultInstance;

  /// The version of the secret that was requested
  @$pb.TagNumber(1)
  SecretVersion get secretVersion => $_getN(0);
  @$pb.TagNumber(1)
  set secretVersion(SecretVersion v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSecretVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecretVersion() => clearField(1);
  @$pb.TagNumber(1)
  SecretVersion ensureSecretVersion() => $_ensure(0);

  /// The value of the secret
  @$pb.TagNumber(2)
  $core.List<$core.int> get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
}

/// The secret container
class Secret extends $pb.GeneratedMessage {
  factory Secret({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
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
          _omitMessageNames ? '' : 'nitric.proto.secrets.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
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

  /// The secret name
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

/// A version of a secret
class SecretVersion extends $pb.GeneratedMessage {
  factory SecretVersion({
    Secret? secret,
    $core.String? version,
  }) {
    final $result = create();
    if (secret != null) {
      $result.secret = secret;
    }
    if (version != null) {
      $result.version = version;
    }
    return $result;
  }
  SecretVersion._() : super();
  factory SecretVersion.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SecretVersion.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SecretVersion',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.secrets.v1'),
      createEmptyInstance: create)
    ..aOM<Secret>(1, _omitFieldNames ? '' : 'secret', subBuilder: Secret.create)
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SecretVersion clone() => SecretVersion()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SecretVersion copyWith(void Function(SecretVersion) updates) =>
      super.copyWith((message) => updates(message as SecretVersion))
          as SecretVersion;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SecretVersion create() => SecretVersion._();
  SecretVersion createEmptyInstance() => create();
  static $pb.PbList<SecretVersion> createRepeated() =>
      $pb.PbList<SecretVersion>();
  @$core.pragma('dart2js:noInline')
  static SecretVersion getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SecretVersion>(create);
  static SecretVersion? _defaultInstance;

  /// Reference to the secret container
  @$pb.TagNumber(1)
  Secret get secret => $_getN(0);
  @$pb.TagNumber(1)
  set secret(Secret v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSecret() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecret() => clearField(1);
  @$pb.TagNumber(1)
  Secret ensureSecret() => $_ensure(0);

  /// The secret version
  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
