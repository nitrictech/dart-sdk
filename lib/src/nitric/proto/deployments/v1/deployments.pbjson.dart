//
//  Generated code. Do not modify.
//  source: nitric/proto/deployments/v1/deployments.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use resourceDeploymentActionDescriptor instead')
const ResourceDeploymentAction$json = {
  '1': 'ResourceDeploymentAction',
  '2': [
    {'1': 'CREATE', '2': 0},
    {'1': 'UPDATE', '2': 1},
    {'1': 'REPLACE', '2': 2},
    {'1': 'SAME', '2': 3},
    {'1': 'DELETE', '2': 4},
  ],
};

/// Descriptor for `ResourceDeploymentAction`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List resourceDeploymentActionDescriptor = $convert.base64Decode(
    'ChhSZXNvdXJjZURlcGxveW1lbnRBY3Rpb24SCgoGQ1JFQVRFEAASCgoGVVBEQVRFEAESCwoHUk'
    'VQTEFDRRACEggKBFNBTUUQAxIKCgZERUxFVEUQBA==');

@$core.Deprecated('Use resourceDeploymentStatusDescriptor instead')
const ResourceDeploymentStatus$json = {
  '1': 'ResourceDeploymentStatus',
  '2': [
    {'1': 'PENDING', '2': 0},
    {'1': 'IN_PROGRESS', '2': 1},
    {'1': 'SUCCESS', '2': 2},
    {'1': 'FAILED', '2': 3},
  ],
};

/// Descriptor for `ResourceDeploymentStatus`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List resourceDeploymentStatusDescriptor = $convert.base64Decode(
    'ChhSZXNvdXJjZURlcGxveW1lbnRTdGF0dXMSCwoHUEVORElORxAAEg8KC0lOX1BST0dSRVNTEA'
    'ESCwoHU1VDQ0VTUxACEgoKBkZBSUxFRBAD');

@$core.Deprecated('Use deploymentUpRequestDescriptor instead')
const DeploymentUpRequest$json = {
  '1': 'DeploymentUpRequest',
  '2': [
    {'1': 'spec', '3': 1, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.Spec', '10': 'spec'},
    {'1': 'attributes', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'attributes'},
    {'1': 'interactive', '3': 3, '4': 1, '5': 8, '10': 'interactive'},
  ],
};

/// Descriptor for `DeploymentUpRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deploymentUpRequestDescriptor = $convert.base64Decode(
    'ChNEZXBsb3ltZW50VXBSZXF1ZXN0EjUKBHNwZWMYASABKAsyIS5uaXRyaWMucHJvdG8uZGVwbG'
    '95bWVudHMudjEuU3BlY1IEc3BlYxI3CgphdHRyaWJ1dGVzGAIgASgLMhcuZ29vZ2xlLnByb3Rv'
    'YnVmLlN0cnVjdFIKYXR0cmlidXRlcxIgCgtpbnRlcmFjdGl2ZRgDIAEoCFILaW50ZXJhY3Rpdm'
    'U=');

@$core.Deprecated('Use deploymentUpEventDescriptor instead')
const DeploymentUpEvent$json = {
  '1': 'DeploymentUpEvent',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'message'},
    {'1': 'update', '3': 2, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.ResourceUpdate', '9': 0, '10': 'update'},
    {'1': 'result', '3': 3, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.UpResult', '9': 0, '10': 'result'},
  ],
  '8': [
    {'1': 'content'},
  ],
};

/// Descriptor for `DeploymentUpEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deploymentUpEventDescriptor = $convert.base64Decode(
    'ChFEZXBsb3ltZW50VXBFdmVudBIaCgdtZXNzYWdlGAEgASgJSABSB21lc3NhZ2USRQoGdXBkYX'
    'RlGAIgASgLMisubml0cmljLnByb3RvLmRlcGxveW1lbnRzLnYxLlJlc291cmNlVXBkYXRlSABS'
    'BnVwZGF0ZRI/CgZyZXN1bHQYAyABKAsyJS5uaXRyaWMucHJvdG8uZGVwbG95bWVudHMudjEuVX'
    'BSZXN1bHRIAFIGcmVzdWx0QgkKB2NvbnRlbnQ=');

@$core.Deprecated('Use resourceUpdateDescriptor instead')
const ResourceUpdate$json = {
  '1': 'ResourceUpdate',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.nitric.proto.resources.v1.ResourceIdentifier', '10': 'id'},
    {'1': 'action', '3': 3, '4': 1, '5': 14, '6': '.nitric.proto.deployments.v1.ResourceDeploymentAction', '10': 'action'},
    {'1': 'status', '3': 4, '4': 1, '5': 14, '6': '.nitric.proto.deployments.v1.ResourceDeploymentStatus', '10': 'status'},
    {'1': 'sub_resource', '3': 5, '4': 1, '5': 9, '10': 'subResource'},
    {'1': 'message', '3': 6, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `ResourceUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceUpdateDescriptor = $convert.base64Decode(
    'Cg5SZXNvdXJjZVVwZGF0ZRI9CgJpZBgBIAEoCzItLm5pdHJpYy5wcm90by5yZXNvdXJjZXMudj'
    'EuUmVzb3VyY2VJZGVudGlmaWVyUgJpZBJNCgZhY3Rpb24YAyABKA4yNS5uaXRyaWMucHJvdG8u'
    'ZGVwbG95bWVudHMudjEuUmVzb3VyY2VEZXBsb3ltZW50QWN0aW9uUgZhY3Rpb24STQoGc3RhdH'
    'VzGAQgASgOMjUubml0cmljLnByb3RvLmRlcGxveW1lbnRzLnYxLlJlc291cmNlRGVwbG95bWVu'
    'dFN0YXR1c1IGc3RhdHVzEiEKDHN1Yl9yZXNvdXJjZRgFIAEoCVILc3ViUmVzb3VyY2USGAoHbW'
    'Vzc2FnZRgGIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use upResultDescriptor instead')
const UpResult$json = {
  '1': 'UpResult',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    {'1': 'Text', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'Text'},
  ],
  '8': [
    {'1': 'content'},
  ],
};

/// Descriptor for `UpResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List upResultDescriptor = $convert.base64Decode(
    'CghVcFJlc3VsdBIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNzEhQKBFRleHQYAiABKAlIAFIEVG'
    'V4dEIJCgdjb250ZW50');

@$core.Deprecated('Use deploymentDownRequestDescriptor instead')
const DeploymentDownRequest$json = {
  '1': 'DeploymentDownRequest',
  '2': [
    {'1': 'attributes', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'attributes'},
    {'1': 'interactive', '3': 2, '4': 1, '5': 8, '10': 'interactive'},
  ],
};

/// Descriptor for `DeploymentDownRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deploymentDownRequestDescriptor = $convert.base64Decode(
    'ChVEZXBsb3ltZW50RG93blJlcXVlc3QSNwoKYXR0cmlidXRlcxgBIAEoCzIXLmdvb2dsZS5wcm'
    '90b2J1Zi5TdHJ1Y3RSCmF0dHJpYnV0ZXMSIAoLaW50ZXJhY3RpdmUYAiABKAhSC2ludGVyYWN0'
    'aXZl');

@$core.Deprecated('Use deploymentDownEventDescriptor instead')
const DeploymentDownEvent$json = {
  '1': 'DeploymentDownEvent',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'message'},
    {'1': 'result', '3': 2, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.DownResult', '9': 0, '10': 'result'},
    {'1': 'update', '3': 3, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.ResourceUpdate', '9': 0, '10': 'update'},
  ],
  '8': [
    {'1': 'content'},
  ],
};

/// Descriptor for `DeploymentDownEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deploymentDownEventDescriptor = $convert.base64Decode(
    'ChNEZXBsb3ltZW50RG93bkV2ZW50EhoKB21lc3NhZ2UYASABKAlIAFIHbWVzc2FnZRJBCgZyZX'
    'N1bHQYAiABKAsyJy5uaXRyaWMucHJvdG8uZGVwbG95bWVudHMudjEuRG93blJlc3VsdEgAUgZy'
    'ZXN1bHQSRQoGdXBkYXRlGAMgASgLMisubml0cmljLnByb3RvLmRlcGxveW1lbnRzLnYxLlJlc2'
    '91cmNlVXBkYXRlSABSBnVwZGF0ZUIJCgdjb250ZW50');

@$core.Deprecated('Use downResultDescriptor instead')
const DownResult$json = {
  '1': 'DownResult',
};

/// Descriptor for `DownResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downResultDescriptor = $convert.base64Decode(
    'CgpEb3duUmVzdWx0');

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

@$core.Deprecated('Use serviceDescriptor instead')
const Service$json = {
  '1': 'Service',
  '2': [
    {'1': 'image', '3': 1, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.ImageSource', '9': 0, '10': 'image'},
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
    {'1': 'env', '3': 14, '4': 3, '5': 11, '6': '.nitric.proto.deployments.v1.Service.EnvEntry', '10': 'env'},
  ],
  '3': [Service_EnvEntry$json],
  '8': [
    {'1': 'source'},
  ],
};

@$core.Deprecated('Use serviceDescriptor instead')
const Service_EnvEntry$json = {
  '1': 'EnvEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Service`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceDescriptor = $convert.base64Decode(
    'CgdTZXJ2aWNlEkAKBWltYWdlGAEgASgLMigubml0cmljLnByb3RvLmRlcGxveW1lbnRzLnYxLk'
    'ltYWdlU291cmNlSABSBWltYWdlEhgKB3dvcmtlcnMYCiABKAVSB3dvcmtlcnMSHAoHdGltZW91'
    'dBgLIAEoBUICGAFSB3RpbWVvdXQSGgoGbWVtb3J5GAwgASgFQgIYAVIGbWVtb3J5EhIKBHR5cG'
    'UYDSABKAlSBHR5cGUSPwoDZW52GA4gAygLMi0ubml0cmljLnByb3RvLmRlcGxveW1lbnRzLnYx'
    'LlNlcnZpY2UuRW52RW50cnlSA2Vudho2CghFbnZFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCg'
    'V2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBQggKBnNvdXJjZQ==');

@$core.Deprecated('Use bucketDescriptor instead')
const Bucket$json = {
  '1': 'Bucket',
  '2': [
    {'1': 'listeners', '3': 1, '4': 3, '5': 11, '6': '.nitric.proto.deployments.v1.BucketListener', '10': 'listeners'},
  ],
};

/// Descriptor for `Bucket`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bucketDescriptor = $convert.base64Decode(
    'CgZCdWNrZXQSSQoJbGlzdGVuZXJzGAEgAygLMisubml0cmljLnByb3RvLmRlcGxveW1lbnRzLn'
    'YxLkJ1Y2tldExpc3RlbmVyUglsaXN0ZW5lcnM=');

@$core.Deprecated('Use bucketListenerDescriptor instead')
const BucketListener$json = {
  '1': 'BucketListener',
  '2': [
    {'1': 'config', '3': 1, '4': 1, '5': 11, '6': '.nitric.proto.storage.v1.RegistrationRequest', '10': 'config'},
    {'1': 'service', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'service'},
  ],
  '8': [
    {'1': 'target'},
  ],
};

/// Descriptor for `BucketListener`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bucketListenerDescriptor = $convert.base64Decode(
    'Cg5CdWNrZXRMaXN0ZW5lchJECgZjb25maWcYASABKAsyLC5uaXRyaWMucHJvdG8uc3RvcmFnZS'
    '52MS5SZWdpc3RyYXRpb25SZXF1ZXN0UgZjb25maWcSGgoHc2VydmljZRgCIAEoCUgAUgdzZXJ2'
    'aWNlQggKBnRhcmdldA==');

@$core.Deprecated('Use topicDescriptor instead')
const Topic$json = {
  '1': 'Topic',
  '2': [
    {'1': 'subscriptions', '3': 1, '4': 3, '5': 11, '6': '.nitric.proto.deployments.v1.SubscriptionTarget', '10': 'subscriptions'},
  ],
};

/// Descriptor for `Topic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicDescriptor = $convert.base64Decode(
    'CgVUb3BpYxJVCg1zdWJzY3JpcHRpb25zGAEgAygLMi8ubml0cmljLnByb3RvLmRlcGxveW1lbn'
    'RzLnYxLlN1YnNjcmlwdGlvblRhcmdldFINc3Vic2NyaXB0aW9ucw==');

@$core.Deprecated('Use queueDescriptor instead')
const Queue$json = {
  '1': 'Queue',
};

/// Descriptor for `Queue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queueDescriptor = $convert.base64Decode(
    'CgVRdWV1ZQ==');

@$core.Deprecated('Use keyValueStoreDescriptor instead')
const KeyValueStore$json = {
  '1': 'KeyValueStore',
};

/// Descriptor for `KeyValueStore`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyValueStoreDescriptor = $convert.base64Decode(
    'Cg1LZXlWYWx1ZVN0b3Jl');

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
    {'1': 'service', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'service'},
  ],
  '8': [
    {'1': 'target'},
  ],
};

/// Descriptor for `SubscriptionTarget`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscriptionTargetDescriptor = $convert.base64Decode(
    'ChJTdWJzY3JpcHRpb25UYXJnZXQSGgoHc2VydmljZRgBIAEoCUgAUgdzZXJ2aWNlQggKBnRhcm'
    'dldA==');

@$core.Deprecated('Use topicSubscriptionDescriptor instead')
const TopicSubscription$json = {
  '1': 'TopicSubscription',
  '2': [
    {'1': 'target', '3': 1, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.SubscriptionTarget', '10': 'target'},
  ],
};

/// Descriptor for `TopicSubscription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicSubscriptionDescriptor = $convert.base64Decode(
    'ChFUb3BpY1N1YnNjcmlwdGlvbhJHCgZ0YXJnZXQYASABKAsyLy5uaXRyaWMucHJvdG8uZGVwbG'
    '95bWVudHMudjEuU3Vic2NyaXB0aW9uVGFyZ2V0UgZ0YXJnZXQ=');

@$core.Deprecated('Use httpTargetDescriptor instead')
const HttpTarget$json = {
  '1': 'HttpTarget',
  '2': [
    {'1': 'service', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'service'},
  ],
  '8': [
    {'1': 'target'},
  ],
};

/// Descriptor for `HttpTarget`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List httpTargetDescriptor = $convert.base64Decode(
    'CgpIdHRwVGFyZ2V0EhoKB3NlcnZpY2UYASABKAlIAFIHc2VydmljZUIICgZ0YXJnZXQ=');

@$core.Deprecated('Use httpDescriptor instead')
const Http$json = {
  '1': 'Http',
  '2': [
    {'1': 'target', '3': 1, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.HttpTarget', '10': 'target'},
  ],
};

/// Descriptor for `Http`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List httpDescriptor = $convert.base64Decode(
    'CgRIdHRwEj8KBnRhcmdldBgBIAEoCzInLm5pdHJpYy5wcm90by5kZXBsb3ltZW50cy52MS5IdH'
    'RwVGFyZ2V0UgZ0YXJnZXQ=');

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
    {'1': 'connect_target', '3': 1, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.WebsocketTarget', '10': 'connectTarget'},
    {'1': 'disconnect_target', '3': 2, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.WebsocketTarget', '10': 'disconnectTarget'},
    {'1': 'message_target', '3': 3, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.WebsocketTarget', '10': 'messageTarget'},
  ],
};

/// Descriptor for `Websocket`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketDescriptor = $convert.base64Decode(
    'CglXZWJzb2NrZXQSUwoOY29ubmVjdF90YXJnZXQYASABKAsyLC5uaXRyaWMucHJvdG8uZGVwbG'
    '95bWVudHMudjEuV2Vic29ja2V0VGFyZ2V0Ug1jb25uZWN0VGFyZ2V0ElkKEWRpc2Nvbm5lY3Rf'
    'dGFyZ2V0GAIgASgLMiwubml0cmljLnByb3RvLmRlcGxveW1lbnRzLnYxLldlYnNvY2tldFRhcm'
    'dldFIQZGlzY29ubmVjdFRhcmdldBJTCg5tZXNzYWdlX3RhcmdldBgDIAEoCzIsLm5pdHJpYy5w'
    'cm90by5kZXBsb3ltZW50cy52MS5XZWJzb2NrZXRUYXJnZXRSDW1lc3NhZ2VUYXJnZXQ=');

@$core.Deprecated('Use websocketTargetDescriptor instead')
const WebsocketTarget$json = {
  '1': 'WebsocketTarget',
  '2': [
    {'1': 'service', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'service'},
  ],
  '8': [
    {'1': 'target'},
  ],
};

/// Descriptor for `WebsocketTarget`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketTargetDescriptor = $convert.base64Decode(
    'Cg9XZWJzb2NrZXRUYXJnZXQSGgoHc2VydmljZRgBIAEoCUgAUgdzZXJ2aWNlQggKBnRhcmdldA'
    '==');

@$core.Deprecated('Use scheduleTargetDescriptor instead')
const ScheduleTarget$json = {
  '1': 'ScheduleTarget',
  '2': [
    {'1': 'service', '3': 1, '4': 1, '5': 9, '9': 0, '10': 'service'},
  ],
  '8': [
    {'1': 'target'},
  ],
};

/// Descriptor for `ScheduleTarget`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduleTargetDescriptor = $convert.base64Decode(
    'Cg5TY2hlZHVsZVRhcmdldBIaCgdzZXJ2aWNlGAEgASgJSABSB3NlcnZpY2VCCAoGdGFyZ2V0');

@$core.Deprecated('Use scheduleDescriptor instead')
const Schedule$json = {
  '1': 'Schedule',
  '2': [
    {'1': 'target', '3': 1, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.ScheduleTarget', '10': 'target'},
    {'1': 'every', '3': 10, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.ScheduleEvery', '9': 0, '10': 'every'},
    {'1': 'cron', '3': 11, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.ScheduleCron', '9': 0, '10': 'cron'},
  ],
  '8': [
    {'1': 'cadence'},
  ],
};

/// Descriptor for `Schedule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduleDescriptor = $convert.base64Decode(
    'CghTY2hlZHVsZRJDCgZ0YXJnZXQYASABKAsyKy5uaXRyaWMucHJvdG8uZGVwbG95bWVudHMudj'
    'EuU2NoZWR1bGVUYXJnZXRSBnRhcmdldBJCCgVldmVyeRgKIAEoCzIqLm5pdHJpYy5wcm90by5k'
    'ZXBsb3ltZW50cy52MS5TY2hlZHVsZUV2ZXJ5SABSBWV2ZXJ5Ej8KBGNyb24YCyABKAsyKS5uaX'
    'RyaWMucHJvdG8uZGVwbG95bWVudHMudjEuU2NoZWR1bGVDcm9uSABSBGNyb25CCQoHY2FkZW5j'
    'ZQ==');

@$core.Deprecated('Use scheduleEveryDescriptor instead')
const ScheduleEvery$json = {
  '1': 'ScheduleEvery',
  '2': [
    {'1': 'rate', '3': 1, '4': 1, '5': 9, '10': 'rate'},
  ],
};

/// Descriptor for `ScheduleEvery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduleEveryDescriptor = $convert.base64Decode(
    'Cg1TY2hlZHVsZUV2ZXJ5EhIKBHJhdGUYASABKAlSBHJhdGU=');

@$core.Deprecated('Use scheduleCronDescriptor instead')
const ScheduleCron$json = {
  '1': 'ScheduleCron',
  '2': [
    {'1': 'expression', '3': 1, '4': 1, '5': 9, '10': 'expression'},
  ],
};

/// Descriptor for `ScheduleCron`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduleCronDescriptor = $convert.base64Decode(
    'CgxTY2hlZHVsZUNyb24SHgoKZXhwcmVzc2lvbhgBIAEoCVIKZXhwcmVzc2lvbg==');

@$core.Deprecated('Use resourceDescriptor instead')
const Resource$json = {
  '1': 'Resource',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 11, '6': '.nitric.proto.resources.v1.ResourceIdentifier', '10': 'id'},
    {'1': 'service', '3': 10, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.Service', '9': 0, '10': 'service'},
    {'1': 'bucket', '3': 11, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.Bucket', '9': 0, '10': 'bucket'},
    {'1': 'topic', '3': 12, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.Topic', '9': 0, '10': 'topic'},
    {'1': 'api', '3': 13, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.Api', '9': 0, '10': 'api'},
    {'1': 'policy', '3': 14, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.Policy', '9': 0, '10': 'policy'},
    {'1': 'schedule', '3': 15, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.Schedule', '9': 0, '10': 'schedule'},
    {'1': 'key_value_store', '3': 16, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.KeyValueStore', '9': 0, '10': 'keyValueStore'},
    {'1': 'secret', '3': 17, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.Secret', '9': 0, '10': 'secret'},
    {'1': 'websocket', '3': 18, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.Websocket', '9': 0, '10': 'websocket'},
    {'1': 'http', '3': 19, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.Http', '9': 0, '10': 'http'},
    {'1': 'queue', '3': 20, '4': 1, '5': 11, '6': '.nitric.proto.deployments.v1.Queue', '9': 0, '10': 'queue'},
  ],
  '8': [
    {'1': 'config'},
  ],
};

/// Descriptor for `Resource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceDescriptor = $convert.base64Decode(
    'CghSZXNvdXJjZRI9CgJpZBgBIAEoCzItLm5pdHJpYy5wcm90by5yZXNvdXJjZXMudjEuUmVzb3'
    'VyY2VJZGVudGlmaWVyUgJpZBJACgdzZXJ2aWNlGAogASgLMiQubml0cmljLnByb3RvLmRlcGxv'
    'eW1lbnRzLnYxLlNlcnZpY2VIAFIHc2VydmljZRI9CgZidWNrZXQYCyABKAsyIy5uaXRyaWMucH'
    'JvdG8uZGVwbG95bWVudHMudjEuQnVja2V0SABSBmJ1Y2tldBI6CgV0b3BpYxgMIAEoCzIiLm5p'
    'dHJpYy5wcm90by5kZXBsb3ltZW50cy52MS5Ub3BpY0gAUgV0b3BpYxI0CgNhcGkYDSABKAsyIC'
    '5uaXRyaWMucHJvdG8uZGVwbG95bWVudHMudjEuQXBpSABSA2FwaRI9CgZwb2xpY3kYDiABKAsy'
    'Iy5uaXRyaWMucHJvdG8uZGVwbG95bWVudHMudjEuUG9saWN5SABSBnBvbGljeRJDCghzY2hlZH'
    'VsZRgPIAEoCzIlLm5pdHJpYy5wcm90by5kZXBsb3ltZW50cy52MS5TY2hlZHVsZUgAUghzY2hl'
    'ZHVsZRJUCg9rZXlfdmFsdWVfc3RvcmUYECABKAsyKi5uaXRyaWMucHJvdG8uZGVwbG95bWVudH'
    'MudjEuS2V5VmFsdWVTdG9yZUgAUg1rZXlWYWx1ZVN0b3JlEj0KBnNlY3JldBgRIAEoCzIjLm5p'
    'dHJpYy5wcm90by5kZXBsb3ltZW50cy52MS5TZWNyZXRIAFIGc2VjcmV0EkYKCXdlYnNvY2tldB'
    'gSIAEoCzImLm5pdHJpYy5wcm90by5kZXBsb3ltZW50cy52MS5XZWJzb2NrZXRIAFIJd2Vic29j'
    'a2V0EjcKBGh0dHAYEyABKAsyIS5uaXRyaWMucHJvdG8uZGVwbG95bWVudHMudjEuSHR0cEgAUg'
    'RodHRwEjoKBXF1ZXVlGBQgASgLMiIubml0cmljLnByb3RvLmRlcGxveW1lbnRzLnYxLlF1ZXVl'
    'SABSBXF1ZXVlQggKBmNvbmZpZw==');

@$core.Deprecated('Use policyDescriptor instead')
const Policy$json = {
  '1': 'Policy',
  '2': [
    {'1': 'principals', '3': 1, '4': 3, '5': 11, '6': '.nitric.proto.deployments.v1.Resource', '10': 'principals'},
    {'1': 'actions', '3': 2, '4': 3, '5': 14, '6': '.nitric.proto.resources.v1.Action', '10': 'actions'},
    {'1': 'resources', '3': 3, '4': 3, '5': 11, '6': '.nitric.proto.deployments.v1.Resource', '10': 'resources'},
  ],
};

/// Descriptor for `Policy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List policyDescriptor = $convert.base64Decode(
    'CgZQb2xpY3kSRQoKcHJpbmNpcGFscxgBIAMoCzIlLm5pdHJpYy5wcm90by5kZXBsb3ltZW50cy'
    '52MS5SZXNvdXJjZVIKcHJpbmNpcGFscxI7CgdhY3Rpb25zGAIgAygOMiEubml0cmljLnByb3Rv'
    'LnJlc291cmNlcy52MS5BY3Rpb25SB2FjdGlvbnMSQwoJcmVzb3VyY2VzGAMgAygLMiUubml0cm'
    'ljLnByb3RvLmRlcGxveW1lbnRzLnYxLlJlc291cmNlUglyZXNvdXJjZXM=');

@$core.Deprecated('Use specDescriptor instead')
const Spec$json = {
  '1': 'Spec',
  '2': [
    {'1': 'resources', '3': 1, '4': 3, '5': 11, '6': '.nitric.proto.deployments.v1.Resource', '10': 'resources'},
  ],
};

/// Descriptor for `Spec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List specDescriptor = $convert.base64Decode(
    'CgRTcGVjEkMKCXJlc291cmNlcxgBIAMoCzIlLm5pdHJpYy5wcm90by5kZXBsb3ltZW50cy52MS'
    '5SZXNvdXJjZVIJcmVzb3VyY2Vz');

