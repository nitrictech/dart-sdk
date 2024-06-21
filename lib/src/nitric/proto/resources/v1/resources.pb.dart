//
//  Generated code. Do not modify.
//  source: nitric/proto/resources/v1/resources.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'resources.pbenum.dart';

export 'resources.pbenum.dart';

class PolicyResource extends $pb.GeneratedMessage {
  factory PolicyResource({
    $core.Iterable<ResourceIdentifier>? principals,
    $core.Iterable<Action>? actions,
    $core.Iterable<ResourceIdentifier>? resources,
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
  PolicyResource._() : super();
  factory PolicyResource.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PolicyResource.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PolicyResource',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.resources.v1'),
      createEmptyInstance: create)
    ..pc<ResourceIdentifier>(
        1, _omitFieldNames ? '' : 'principals', $pb.PbFieldType.PM,
        subBuilder: ResourceIdentifier.create)
    ..pc<Action>(2, _omitFieldNames ? '' : 'actions', $pb.PbFieldType.KE,
        valueOf: Action.valueOf,
        enumValues: Action.values,
        defaultEnumValue: Action.BucketFileList)
    ..pc<ResourceIdentifier>(
        3, _omitFieldNames ? '' : 'resources', $pb.PbFieldType.PM,
        subBuilder: ResourceIdentifier.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PolicyResource clone() => PolicyResource()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PolicyResource copyWith(void Function(PolicyResource) updates) =>
      super.copyWith((message) => updates(message as PolicyResource))
          as PolicyResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PolicyResource create() => PolicyResource._();
  PolicyResource createEmptyInstance() => create();
  static $pb.PbList<PolicyResource> createRepeated() =>
      $pb.PbList<PolicyResource>();
  @$core.pragma('dart2js:noInline')
  static PolicyResource getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PolicyResource>(create);
  static PolicyResource? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ResourceIdentifier> get principals => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<Action> get actions => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<ResourceIdentifier> get resources => $_getList(2);
}

/// Unique identifier for a resource within a nitric application.
class ResourceIdentifier extends $pb.GeneratedMessage {
  factory ResourceIdentifier({
    ResourceType? type,
    $core.String? name,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  ResourceIdentifier._() : super();
  factory ResourceIdentifier.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResourceIdentifier.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResourceIdentifier',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.resources.v1'),
      createEmptyInstance: create)
    ..e<ResourceType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE,
        defaultOrMaker: ResourceType.Api,
        valueOf: ResourceType.valueOf,
        enumValues: ResourceType.values)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResourceIdentifier clone() => ResourceIdentifier()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResourceIdentifier copyWith(void Function(ResourceIdentifier) updates) =>
      super.copyWith((message) => updates(message as ResourceIdentifier))
          as ResourceIdentifier;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceIdentifier create() => ResourceIdentifier._();
  ResourceIdentifier createEmptyInstance() => create();
  static $pb.PbList<ResourceIdentifier> createRepeated() =>
      $pb.PbList<ResourceIdentifier>();
  @$core.pragma('dart2js:noInline')
  static ResourceIdentifier getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResourceIdentifier>(create);
  static ResourceIdentifier? _defaultInstance;

  @$pb.TagNumber(1)
  ResourceType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(ResourceType v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

enum ResourceDeclareRequest_Config {
  policy,
  bucket,
  topic,
  keyValueStore,
  secret,
  api,
  apiSecurityDefinition,
  queue,
  sqlDatabase,
  notSet
}

class ResourceDeclareRequest extends $pb.GeneratedMessage {
  factory ResourceDeclareRequest({
    ResourceIdentifier? id,
    PolicyResource? policy,
    BucketResource? bucket,
    TopicResource? topic,
    KeyValueStoreResource? keyValueStore,
    SecretResource? secret,
    ApiResource? api,
    ApiSecurityDefinitionResource? apiSecurityDefinition,
    QueueResource? queue,
    SqlDatabaseResource? sqlDatabase,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (policy != null) {
      $result.policy = policy;
    }
    if (bucket != null) {
      $result.bucket = bucket;
    }
    if (topic != null) {
      $result.topic = topic;
    }
    if (keyValueStore != null) {
      $result.keyValueStore = keyValueStore;
    }
    if (secret != null) {
      $result.secret = secret;
    }
    if (api != null) {
      $result.api = api;
    }
    if (apiSecurityDefinition != null) {
      $result.apiSecurityDefinition = apiSecurityDefinition;
    }
    if (queue != null) {
      $result.queue = queue;
    }
    if (sqlDatabase != null) {
      $result.sqlDatabase = sqlDatabase;
    }
    return $result;
  }
  ResourceDeclareRequest._() : super();
  factory ResourceDeclareRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResourceDeclareRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ResourceDeclareRequest_Config>
      _ResourceDeclareRequest_ConfigByTag = {
    10: ResourceDeclareRequest_Config.policy,
    11: ResourceDeclareRequest_Config.bucket,
    12: ResourceDeclareRequest_Config.topic,
    13: ResourceDeclareRequest_Config.keyValueStore,
    14: ResourceDeclareRequest_Config.secret,
    15: ResourceDeclareRequest_Config.api,
    16: ResourceDeclareRequest_Config.apiSecurityDefinition,
    17: ResourceDeclareRequest_Config.queue,
    18: ResourceDeclareRequest_Config.sqlDatabase,
    0: ResourceDeclareRequest_Config.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResourceDeclareRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.resources.v1'),
      createEmptyInstance: create)
    ..oo(0, [10, 11, 12, 13, 14, 15, 16, 17, 18])
    ..aOM<ResourceIdentifier>(1, _omitFieldNames ? '' : 'id',
        subBuilder: ResourceIdentifier.create)
    ..aOM<PolicyResource>(10, _omitFieldNames ? '' : 'policy',
        subBuilder: PolicyResource.create)
    ..aOM<BucketResource>(11, _omitFieldNames ? '' : 'bucket',
        subBuilder: BucketResource.create)
    ..aOM<TopicResource>(12, _omitFieldNames ? '' : 'topic',
        subBuilder: TopicResource.create)
    ..aOM<KeyValueStoreResource>(13, _omitFieldNames ? '' : 'keyValueStore',
        subBuilder: KeyValueStoreResource.create)
    ..aOM<SecretResource>(14, _omitFieldNames ? '' : 'secret',
        subBuilder: SecretResource.create)
    ..aOM<ApiResource>(15, _omitFieldNames ? '' : 'api',
        subBuilder: ApiResource.create)
    ..aOM<ApiSecurityDefinitionResource>(
        16, _omitFieldNames ? '' : 'apiSecurityDefinition',
        subBuilder: ApiSecurityDefinitionResource.create)
    ..aOM<QueueResource>(17, _omitFieldNames ? '' : 'queue',
        subBuilder: QueueResource.create)
    ..aOM<SqlDatabaseResource>(18, _omitFieldNames ? '' : 'sqlDatabase',
        subBuilder: SqlDatabaseResource.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResourceDeclareRequest clone() =>
      ResourceDeclareRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResourceDeclareRequest copyWith(
          void Function(ResourceDeclareRequest) updates) =>
      super.copyWith((message) => updates(message as ResourceDeclareRequest))
          as ResourceDeclareRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceDeclareRequest create() => ResourceDeclareRequest._();
  ResourceDeclareRequest createEmptyInstance() => create();
  static $pb.PbList<ResourceDeclareRequest> createRepeated() =>
      $pb.PbList<ResourceDeclareRequest>();
  @$core.pragma('dart2js:noInline')
  static ResourceDeclareRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResourceDeclareRequest>(create);
  static ResourceDeclareRequest? _defaultInstance;

  ResourceDeclareRequest_Config whichConfig() =>
      _ResourceDeclareRequest_ConfigByTag[$_whichOneof(0)]!;
  void clearConfig() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ResourceIdentifier get id => $_getN(0);
  @$pb.TagNumber(1)
  set id(ResourceIdentifier v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
  @$pb.TagNumber(1)
  ResourceIdentifier ensureId() => $_ensure(0);

  @$pb.TagNumber(10)
  PolicyResource get policy => $_getN(1);
  @$pb.TagNumber(10)
  set policy(PolicyResource v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasPolicy() => $_has(1);
  @$pb.TagNumber(10)
  void clearPolicy() => clearField(10);
  @$pb.TagNumber(10)
  PolicyResource ensurePolicy() => $_ensure(1);

  @$pb.TagNumber(11)
  BucketResource get bucket => $_getN(2);
  @$pb.TagNumber(11)
  set bucket(BucketResource v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasBucket() => $_has(2);
  @$pb.TagNumber(11)
  void clearBucket() => clearField(11);
  @$pb.TagNumber(11)
  BucketResource ensureBucket() => $_ensure(2);

  @$pb.TagNumber(12)
  TopicResource get topic => $_getN(3);
  @$pb.TagNumber(12)
  set topic(TopicResource v) {
    setField(12, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasTopic() => $_has(3);
  @$pb.TagNumber(12)
  void clearTopic() => clearField(12);
  @$pb.TagNumber(12)
  TopicResource ensureTopic() => $_ensure(3);

  @$pb.TagNumber(13)
  KeyValueStoreResource get keyValueStore => $_getN(4);
  @$pb.TagNumber(13)
  set keyValueStore(KeyValueStoreResource v) {
    setField(13, v);
  }

  @$pb.TagNumber(13)
  $core.bool hasKeyValueStore() => $_has(4);
  @$pb.TagNumber(13)
  void clearKeyValueStore() => clearField(13);
  @$pb.TagNumber(13)
  KeyValueStoreResource ensureKeyValueStore() => $_ensure(4);

  @$pb.TagNumber(14)
  SecretResource get secret => $_getN(5);
  @$pb.TagNumber(14)
  set secret(SecretResource v) {
    setField(14, v);
  }

  @$pb.TagNumber(14)
  $core.bool hasSecret() => $_has(5);
  @$pb.TagNumber(14)
  void clearSecret() => clearField(14);
  @$pb.TagNumber(14)
  SecretResource ensureSecret() => $_ensure(5);

  @$pb.TagNumber(15)
  ApiResource get api => $_getN(6);
  @$pb.TagNumber(15)
  set api(ApiResource v) {
    setField(15, v);
  }

  @$pb.TagNumber(15)
  $core.bool hasApi() => $_has(6);
  @$pb.TagNumber(15)
  void clearApi() => clearField(15);
  @$pb.TagNumber(15)
  ApiResource ensureApi() => $_ensure(6);

  @$pb.TagNumber(16)
  ApiSecurityDefinitionResource get apiSecurityDefinition => $_getN(7);
  @$pb.TagNumber(16)
  set apiSecurityDefinition(ApiSecurityDefinitionResource v) {
    setField(16, v);
  }

  @$pb.TagNumber(16)
  $core.bool hasApiSecurityDefinition() => $_has(7);
  @$pb.TagNumber(16)
  void clearApiSecurityDefinition() => clearField(16);
  @$pb.TagNumber(16)
  ApiSecurityDefinitionResource ensureApiSecurityDefinition() => $_ensure(7);

  @$pb.TagNumber(17)
  QueueResource get queue => $_getN(8);
  @$pb.TagNumber(17)
  set queue(QueueResource v) {
    setField(17, v);
  }

  @$pb.TagNumber(17)
  $core.bool hasQueue() => $_has(8);
  @$pb.TagNumber(17)
  void clearQueue() => clearField(17);
  @$pb.TagNumber(17)
  QueueResource ensureQueue() => $_ensure(8);

  @$pb.TagNumber(18)
  SqlDatabaseResource get sqlDatabase => $_getN(9);
  @$pb.TagNumber(18)
  set sqlDatabase(SqlDatabaseResource v) {
    setField(18, v);
  }

  @$pb.TagNumber(18)
  $core.bool hasSqlDatabase() => $_has(9);
  @$pb.TagNumber(18)
  void clearSqlDatabase() => clearField(18);
  @$pb.TagNumber(18)
  SqlDatabaseResource ensureSqlDatabase() => $_ensure(9);
}

class BucketResource extends $pb.GeneratedMessage {
  factory BucketResource() => create();
  BucketResource._() : super();
  factory BucketResource.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BucketResource.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BucketResource',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.resources.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  BucketResource clone() => BucketResource()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  BucketResource copyWith(void Function(BucketResource) updates) =>
      super.copyWith((message) => updates(message as BucketResource))
          as BucketResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BucketResource create() => BucketResource._();
  BucketResource createEmptyInstance() => create();
  static $pb.PbList<BucketResource> createRepeated() =>
      $pb.PbList<BucketResource>();
  @$core.pragma('dart2js:noInline')
  static BucketResource getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BucketResource>(create);
  static BucketResource? _defaultInstance;
}

class TopicResource extends $pb.GeneratedMessage {
  factory TopicResource() => create();
  TopicResource._() : super();
  factory TopicResource.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TopicResource.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TopicResource',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.resources.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  TopicResource clone() => TopicResource()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  TopicResource copyWith(void Function(TopicResource) updates) =>
      super.copyWith((message) => updates(message as TopicResource))
          as TopicResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TopicResource create() => TopicResource._();
  TopicResource createEmptyInstance() => create();
  static $pb.PbList<TopicResource> createRepeated() =>
      $pb.PbList<TopicResource>();
  @$core.pragma('dart2js:noInline')
  static TopicResource getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TopicResource>(create);
  static TopicResource? _defaultInstance;
}

class QueueResource extends $pb.GeneratedMessage {
  factory QueueResource() => create();
  QueueResource._() : super();
  factory QueueResource.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueueResource.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueueResource',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.resources.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  QueueResource clone() => QueueResource()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  QueueResource copyWith(void Function(QueueResource) updates) =>
      super.copyWith((message) => updates(message as QueueResource))
          as QueueResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueueResource create() => QueueResource._();
  QueueResource createEmptyInstance() => create();
  static $pb.PbList<QueueResource> createRepeated() =>
      $pb.PbList<QueueResource>();
  @$core.pragma('dart2js:noInline')
  static QueueResource getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueueResource>(create);
  static QueueResource? _defaultInstance;
}

class KeyValueStoreResource extends $pb.GeneratedMessage {
  factory KeyValueStoreResource() => create();
  KeyValueStoreResource._() : super();
  factory KeyValueStoreResource.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory KeyValueStoreResource.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'KeyValueStoreResource',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.resources.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  KeyValueStoreResource clone() =>
      KeyValueStoreResource()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  KeyValueStoreResource copyWith(
          void Function(KeyValueStoreResource) updates) =>
      super.copyWith((message) => updates(message as KeyValueStoreResource))
          as KeyValueStoreResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeyValueStoreResource create() => KeyValueStoreResource._();
  KeyValueStoreResource createEmptyInstance() => create();
  static $pb.PbList<KeyValueStoreResource> createRepeated() =>
      $pb.PbList<KeyValueStoreResource>();
  @$core.pragma('dart2js:noInline')
  static KeyValueStoreResource getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<KeyValueStoreResource>(create);
  static KeyValueStoreResource? _defaultInstance;
}

class SecretResource extends $pb.GeneratedMessage {
  factory SecretResource() => create();
  SecretResource._() : super();
  factory SecretResource.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SecretResource.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SecretResource',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.resources.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SecretResource clone() => SecretResource()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SecretResource copyWith(void Function(SecretResource) updates) =>
      super.copyWith((message) => updates(message as SecretResource))
          as SecretResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SecretResource create() => SecretResource._();
  SecretResource createEmptyInstance() => create();
  static $pb.PbList<SecretResource> createRepeated() =>
      $pb.PbList<SecretResource>();
  @$core.pragma('dart2js:noInline')
  static SecretResource getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SecretResource>(create);
  static SecretResource? _defaultInstance;
}

enum SqlDatabaseMigrations_Migrations { migrationsPath, notSet }

class SqlDatabaseMigrations extends $pb.GeneratedMessage {
  factory SqlDatabaseMigrations({
    $core.String? migrationsPath,
  }) {
    final $result = create();
    if (migrationsPath != null) {
      $result.migrationsPath = migrationsPath;
    }
    return $result;
  }
  SqlDatabaseMigrations._() : super();
  factory SqlDatabaseMigrations.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SqlDatabaseMigrations.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, SqlDatabaseMigrations_Migrations>
      _SqlDatabaseMigrations_MigrationsByTag = {
    1: SqlDatabaseMigrations_Migrations.migrationsPath,
    0: SqlDatabaseMigrations_Migrations.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SqlDatabaseMigrations',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.resources.v1'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOS(1, _omitFieldNames ? '' : 'migrationsPath')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SqlDatabaseMigrations clone() =>
      SqlDatabaseMigrations()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SqlDatabaseMigrations copyWith(
          void Function(SqlDatabaseMigrations) updates) =>
      super.copyWith((message) => updates(message as SqlDatabaseMigrations))
          as SqlDatabaseMigrations;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SqlDatabaseMigrations create() => SqlDatabaseMigrations._();
  SqlDatabaseMigrations createEmptyInstance() => create();
  static $pb.PbList<SqlDatabaseMigrations> createRepeated() =>
      $pb.PbList<SqlDatabaseMigrations>();
  @$core.pragma('dart2js:noInline')
  static SqlDatabaseMigrations getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SqlDatabaseMigrations>(create);
  static SqlDatabaseMigrations? _defaultInstance;

  SqlDatabaseMigrations_Migrations whichMigrations() =>
      _SqlDatabaseMigrations_MigrationsByTag[$_whichOneof(0)]!;
  void clearMigrations() => clearField($_whichOneof(0));

  /// The path to this databases SQL migrations
  /// Valid values are file://relative/path/to/migrations as a directory or dockerfile://path/to/migrations.dockerfile to hint at a docker image build
  /// Paths should be relative to the root of the application (nitric.yaml file location)
  @$pb.TagNumber(1)
  $core.String get migrationsPath => $_getSZ(0);
  @$pb.TagNumber(1)
  set migrationsPath($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMigrationsPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearMigrationsPath() => clearField(1);
}

class SqlDatabaseResource extends $pb.GeneratedMessage {
  factory SqlDatabaseResource({
    SqlDatabaseMigrations? migrations,
  }) {
    final $result = create();
    if (migrations != null) {
      $result.migrations = migrations;
    }
    return $result;
  }
  SqlDatabaseResource._() : super();
  factory SqlDatabaseResource.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SqlDatabaseResource.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SqlDatabaseResource',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.resources.v1'),
      createEmptyInstance: create)
    ..aOM<SqlDatabaseMigrations>(1, _omitFieldNames ? '' : 'migrations',
        subBuilder: SqlDatabaseMigrations.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SqlDatabaseResource clone() => SqlDatabaseResource()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SqlDatabaseResource copyWith(void Function(SqlDatabaseResource) updates) =>
      super.copyWith((message) => updates(message as SqlDatabaseResource))
          as SqlDatabaseResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SqlDatabaseResource create() => SqlDatabaseResource._();
  SqlDatabaseResource createEmptyInstance() => create();
  static $pb.PbList<SqlDatabaseResource> createRepeated() =>
      $pb.PbList<SqlDatabaseResource>();
  @$core.pragma('dart2js:noInline')
  static SqlDatabaseResource getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SqlDatabaseResource>(create);
  static SqlDatabaseResource? _defaultInstance;

  @$pb.TagNumber(1)
  SqlDatabaseMigrations get migrations => $_getN(0);
  @$pb.TagNumber(1)
  set migrations(SqlDatabaseMigrations v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMigrations() => $_has(0);
  @$pb.TagNumber(1)
  void clearMigrations() => clearField(1);
  @$pb.TagNumber(1)
  SqlDatabaseMigrations ensureMigrations() => $_ensure(0);
}

class ApiOpenIdConnectionDefinition extends $pb.GeneratedMessage {
  factory ApiOpenIdConnectionDefinition({
    $core.String? issuer,
    $core.Iterable<$core.String>? audiences,
  }) {
    final $result = create();
    if (issuer != null) {
      $result.issuer = issuer;
    }
    if (audiences != null) {
      $result.audiences.addAll(audiences);
    }
    return $result;
  }
  ApiOpenIdConnectionDefinition._() : super();
  factory ApiOpenIdConnectionDefinition.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ApiOpenIdConnectionDefinition.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ApiOpenIdConnectionDefinition',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.resources.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'issuer')
    ..pPS(2, _omitFieldNames ? '' : 'audiences')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ApiOpenIdConnectionDefinition clone() =>
      ApiOpenIdConnectionDefinition()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ApiOpenIdConnectionDefinition copyWith(
          void Function(ApiOpenIdConnectionDefinition) updates) =>
      super.copyWith(
              (message) => updates(message as ApiOpenIdConnectionDefinition))
          as ApiOpenIdConnectionDefinition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApiOpenIdConnectionDefinition create() =>
      ApiOpenIdConnectionDefinition._();
  ApiOpenIdConnectionDefinition createEmptyInstance() => create();
  static $pb.PbList<ApiOpenIdConnectionDefinition> createRepeated() =>
      $pb.PbList<ApiOpenIdConnectionDefinition>();
  @$core.pragma('dart2js:noInline')
  static ApiOpenIdConnectionDefinition getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ApiOpenIdConnectionDefinition>(create);
  static ApiOpenIdConnectionDefinition? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get issuer => $_getSZ(0);
  @$pb.TagNumber(1)
  set issuer($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIssuer() => $_has(0);
  @$pb.TagNumber(1)
  void clearIssuer() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get audiences => $_getList(1);
}

enum ApiSecurityDefinitionResource_Definition { oidc, notSet }

class ApiSecurityDefinitionResource extends $pb.GeneratedMessage {
  factory ApiSecurityDefinitionResource({
    $core.String? apiName,
    ApiOpenIdConnectionDefinition? oidc,
  }) {
    final $result = create();
    if (apiName != null) {
      $result.apiName = apiName;
    }
    if (oidc != null) {
      $result.oidc = oidc;
    }
    return $result;
  }
  ApiSecurityDefinitionResource._() : super();
  factory ApiSecurityDefinitionResource.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ApiSecurityDefinitionResource.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ApiSecurityDefinitionResource_Definition>
      _ApiSecurityDefinitionResource_DefinitionByTag = {
    2: ApiSecurityDefinitionResource_Definition.oidc,
    0: ApiSecurityDefinitionResource_Definition.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ApiSecurityDefinitionResource',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.resources.v1'),
      createEmptyInstance: create)
    ..oo(0, [2])
    ..aOS(1, _omitFieldNames ? '' : 'apiName')
    ..aOM<ApiOpenIdConnectionDefinition>(2, _omitFieldNames ? '' : 'oidc',
        subBuilder: ApiOpenIdConnectionDefinition.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ApiSecurityDefinitionResource clone() =>
      ApiSecurityDefinitionResource()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ApiSecurityDefinitionResource copyWith(
          void Function(ApiSecurityDefinitionResource) updates) =>
      super.copyWith(
              (message) => updates(message as ApiSecurityDefinitionResource))
          as ApiSecurityDefinitionResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApiSecurityDefinitionResource create() =>
      ApiSecurityDefinitionResource._();
  ApiSecurityDefinitionResource createEmptyInstance() => create();
  static $pb.PbList<ApiSecurityDefinitionResource> createRepeated() =>
      $pb.PbList<ApiSecurityDefinitionResource>();
  @$core.pragma('dart2js:noInline')
  static ApiSecurityDefinitionResource getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ApiSecurityDefinitionResource>(create);
  static ApiSecurityDefinitionResource? _defaultInstance;

  ApiSecurityDefinitionResource_Definition whichDefinition() =>
      _ApiSecurityDefinitionResource_DefinitionByTag[$_whichOneof(0)]!;
  void clearDefinition() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get apiName => $_getSZ(0);
  @$pb.TagNumber(1)
  set apiName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasApiName() => $_has(0);
  @$pb.TagNumber(1)
  void clearApiName() => clearField(1);

  @$pb.TagNumber(2)
  ApiOpenIdConnectionDefinition get oidc => $_getN(1);
  @$pb.TagNumber(2)
  set oidc(ApiOpenIdConnectionDefinition v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOidc() => $_has(1);
  @$pb.TagNumber(2)
  void clearOidc() => clearField(2);
  @$pb.TagNumber(2)
  ApiOpenIdConnectionDefinition ensureOidc() => $_ensure(1);
}

class ApiScopes extends $pb.GeneratedMessage {
  factory ApiScopes({
    $core.Iterable<$core.String>? scopes,
  }) {
    final $result = create();
    if (scopes != null) {
      $result.scopes.addAll(scopes);
    }
    return $result;
  }
  ApiScopes._() : super();
  factory ApiScopes.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ApiScopes.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ApiScopes',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.resources.v1'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'scopes')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ApiScopes clone() => ApiScopes()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ApiScopes copyWith(void Function(ApiScopes) updates) =>
      super.copyWith((message) => updates(message as ApiScopes)) as ApiScopes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApiScopes create() => ApiScopes._();
  ApiScopes createEmptyInstance() => create();
  static $pb.PbList<ApiScopes> createRepeated() => $pb.PbList<ApiScopes>();
  @$core.pragma('dart2js:noInline')
  static ApiScopes getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiScopes>(create);
  static ApiScopes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get scopes => $_getList(0);
}

class ApiResource extends $pb.GeneratedMessage {
  factory ApiResource({
    $core.Map<$core.String, ApiScopes>? security,
  }) {
    final $result = create();
    if (security != null) {
      $result.security.addAll(security);
    }
    return $result;
  }
  ApiResource._() : super();
  factory ApiResource.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ApiResource.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ApiResource',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.resources.v1'),
      createEmptyInstance: create)
    ..m<$core.String, ApiScopes>(1, _omitFieldNames ? '' : 'security',
        entryClassName: 'ApiResource.SecurityEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: ApiScopes.create,
        valueDefaultOrMaker: ApiScopes.getDefault,
        packageName: const $pb.PackageName('nitric.proto.resources.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ApiResource clone() => ApiResource()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ApiResource copyWith(void Function(ApiResource) updates) =>
      super.copyWith((message) => updates(message as ApiResource))
          as ApiResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApiResource create() => ApiResource._();
  ApiResource createEmptyInstance() => create();
  static $pb.PbList<ApiResource> createRepeated() => $pb.PbList<ApiResource>();
  @$core.pragma('dart2js:noInline')
  static ApiResource getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ApiResource>(create);
  static ApiResource? _defaultInstance;

  /// root level security map for this api
  /// references ApiSecurityDefinitionResource(s)
  @$pb.TagNumber(1)
  $core.Map<$core.String, ApiScopes> get security => $_getMap(0);
}

class ResourceDeclareResponse extends $pb.GeneratedMessage {
  factory ResourceDeclareResponse() => create();
  ResourceDeclareResponse._() : super();
  factory ResourceDeclareResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResourceDeclareResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ResourceDeclareResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.resources.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ResourceDeclareResponse clone() =>
      ResourceDeclareResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ResourceDeclareResponse copyWith(
          void Function(ResourceDeclareResponse) updates) =>
      super.copyWith((message) => updates(message as ResourceDeclareResponse))
          as ResourceDeclareResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceDeclareResponse create() => ResourceDeclareResponse._();
  ResourceDeclareResponse createEmptyInstance() => create();
  static $pb.PbList<ResourceDeclareResponse> createRepeated() =>
      $pb.PbList<ResourceDeclareResponse>();
  @$core.pragma('dart2js:noInline')
  static ResourceDeclareResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ResourceDeclareResponse>(create);
  static ResourceDeclareResponse? _defaultInstance;
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
