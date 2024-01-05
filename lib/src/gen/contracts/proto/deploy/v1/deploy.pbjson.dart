//
//  Generated code. Do not modify.
//  source: contracts/proto/deploy/v1/deploy.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use deployUpRequestDescriptor instead')
const DeployUpRequest$json = {
  '1': 'DeployUpRequest',
  '2': [
    {'1': 'spec', '3': 1, '4': 1, '5': 11, '6': '.nitric.deploy.v1.Spec', '10': 'spec'},
    {'1': 'attributes', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'attributes'},
    {'1': 'interactive', '3': 3, '4': 1, '5': 8, '10': 'interactive'},
  ],
};

/// Descriptor for `DeployUpRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deployUpRequestDescriptor = $convert.base64Decode(
    'Cg9EZXBsb3lVcFJlcXVlc3QSKgoEc3BlYxgBIAEoCzIWLm5pdHJpYy5kZXBsb3kudjEuU3BlY1'
    'IEc3BlYxI3CgphdHRyaWJ1dGVzGAIgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIKYXR0'
    'cmlidXRlcxIgCgtpbnRlcmFjdGl2ZRgDIAEoCFILaW50ZXJhY3RpdmU=');

@$core.Deprecated('Use deployUpEventDescriptor instead')
const DeployUpEvent$json = {
  '1': 'DeployUpEvent',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 11, '6': '.nitric.deploy.v1.DeployEventMessage', '9': 0, '10': 'message'},
    {'1': 'result', '3': 2, '4': 1, '5': 11, '6': '.nitric.deploy.v1.DeployUpEventResult', '9': 0, '10': 'result'},
  ],
  '8': [
    {'1': 'content'},
  ],
};

/// Descriptor for `DeployUpEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deployUpEventDescriptor = $convert.base64Decode(
    'Cg1EZXBsb3lVcEV2ZW50EkAKB21lc3NhZ2UYASABKAsyJC5uaXRyaWMuZGVwbG95LnYxLkRlcG'
    'xveUV2ZW50TWVzc2FnZUgAUgdtZXNzYWdlEj8KBnJlc3VsdBgCIAEoCzIlLm5pdHJpYy5kZXBs'
    'b3kudjEuRGVwbG95VXBFdmVudFJlc3VsdEgAUgZyZXN1bHRCCQoHY29udGVudA==');

@$core.Deprecated('Use deployEventMessageDescriptor instead')
const DeployEventMessage$json = {
  '1': 'DeployEventMessage',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `DeployEventMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deployEventMessageDescriptor = $convert.base64Decode(
    'ChJEZXBsb3lFdmVudE1lc3NhZ2USGAoHbWVzc2FnZRgBIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use upResultDescriptor instead')
const UpResult$json = {
  '1': 'UpResult',
  '2': [
    {'1': 'string_result', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'stringResult'},
  ],
  '8': [
    {'1': 'content'},
  ],
};

/// Descriptor for `UpResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List upResultDescriptor = $convert.base64Decode(
    'CghVcFJlc3VsdBIlCg1zdHJpbmdfcmVzdWx0GAEgASgJSABSDHN0cmluZ1Jlc3VsdEIJCgdjb2'
    '50ZW50');

@$core.Deprecated('Use deployUpEventResultDescriptor instead')
const DeployUpEventResult$json = {
  '1': 'DeployUpEventResult',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'result', '3': 2, '4': 1, '5': 11, '6': '.nitric.deploy.v1.UpResult', '10': 'result'},
  ],
};

/// Descriptor for `DeployUpEventResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deployUpEventResultDescriptor = $convert.base64Decode(
    'ChNEZXBsb3lVcEV2ZW50UmVzdWx0EhgKB3N1Y2Nlc3MYASABKAhSB3N1Y2Nlc3MSMgoGcmVzdW'
    'x0GAIgASgLMhoubml0cmljLmRlcGxveS52MS5VcFJlc3VsdFIGcmVzdWx0');

@$core.Deprecated('Use deployDownRequestDescriptor instead')
const DeployDownRequest$json = {
  '1': 'DeployDownRequest',
  '2': [
    {'1': 'attributes', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'attributes'},
    {'1': 'interactive', '3': 2, '4': 1, '5': 8, '10': 'interactive'},
  ],
};

/// Descriptor for `DeployDownRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deployDownRequestDescriptor = $convert.base64Decode(
    'ChFEZXBsb3lEb3duUmVxdWVzdBI3CgphdHRyaWJ1dGVzGAEgASgLMhcuZ29vZ2xlLnByb3RvYn'
    'VmLlN0cnVjdFIKYXR0cmlidXRlcxIgCgtpbnRlcmFjdGl2ZRgCIAEoCFILaW50ZXJhY3RpdmU=');

@$core.Deprecated('Use deployDownEventDescriptor instead')
const DeployDownEvent$json = {
  '1': 'DeployDownEvent',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 11, '6': '.nitric.deploy.v1.DeployEventMessage', '9': 0, '10': 'message'},
    {'1': 'result', '3': 2, '4': 1, '5': 11, '6': '.nitric.deploy.v1.DeployDownEventResult', '9': 0, '10': 'result'},
  ],
  '8': [
    {'1': 'content'},
  ],
};

/// Descriptor for `DeployDownEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deployDownEventDescriptor = $convert.base64Decode(
    'Cg9EZXBsb3lEb3duRXZlbnQSQAoHbWVzc2FnZRgBIAEoCzIkLm5pdHJpYy5kZXBsb3kudjEuRG'
    'VwbG95RXZlbnRNZXNzYWdlSABSB21lc3NhZ2USQQoGcmVzdWx0GAIgASgLMicubml0cmljLmRl'
    'cGxveS52MS5EZXBsb3lEb3duRXZlbnRSZXN1bHRIAFIGcmVzdWx0QgkKB2NvbnRlbnQ=');

@$core.Deprecated('Use deployDownEventResultDescriptor instead')
const DeployDownEventResult$json = {
  '1': 'DeployDownEventResult',
};

/// Descriptor for `DeployDownEventResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deployDownEventResultDescriptor = $convert.base64Decode(
    'ChVEZXBsb3lEb3duRXZlbnRSZXN1bHQ=');

@$core.Deprecated('Use imageSourceDescriptor instead')
const ImageSource$json = {
  '1': 'ImageSource',
  '2': [
    {'1': 'uri', '3': 1, '4': 1, '5': 9, '10': 'uri'},
  ],
};

/// Descriptor for `ImageSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageSourceDescriptor = $convert.base64Decode(
    'CgtJbWFnZVNvdXJjZRIQCgN1cmkYASABKAlSA3VyaQ==');

@$core.Deprecated('Use executionUnitDescriptor instead')
const ExecutionUnit$json = {
  '1': 'ExecutionUnit',
  '2': [
    {'1': 'image', '3': 1, '4': 1, '5': 11, '6': '.nitric.deploy.v1.ImageSource', '9': 0, '10': 'image'},
    {'1': 'workers', '3': 10, '4': 1, '5': 5, '10': 'workers'},
    {
      '1': 'timeout',
      '3': 11,
      '4': 1,
      '5': 5,
      '8': {'3': true},
      '10': 'timeout',
    },
    {
      '1': 'memory',
      '3': 12,
      '4': 1,
      '5': 5,
      '8': {'3': true},
      '10': 'memory',
    },
    {'1': 'type', '3': 13, '4': 1, '5': 9, '10': 'type'},
    {'1': 'env', '3': 14, '4': 3, '5': 11, '6': '.nitric.deploy.v1.ExecutionUnit.EnvEntry', '10': 'env'},
  ],
  '3': [ExecutionUnit_EnvEntry$json],
  '8': [
    {'1': 'source'},
  ],
};

@$core.Deprecated('Use executionUnitDescriptor instead')
const ExecutionUnit_EnvEntry$json = {
  '1': 'EnvEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ExecutionUnit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executionUnitDescriptor = $convert.base64Decode(
    'Cg1FeGVjdXRpb25Vbml0EjUKBWltYWdlGAEgASgLMh0ubml0cmljLmRlcGxveS52MS5JbWFnZV'
    'NvdXJjZUgAUgVpbWFnZRIYCgd3b3JrZXJzGAogASgFUgd3b3JrZXJzEhwKB3RpbWVvdXQYCyAB'
    'KAVCAhgBUgd0aW1lb3V0EhoKBm1lbW9yeRgMIAEoBUICGAFSBm1lbW9yeRISCgR0eXBlGA0gAS'
    'gJUgR0eXBlEjoKA2VudhgOIAMoCzIoLm5pdHJpYy5kZXBsb3kudjEuRXhlY3V0aW9uVW5pdC5F'
    'bnZFbnRyeVIDZW52GjYKCEVudkVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgAS'
    'gJUgV2YWx1ZToCOAFCCAoGc291cmNl');

@$core.Deprecated('Use bucketDescriptor instead')
const Bucket$json = {
  '1': 'Bucket',
  '2': [
    {'1': 'notifications', '3': 1, '4': 3, '5': 11, '6': '.nitric.deploy.v1.BucketNotificationTarget', '10': 'notifications'},
  ],
};

/// Descriptor for `Bucket`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bucketDescriptor = $convert.base64Decode(
    'CgZCdWNrZXQSUAoNbm90aWZpY2F0aW9ucxgBIAMoCzIqLm5pdHJpYy5kZXBsb3kudjEuQnVja2'
    'V0Tm90aWZpY2F0aW9uVGFyZ2V0Ug1ub3RpZmljYXRpb25z');

@$core.Deprecated('Use bucketNotificationTargetDescriptor instead')
const BucketNotificationTarget$json = {
  '1': 'BucketNotificationTarget',
  '2': [
    {'1': 'config', '3': 1, '4': 1, '5': 11, '6': '.nitric.faas.v1.BucketNotificationConfig', '10': 'config'},
    {'1': 'execution_unit', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'executionUnit'},
  ],
  '8': [
    {'1': 'target'},
  ],
};

/// Descriptor for `BucketNotificationTarget`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bucketNotificationTargetDescriptor = $convert.base64Decode(
    'ChhCdWNrZXROb3RpZmljYXRpb25UYXJnZXQSQAoGY29uZmlnGAEgASgLMigubml0cmljLmZhYX'
    'MudjEuQnVja2V0Tm90aWZpY2F0aW9uQ29uZmlnUgZjb25maWcSJwoOZXhlY3V0aW9uX3VuaXQY'
    'AiABKAlIAFINZXhlY3V0aW9uVW5pdEIICgZ0YXJnZXQ=');

@$core.Deprecated('Use topicDescriptor instead')
const Topic$json = {
  '1': 'Topic',
  '2': [
    {'1': 'subscriptions', '3': 1, '4': 3, '5': 11, '6': '.nitric.deploy.v1.SubscriptionTarget', '10': 'subscriptions'},
  ],
};

/// Descriptor for `Topic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicDescriptor = $convert.base64Decode(
    'CgVUb3BpYxJKCg1zdWJzY3JpcHRpb25zGAEgAygLMiQubml0cmljLmRlcGxveS52MS5TdWJzY3'
    'JpcHRpb25UYXJnZXRSDXN1YnNjcmlwdGlvbnM=');

@$core.Deprecated('Use queueDescriptor instead')
const Queue$json = {
  '1': 'Queue',
};

/// Descriptor for `Queue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queueDescriptor = $convert.base64Decode(
    'CgVRdWV1ZQ==');

@$core.Deprecated('Use collectionDescriptor instead')
const Collection$json = {
  '1': 'Collection',
};

/// Descriptor for `Collection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionDescriptor = $convert.base64Decode(
    'CgpDb2xsZWN0aW9u');

@$core.Deprecated('Use secretDescriptor instead')
const Secret$json = {
  '1': 'Secret',
};

/// Descriptor for `Secret`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List secretDescriptor = $convert.base64Decode(
    'CgZTZWNyZXQ=');

@$core.Deprecated('Use subscriptionTargetDescriptor instead')
const SubscriptionTarget$json = {
  '1': 'SubscriptionTarget',
  '2': [
    {'1': 'execution_unit', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'executionUnit'},
  ],
  '8': [
    {'1': 'target'},
  ],
};

/// Descriptor for `SubscriptionTarget`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscriptionTargetDescriptor = $convert.base64Decode(
    'ChJTdWJzY3JpcHRpb25UYXJnZXQSJwoOZXhlY3V0aW9uX3VuaXQYASABKAlIAFINZXhlY3V0aW'
    '9uVW5pdEIICgZ0YXJnZXQ=');

@$core.Deprecated('Use topicSubscriptionDescriptor instead')
const TopicSubscription$json = {
  '1': 'TopicSubscription',
  '2': [
    {'1': 'target', '3': 1, '4': 1, '5': 11, '6': '.nitric.deploy.v1.SubscriptionTarget', '10': 'target'},
  ],
};

/// Descriptor for `TopicSubscription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicSubscriptionDescriptor = $convert.base64Decode(
    'ChFUb3BpY1N1YnNjcmlwdGlvbhI8CgZ0YXJnZXQYASABKAsyJC5uaXRyaWMuZGVwbG95LnYxLl'
    'N1YnNjcmlwdGlvblRhcmdldFIGdGFyZ2V0');

@$core.Deprecated('Use httpTargetDescriptor instead')
const HttpTarget$json = {
  '1': 'HttpTarget',
  '2': [
    {'1': 'execution_unit', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'executionUnit'},
  ],
  '8': [
    {'1': 'target'},
  ],
};

/// Descriptor for `HttpTarget`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List httpTargetDescriptor = $convert.base64Decode(
    'CgpIdHRwVGFyZ2V0EicKDmV4ZWN1dGlvbl91bml0GAEgASgJSABSDWV4ZWN1dGlvblVuaXRCCA'
    'oGdGFyZ2V0');

@$core.Deprecated('Use httpDescriptor instead')
const Http$json = {
  '1': 'Http',
  '2': [
    {'1': 'target', '3': 1, '4': 1, '5': 11, '6': '.nitric.deploy.v1.HttpTarget', '10': 'target'},
  ],
};

/// Descriptor for `Http`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List httpDescriptor = $convert.base64Decode(
    'CgRIdHRwEjQKBnRhcmdldBgBIAEoCzIcLm5pdHJpYy5kZXBsb3kudjEuSHR0cFRhcmdldFIGdG'
    'FyZ2V0');

@$core.Deprecated('Use apiDescriptor instead')
const Api$json = {
  '1': 'Api',
  '2': [
    {'1': 'openapi', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'openapi'},
  ],
  '8': [
    {'1': 'document'},
  ],
};

/// Descriptor for `Api`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiDescriptor = $convert.base64Decode(
    'CgNBcGkSGgoHb3BlbmFwaRgBIAEoCUgAUgdvcGVuYXBpQgoKCGRvY3VtZW50');

@$core.Deprecated('Use websocketDescriptor instead')
const Websocket$json = {
  '1': 'Websocket',
  '2': [
    {'1': 'connect_target', '3': 1, '4': 1, '5': 11, '6': '.nitric.deploy.v1.WebsocketTarget', '10': 'connectTarget'},
    {'1': 'disconnect_target', '3': 2, '4': 1, '5': 11, '6': '.nitric.deploy.v1.WebsocketTarget', '10': 'disconnectTarget'},
    {'1': 'message_target', '3': 3, '4': 1, '5': 11, '6': '.nitric.deploy.v1.WebsocketTarget', '10': 'messageTarget'},
  ],
};

/// Descriptor for `Websocket`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketDescriptor = $convert.base64Decode(
    'CglXZWJzb2NrZXQSSAoOY29ubmVjdF90YXJnZXQYASABKAsyIS5uaXRyaWMuZGVwbG95LnYxLl'
    'dlYnNvY2tldFRhcmdldFINY29ubmVjdFRhcmdldBJOChFkaXNjb25uZWN0X3RhcmdldBgCIAEo'
    'CzIhLm5pdHJpYy5kZXBsb3kudjEuV2Vic29ja2V0VGFyZ2V0UhBkaXNjb25uZWN0VGFyZ2V0Ek'
    'gKDm1lc3NhZ2VfdGFyZ2V0GAMgASgLMiEubml0cmljLmRlcGxveS52MS5XZWJzb2NrZXRUYXJn'
    'ZXRSDW1lc3NhZ2VUYXJnZXQ=');

@$core.Deprecated('Use websocketTargetDescriptor instead')
const WebsocketTarget$json = {
  '1': 'WebsocketTarget',
  '2': [
    {'1': 'execution_unit', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'executionUnit'},
  ],
  '8': [
    {'1': 'target'},
  ],
};

/// Descriptor for `WebsocketTarget`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketTargetDescriptor = $convert.base64Decode(
    'Cg9XZWJzb2NrZXRUYXJnZXQSJwoOZXhlY3V0aW9uX3VuaXQYASABKAlIAFINZXhlY3V0aW9uVW'
    '5pdEIICgZ0YXJnZXQ=');

@$core.Deprecated('Use scheduleTargetDescriptor instead')
const ScheduleTarget$json = {
  '1': 'ScheduleTarget',
  '2': [
    {'1': 'execution_unit', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'executionUnit'},
  ],
  '8': [
    {'1': 'target'},
  ],
};

/// Descriptor for `ScheduleTarget`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduleTargetDescriptor = $convert.base64Decode(
    'Cg5TY2hlZHVsZVRhcmdldBInCg5leGVjdXRpb25fdW5pdBgBIAEoCUgAUg1leGVjdXRpb25Vbm'
    'l0QggKBnRhcmdldA==');

@$core.Deprecated('Use scheduleDescriptor instead')
const Schedule$json = {
  '1': 'Schedule',
  '2': [
    {'1': 'cron', '3': 1, '4': 1, '5': 9, '10': 'cron'},
    {'1': 'target', '3': 2, '4': 1, '5': 11, '6': '.nitric.deploy.v1.ScheduleTarget', '10': 'target'},
  ],
};

/// Descriptor for `Schedule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduleDescriptor = $convert.base64Decode(
    'CghTY2hlZHVsZRISCgRjcm9uGAEgASgJUgRjcm9uEjgKBnRhcmdldBgCIAEoCzIgLm5pdHJpYy'
    '5kZXBsb3kudjEuU2NoZWR1bGVUYXJnZXRSBnRhcmdldA==');

@$core.Deprecated('Use resourceDescriptor instead')
const Resource$json = {
  '1': 'Resource',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.nitric.resource.v1.ResourceType', '10': 'type'},
    {'1': 'execution_unit', '3': 10, '4': 1, '5': 11, '6': '.nitric.deploy.v1.ExecutionUnit', '9': 0, '10': 'executionUnit'},
    {'1': 'bucket', '3': 11, '4': 1, '5': 11, '6': '.nitric.deploy.v1.Bucket', '9': 0, '10': 'bucket'},
    {'1': 'topic', '3': 12, '4': 1, '5': 11, '6': '.nitric.deploy.v1.Topic', '9': 0, '10': 'topic'},
    {'1': 'queue', '3': 13, '4': 1, '5': 11, '6': '.nitric.deploy.v1.Queue', '9': 0, '10': 'queue'},
    {'1': 'api', '3': 14, '4': 1, '5': 11, '6': '.nitric.deploy.v1.Api', '9': 0, '10': 'api'},
    {'1': 'policy', '3': 15, '4': 1, '5': 11, '6': '.nitric.deploy.v1.Policy', '9': 0, '10': 'policy'},
    {'1': 'schedule', '3': 16, '4': 1, '5': 11, '6': '.nitric.deploy.v1.Schedule', '9': 0, '10': 'schedule'},
    {'1': 'collection', '3': 17, '4': 1, '5': 11, '6': '.nitric.deploy.v1.Collection', '9': 0, '10': 'collection'},
    {'1': 'secret', '3': 18, '4': 1, '5': 11, '6': '.nitric.deploy.v1.Secret', '9': 0, '10': 'secret'},
    {'1': 'websocket', '3': 19, '4': 1, '5': 11, '6': '.nitric.deploy.v1.Websocket', '9': 0, '10': 'websocket'},
    {'1': 'http', '3': 20, '4': 1, '5': 11, '6': '.nitric.deploy.v1.Http', '9': 0, '10': 'http'},
  ],
  '8': [
    {'1': 'config'},
  ],
};

/// Descriptor for `Resource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceDescriptor = $convert.base64Decode(
    'CghSZXNvdXJjZRISCgRuYW1lGAEgASgJUgRuYW1lEjQKBHR5cGUYAiABKA4yIC5uaXRyaWMucm'
    'Vzb3VyY2UudjEuUmVzb3VyY2VUeXBlUgR0eXBlEkgKDmV4ZWN1dGlvbl91bml0GAogASgLMh8u'
    'bml0cmljLmRlcGxveS52MS5FeGVjdXRpb25Vbml0SABSDWV4ZWN1dGlvblVuaXQSMgoGYnVja2'
    'V0GAsgASgLMhgubml0cmljLmRlcGxveS52MS5CdWNrZXRIAFIGYnVja2V0Ei8KBXRvcGljGAwg'
    'ASgLMhcubml0cmljLmRlcGxveS52MS5Ub3BpY0gAUgV0b3BpYxIvCgVxdWV1ZRgNIAEoCzIXLm'
    '5pdHJpYy5kZXBsb3kudjEuUXVldWVIAFIFcXVldWUSKQoDYXBpGA4gASgLMhUubml0cmljLmRl'
    'cGxveS52MS5BcGlIAFIDYXBpEjIKBnBvbGljeRgPIAEoCzIYLm5pdHJpYy5kZXBsb3kudjEuUG'
    '9saWN5SABSBnBvbGljeRI4CghzY2hlZHVsZRgQIAEoCzIaLm5pdHJpYy5kZXBsb3kudjEuU2No'
    'ZWR1bGVIAFIIc2NoZWR1bGUSPgoKY29sbGVjdGlvbhgRIAEoCzIcLm5pdHJpYy5kZXBsb3kudj'
    'EuQ29sbGVjdGlvbkgAUgpjb2xsZWN0aW9uEjIKBnNlY3JldBgSIAEoCzIYLm5pdHJpYy5kZXBs'
    'b3kudjEuU2VjcmV0SABSBnNlY3JldBI7Cgl3ZWJzb2NrZXQYEyABKAsyGy5uaXRyaWMuZGVwbG'
    '95LnYxLldlYnNvY2tldEgAUgl3ZWJzb2NrZXQSLAoEaHR0cBgUIAEoCzIWLm5pdHJpYy5kZXBs'
    'b3kudjEuSHR0cEgAUgRodHRwQggKBmNvbmZpZw==');

@$core.Deprecated('Use policyDescriptor instead')
const Policy$json = {
  '1': 'Policy',
  '2': [
    {'1': 'principals', '3': 1, '4': 3, '5': 11, '6': '.nitric.deploy.v1.Resource', '10': 'principals'},
    {'1': 'actions', '3': 2, '4': 3, '5': 14, '6': '.nitric.resource.v1.Action', '10': 'actions'},
    {'1': 'resources', '3': 3, '4': 3, '5': 11, '6': '.nitric.deploy.v1.Resource', '10': 'resources'},
  ],
};

/// Descriptor for `Policy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List policyDescriptor = $convert.base64Decode(
    'CgZQb2xpY3kSOgoKcHJpbmNpcGFscxgBIAMoCzIaLm5pdHJpYy5kZXBsb3kudjEuUmVzb3VyY2'
    'VSCnByaW5jaXBhbHMSNAoHYWN0aW9ucxgCIAMoDjIaLm5pdHJpYy5yZXNvdXJjZS52MS5BY3Rp'
    'b25SB2FjdGlvbnMSOAoJcmVzb3VyY2VzGAMgAygLMhoubml0cmljLmRlcGxveS52MS5SZXNvdX'
    'JjZVIJcmVzb3VyY2Vz');

@$core.Deprecated('Use specDescriptor instead')
const Spec$json = {
  '1': 'Spec',
  '2': [
    {'1': 'resources', '3': 1, '4': 3, '5': 11, '6': '.nitric.deploy.v1.Resource', '10': 'resources'},
  ],
};

/// Descriptor for `Spec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List specDescriptor = $convert.base64Decode(
    'CgRTcGVjEjgKCXJlc291cmNlcxgBIAMoCzIaLm5pdHJpYy5kZXBsb3kudjEuUmVzb3VyY2VSCX'
    'Jlc291cmNlcw==');

