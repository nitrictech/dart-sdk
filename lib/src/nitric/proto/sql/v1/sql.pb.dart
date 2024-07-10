//
//  Generated code. Do not modify.
//  source: nitric/proto/sql/v1/sql.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class SqlConnectionStringRequest extends $pb.GeneratedMessage {
  factory SqlConnectionStringRequest({
    $core.String? databaseName,
  }) {
    final $result = create();
    if (databaseName != null) {
      $result.databaseName = databaseName;
    }
    return $result;
  }
  SqlConnectionStringRequest._() : super();
  factory SqlConnectionStringRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SqlConnectionStringRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SqlConnectionStringRequest',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.sql.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'databaseName')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SqlConnectionStringRequest clone() =>
      SqlConnectionStringRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SqlConnectionStringRequest copyWith(
          void Function(SqlConnectionStringRequest) updates) =>
      super.copyWith(
              (message) => updates(message as SqlConnectionStringRequest))
          as SqlConnectionStringRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SqlConnectionStringRequest create() => SqlConnectionStringRequest._();
  SqlConnectionStringRequest createEmptyInstance() => create();
  static $pb.PbList<SqlConnectionStringRequest> createRepeated() =>
      $pb.PbList<SqlConnectionStringRequest>();
  @$core.pragma('dart2js:noInline')
  static SqlConnectionStringRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SqlConnectionStringRequest>(create);
  static SqlConnectionStringRequest? _defaultInstance;

  /// The name of the database to retrieve the connection string for
  @$pb.TagNumber(1)
  $core.String get databaseName => $_getSZ(0);
  @$pb.TagNumber(1)
  set databaseName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasDatabaseName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDatabaseName() => clearField(1);
}

class SqlConnectionStringResponse extends $pb.GeneratedMessage {
  factory SqlConnectionStringResponse({
    $core.String? connectionString,
  }) {
    final $result = create();
    if (connectionString != null) {
      $result.connectionString = connectionString;
    }
    return $result;
  }
  SqlConnectionStringResponse._() : super();
  factory SqlConnectionStringResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SqlConnectionStringResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SqlConnectionStringResponse',
      package:
          const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.sql.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'connectionString')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SqlConnectionStringResponse clone() =>
      SqlConnectionStringResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SqlConnectionStringResponse copyWith(
          void Function(SqlConnectionStringResponse) updates) =>
      super.copyWith(
              (message) => updates(message as SqlConnectionStringResponse))
          as SqlConnectionStringResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SqlConnectionStringResponse create() =>
      SqlConnectionStringResponse._();
  SqlConnectionStringResponse createEmptyInstance() => create();
  static $pb.PbList<SqlConnectionStringResponse> createRepeated() =>
      $pb.PbList<SqlConnectionStringResponse>();
  @$core.pragma('dart2js:noInline')
  static SqlConnectionStringResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SqlConnectionStringResponse>(create);
  static SqlConnectionStringResponse? _defaultInstance;

  /// The connection string for the database
  @$pb.TagNumber(1)
  $core.String get connectionString => $_getSZ(0);
  @$pb.TagNumber(1)
  set connectionString($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasConnectionString() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnectionString() => clearField(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
