//
//  Generated code. Do not modify.
//  source: contracts/proto/storage/v1/storage.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'storage.pbenum.dart';

export 'storage.pbenum.dart';

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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.storage.v1'),
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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.storage.v1'),
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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.storage.v1'),
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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.storage.v1'),
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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.storage.v1'),
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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.storage.v1'),
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

/// Request to generate a pre-signed URL for a file to perform a specific operation, such as read or write.
class StoragePreSignUrlRequest extends $pb.GeneratedMessage {
  factory StoragePreSignUrlRequest({
    $core.String? bucketName,
    $core.String? key,
    StoragePreSignUrlRequest_Operation? operation,
    $core.int? expiry,
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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.storage.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'bucketName')
    ..aOS(2, _omitFieldNames ? '' : 'key')
    ..e<StoragePreSignUrlRequest_Operation>(
        3, _omitFieldNames ? '' : 'operation', $pb.PbFieldType.OE,
        defaultOrMaker: StoragePreSignUrlRequest_Operation.READ,
        valueOf: StoragePreSignUrlRequest_Operation.valueOf,
        enumValues: StoragePreSignUrlRequest_Operation.values)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'expiry', $pb.PbFieldType.OU3)
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

  /// Expiry time in seconds for the token included in the signed URL.
  ///  Time starts from when the access token is generated, not when this request is made.
  ///  e.g. time.Now().Add(expiry * time.Second) on the server
  @$pb.TagNumber(4)
  $core.int get expiry => $_getIZ(3);
  @$pb.TagNumber(4)
  set expiry($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasExpiry() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpiry() => clearField(4);
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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.storage.v1'),
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

class StorageListFilesRequest extends $pb.GeneratedMessage {
  factory StorageListFilesRequest({
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
  StorageListFilesRequest._() : super();
  factory StorageListFilesRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StorageListFilesRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StorageListFilesRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.storage.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'bucketName')
    ..aOS(2, _omitFieldNames ? '' : 'prefix')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StorageListFilesRequest clone() =>
      StorageListFilesRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StorageListFilesRequest copyWith(
          void Function(StorageListFilesRequest) updates) =>
      super.copyWith((message) => updates(message as StorageListFilesRequest))
          as StorageListFilesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageListFilesRequest create() => StorageListFilesRequest._();
  StorageListFilesRequest createEmptyInstance() => create();
  static $pb.PbList<StorageListFilesRequest> createRepeated() =>
      $pb.PbList<StorageListFilesRequest>();
  @$core.pragma('dart2js:noInline')
  static StorageListFilesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StorageListFilesRequest>(create);
  static StorageListFilesRequest? _defaultInstance;

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

class File extends $pb.GeneratedMessage {
  factory File({
    $core.String? key,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    return $result;
  }
  File._() : super();
  factory File.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory File.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'File',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.storage.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  File clone() => File()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  File copyWith(void Function(File) updates) =>
      super.copyWith((message) => updates(message as File)) as File;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static File create() => File._();
  File createEmptyInstance() => create();
  static $pb.PbList<File> createRepeated() => $pb.PbList<File>();
  @$core.pragma('dart2js:noInline')
  static File getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<File>(create);
  static File? _defaultInstance;

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

class StorageListFilesResponse extends $pb.GeneratedMessage {
  factory StorageListFilesResponse({
    $core.Iterable<File>? files,
  }) {
    final $result = create();
    if (files != null) {
      $result.files.addAll(files);
    }
    return $result;
  }
  StorageListFilesResponse._() : super();
  factory StorageListFilesResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StorageListFilesResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StorageListFilesResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.storage.v1'),
      createEmptyInstance: create)
    ..pc<File>(1, _omitFieldNames ? '' : 'files', $pb.PbFieldType.PM,
        subBuilder: File.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StorageListFilesResponse clone() =>
      StorageListFilesResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StorageListFilesResponse copyWith(
          void Function(StorageListFilesResponse) updates) =>
      super.copyWith((message) => updates(message as StorageListFilesResponse))
          as StorageListFilesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageListFilesResponse create() => StorageListFilesResponse._();
  StorageListFilesResponse createEmptyInstance() => create();
  static $pb.PbList<StorageListFilesResponse> createRepeated() =>
      $pb.PbList<StorageListFilesResponse>();
  @$core.pragma('dart2js:noInline')
  static StorageListFilesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StorageListFilesResponse>(create);
  static StorageListFilesResponse? _defaultInstance;

  /// keys of the files in the bucket
  @$pb.TagNumber(1)
  $core.List<File> get files => $_getList(0);
}

class StorageExistsRequest extends $pb.GeneratedMessage {
  factory StorageExistsRequest({
    $core.String? bucket,
    $core.String? key,
  }) {
    final $result = create();
    if (bucket != null) {
      $result.bucket = bucket;
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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.storage.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'bucket')
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
  $core.String get bucket => $_getSZ(0);
  @$pb.TagNumber(1)
  set bucket($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBucket() => $_has(0);
  @$pb.TagNumber(1)
  void clearBucket() => clearField(1);

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
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.storage.v1'),
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
