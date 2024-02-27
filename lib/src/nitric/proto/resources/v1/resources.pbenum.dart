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

class ResourceType extends $pb.ProtobufEnum {
  static const ResourceType Api =
      ResourceType._(0, _omitEnumNames ? '' : 'Api');
  static const ResourceType Service =
      ResourceType._(1, _omitEnumNames ? '' : 'Service');
  static const ResourceType Bucket =
      ResourceType._(2, _omitEnumNames ? '' : 'Bucket');
  static const ResourceType Topic =
      ResourceType._(3, _omitEnumNames ? '' : 'Topic');
  static const ResourceType Schedule =
      ResourceType._(4, _omitEnumNames ? '' : 'Schedule');
  static const ResourceType Subscription =
      ResourceType._(5, _omitEnumNames ? '' : 'Subscription');
  static const ResourceType KeyValueStore =
      ResourceType._(6, _omitEnumNames ? '' : 'KeyValueStore');
  static const ResourceType Policy =
      ResourceType._(7, _omitEnumNames ? '' : 'Policy');
  static const ResourceType Secret =
      ResourceType._(8, _omitEnumNames ? '' : 'Secret');
  static const ResourceType BucketListener =
      ResourceType._(9, _omitEnumNames ? '' : 'BucketListener');
  static const ResourceType Websocket =
      ResourceType._(10, _omitEnumNames ? '' : 'Websocket');
  static const ResourceType Http =
      ResourceType._(11, _omitEnumNames ? '' : 'Http');
  static const ResourceType ApiSecurityDefinition =
      ResourceType._(12, _omitEnumNames ? '' : 'ApiSecurityDefinition');
  static const ResourceType Queue =
      ResourceType._(13, _omitEnumNames ? '' : 'Queue');

  static const $core.List<ResourceType> values = <ResourceType>[
    Api,
    Service,
    Bucket,
    Topic,
    Schedule,
    Subscription,
    KeyValueStore,
    Policy,
    Secret,
    BucketListener,
    Websocket,
    Http,
    ApiSecurityDefinition,
    Queue,
  ];

  static final $core.Map<$core.int, ResourceType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ResourceType? valueOf($core.int value) => _byValue[value];

  const ResourceType._($core.int v, $core.String n) : super(v, n);
}

class Action extends $pb.ProtobufEnum {
  static const Action BucketFileList =
      Action._(0, _omitEnumNames ? '' : 'BucketFileList');
  static const Action BucketFileGet =
      Action._(1, _omitEnumNames ? '' : 'BucketFileGet');
  static const Action BucketFilePut =
      Action._(2, _omitEnumNames ? '' : 'BucketFilePut');
  static const Action BucketFileDelete =
      Action._(3, _omitEnumNames ? '' : 'BucketFileDelete');
  static const Action TopicPublish =
      Action._(200, _omitEnumNames ? '' : 'TopicPublish');
  static const Action KeyValueStoreRead =
      Action._(300, _omitEnumNames ? '' : 'KeyValueStoreRead');
  static const Action KeyValueStoreWrite =
      Action._(301, _omitEnumNames ? '' : 'KeyValueStoreWrite');
  static const Action KeyValueStoreDelete =
      Action._(302, _omitEnumNames ? '' : 'KeyValueStoreDelete');
  static const Action SecretPut =
      Action._(400, _omitEnumNames ? '' : 'SecretPut');
  static const Action SecretAccess =
      Action._(401, _omitEnumNames ? '' : 'SecretAccess');
  static const Action WebsocketManage =
      Action._(500, _omitEnumNames ? '' : 'WebsocketManage');
  static const Action QueueEnqueue =
      Action._(600, _omitEnumNames ? '' : 'QueueEnqueue');
  static const Action QueueDequeue =
      Action._(601, _omitEnumNames ? '' : 'QueueDequeue');

  static const $core.List<Action> values = <Action>[
    BucketFileList,
    BucketFileGet,
    BucketFilePut,
    BucketFileDelete,
    TopicPublish,
    KeyValueStoreRead,
    KeyValueStoreWrite,
    KeyValueStoreDelete,
    SecretPut,
    SecretAccess,
    WebsocketManage,
    QueueEnqueue,
    QueueDequeue,
  ];

  static final $core.Map<$core.int, Action> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Action? valueOf($core.int value) => _byValue[value];

  const Action._($core.int v, $core.String n) : super(v, n);
}

const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
