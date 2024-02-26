//
//  Generated code. Do not modify.
//  source: nitric/proto/keyvalue/v1/keyvalue.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/struct.pb.dart' as $12;

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
  factory Store.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Store.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Store', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.KeyValue.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Store clone() => Store()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Store copyWith(void Function(Store) updates) => super.copyWith((message) => updates(message as Store)) as Store;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Store create() => Store._();
  Store createEmptyInstance() => create();
  static $pb.PbList<Store> createRepeated() => $pb.PbList<Store>();
  @$core.pragma('dart2js:noInline')
  static Store getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Store>(create);
  static Store? _defaultInstance;

  /// The store name
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
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
  factory ValueRef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValueRef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValueRef', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.KeyValue.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'store')
    ..aOS(2, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValueRef clone() => ValueRef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValueRef copyWith(void Function(ValueRef) updates) => super.copyWith((message) => updates(message as ValueRef)) as ValueRef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValueRef create() => ValueRef._();
  ValueRef createEmptyInstance() => create();
  static $pb.PbList<ValueRef> createRepeated() => $pb.PbList<ValueRef>();
  @$core.pragma('dart2js:noInline')
  static ValueRef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValueRef>(create);
  static ValueRef? _defaultInstance;

  /// The key/value store name
  @$pb.TagNumber(1)
  $core.String get store => $_getSZ(0);
  @$pb.TagNumber(1)
  set store($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStore() => $_has(0);
  @$pb.TagNumber(1)
  void clearStore() => clearField(1);

  /// The item's unique key within the store
  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => clearField(2);
}

/// Value provides a return value type
class Value extends $pb.GeneratedMessage {
  factory Value({
    ValueRef? ref,
    $12.Struct? content,
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
  factory Value.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Value.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Value', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.KeyValue.v1'), createEmptyInstance: create)
    ..aOM<ValueRef>(1, _omitFieldNames ? '' : 'ref', subBuilder: ValueRef.create)
    ..aOM<$12.Struct>(2, _omitFieldNames ? '' : 'content', subBuilder: $12.Struct.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Value clone() => Value()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Value copyWith(void Function(Value) updates) => super.copyWith((message) => updates(message as Value)) as Value;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Value create() => Value._();
  Value createEmptyInstance() => create();
  static $pb.PbList<Value> createRepeated() => $pb.PbList<Value>();
  @$core.pragma('dart2js:noInline')
  static Value getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Value>(create);
  static Value? _defaultInstance;

  /// ValueRef of the key/value pair, which includes the store and key
  @$pb.TagNumber(1)
  ValueRef get ref => $_getN(0);
  @$pb.TagNumber(1)
  set ref(ValueRef v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRef() => $_has(0);
  @$pb.TagNumber(1)
  void clearRef() => clearField(1);
  @$pb.TagNumber(1)
  ValueRef ensureRef() => $_ensure(0);

  /// The content (JSON object)
  @$pb.TagNumber(2)
  $12.Struct get content => $_getN(1);
  @$pb.TagNumber(2)
  set content($12.Struct v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(2)
  void clearContent() => clearField(2);
  @$pb.TagNumber(2)
  $12.Struct ensureContent() => $_ensure(1);
}

class KeyValueGetRequest extends $pb.GeneratedMessage {
  factory KeyValueGetRequest({
    ValueRef? ref,
  }) {
    final $result = create();
    if (ref != null) {
      $result.ref = ref;
    }
    return $result;
  }
  KeyValueGetRequest._() : super();
  factory KeyValueGetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyValueGetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KeyValueGetRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.KeyValue.v1'), createEmptyInstance: create)
    ..aOM<ValueRef>(1, _omitFieldNames ? '' : 'ref', subBuilder: ValueRef.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyValueGetRequest clone() => KeyValueGetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyValueGetRequest copyWith(void Function(KeyValueGetRequest) updates) => super.copyWith((message) => updates(message as KeyValueGetRequest)) as KeyValueGetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeyValueGetRequest create() => KeyValueGetRequest._();
  KeyValueGetRequest createEmptyInstance() => create();
  static $pb.PbList<KeyValueGetRequest> createRepeated() => $pb.PbList<KeyValueGetRequest>();
  @$core.pragma('dart2js:noInline')
  static KeyValueGetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyValueGetRequest>(create);
  static KeyValueGetRequest? _defaultInstance;

  /// ValueRef of the key/value pair to get, which includes the store and key
  @$pb.TagNumber(1)
  ValueRef get ref => $_getN(0);
  @$pb.TagNumber(1)
  set ref(ValueRef v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRef() => $_has(0);
  @$pb.TagNumber(1)
  void clearRef() => clearField(1);
  @$pb.TagNumber(1)
  ValueRef ensureRef() => $_ensure(0);
}

class KeyValueGetResponse extends $pb.GeneratedMessage {
  factory KeyValueGetResponse({
    Value? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  KeyValueGetResponse._() : super();
  factory KeyValueGetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyValueGetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KeyValueGetResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.KeyValue.v1'), createEmptyInstance: create)
    ..aOM<Value>(1, _omitFieldNames ? '' : 'value', subBuilder: Value.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyValueGetResponse clone() => KeyValueGetResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyValueGetResponse copyWith(void Function(KeyValueGetResponse) updates) => super.copyWith((message) => updates(message as KeyValueGetResponse)) as KeyValueGetResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeyValueGetResponse create() => KeyValueGetResponse._();
  KeyValueGetResponse createEmptyInstance() => create();
  static $pb.PbList<KeyValueGetResponse> createRepeated() => $pb.PbList<KeyValueGetResponse>();
  @$core.pragma('dart2js:noInline')
  static KeyValueGetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyValueGetResponse>(create);
  static KeyValueGetResponse? _defaultInstance;

  /// The retrieved value
  @$pb.TagNumber(1)
  Value get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(Value v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  Value ensureValue() => $_ensure(0);
}

class KeyValueSetRequest extends $pb.GeneratedMessage {
  factory KeyValueSetRequest({
    ValueRef? ref,
    $12.Struct? content,
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
  KeyValueSetRequest._() : super();
  factory KeyValueSetRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyValueSetRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KeyValueSetRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.KeyValue.v1'), createEmptyInstance: create)
    ..aOM<ValueRef>(1, _omitFieldNames ? '' : 'ref', subBuilder: ValueRef.create)
    ..aOM<$12.Struct>(3, _omitFieldNames ? '' : 'content', subBuilder: $12.Struct.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyValueSetRequest clone() => KeyValueSetRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyValueSetRequest copyWith(void Function(KeyValueSetRequest) updates) => super.copyWith((message) => updates(message as KeyValueSetRequest)) as KeyValueSetRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeyValueSetRequest create() => KeyValueSetRequest._();
  KeyValueSetRequest createEmptyInstance() => create();
  static $pb.PbList<KeyValueSetRequest> createRepeated() => $pb.PbList<KeyValueSetRequest>();
  @$core.pragma('dart2js:noInline')
  static KeyValueSetRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyValueSetRequest>(create);
  static KeyValueSetRequest? _defaultInstance;

  /// ValueRef of the key/value pair to set, which includes the store and key
  @$pb.TagNumber(1)
  ValueRef get ref => $_getN(0);
  @$pb.TagNumber(1)
  set ref(ValueRef v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRef() => $_has(0);
  @$pb.TagNumber(1)
  void clearRef() => clearField(1);
  @$pb.TagNumber(1)
  ValueRef ensureRef() => $_ensure(0);

  /// The value content to store (JSON object)
  @$pb.TagNumber(3)
  $12.Struct get content => $_getN(1);
  @$pb.TagNumber(3)
  set content($12.Struct v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasContent() => $_has(1);
  @$pb.TagNumber(3)
  void clearContent() => clearField(3);
  @$pb.TagNumber(3)
  $12.Struct ensureContent() => $_ensure(1);
}

class KeyValueSetResponse extends $pb.GeneratedMessage {
  factory KeyValueSetResponse() => create();
  KeyValueSetResponse._() : super();
  factory KeyValueSetResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyValueSetResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KeyValueSetResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.KeyValue.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyValueSetResponse clone() => KeyValueSetResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyValueSetResponse copyWith(void Function(KeyValueSetResponse) updates) => super.copyWith((message) => updates(message as KeyValueSetResponse)) as KeyValueSetResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeyValueSetResponse create() => KeyValueSetResponse._();
  KeyValueSetResponse createEmptyInstance() => create();
  static $pb.PbList<KeyValueSetResponse> createRepeated() => $pb.PbList<KeyValueSetResponse>();
  @$core.pragma('dart2js:noInline')
  static KeyValueSetResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyValueSetResponse>(create);
  static KeyValueSetResponse? _defaultInstance;
}

class KeyValueDeleteRequest extends $pb.GeneratedMessage {
  factory KeyValueDeleteRequest({
    ValueRef? ref,
  }) {
    final $result = create();
    if (ref != null) {
      $result.ref = ref;
    }
    return $result;
  }
  KeyValueDeleteRequest._() : super();
  factory KeyValueDeleteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyValueDeleteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KeyValueDeleteRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.KeyValue.v1'), createEmptyInstance: create)
    ..aOM<ValueRef>(1, _omitFieldNames ? '' : 'ref', subBuilder: ValueRef.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyValueDeleteRequest clone() => KeyValueDeleteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyValueDeleteRequest copyWith(void Function(KeyValueDeleteRequest) updates) => super.copyWith((message) => updates(message as KeyValueDeleteRequest)) as KeyValueDeleteRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeyValueDeleteRequest create() => KeyValueDeleteRequest._();
  KeyValueDeleteRequest createEmptyInstance() => create();
  static $pb.PbList<KeyValueDeleteRequest> createRepeated() => $pb.PbList<KeyValueDeleteRequest>();
  @$core.pragma('dart2js:noInline')
  static KeyValueDeleteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyValueDeleteRequest>(create);
  static KeyValueDeleteRequest? _defaultInstance;

  /// ValueRef of the key/value pair to delete, which includes the store and key
  @$pb.TagNumber(1)
  ValueRef get ref => $_getN(0);
  @$pb.TagNumber(1)
  set ref(ValueRef v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRef() => $_has(0);
  @$pb.TagNumber(1)
  void clearRef() => clearField(1);
  @$pb.TagNumber(1)
  ValueRef ensureRef() => $_ensure(0);
}

class KeyValueDeleteResponse extends $pb.GeneratedMessage {
  factory KeyValueDeleteResponse() => create();
  KeyValueDeleteResponse._() : super();
  factory KeyValueDeleteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyValueDeleteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'KeyValueDeleteResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.KeyValue.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyValueDeleteResponse clone() => KeyValueDeleteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyValueDeleteResponse copyWith(void Function(KeyValueDeleteResponse) updates) => super.copyWith((message) => updates(message as KeyValueDeleteResponse)) as KeyValueDeleteResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeyValueDeleteResponse create() => KeyValueDeleteResponse._();
  KeyValueDeleteResponse createEmptyInstance() => create();
  static $pb.PbList<KeyValueDeleteResponse> createRepeated() => $pb.PbList<KeyValueDeleteResponse>();
  @$core.pragma('dart2js:noInline')
  static KeyValueDeleteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyValueDeleteResponse>(create);
  static KeyValueDeleteResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
