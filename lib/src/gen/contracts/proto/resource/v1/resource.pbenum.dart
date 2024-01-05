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

class ResourceType extends $pb.ProtobufEnum {
  static const ResourceType Api = ResourceType._(0, _omitEnumNames ? '' : 'Api');
  static const ResourceType Function = ResourceType._(1, _omitEnumNames ? '' : 'Function');
  static const ResourceType Bucket = ResourceType._(2, _omitEnumNames ? '' : 'Bucket');
  static const ResourceType Queue = ResourceType._(3, _omitEnumNames ? '' : 'Queue');
  static const ResourceType Topic = ResourceType._(4, _omitEnumNames ? '' : 'Topic');
  static const ResourceType Schedule = ResourceType._(5, _omitEnumNames ? '' : 'Schedule');
  static const ResourceType Subscription = ResourceType._(6, _omitEnumNames ? '' : 'Subscription');
  static const ResourceType Collection = ResourceType._(7, _omitEnumNames ? '' : 'Collection');
  static const ResourceType Policy = ResourceType._(8, _omitEnumNames ? '' : 'Policy');
  static const ResourceType Secret = ResourceType._(9, _omitEnumNames ? '' : 'Secret');
  static const ResourceType Notification = ResourceType._(10, _omitEnumNames ? '' : 'Notification');
  static const ResourceType Websocket = ResourceType._(11, _omitEnumNames ? '' : 'Websocket');
  static const ResourceType Http = ResourceType._(12, _omitEnumNames ? '' : 'Http');

  static const $core.List<ResourceType> values = <ResourceType> [
    Api,
    Function,
    Bucket,
    Queue,
    Topic,
    Schedule,
    Subscription,
    Collection,
    Policy,
    Secret,
    Notification,
    Websocket,
    Http,
  ];

  static final $core.Map<$core.int, ResourceType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ResourceType? valueOf($core.int value) => _byValue[value];

  const ResourceType._($core.int v, $core.String n) : super(v, n);
}

class Action extends $pb.ProtobufEnum {
  static const Action BucketFileList = Action._(0, _omitEnumNames ? '' : 'BucketFileList');
  static const Action BucketFileGet = Action._(1, _omitEnumNames ? '' : 'BucketFileGet');
  static const Action BucketFilePut = Action._(2, _omitEnumNames ? '' : 'BucketFilePut');
  static const Action BucketFileDelete = Action._(3, _omitEnumNames ? '' : 'BucketFileDelete');
  static const Action TopicList = Action._(200, _omitEnumNames ? '' : 'TopicList');
  static const Action TopicDetail = Action._(201, _omitEnumNames ? '' : 'TopicDetail');
  static const Action TopicEventPublish = Action._(202, _omitEnumNames ? '' : 'TopicEventPublish');
  static const Action QueueSend = Action._(300, _omitEnumNames ? '' : 'QueueSend');
  static const Action QueueReceive = Action._(301, _omitEnumNames ? '' : 'QueueReceive');
  static const Action QueueList = Action._(302, _omitEnumNames ? '' : 'QueueList');
  static const Action QueueDetail = Action._(303, _omitEnumNames ? '' : 'QueueDetail');
  static const Action CollectionDocumentRead = Action._(400, _omitEnumNames ? '' : 'CollectionDocumentRead');
  static const Action CollectionDocumentWrite = Action._(401, _omitEnumNames ? '' : 'CollectionDocumentWrite');
  static const Action CollectionDocumentDelete = Action._(402, _omitEnumNames ? '' : 'CollectionDocumentDelete');
  static const Action CollectionQuery = Action._(403, _omitEnumNames ? '' : 'CollectionQuery');
  static const Action CollectionList = Action._(404, _omitEnumNames ? '' : 'CollectionList');
  static const Action SecretPut = Action._(500, _omitEnumNames ? '' : 'SecretPut');
  static const Action SecretAccess = Action._(501, _omitEnumNames ? '' : 'SecretAccess');
  static const Action WebsocketManage = Action._(600, _omitEnumNames ? '' : 'WebsocketManage');

  static const $core.List<Action> values = <Action> [
    BucketFileList,
    BucketFileGet,
    BucketFilePut,
    BucketFileDelete,
    TopicList,
    TopicDetail,
    TopicEventPublish,
    QueueSend,
    QueueReceive,
    QueueList,
    QueueDetail,
    CollectionDocumentRead,
    CollectionDocumentWrite,
    CollectionDocumentDelete,
    CollectionQuery,
    CollectionList,
    SecretPut,
    SecretAccess,
    WebsocketManage,
  ];

  static final $core.Map<$core.int, Action> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Action? valueOf($core.int value) => _byValue[value];

  const Action._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
