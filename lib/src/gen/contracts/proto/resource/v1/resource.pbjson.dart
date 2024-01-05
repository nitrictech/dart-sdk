//
//  Generated code. Do not modify.
//  source: contracts/proto/resource/v1/resource.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use resourceTypeDescriptor instead')
const ResourceType$json = {
  '1': 'ResourceType',
  '2': [
    {'1': 'Api', '2': 0},
    {'1': 'Function', '2': 1},
    {'1': 'Bucket', '2': 2},
    {'1': 'Queue', '2': 3},
    {'1': 'Topic', '2': 4},
    {'1': 'Schedule', '2': 5},
    {'1': 'Subscription', '2': 6},
    {'1': 'Collection', '2': 7},
    {'1': 'Policy', '2': 8},
    {'1': 'Secret', '2': 9},
    {'1': 'Notification', '2': 10},
    {'1': 'Websocket', '2': 11},
    {'1': 'Http', '2': 12},
  ],
};

/// Descriptor for `ResourceType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List resourceTypeDescriptor = $convert.base64Decode(
    'CgxSZXNvdXJjZVR5cGUSBwoDQXBpEAASDAoIRnVuY3Rpb24QARIKCgZCdWNrZXQQAhIJCgVRdW'
    'V1ZRADEgkKBVRvcGljEAQSDAoIU2NoZWR1bGUQBRIQCgxTdWJzY3JpcHRpb24QBhIOCgpDb2xs'
    'ZWN0aW9uEAcSCgoGUG9saWN5EAgSCgoGU2VjcmV0EAkSEAoMTm90aWZpY2F0aW9uEAoSDQoJV2'
    'Vic29ja2V0EAsSCAoESHR0cBAM');

@$core.Deprecated('Use actionDescriptor instead')
const Action$json = {
  '1': 'Action',
  '2': [
    {'1': 'BucketFileList', '2': 0},
    {'1': 'BucketFileGet', '2': 1},
    {'1': 'BucketFilePut', '2': 2},
    {'1': 'BucketFileDelete', '2': 3},
    {'1': 'TopicList', '2': 200},
    {'1': 'TopicDetail', '2': 201},
    {'1': 'TopicEventPublish', '2': 202},
    {'1': 'QueueSend', '2': 300},
    {'1': 'QueueReceive', '2': 301},
    {'1': 'QueueList', '2': 302},
    {'1': 'QueueDetail', '2': 303},
    {'1': 'CollectionDocumentRead', '2': 400},
    {'1': 'CollectionDocumentWrite', '2': 401},
    {'1': 'CollectionDocumentDelete', '2': 402},
    {'1': 'CollectionQuery', '2': 403},
    {'1': 'CollectionList', '2': 404},
    {'1': 'SecretPut', '2': 500},
    {'1': 'SecretAccess', '2': 501},
    {'1': 'WebsocketManage', '2': 600},
  ],
};

/// Descriptor for `Action`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List actionDescriptor = $convert.base64Decode(
    'CgZBY3Rpb24SEgoOQnVja2V0RmlsZUxpc3QQABIRCg1CdWNrZXRGaWxlR2V0EAESEQoNQnVja2'
    'V0RmlsZVB1dBACEhQKEEJ1Y2tldEZpbGVEZWxldGUQAxIOCglUb3BpY0xpc3QQyAESEAoLVG9w'
    'aWNEZXRhaWwQyQESFgoRVG9waWNFdmVudFB1Ymxpc2gQygESDgoJUXVldWVTZW5kEKwCEhEKDF'
    'F1ZXVlUmVjZWl2ZRCtAhIOCglRdWV1ZUxpc3QQrgISEAoLUXVldWVEZXRhaWwQrwISGwoWQ29s'
    'bGVjdGlvbkRvY3VtZW50UmVhZBCQAxIcChdDb2xsZWN0aW9uRG9jdW1lbnRXcml0ZRCRAxIdCh'
    'hDb2xsZWN0aW9uRG9jdW1lbnREZWxldGUQkgMSFAoPQ29sbGVjdGlvblF1ZXJ5EJMDEhMKDkNv'
    'bGxlY3Rpb25MaXN0EJQDEg4KCVNlY3JldFB1dBD0AxIRCgxTZWNyZXRBY2Nlc3MQ9QMSFAoPV2'
    'Vic29ja2V0TWFuYWdlENgE');

@$core.Deprecated('Use policyResourceDescriptor instead')
const PolicyResource$json = {
  '1': 'PolicyResource',
  '2': [
    {'1': 'principals', '3': 1, '4': 3, '5': 11, '6': '.nitric.resource.v1.Resource', '10': 'principals'},
    {'1': 'actions', '3': 2, '4': 3, '5': 14, '6': '.nitric.resource.v1.Action', '10': 'actions'},
    {'1': 'resources', '3': 3, '4': 3, '5': 11, '6': '.nitric.resource.v1.Resource', '10': 'resources'},
  ],
};

/// Descriptor for `PolicyResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List policyResourceDescriptor = $convert.base64Decode(
    'Cg5Qb2xpY3lSZXNvdXJjZRI8CgpwcmluY2lwYWxzGAEgAygLMhwubml0cmljLnJlc291cmNlLn'
    'YxLlJlc291cmNlUgpwcmluY2lwYWxzEjQKB2FjdGlvbnMYAiADKA4yGi5uaXRyaWMucmVzb3Vy'
    'Y2UudjEuQWN0aW9uUgdhY3Rpb25zEjoKCXJlc291cmNlcxgDIAMoCzIcLm5pdHJpYy5yZXNvdX'
    'JjZS52MS5SZXNvdXJjZVIJcmVzb3VyY2Vz');

@$core.Deprecated('Use resourceDescriptor instead')
const Resource$json = {
  '1': 'Resource',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.nitric.resource.v1.ResourceType', '10': 'type'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `Resource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceDescriptor = $convert.base64Decode(
    'CghSZXNvdXJjZRI0CgR0eXBlGAEgASgOMiAubml0cmljLnJlc291cmNlLnYxLlJlc291cmNlVH'
    'lwZVIEdHlwZRISCgRuYW1lGAIgASgJUgRuYW1l');

@$core.Deprecated('Use resourceDeclareRequestDescriptor instead')
const ResourceDeclareRequest$json = {
  '1': 'ResourceDeclareRequest',
  '2': [
    {'1': 'resource', '3': 1, '4': 1, '5': 11, '6': '.nitric.resource.v1.Resource', '10': 'resource'},
    {'1': 'policy', '3': 10, '4': 1, '5': 11, '6': '.nitric.resource.v1.PolicyResource', '9': 0, '10': 'policy'},
    {'1': 'bucket', '3': 11, '4': 1, '5': 11, '6': '.nitric.resource.v1.BucketResource', '9': 0, '10': 'bucket'},
    {'1': 'queue', '3': 12, '4': 1, '5': 11, '6': '.nitric.resource.v1.QueueResource', '9': 0, '10': 'queue'},
    {'1': 'topic', '3': 13, '4': 1, '5': 11, '6': '.nitric.resource.v1.TopicResource', '9': 0, '10': 'topic'},
    {'1': 'collection', '3': 14, '4': 1, '5': 11, '6': '.nitric.resource.v1.CollectionResource', '9': 0, '10': 'collection'},
    {'1': 'secret', '3': 15, '4': 1, '5': 11, '6': '.nitric.resource.v1.SecretResource', '9': 0, '10': 'secret'},
    {'1': 'api', '3': 16, '4': 1, '5': 11, '6': '.nitric.resource.v1.ApiResource', '9': 0, '10': 'api'},
  ],
  '8': [
    {'1': 'config'},
  ],
};

/// Descriptor for `ResourceDeclareRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceDeclareRequestDescriptor = $convert.base64Decode(
    'ChZSZXNvdXJjZURlY2xhcmVSZXF1ZXN0EjgKCHJlc291cmNlGAEgASgLMhwubml0cmljLnJlc2'
    '91cmNlLnYxLlJlc291cmNlUghyZXNvdXJjZRI8CgZwb2xpY3kYCiABKAsyIi5uaXRyaWMucmVz'
    'b3VyY2UudjEuUG9saWN5UmVzb3VyY2VIAFIGcG9saWN5EjwKBmJ1Y2tldBgLIAEoCzIiLm5pdH'
    'JpYy5yZXNvdXJjZS52MS5CdWNrZXRSZXNvdXJjZUgAUgZidWNrZXQSOQoFcXVldWUYDCABKAsy'
    'IS5uaXRyaWMucmVzb3VyY2UudjEuUXVldWVSZXNvdXJjZUgAUgVxdWV1ZRI5CgV0b3BpYxgNIA'
    'EoCzIhLm5pdHJpYy5yZXNvdXJjZS52MS5Ub3BpY1Jlc291cmNlSABSBXRvcGljEkgKCmNvbGxl'
    'Y3Rpb24YDiABKAsyJi5uaXRyaWMucmVzb3VyY2UudjEuQ29sbGVjdGlvblJlc291cmNlSABSCm'
    'NvbGxlY3Rpb24SPAoGc2VjcmV0GA8gASgLMiIubml0cmljLnJlc291cmNlLnYxLlNlY3JldFJl'
    'c291cmNlSABSBnNlY3JldBIzCgNhcGkYECABKAsyHy5uaXRyaWMucmVzb3VyY2UudjEuQXBpUm'
    'Vzb3VyY2VIAFIDYXBpQggKBmNvbmZpZw==');

@$core.Deprecated('Use bucketResourceDescriptor instead')
const BucketResource$json = {
  '1': 'BucketResource',
};

/// Descriptor for `BucketResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bucketResourceDescriptor = $convert.base64Decode(
    'Cg5CdWNrZXRSZXNvdXJjZQ==');

@$core.Deprecated('Use queueResourceDescriptor instead')
const QueueResource$json = {
  '1': 'QueueResource',
};

/// Descriptor for `QueueResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queueResourceDescriptor = $convert.base64Decode(
    'Cg1RdWV1ZVJlc291cmNl');

@$core.Deprecated('Use topicResourceDescriptor instead')
const TopicResource$json = {
  '1': 'TopicResource',
};

/// Descriptor for `TopicResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicResourceDescriptor = $convert.base64Decode(
    'Cg1Ub3BpY1Jlc291cmNl');

@$core.Deprecated('Use collectionResourceDescriptor instead')
const CollectionResource$json = {
  '1': 'CollectionResource',
};

/// Descriptor for `CollectionResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionResourceDescriptor = $convert.base64Decode(
    'ChJDb2xsZWN0aW9uUmVzb3VyY2U=');

@$core.Deprecated('Use secretResourceDescriptor instead')
const SecretResource$json = {
  '1': 'SecretResource',
};

/// Descriptor for `SecretResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List secretResourceDescriptor = $convert.base64Decode(
    'Cg5TZWNyZXRSZXNvdXJjZQ==');

@$core.Deprecated('Use apiSecurityDefinitionJwtDescriptor instead')
const ApiSecurityDefinitionJwt$json = {
  '1': 'ApiSecurityDefinitionJwt',
  '2': [
    {'1': 'issuer', '3': 1, '4': 1, '5': 9, '10': 'issuer'},
    {'1': 'audiences', '3': 2, '4': 3, '5': 9, '10': 'audiences'},
  ],
};

/// Descriptor for `ApiSecurityDefinitionJwt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiSecurityDefinitionJwtDescriptor = $convert.base64Decode(
    'ChhBcGlTZWN1cml0eURlZmluaXRpb25Kd3QSFgoGaXNzdWVyGAEgASgJUgZpc3N1ZXISHAoJYX'
    'VkaWVuY2VzGAIgAygJUglhdWRpZW5jZXM=');

@$core.Deprecated('Use apiSecurityDefinitionDescriptor instead')
const ApiSecurityDefinition$json = {
  '1': 'ApiSecurityDefinition',
  '2': [
    {'1': 'jwt', '3': 1, '4': 1, '5': 11, '6': '.nitric.resource.v1.ApiSecurityDefinitionJwt', '9': 0, '10': 'jwt'},
  ],
  '8': [
    {'1': 'definition'},
  ],
};

/// Descriptor for `ApiSecurityDefinition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiSecurityDefinitionDescriptor = $convert.base64Decode(
    'ChVBcGlTZWN1cml0eURlZmluaXRpb24SQAoDand0GAEgASgLMiwubml0cmljLnJlc291cmNlLn'
    'YxLkFwaVNlY3VyaXR5RGVmaW5pdGlvbkp3dEgAUgNqd3RCDAoKZGVmaW5pdGlvbg==');

@$core.Deprecated('Use apiScopesDescriptor instead')
const ApiScopes$json = {
  '1': 'ApiScopes',
  '2': [
    {'1': 'scopes', '3': 1, '4': 3, '5': 9, '10': 'scopes'},
  ],
};

/// Descriptor for `ApiScopes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiScopesDescriptor = $convert.base64Decode(
    'CglBcGlTY29wZXMSFgoGc2NvcGVzGAEgAygJUgZzY29wZXM=');

@$core.Deprecated('Use apiResourceDescriptor instead')
const ApiResource$json = {
  '1': 'ApiResource',
  '2': [
    {'1': 'security_definitions', '3': 1, '4': 3, '5': 11, '6': '.nitric.resource.v1.ApiResource.SecurityDefinitionsEntry', '10': 'securityDefinitions'},
    {'1': 'security', '3': 2, '4': 3, '5': 11, '6': '.nitric.resource.v1.ApiResource.SecurityEntry', '10': 'security'},
  ],
  '3': [ApiResource_SecurityDefinitionsEntry$json, ApiResource_SecurityEntry$json],
};

@$core.Deprecated('Use apiResourceDescriptor instead')
const ApiResource_SecurityDefinitionsEntry$json = {
  '1': 'SecurityDefinitionsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.nitric.resource.v1.ApiSecurityDefinition', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use apiResourceDescriptor instead')
const ApiResource_SecurityEntry$json = {
  '1': 'SecurityEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.nitric.resource.v1.ApiScopes', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ApiResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiResourceDescriptor = $convert.base64Decode(
    'CgtBcGlSZXNvdXJjZRJrChRzZWN1cml0eV9kZWZpbml0aW9ucxgBIAMoCzI4Lm5pdHJpYy5yZX'
    'NvdXJjZS52MS5BcGlSZXNvdXJjZS5TZWN1cml0eURlZmluaXRpb25zRW50cnlSE3NlY3VyaXR5'
    'RGVmaW5pdGlvbnMSSQoIc2VjdXJpdHkYAiADKAsyLS5uaXRyaWMucmVzb3VyY2UudjEuQXBpUm'
    'Vzb3VyY2UuU2VjdXJpdHlFbnRyeVIIc2VjdXJpdHkacQoYU2VjdXJpdHlEZWZpbml0aW9uc0Vu'
    'dHJ5EhAKA2tleRgBIAEoCVIDa2V5Ej8KBXZhbHVlGAIgASgLMikubml0cmljLnJlc291cmNlLn'
    'YxLkFwaVNlY3VyaXR5RGVmaW5pdGlvblIFdmFsdWU6AjgBGloKDVNlY3VyaXR5RW50cnkSEAoD'
    'a2V5GAEgASgJUgNrZXkSMwoFdmFsdWUYAiABKAsyHS5uaXRyaWMucmVzb3VyY2UudjEuQXBpU2'
    'NvcGVzUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use resourceDeclareResponseDescriptor instead')
const ResourceDeclareResponse$json = {
  '1': 'ResourceDeclareResponse',
};

/// Descriptor for `ResourceDeclareResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceDeclareResponseDescriptor = $convert.base64Decode(
    'ChdSZXNvdXJjZURlY2xhcmVSZXNwb25zZQ==');

@$core.Deprecated('Use apiResourceDetailsDescriptor instead')
const ApiResourceDetails$json = {
  '1': 'ApiResourceDetails',
  '2': [
    {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `ApiResourceDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiResourceDetailsDescriptor = $convert.base64Decode(
    'ChJBcGlSZXNvdXJjZURldGFpbHMSEAoDdXJsGAEgASgJUgN1cmw=');

@$core.Deprecated('Use websocketResourceDetailsDescriptor instead')
const WebsocketResourceDetails$json = {
  '1': 'WebsocketResourceDetails',
  '2': [
    {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `WebsocketResourceDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketResourceDetailsDescriptor = $convert.base64Decode(
    'ChhXZWJzb2NrZXRSZXNvdXJjZURldGFpbHMSEAoDdXJsGAEgASgJUgN1cmw=');

@$core.Deprecated('Use resourceDetailsRequestDescriptor instead')
const ResourceDetailsRequest$json = {
  '1': 'ResourceDetailsRequest',
  '2': [
    {'1': 'resource', '3': 1, '4': 1, '5': 11, '6': '.nitric.resource.v1.Resource', '10': 'resource'},
  ],
};

/// Descriptor for `ResourceDetailsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceDetailsRequestDescriptor = $convert.base64Decode(
    'ChZSZXNvdXJjZURldGFpbHNSZXF1ZXN0EjgKCHJlc291cmNlGAEgASgLMhwubml0cmljLnJlc2'
    '91cmNlLnYxLlJlc291cmNlUghyZXNvdXJjZQ==');

@$core.Deprecated('Use resourceDetailsResponseDescriptor instead')
const ResourceDetailsResponse$json = {
  '1': 'ResourceDetailsResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'provider', '3': 2, '4': 1, '5': 9, '10': 'provider'},
    {'1': 'service', '3': 3, '4': 1, '5': 9, '10': 'service'},
    {'1': 'api', '3': 10, '4': 1, '5': 11, '6': '.nitric.resource.v1.ApiResourceDetails', '9': 0, '10': 'api'},
    {'1': 'websocket', '3': 11, '4': 1, '5': 11, '6': '.nitric.resource.v1.WebsocketResourceDetails', '9': 0, '10': 'websocket'},
  ],
  '8': [
    {'1': 'details'},
  ],
};

/// Descriptor for `ResourceDetailsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceDetailsResponseDescriptor = $convert.base64Decode(
    'ChdSZXNvdXJjZURldGFpbHNSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSGgoIcHJvdmlkZXIYAi'
    'ABKAlSCHByb3ZpZGVyEhgKB3NlcnZpY2UYAyABKAlSB3NlcnZpY2USOgoDYXBpGAogASgLMiYu'
    'bml0cmljLnJlc291cmNlLnYxLkFwaVJlc291cmNlRGV0YWlsc0gAUgNhcGkSTAoJd2Vic29ja2'
    'V0GAsgASgLMiwubml0cmljLnJlc291cmNlLnYxLldlYnNvY2tldFJlc291cmNlRGV0YWlsc0gA'
    'Ugl3ZWJzb2NrZXRCCQoHZGV0YWlscw==');

