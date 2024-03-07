//
//  Generated code. Do not modify.
//  source: nitric/proto/kvstore/v1/kvstore.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/struct.pb.dart' as $13;

/// Provides a Key/Value Store
class Store extends $pb.GeneratedMessage {
  factory Store({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  Store._() : super();
  factory Store.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Store.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Store',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.kvstore.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Store clone() => Store()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Store copyWith(void Function(Store) updates) =>
      super.copyWith((message) => updates(message as Store)) as Store;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Store create() => Store._();
  Store createEmptyInstance() => create();
  static $pb.PbList<Store> createRepeated() => $pb.PbList<Store>();
  @$core.pragma('dart2js:noInline')
  static Store getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Store>(create);
  static Store? _defaultInstance;

  /// The store name
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

/// ValueRef provides a unique identifier for a value
class ValueRef extends $pb.GeneratedMessage {
  factory ValueRef({
    $core.String? store,
    $core.String? key,
  }) {
    final $result = create();
    if (store != null) {
      $result.store = store;
    }
    if (key != null) {
      $result.key = key;
    }
    return $result;
  }
  ValueRef._() : super();
  factory ValueRef.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ValueRef.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ValueRef',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.kvstore.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'store')
    ..aOS(2, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ValueRef clone() => ValueRef()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ValueRef copyWith(void Function(ValueRef) updates) =>
      super.copyWith((message) => updates(message as ValueRef)) as ValueRef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValueRef create() => ValueRef._();
  ValueRef createEmptyInstance() => create();
  static $pb.PbList<ValueRef> createRepeated() => $pb.PbList<ValueRef>();
  @$core.pragma('dart2js:noInline')
  static ValueRef getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValueRef>(create);
  static ValueRef? _defaultInstance;

  /// The key/value store name
  @$pb.TagNumber(1)
  $core.String get store => $_getSZ(0);
  @$pb.TagNumber(1)
  set store($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStore() => $_has(0);
  @$pb.TagNumber(1)
  void clearStore() => clearField(1);

  /// The item's unique key within the store
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

/// Value provides a return value type
class Value extends $pb.GeneratedMessage {
  factory Value({
    ValueRef? ref,
    $13.Struct? content,
  }) {
    final $result = create();
    if (ref != null) {
      $result.ref = ref;
    }
    if (content != null) {
      $result.content = content;
    }
    return $result;
  }
  Value._() : super();
  factory Value.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Value.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Value',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.kvstore.v1'),
      createEmptyInstance: create)
    ..aOM<ValueRef>(1, _omitFieldNames ? '' : 'ref',
        subBuilder: ValueRef.create)
    ..aOM<$13.Struct>(2, _omitFieldNames ? '' : 'content',
        subBuilder: $13.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Value clone() => Value()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Value copyWith(void Function(Value) updates) =>
      super.copyWith((message) => updates(message as Value)) as Value;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Value create() => Value._();
  Value createEmptyInstance() => create();
  static $pb.PbList<Value> createRepeated() => $pb.PbList<Value>();
  @$core.pragma('dart2js:noInline')
  static Value getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Value>(create);
  static Value? _defaultInstance;

  /// ValueRef of the key/value pair, which includes the store and key
  @$pb.TagNumber(1)
  ValueRef get ref => $_getN(0);
  @$pb.TagNumber(1)
  set ref(ValueRef v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRef() => $_has(0);
  @$pb.TagNumber(1)
  void clearRef() => clearField(1);
  @$pb.TagNumber(1)
  ValueRef ensureRef() => $_ensure(0);

  /// The content (JSON object)
  @$pb.TagNumber(2)
  $13.Struct get content => $_getN(1);
  @$pb.TagNumber(2)
  set content($13.Struct v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  $13.Struct ensureContent() => $_ensure(1);
}

class KvStoreGetValueRequest extends $pb.GeneratedMessage {
  factory KvStoreGetValueRequest({
    ValueRef? ref,
  }) {
    final $result = create();
    if (ref != null) {
      $result.ref = ref;
    }
    return $result;
  }
  KvStoreGetValueRequest._() : super();
  factory KvStoreGetValueRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory KvStoreGetValueRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'KvStoreGetValueRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.kvstore.v1'),
      createEmptyInstance: create)
    ..aOM<ValueRef>(1, _omitFieldNames ? '' : 'ref',
        subBuilder: ValueRef.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  KvStoreGetValueRequest clone() =>
      KvStoreGetValueRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  KvStoreGetValueRequest copyWith(
          void Function(KvStoreGetValueRequest) updates) =>
      super.copyWith((message) => updates(message as KvStoreGetValueRequest))
          as KvStoreGetValueRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KvStoreGetValueRequest create() => KvStoreGetValueRequest._();
  KvStoreGetValueRequest createEmptyInstance() => create();
  static $pb.PbList<KvStoreGetValueRequest> createRepeated() =>
      $pb.PbList<KvStoreGetValueRequest>();
  @$core.pragma('dart2js:noInline')
  static KvStoreGetValueRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<KvStoreGetValueRequest>(create);
  static KvStoreGetValueRequest? _defaultInstance;

  /// ValueRef of the key/value pair to get, which includes the store and key
  @$pb.TagNumber(1)
  ValueRef get ref => $_getN(0);
  @$pb.TagNumber(1)
  set ref(ValueRef v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRef() => $_has(0);
  @$pb.TagNumber(1)
  void clearRef() => clearField(1);
  @$pb.TagNumber(1)
  ValueRef ensureRef() => $_ensure(0);
}

class KvStoreGetValueResponse extends $pb.GeneratedMessage {
  factory KvStoreGetValueResponse({
    Value? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  KvStoreGetValueResponse._() : super();
  factory KvStoreGetValueResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory KvStoreGetValueResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'KvStoreGetValueResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.kvstore.v1'),
      createEmptyInstance: create)
    ..aOM<Value>(1, _omitFieldNames ? '' : 'value', subBuilder: Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  KvStoreGetValueResponse clone() =>
      KvStoreGetValueResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  KvStoreGetValueResponse copyWith(
          void Function(KvStoreGetValueResponse) updates) =>
      super.copyWith((message) => updates(message as KvStoreGetValueResponse))
          as KvStoreGetValueResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KvStoreGetValueResponse create() => KvStoreGetValueResponse._();
  KvStoreGetValueResponse createEmptyInstance() => create();
  static $pb.PbList<KvStoreGetValueResponse> createRepeated() =>
      $pb.PbList<KvStoreGetValueResponse>();
  @$core.pragma('dart2js:noInline')
  static KvStoreGetValueResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<KvStoreGetValueResponse>(create);
  static KvStoreGetValueResponse? _defaultInstance;

  /// The retrieved value
  @$pb.TagNumber(1)
  Value get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(Value v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  Value ensureValue() => $_ensure(0);
}

class KvStoreSetValueRequest extends $pb.GeneratedMessage {
  factory KvStoreSetValueRequest({
    ValueRef? ref,
    $13.Struct? content,
  }) {
    final $result = create();
    if (ref != null) {
      $result.ref = ref;
    }
    if (content != null) {
      $result.content = content;
    }
    return $result;
  }
  KvStoreSetValueRequest._() : super();
  factory KvStoreSetValueRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory KvStoreSetValueRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'KvStoreSetValueRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.kvstore.v1'),
      createEmptyInstance: create)
    ..aOM<ValueRef>(1, _omitFieldNames ? '' : 'ref',
        subBuilder: ValueRef.create)
    ..aOM<$13.Struct>(3, _omitFieldNames ? '' : 'content',
        subBuilder: $13.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  KvStoreSetValueRequest clone() =>
      KvStoreSetValueRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  KvStoreSetValueRequest copyWith(
          void Function(KvStoreSetValueRequest) updates) =>
      super.copyWith((message) => updates(message as KvStoreSetValueRequest))
          as KvStoreSetValueRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KvStoreSetValueRequest create() => KvStoreSetValueRequest._();
  KvStoreSetValueRequest createEmptyInstance() => create();
  static $pb.PbList<KvStoreSetValueRequest> createRepeated() =>
      $pb.PbList<KvStoreSetValueRequest>();
  @$core.pragma('dart2js:noInline')
  static KvStoreSetValueRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<KvStoreSetValueRequest>(create);
  static KvStoreSetValueRequest? _defaultInstance;

  /// ValueRef of the key/value pair to set, which includes the store and key
  @$pb.TagNumber(1)
  ValueRef get ref => $_getN(0);
  @$pb.TagNumber(1)
  set ref(ValueRef v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRef() => $_has(0);
  @$pb.TagNumber(1)
  void clearRef() => clearField(1);
  @$pb.TagNumber(1)
  ValueRef ensureRef() => $_ensure(0);

  /// The value content to store (JSON object)
  @$pb.TagNumber(3)
  $13.Struct get content => $_getN(1);
  @$pb.TagNumber(3)
  set content($13.Struct v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(3)
  void clearContent() => clearField(3);
  @$pb.TagNumber(3)
  $13.Struct ensureContent() => $_ensure(1);
}

class KvStoreSetValueResponse extends $pb.GeneratedMessage {
  factory KvStoreSetValueResponse() => create();
  KvStoreSetValueResponse._() : super();
  factory KvStoreSetValueResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory KvStoreSetValueResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'KvStoreSetValueResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.kvstore.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  KvStoreSetValueResponse clone() =>
      KvStoreSetValueResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  KvStoreSetValueResponse copyWith(
          void Function(KvStoreSetValueResponse) updates) =>
      super.copyWith((message) => updates(message as KvStoreSetValueResponse))
          as KvStoreSetValueResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KvStoreSetValueResponse create() => KvStoreSetValueResponse._();
  KvStoreSetValueResponse createEmptyInstance() => create();
  static $pb.PbList<KvStoreSetValueResponse> createRepeated() =>
      $pb.PbList<KvStoreSetValueResponse>();
  @$core.pragma('dart2js:noInline')
  static KvStoreSetValueResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<KvStoreSetValueResponse>(create);
  static KvStoreSetValueResponse? _defaultInstance;
}

class KvStoreDeleteKeyRequest extends $pb.GeneratedMessage {
  factory KvStoreDeleteKeyRequest({
    ValueRef? ref,
  }) {
    final $result = create();
    if (ref != null) {
      $result.ref = ref;
    }
    return $result;
  }
  KvStoreDeleteKeyRequest._() : super();
  factory KvStoreDeleteKeyRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory KvStoreDeleteKeyRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'KvStoreDeleteKeyRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.kvstore.v1'),
      createEmptyInstance: create)
    ..aOM<ValueRef>(1, _omitFieldNames ? '' : 'ref',
        subBuilder: ValueRef.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  KvStoreDeleteKeyRequest clone() =>
      KvStoreDeleteKeyRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  KvStoreDeleteKeyRequest copyWith(
          void Function(KvStoreDeleteKeyRequest) updates) =>
      super.copyWith((message) => updates(message as KvStoreDeleteKeyRequest))
          as KvStoreDeleteKeyRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KvStoreDeleteKeyRequest create() => KvStoreDeleteKeyRequest._();
  KvStoreDeleteKeyRequest createEmptyInstance() => create();
  static $pb.PbList<KvStoreDeleteKeyRequest> createRepeated() =>
      $pb.PbList<KvStoreDeleteKeyRequest>();
  @$core.pragma('dart2js:noInline')
  static KvStoreDeleteKeyRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<KvStoreDeleteKeyRequest>(create);
  static KvStoreDeleteKeyRequest? _defaultInstance;

  /// ValueRef of the key/value pair to delete, which includes the store and key
  @$pb.TagNumber(1)
  ValueRef get ref => $_getN(0);
  @$pb.TagNumber(1)
  set ref(ValueRef v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasRef() => $_has(0);
  @$pb.TagNumber(1)
  void clearRef() => clearField(1);
  @$pb.TagNumber(1)
  ValueRef ensureRef() => $_ensure(0);
}

class KvStoreDeleteKeyResponse extends $pb.GeneratedMessage {
  factory KvStoreDeleteKeyResponse() => create();
  KvStoreDeleteKeyResponse._() : super();
  factory KvStoreDeleteKeyResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory KvStoreDeleteKeyResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'KvStoreDeleteKeyResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.kvstore.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  KvStoreDeleteKeyResponse clone() =>
      KvStoreDeleteKeyResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  KvStoreDeleteKeyResponse copyWith(
          void Function(KvStoreDeleteKeyResponse) updates) =>
      super.copyWith((message) => updates(message as KvStoreDeleteKeyResponse))
          as KvStoreDeleteKeyResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KvStoreDeleteKeyResponse create() => KvStoreDeleteKeyResponse._();
  KvStoreDeleteKeyResponse createEmptyInstance() => create();
  static $pb.PbList<KvStoreDeleteKeyResponse> createRepeated() =>
      $pb.PbList<KvStoreDeleteKeyResponse>();
  @$core.pragma('dart2js:noInline')
  static KvStoreDeleteKeyResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<KvStoreDeleteKeyResponse>(create);
  static KvStoreDeleteKeyResponse? _defaultInstance;
}

class KvStoreScanKeysRequest extends $pb.GeneratedMessage {
  factory KvStoreScanKeysRequest({
    Store? store,
    $core.String? prefix,
  }) {
    final $result = create();
    if (store != null) {
      $result.store = store;
    }
    if (prefix != null) {
      $result.prefix = prefix;
    }
    return $result;
  }
  KvStoreScanKeysRequest._() : super();
  factory KvStoreScanKeysRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory KvStoreScanKeysRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'KvStoreScanKeysRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.kvstore.v1'),
      createEmptyInstance: create)
    ..aOM<Store>(1, _omitFieldNames ? '' : 'store', subBuilder: Store.create)
    ..aOS(2, _omitFieldNames ? '' : 'prefix')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  KvStoreScanKeysRequest clone() =>
      KvStoreScanKeysRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  KvStoreScanKeysRequest copyWith(
          void Function(KvStoreScanKeysRequest) updates) =>
      super.copyWith((message) => updates(message as KvStoreScanKeysRequest))
          as KvStoreScanKeysRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KvStoreScanKeysRequest create() => KvStoreScanKeysRequest._();
  KvStoreScanKeysRequest createEmptyInstance() => create();
  static $pb.PbList<KvStoreScanKeysRequest> createRepeated() =>
      $pb.PbList<KvStoreScanKeysRequest>();
  @$core.pragma('dart2js:noInline')
  static KvStoreScanKeysRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<KvStoreScanKeysRequest>(create);
  static KvStoreScanKeysRequest? _defaultInstance;

  /// The store to iterate over
  @$pb.TagNumber(1)
  Store get store => $_getN(0);
  @$pb.TagNumber(1)
  set store(Store v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStore() => $_has(0);
  @$pb.TagNumber(1)
  void clearStore() => clearField(1);
  @$pb.TagNumber(1)
  Store ensureStore() => $_ensure(0);

  /// The prefix to filter keys by
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

class KvStoreScanKeysResponse extends $pb.GeneratedMessage {
  factory KvStoreScanKeysResponse({
    $core.String? key,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    return $result;
  }
  KvStoreScanKeysResponse._() : super();
  factory KvStoreScanKeysResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory KvStoreScanKeysResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'KvStoreScanKeysResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.kvstore.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  KvStoreScanKeysResponse clone() =>
      KvStoreScanKeysResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  KvStoreScanKeysResponse copyWith(
          void Function(KvStoreScanKeysResponse) updates) =>
      super.copyWith((message) => updates(message as KvStoreScanKeysResponse))
          as KvStoreScanKeysResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KvStoreScanKeysResponse create() => KvStoreScanKeysResponse._();
  KvStoreScanKeysResponse createEmptyInstance() => create();
  static $pb.PbList<KvStoreScanKeysResponse> createRepeated() =>
      $pb.PbList<KvStoreScanKeysResponse>();
  @$core.pragma('dart2js:noInline')
  static KvStoreScanKeysResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<KvStoreScanKeysResponse>(create);
  static KvStoreScanKeysResponse? _defaultInstance;

  /// The key of the key/value pair
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

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
