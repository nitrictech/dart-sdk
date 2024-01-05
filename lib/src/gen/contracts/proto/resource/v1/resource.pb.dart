//
//  Generated code. Do not modify.
//  source: contracts/proto/resource/v1/resource.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'resource.pbenum.dart';

export 'resource.pbenum.dart';

class PolicyResource extends $pb.GeneratedMessage {
  factory PolicyResource({
    $core.Iterable<Resource>? principals,
    $core.Iterable<Action>? actions,
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
  PolicyResource._() : super();
  factory PolicyResource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PolicyResource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PolicyResource', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.resource.v1'), createEmptyInstance: create)
    ..pc<Resource>(1, _omitFieldNames ? '' : 'principals', $pb.PbFieldType.PM, subBuilder: Resource.create)
    ..pc<Action>(2, _omitFieldNames ? '' : 'actions', $pb.PbFieldType.KE, valueOf: Action.valueOf, enumValues: Action.values, defaultEnumValue: Action.BucketFileList)
    ..pc<Resource>(3, _omitFieldNames ? '' : 'resources', $pb.PbFieldType.PM, subBuilder: Resource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PolicyResource clone() => PolicyResource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PolicyResource copyWith(void Function(PolicyResource) updates) => super.copyWith((message) => updates(message as PolicyResource)) as PolicyResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PolicyResource create() => PolicyResource._();
  PolicyResource createEmptyInstance() => create();
  static $pb.PbList<PolicyResource> createRepeated() => $pb.PbList<PolicyResource>();
  @$core.pragma('dart2js:noInline')
  static PolicyResource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PolicyResource>(create);
  static PolicyResource? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Resource> get principals => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<Action> get actions => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<Resource> get resources => $_getList(2);
}

class Resource extends $pb.GeneratedMessage {
  factory Resource({
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
  Resource._() : super();
  factory Resource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Resource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Resource', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.resource.v1'), createEmptyInstance: create)
    ..e<ResourceType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ResourceType.Api, valueOf: ResourceType.valueOf, enumValues: ResourceType.values)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Resource clone() => Resource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Resource copyWith(void Function(Resource) updates) => super.copyWith((message) => updates(message as Resource)) as Resource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Resource create() => Resource._();
  Resource createEmptyInstance() => create();
  static $pb.PbList<Resource> createRepeated() => $pb.PbList<Resource>();
  @$core.pragma('dart2js:noInline')
  static Resource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Resource>(create);
  static Resource? _defaultInstance;

  @$pb.TagNumber(1)
  ResourceType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(ResourceType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

enum ResourceDeclareRequest_Config {
  policy, 
  bucket, 
  queue, 
  topic, 
  collection, 
  secret, 
  api, 
  notSet
}

class ResourceDeclareRequest extends $pb.GeneratedMessage {
  factory ResourceDeclareRequest({
    Resource? resource,
    PolicyResource? policy,
    BucketResource? bucket,
    QueueResource? queue,
    TopicResource? topic,
    CollectionResource? collection,
    SecretResource? secret,
    ApiResource? api,
  }) {
    final $result = create();
    if (resource != null) {
      $result.resource = resource;
    }
    if (policy != null) {
      $result.policy = policy;
    }
    if (bucket != null) {
      $result.bucket = bucket;
    }
    if (queue != null) {
      $result.queue = queue;
    }
    if (topic != null) {
      $result.topic = topic;
    }
    if (collection != null) {
      $result.collection = collection;
    }
    if (secret != null) {
      $result.secret = secret;
    }
    if (api != null) {
      $result.api = api;
    }
    return $result;
  }
  ResourceDeclareRequest._() : super();
  factory ResourceDeclareRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceDeclareRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ResourceDeclareRequest_Config> _ResourceDeclareRequest_ConfigByTag = {
    10 : ResourceDeclareRequest_Config.policy,
    11 : ResourceDeclareRequest_Config.bucket,
    12 : ResourceDeclareRequest_Config.queue,
    13 : ResourceDeclareRequest_Config.topic,
    14 : ResourceDeclareRequest_Config.collection,
    15 : ResourceDeclareRequest_Config.secret,
    16 : ResourceDeclareRequest_Config.api,
    0 : ResourceDeclareRequest_Config.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceDeclareRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.resource.v1'), createEmptyInstance: create)
    ..oo(0, [10, 11, 12, 13, 14, 15, 16])
    ..aOM<Resource>(1, _omitFieldNames ? '' : 'resource', subBuilder: Resource.create)
    ..aOM<PolicyResource>(10, _omitFieldNames ? '' : 'policy', subBuilder: PolicyResource.create)
    ..aOM<BucketResource>(11, _omitFieldNames ? '' : 'bucket', subBuilder: BucketResource.create)
    ..aOM<QueueResource>(12, _omitFieldNames ? '' : 'queue', subBuilder: QueueResource.create)
    ..aOM<TopicResource>(13, _omitFieldNames ? '' : 'topic', subBuilder: TopicResource.create)
    ..aOM<CollectionResource>(14, _omitFieldNames ? '' : 'collection', subBuilder: CollectionResource.create)
    ..aOM<SecretResource>(15, _omitFieldNames ? '' : 'secret', subBuilder: SecretResource.create)
    ..aOM<ApiResource>(16, _omitFieldNames ? '' : 'api', subBuilder: ApiResource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceDeclareRequest clone() => ResourceDeclareRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceDeclareRequest copyWith(void Function(ResourceDeclareRequest) updates) => super.copyWith((message) => updates(message as ResourceDeclareRequest)) as ResourceDeclareRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceDeclareRequest create() => ResourceDeclareRequest._();
  ResourceDeclareRequest createEmptyInstance() => create();
  static $pb.PbList<ResourceDeclareRequest> createRepeated() => $pb.PbList<ResourceDeclareRequest>();
  @$core.pragma('dart2js:noInline')
  static ResourceDeclareRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceDeclareRequest>(create);
  static ResourceDeclareRequest? _defaultInstance;

  ResourceDeclareRequest_Config whichConfig() => _ResourceDeclareRequest_ConfigByTag[$_whichOneof(0)]!;
  void clearConfig() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Resource get resource => $_getN(0);
  @$pb.TagNumber(1)
  set resource(Resource v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResource() => $_has(0);
  @$pb.TagNumber(1)
  void clearResource() => clearField(1);
  @$pb.TagNumber(1)
  Resource ensureResource() => $_ensure(0);

  @$pb.TagNumber(10)
  PolicyResource get policy => $_getN(1);
  @$pb.TagNumber(10)
  set policy(PolicyResource v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasPolicy() => $_has(1);
  @$pb.TagNumber(10)
  void clearPolicy() => clearField(10);
  @$pb.TagNumber(10)
  PolicyResource ensurePolicy() => $_ensure(1);

  @$pb.TagNumber(11)
  BucketResource get bucket => $_getN(2);
  @$pb.TagNumber(11)
  set bucket(BucketResource v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasBucket() => $_has(2);
  @$pb.TagNumber(11)
  void clearBucket() => clearField(11);
  @$pb.TagNumber(11)
  BucketResource ensureBucket() => $_ensure(2);

  @$pb.TagNumber(12)
  QueueResource get queue => $_getN(3);
  @$pb.TagNumber(12)
  set queue(QueueResource v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasQueue() => $_has(3);
  @$pb.TagNumber(12)
  void clearQueue() => clearField(12);
  @$pb.TagNumber(12)
  QueueResource ensureQueue() => $_ensure(3);

  @$pb.TagNumber(13)
  TopicResource get topic => $_getN(4);
  @$pb.TagNumber(13)
  set topic(TopicResource v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasTopic() => $_has(4);
  @$pb.TagNumber(13)
  void clearTopic() => clearField(13);
  @$pb.TagNumber(13)
  TopicResource ensureTopic() => $_ensure(4);

  @$pb.TagNumber(14)
  CollectionResource get collection => $_getN(5);
  @$pb.TagNumber(14)
  set collection(CollectionResource v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasCollection() => $_has(5);
  @$pb.TagNumber(14)
  void clearCollection() => clearField(14);
  @$pb.TagNumber(14)
  CollectionResource ensureCollection() => $_ensure(5);

  @$pb.TagNumber(15)
  SecretResource get secret => $_getN(6);
  @$pb.TagNumber(15)
  set secret(SecretResource v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasSecret() => $_has(6);
  @$pb.TagNumber(15)
  void clearSecret() => clearField(15);
  @$pb.TagNumber(15)
  SecretResource ensureSecret() => $_ensure(6);

  @$pb.TagNumber(16)
  ApiResource get api => $_getN(7);
  @$pb.TagNumber(16)
  set api(ApiResource v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasApi() => $_has(7);
  @$pb.TagNumber(16)
  void clearApi() => clearField(16);
  @$pb.TagNumber(16)
  ApiResource ensureApi() => $_ensure(7);
}

class BucketResource extends $pb.GeneratedMessage {
  factory BucketResource() => create();
  BucketResource._() : super();
  factory BucketResource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BucketResource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BucketResource', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.resource.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BucketResource clone() => BucketResource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BucketResource copyWith(void Function(BucketResource) updates) => super.copyWith((message) => updates(message as BucketResource)) as BucketResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BucketResource create() => BucketResource._();
  BucketResource createEmptyInstance() => create();
  static $pb.PbList<BucketResource> createRepeated() => $pb.PbList<BucketResource>();
  @$core.pragma('dart2js:noInline')
  static BucketResource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BucketResource>(create);
  static BucketResource? _defaultInstance;
}

class QueueResource extends $pb.GeneratedMessage {
  factory QueueResource() => create();
  QueueResource._() : super();
  factory QueueResource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueueResource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueueResource', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.resource.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueueResource clone() => QueueResource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueueResource copyWith(void Function(QueueResource) updates) => super.copyWith((message) => updates(message as QueueResource)) as QueueResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueueResource create() => QueueResource._();
  QueueResource createEmptyInstance() => create();
  static $pb.PbList<QueueResource> createRepeated() => $pb.PbList<QueueResource>();
  @$core.pragma('dart2js:noInline')
  static QueueResource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueueResource>(create);
  static QueueResource? _defaultInstance;
}

class TopicResource extends $pb.GeneratedMessage {
  factory TopicResource() => create();
  TopicResource._() : super();
  factory TopicResource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TopicResource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TopicResource', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.resource.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TopicResource clone() => TopicResource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TopicResource copyWith(void Function(TopicResource) updates) => super.copyWith((message) => updates(message as TopicResource)) as TopicResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TopicResource create() => TopicResource._();
  TopicResource createEmptyInstance() => create();
  static $pb.PbList<TopicResource> createRepeated() => $pb.PbList<TopicResource>();
  @$core.pragma('dart2js:noInline')
  static TopicResource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TopicResource>(create);
  static TopicResource? _defaultInstance;
}

class CollectionResource extends $pb.GeneratedMessage {
  factory CollectionResource() => create();
  CollectionResource._() : super();
  factory CollectionResource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CollectionResource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CollectionResource', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.resource.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CollectionResource clone() => CollectionResource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CollectionResource copyWith(void Function(CollectionResource) updates) => super.copyWith((message) => updates(message as CollectionResource)) as CollectionResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CollectionResource create() => CollectionResource._();
  CollectionResource createEmptyInstance() => create();
  static $pb.PbList<CollectionResource> createRepeated() => $pb.PbList<CollectionResource>();
  @$core.pragma('dart2js:noInline')
  static CollectionResource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CollectionResource>(create);
  static CollectionResource? _defaultInstance;
}

class SecretResource extends $pb.GeneratedMessage {
  factory SecretResource() => create();
  SecretResource._() : super();
  factory SecretResource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SecretResource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SecretResource', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.resource.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SecretResource clone() => SecretResource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SecretResource copyWith(void Function(SecretResource) updates) => super.copyWith((message) => updates(message as SecretResource)) as SecretResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SecretResource create() => SecretResource._();
  SecretResource createEmptyInstance() => create();
  static $pb.PbList<SecretResource> createRepeated() => $pb.PbList<SecretResource>();
  @$core.pragma('dart2js:noInline')
  static SecretResource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SecretResource>(create);
  static SecretResource? _defaultInstance;
}

/// protect your API with JWT authentication
class ApiSecurityDefinitionJwt extends $pb.GeneratedMessage {
  factory ApiSecurityDefinitionJwt({
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
  ApiSecurityDefinitionJwt._() : super();
  factory ApiSecurityDefinitionJwt.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiSecurityDefinitionJwt.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApiSecurityDefinitionJwt', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.resource.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'issuer')
    ..pPS(2, _omitFieldNames ? '' : 'audiences')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiSecurityDefinitionJwt clone() => ApiSecurityDefinitionJwt()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiSecurityDefinitionJwt copyWith(void Function(ApiSecurityDefinitionJwt) updates) => super.copyWith((message) => updates(message as ApiSecurityDefinitionJwt)) as ApiSecurityDefinitionJwt;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApiSecurityDefinitionJwt create() => ApiSecurityDefinitionJwt._();
  ApiSecurityDefinitionJwt createEmptyInstance() => create();
  static $pb.PbList<ApiSecurityDefinitionJwt> createRepeated() => $pb.PbList<ApiSecurityDefinitionJwt>();
  @$core.pragma('dart2js:noInline')
  static ApiSecurityDefinitionJwt getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiSecurityDefinitionJwt>(create);
  static ApiSecurityDefinitionJwt? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get issuer => $_getSZ(0);
  @$pb.TagNumber(1)
  set issuer($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIssuer() => $_has(0);
  @$pb.TagNumber(1)
  void clearIssuer() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get audiences => $_getList(1);
}

enum ApiSecurityDefinition_Definition {
  jwt, 
  notSet
}

class ApiSecurityDefinition extends $pb.GeneratedMessage {
  factory ApiSecurityDefinition({
    ApiSecurityDefinitionJwt? jwt,
  }) {
    final $result = create();
    if (jwt != null) {
      $result.jwt = jwt;
    }
    return $result;
  }
  ApiSecurityDefinition._() : super();
  factory ApiSecurityDefinition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiSecurityDefinition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ApiSecurityDefinition_Definition> _ApiSecurityDefinition_DefinitionByTag = {
    1 : ApiSecurityDefinition_Definition.jwt,
    0 : ApiSecurityDefinition_Definition.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApiSecurityDefinition', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.resource.v1'), createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<ApiSecurityDefinitionJwt>(1, _omitFieldNames ? '' : 'jwt', subBuilder: ApiSecurityDefinitionJwt.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiSecurityDefinition clone() => ApiSecurityDefinition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiSecurityDefinition copyWith(void Function(ApiSecurityDefinition) updates) => super.copyWith((message) => updates(message as ApiSecurityDefinition)) as ApiSecurityDefinition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApiSecurityDefinition create() => ApiSecurityDefinition._();
  ApiSecurityDefinition createEmptyInstance() => create();
  static $pb.PbList<ApiSecurityDefinition> createRepeated() => $pb.PbList<ApiSecurityDefinition>();
  @$core.pragma('dart2js:noInline')
  static ApiSecurityDefinition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiSecurityDefinition>(create);
  static ApiSecurityDefinition? _defaultInstance;

  ApiSecurityDefinition_Definition whichDefinition() => _ApiSecurityDefinition_DefinitionByTag[$_whichOneof(0)]!;
  void clearDefinition() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ApiSecurityDefinitionJwt get jwt => $_getN(0);
  @$pb.TagNumber(1)
  set jwt(ApiSecurityDefinitionJwt v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasJwt() => $_has(0);
  @$pb.TagNumber(1)
  void clearJwt() => clearField(1);
  @$pb.TagNumber(1)
  ApiSecurityDefinitionJwt ensureJwt() => $_ensure(0);
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
  factory ApiScopes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiScopes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApiScopes', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.resource.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'scopes')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiScopes clone() => ApiScopes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiScopes copyWith(void Function(ApiScopes) updates) => super.copyWith((message) => updates(message as ApiScopes)) as ApiScopes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApiScopes create() => ApiScopes._();
  ApiScopes createEmptyInstance() => create();
  static $pb.PbList<ApiScopes> createRepeated() => $pb.PbList<ApiScopes>();
  @$core.pragma('dart2js:noInline')
  static ApiScopes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiScopes>(create);
  static ApiScopes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get scopes => $_getList(0);
}

class ApiResource extends $pb.GeneratedMessage {
  factory ApiResource({
    $core.Map<$core.String, ApiSecurityDefinition>? securityDefinitions,
    $core.Map<$core.String, ApiScopes>? security,
  }) {
    final $result = create();
    if (securityDefinitions != null) {
      $result.securityDefinitions.addAll(securityDefinitions);
    }
    if (security != null) {
      $result.security.addAll(security);
    }
    return $result;
  }
  ApiResource._() : super();
  factory ApiResource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiResource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApiResource', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.resource.v1'), createEmptyInstance: create)
    ..m<$core.String, ApiSecurityDefinition>(1, _omitFieldNames ? '' : 'securityDefinitions', entryClassName: 'ApiResource.SecurityDefinitionsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: ApiSecurityDefinition.create, valueDefaultOrMaker: ApiSecurityDefinition.getDefault, packageName: const $pb.PackageName('nitric.resource.v1'))
    ..m<$core.String, ApiScopes>(2, _omitFieldNames ? '' : 'security', entryClassName: 'ApiResource.SecurityEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: ApiScopes.create, valueDefaultOrMaker: ApiScopes.getDefault, packageName: const $pb.PackageName('nitric.resource.v1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiResource clone() => ApiResource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiResource copyWith(void Function(ApiResource) updates) => super.copyWith((message) => updates(message as ApiResource)) as ApiResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApiResource create() => ApiResource._();
  ApiResource createEmptyInstance() => create();
  static $pb.PbList<ApiResource> createRepeated() => $pb.PbList<ApiResource>();
  @$core.pragma('dart2js:noInline')
  static ApiResource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiResource>(create);
  static ApiResource? _defaultInstance;

  /// Security definitions for the api
  /// These may be used by registered routes and operations on the API
  @$pb.TagNumber(1)
  $core.Map<$core.String, ApiSecurityDefinition> get securityDefinitions => $_getMap(0);

  /// root level security for this api
  @$pb.TagNumber(2)
  $core.Map<$core.String, ApiScopes> get security => $_getMap(1);
}

class ResourceDeclareResponse extends $pb.GeneratedMessage {
  factory ResourceDeclareResponse() => create();
  ResourceDeclareResponse._() : super();
  factory ResourceDeclareResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceDeclareResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceDeclareResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.resource.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceDeclareResponse clone() => ResourceDeclareResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceDeclareResponse copyWith(void Function(ResourceDeclareResponse) updates) => super.copyWith((message) => updates(message as ResourceDeclareResponse)) as ResourceDeclareResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceDeclareResponse create() => ResourceDeclareResponse._();
  ResourceDeclareResponse createEmptyInstance() => create();
  static $pb.PbList<ResourceDeclareResponse> createRepeated() => $pb.PbList<ResourceDeclareResponse>();
  @$core.pragma('dart2js:noInline')
  static ResourceDeclareResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceDeclareResponse>(create);
  static ResourceDeclareResponse? _defaultInstance;
}

class ApiResourceDetails extends $pb.GeneratedMessage {
  factory ApiResourceDetails({
    $core.String? url,
  }) {
    final $result = create();
    if (url != null) {
      $result.url = url;
    }
    return $result;
  }
  ApiResourceDetails._() : super();
  factory ApiResourceDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiResourceDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApiResourceDetails', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.resource.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiResourceDetails clone() => ApiResourceDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiResourceDetails copyWith(void Function(ApiResourceDetails) updates) => super.copyWith((message) => updates(message as ApiResourceDetails)) as ApiResourceDetails;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApiResourceDetails create() => ApiResourceDetails._();
  ApiResourceDetails createEmptyInstance() => create();
  static $pb.PbList<ApiResourceDetails> createRepeated() => $pb.PbList<ApiResourceDetails>();
  @$core.pragma('dart2js:noInline')
  static ApiResourceDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiResourceDetails>(create);
  static ApiResourceDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);
}

class WebsocketResourceDetails extends $pb.GeneratedMessage {
  factory WebsocketResourceDetails({
    $core.String? url,
  }) {
    final $result = create();
    if (url != null) {
      $result.url = url;
    }
    return $result;
  }
  WebsocketResourceDetails._() : super();
  factory WebsocketResourceDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebsocketResourceDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WebsocketResourceDetails', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.resource.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebsocketResourceDetails clone() => WebsocketResourceDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebsocketResourceDetails copyWith(void Function(WebsocketResourceDetails) updates) => super.copyWith((message) => updates(message as WebsocketResourceDetails)) as WebsocketResourceDetails;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebsocketResourceDetails create() => WebsocketResourceDetails._();
  WebsocketResourceDetails createEmptyInstance() => create();
  static $pb.PbList<WebsocketResourceDetails> createRepeated() => $pb.PbList<WebsocketResourceDetails>();
  @$core.pragma('dart2js:noInline')
  static WebsocketResourceDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebsocketResourceDetails>(create);
  static WebsocketResourceDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);
}

class ResourceDetailsRequest extends $pb.GeneratedMessage {
  factory ResourceDetailsRequest({
    Resource? resource,
  }) {
    final $result = create();
    if (resource != null) {
      $result.resource = resource;
    }
    return $result;
  }
  ResourceDetailsRequest._() : super();
  factory ResourceDetailsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceDetailsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceDetailsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.resource.v1'), createEmptyInstance: create)
    ..aOM<Resource>(1, _omitFieldNames ? '' : 'resource', subBuilder: Resource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceDetailsRequest clone() => ResourceDetailsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceDetailsRequest copyWith(void Function(ResourceDetailsRequest) updates) => super.copyWith((message) => updates(message as ResourceDetailsRequest)) as ResourceDetailsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceDetailsRequest create() => ResourceDetailsRequest._();
  ResourceDetailsRequest createEmptyInstance() => create();
  static $pb.PbList<ResourceDetailsRequest> createRepeated() => $pb.PbList<ResourceDetailsRequest>();
  @$core.pragma('dart2js:noInline')
  static ResourceDetailsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceDetailsRequest>(create);
  static ResourceDetailsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Resource get resource => $_getN(0);
  @$pb.TagNumber(1)
  set resource(Resource v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResource() => $_has(0);
  @$pb.TagNumber(1)
  void clearResource() => clearField(1);
  @$pb.TagNumber(1)
  Resource ensureResource() => $_ensure(0);
}

enum ResourceDetailsResponse_Details {
  api, 
  websocket, 
  notSet
}

class ResourceDetailsResponse extends $pb.GeneratedMessage {
  factory ResourceDetailsResponse({
    $core.String? id,
    $core.String? provider,
    $core.String? service,
    ApiResourceDetails? api,
    WebsocketResourceDetails? websocket,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (provider != null) {
      $result.provider = provider;
    }
    if (service != null) {
      $result.service = service;
    }
    if (api != null) {
      $result.api = api;
    }
    if (websocket != null) {
      $result.websocket = websocket;
    }
    return $result;
  }
  ResourceDetailsResponse._() : super();
  factory ResourceDetailsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceDetailsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ResourceDetailsResponse_Details> _ResourceDetailsResponse_DetailsByTag = {
    10 : ResourceDetailsResponse_Details.api,
    11 : ResourceDetailsResponse_Details.websocket,
    0 : ResourceDetailsResponse_Details.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceDetailsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.resource.v1'), createEmptyInstance: create)
    ..oo(0, [10, 11])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'provider')
    ..aOS(3, _omitFieldNames ? '' : 'service')
    ..aOM<ApiResourceDetails>(10, _omitFieldNames ? '' : 'api', subBuilder: ApiResourceDetails.create)
    ..aOM<WebsocketResourceDetails>(11, _omitFieldNames ? '' : 'websocket', subBuilder: WebsocketResourceDetails.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceDetailsResponse clone() => ResourceDetailsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceDetailsResponse copyWith(void Function(ResourceDetailsResponse) updates) => super.copyWith((message) => updates(message as ResourceDetailsResponse)) as ResourceDetailsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceDetailsResponse create() => ResourceDetailsResponse._();
  ResourceDetailsResponse createEmptyInstance() => create();
  static $pb.PbList<ResourceDetailsResponse> createRepeated() => $pb.PbList<ResourceDetailsResponse>();
  @$core.pragma('dart2js:noInline')
  static ResourceDetailsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceDetailsResponse>(create);
  static ResourceDetailsResponse? _defaultInstance;

  ResourceDetailsResponse_Details whichDetails() => _ResourceDetailsResponse_DetailsByTag[$_whichOneof(0)]!;
  void clearDetails() => clearField($_whichOneof(0));

  /// The identifier of the resource
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// The provider this resource is deployed with (e.g. aws)
  @$pb.TagNumber(2)
  $core.String get provider => $_getSZ(1);
  @$pb.TagNumber(2)
  set provider($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProvider() => $_has(1);
  @$pb.TagNumber(2)
  void clearProvider() => clearField(2);

  /// The service this resource is deployed on (e.g. ApiGateway)
  @$pb.TagNumber(3)
  $core.String get service => $_getSZ(2);
  @$pb.TagNumber(3)
  set service($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasService() => $_has(2);
  @$pb.TagNumber(3)
  void clearService() => clearField(3);

  @$pb.TagNumber(10)
  ApiResourceDetails get api => $_getN(3);
  @$pb.TagNumber(10)
  set api(ApiResourceDetails v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasApi() => $_has(3);
  @$pb.TagNumber(10)
  void clearApi() => clearField(10);
  @$pb.TagNumber(10)
  ApiResourceDetails ensureApi() => $_ensure(3);

  @$pb.TagNumber(11)
  WebsocketResourceDetails get websocket => $_getN(4);
  @$pb.TagNumber(11)
  set websocket(WebsocketResourceDetails v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasWebsocket() => $_has(4);
  @$pb.TagNumber(11)
  void clearWebsocket() => clearField(11);
  @$pb.TagNumber(11)
  WebsocketResourceDetails ensureWebsocket() => $_ensure(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
