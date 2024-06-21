//
//  Generated code. Do not modify.
//  source: nitric/proto/resources/v1/resources.proto
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
    {'1': 'Service', '2': 1},
    {'1': 'Bucket', '2': 2},
    {'1': 'Topic', '2': 3},
    {'1': 'Schedule', '2': 4},
    {'1': 'Subscription', '2': 5},
    {'1': 'KeyValueStore', '2': 6},
    {'1': 'Policy', '2': 7},
    {'1': 'Secret', '2': 8},
    {'1': 'BucketListener', '2': 9},
    {'1': 'Websocket', '2': 10},
    {'1': 'Http', '2': 11},
    {'1': 'ApiSecurityDefinition', '2': 12},
    {'1': 'Queue', '2': 13},
    {'1': 'SqlDatabase', '2': 14},
  ],
};

/// Descriptor for `ResourceType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List resourceTypeDescriptor = $convert.base64Decode(
    'CgxSZXNvdXJjZVR5cGUSBwoDQXBpEAASCwoHU2VydmljZRABEgoKBkJ1Y2tldBACEgkKBVRvcG'
    'ljEAMSDAoIU2NoZWR1bGUQBBIQCgxTdWJzY3JpcHRpb24QBRIRCg1LZXlWYWx1ZVN0b3JlEAYS'
    'CgoGUG9saWN5EAcSCgoGU2VjcmV0EAgSEgoOQnVja2V0TGlzdGVuZXIQCRINCglXZWJzb2NrZX'
    'QQChIICgRIdHRwEAsSGQoVQXBpU2VjdXJpdHlEZWZpbml0aW9uEAwSCQoFUXVldWUQDRIPCgtT'
    'cWxEYXRhYmFzZRAO');

@$core.Deprecated('Use actionDescriptor instead')
const Action$json = {
  '1': 'Action',
  '2': [
    {'1': 'BucketFileList', '2': 0},
    {'1': 'BucketFileGet', '2': 1},
    {'1': 'BucketFilePut', '2': 2},
    {'1': 'BucketFileDelete', '2': 3},
    {'1': 'TopicPublish', '2': 200},
    {'1': 'KeyValueStoreRead', '2': 300},
    {'1': 'KeyValueStoreWrite', '2': 301},
    {'1': 'KeyValueStoreDelete', '2': 302},
    {'1': 'SecretPut', '2': 400},
    {'1': 'SecretAccess', '2': 401},
    {'1': 'WebsocketManage', '2': 500},
    {'1': 'QueueEnqueue', '2': 600},
    {'1': 'QueueDequeue', '2': 601},
  ],
};

/// Descriptor for `Action`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List actionDescriptor = $convert.base64Decode(
    'CgZBY3Rpb24SEgoOQnVja2V0RmlsZUxpc3QQABIRCg1CdWNrZXRGaWxlR2V0EAESEQoNQnVja2'
    'V0RmlsZVB1dBACEhQKEEJ1Y2tldEZpbGVEZWxldGUQAxIRCgxUb3BpY1B1Ymxpc2gQyAESFgoR'
    'S2V5VmFsdWVTdG9yZVJlYWQQrAISFwoSS2V5VmFsdWVTdG9yZVdyaXRlEK0CEhgKE0tleVZhbH'
    'VlU3RvcmVEZWxldGUQrgISDgoJU2VjcmV0UHV0EJADEhEKDFNlY3JldEFjY2VzcxCRAxIUCg9X'
    'ZWJzb2NrZXRNYW5hZ2UQ9AMSEQoMUXVldWVFbnF1ZXVlENgEEhEKDFF1ZXVlRGVxdWV1ZRDZBA'
    '==');

@$core.Deprecated('Use policyResourceDescriptor instead')
const PolicyResource$json = {
  '1': 'PolicyResource',
  '2': [
    {
      '1': 'principals',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.nitric.proto.resources.v1.ResourceIdentifier',
      '10': 'principals'
    },
    {
      '1': 'actions',
      '3': 2,
      '4': 3,
      '5': 14,
      '6': '.nitric.proto.resources.v1.Action',
      '10': 'actions'
    },
    {
      '1': 'resources',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.nitric.proto.resources.v1.ResourceIdentifier',
      '10': 'resources'
    },
  ],
};

/// Descriptor for `PolicyResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List policyResourceDescriptor = $convert.base64Decode(
    'Cg5Qb2xpY3lSZXNvdXJjZRJNCgpwcmluY2lwYWxzGAEgAygLMi0ubml0cmljLnByb3RvLnJlc2'
    '91cmNlcy52MS5SZXNvdXJjZUlkZW50aWZpZXJSCnByaW5jaXBhbHMSOwoHYWN0aW9ucxgCIAMo'
    'DjIhLm5pdHJpYy5wcm90by5yZXNvdXJjZXMudjEuQWN0aW9uUgdhY3Rpb25zEksKCXJlc291cm'
    'NlcxgDIAMoCzItLm5pdHJpYy5wcm90by5yZXNvdXJjZXMudjEuUmVzb3VyY2VJZGVudGlmaWVy'
    'UglyZXNvdXJjZXM=');

@$core.Deprecated('Use resourceIdentifierDescriptor instead')
const ResourceIdentifier$json = {
  '1': 'ResourceIdentifier',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.nitric.proto.resources.v1.ResourceType',
      '10': 'type'
    },
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `ResourceIdentifier`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceIdentifierDescriptor = $convert.base64Decode(
    'ChJSZXNvdXJjZUlkZW50aWZpZXISOwoEdHlwZRgBIAEoDjInLm5pdHJpYy5wcm90by5yZXNvdX'
    'JjZXMudjEuUmVzb3VyY2VUeXBlUgR0eXBlEhIKBG5hbWUYAiABKAlSBG5hbWU=');

@$core.Deprecated('Use resourceDeclareRequestDescriptor instead')
const ResourceDeclareRequest$json = {
  '1': 'ResourceDeclareRequest',
  '2': [
    {
      '1': 'id',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.resources.v1.ResourceIdentifier',
      '10': 'id'
    },
    {
      '1': 'policy',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.resources.v1.PolicyResource',
      '9': 0,
      '10': 'policy'
    },
    {
      '1': 'bucket',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.resources.v1.BucketResource',
      '9': 0,
      '10': 'bucket'
    },
    {
      '1': 'topic',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.resources.v1.TopicResource',
      '9': 0,
      '10': 'topic'
    },
    {
      '1': 'key_value_store',
      '3': 13,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.resources.v1.KeyValueStoreResource',
      '9': 0,
      '10': 'keyValueStore'
    },
    {
      '1': 'secret',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.resources.v1.SecretResource',
      '9': 0,
      '10': 'secret'
    },
    {
      '1': 'api',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.resources.v1.ApiResource',
      '9': 0,
      '10': 'api'
    },
    {
      '1': 'api_security_definition',
      '3': 16,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.resources.v1.ApiSecurityDefinitionResource',
      '9': 0,
      '10': 'apiSecurityDefinition'
    },
    {
      '1': 'queue',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.resources.v1.QueueResource',
      '9': 0,
      '10': 'queue'
    },
    {
      '1': 'sql_database',
      '3': 18,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.resources.v1.SqlDatabaseResource',
      '9': 0,
      '10': 'sqlDatabase'
    },
  ],
  '8': [
    {'1': 'config'},
  ],
};

/// Descriptor for `ResourceDeclareRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceDeclareRequestDescriptor = $convert.base64Decode(
    'ChZSZXNvdXJjZURlY2xhcmVSZXF1ZXN0Ej0KAmlkGAEgASgLMi0ubml0cmljLnByb3RvLnJlc2'
    '91cmNlcy52MS5SZXNvdXJjZUlkZW50aWZpZXJSAmlkEkMKBnBvbGljeRgKIAEoCzIpLm5pdHJp'
    'Yy5wcm90by5yZXNvdXJjZXMudjEuUG9saWN5UmVzb3VyY2VIAFIGcG9saWN5EkMKBmJ1Y2tldB'
    'gLIAEoCzIpLm5pdHJpYy5wcm90by5yZXNvdXJjZXMudjEuQnVja2V0UmVzb3VyY2VIAFIGYnVj'
    'a2V0EkAKBXRvcGljGAwgASgLMigubml0cmljLnByb3RvLnJlc291cmNlcy52MS5Ub3BpY1Jlc2'
    '91cmNlSABSBXRvcGljEloKD2tleV92YWx1ZV9zdG9yZRgNIAEoCzIwLm5pdHJpYy5wcm90by5y'
    'ZXNvdXJjZXMudjEuS2V5VmFsdWVTdG9yZVJlc291cmNlSABSDWtleVZhbHVlU3RvcmUSQwoGc2'
    'VjcmV0GA4gASgLMikubml0cmljLnByb3RvLnJlc291cmNlcy52MS5TZWNyZXRSZXNvdXJjZUgA'
    'UgZzZWNyZXQSOgoDYXBpGA8gASgLMiYubml0cmljLnByb3RvLnJlc291cmNlcy52MS5BcGlSZX'
    'NvdXJjZUgAUgNhcGkScgoXYXBpX3NlY3VyaXR5X2RlZmluaXRpb24YECABKAsyOC5uaXRyaWMu'
    'cHJvdG8ucmVzb3VyY2VzLnYxLkFwaVNlY3VyaXR5RGVmaW5pdGlvblJlc291cmNlSABSFWFwaV'
    'NlY3VyaXR5RGVmaW5pdGlvbhJACgVxdWV1ZRgRIAEoCzIoLm5pdHJpYy5wcm90by5yZXNvdXJj'
    'ZXMudjEuUXVldWVSZXNvdXJjZUgAUgVxdWV1ZRJTCgxzcWxfZGF0YWJhc2UYEiABKAsyLi5uaX'
    'RyaWMucHJvdG8ucmVzb3VyY2VzLnYxLlNxbERhdGFiYXNlUmVzb3VyY2VIAFILc3FsRGF0YWJh'
    'c2VCCAoGY29uZmln');

@$core.Deprecated('Use bucketResourceDescriptor instead')
const BucketResource$json = {
  '1': 'BucketResource',
};

/// Descriptor for `BucketResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bucketResourceDescriptor =
    $convert.base64Decode('Cg5CdWNrZXRSZXNvdXJjZQ==');

@$core.Deprecated('Use topicResourceDescriptor instead')
const TopicResource$json = {
  '1': 'TopicResource',
};

/// Descriptor for `TopicResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicResourceDescriptor =
    $convert.base64Decode('Cg1Ub3BpY1Jlc291cmNl');

@$core.Deprecated('Use queueResourceDescriptor instead')
const QueueResource$json = {
  '1': 'QueueResource',
};

/// Descriptor for `QueueResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queueResourceDescriptor =
    $convert.base64Decode('Cg1RdWV1ZVJlc291cmNl');

@$core.Deprecated('Use keyValueStoreResourceDescriptor instead')
const KeyValueStoreResource$json = {
  '1': 'KeyValueStoreResource',
};

/// Descriptor for `KeyValueStoreResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyValueStoreResourceDescriptor =
    $convert.base64Decode('ChVLZXlWYWx1ZVN0b3JlUmVzb3VyY2U=');

@$core.Deprecated('Use secretResourceDescriptor instead')
const SecretResource$json = {
  '1': 'SecretResource',
};

/// Descriptor for `SecretResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List secretResourceDescriptor =
    $convert.base64Decode('Cg5TZWNyZXRSZXNvdXJjZQ==');

@$core.Deprecated('Use sqlDatabaseMigrationsDescriptor instead')
const SqlDatabaseMigrations$json = {
  '1': 'SqlDatabaseMigrations',
  '2': [
    {
      '1': 'migrations_path',
      '3': 1,
      '4': 1,
      '5': 9,
      '9': 0,
      '10': 'migrationsPath'
    },
  ],
  '8': [
    {'1': 'migrations'},
  ],
};

/// Descriptor for `SqlDatabaseMigrations`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sqlDatabaseMigrationsDescriptor = $convert.base64Decode(
    'ChVTcWxEYXRhYmFzZU1pZ3JhdGlvbnMSKQoPbWlncmF0aW9uc19wYXRoGAEgASgJSABSDm1pZ3'
    'JhdGlvbnNQYXRoQgwKCm1pZ3JhdGlvbnM=');

@$core.Deprecated('Use sqlDatabaseResourceDescriptor instead')
const SqlDatabaseResource$json = {
  '1': 'SqlDatabaseResource',
  '2': [
    {
      '1': 'migrations',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.resources.v1.SqlDatabaseMigrations',
      '10': 'migrations'
    },
  ],
};

/// Descriptor for `SqlDatabaseResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sqlDatabaseResourceDescriptor = $convert.base64Decode(
    'ChNTcWxEYXRhYmFzZVJlc291cmNlElAKCm1pZ3JhdGlvbnMYASABKAsyMC5uaXRyaWMucHJvdG'
    '8ucmVzb3VyY2VzLnYxLlNxbERhdGFiYXNlTWlncmF0aW9uc1IKbWlncmF0aW9ucw==');

@$core.Deprecated('Use apiOpenIdConnectionDefinitionDescriptor instead')
const ApiOpenIdConnectionDefinition$json = {
  '1': 'ApiOpenIdConnectionDefinition',
  '2': [
    {'1': 'issuer', '3': 1, '4': 1, '5': 9, '10': 'issuer'},
    {'1': 'audiences', '3': 2, '4': 3, '5': 9, '10': 'audiences'},
  ],
};

/// Descriptor for `ApiOpenIdConnectionDefinition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiOpenIdConnectionDefinitionDescriptor =
    $convert.base64Decode(
        'Ch1BcGlPcGVuSWRDb25uZWN0aW9uRGVmaW5pdGlvbhIWCgZpc3N1ZXIYASABKAlSBmlzc3Vlch'
        'IcCglhdWRpZW5jZXMYAiADKAlSCWF1ZGllbmNlcw==');

@$core.Deprecated('Use apiSecurityDefinitionResourceDescriptor instead')
const ApiSecurityDefinitionResource$json = {
  '1': 'ApiSecurityDefinitionResource',
  '2': [
    {'1': 'api_name', '3': 1, '4': 1, '5': 9, '10': 'apiName'},
    {
      '1': 'oidc',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.resources.v1.ApiOpenIdConnectionDefinition',
      '9': 0,
      '10': 'oidc'
    },
  ],
  '8': [
    {'1': 'definition'},
  ],
};

/// Descriptor for `ApiSecurityDefinitionResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiSecurityDefinitionResourceDescriptor =
    $convert.base64Decode(
        'Ch1BcGlTZWN1cml0eURlZmluaXRpb25SZXNvdXJjZRIZCghhcGlfbmFtZRgBIAEoCVIHYXBpTm'
        'FtZRJOCgRvaWRjGAIgASgLMjgubml0cmljLnByb3RvLnJlc291cmNlcy52MS5BcGlPcGVuSWRD'
        'b25uZWN0aW9uRGVmaW5pdGlvbkgAUgRvaWRjQgwKCmRlZmluaXRpb24=');

@$core.Deprecated('Use apiScopesDescriptor instead')
const ApiScopes$json = {
  '1': 'ApiScopes',
  '2': [
    {'1': 'scopes', '3': 1, '4': 3, '5': 9, '10': 'scopes'},
  ],
};

/// Descriptor for `ApiScopes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiScopesDescriptor =
    $convert.base64Decode('CglBcGlTY29wZXMSFgoGc2NvcGVzGAEgAygJUgZzY29wZXM=');

@$core.Deprecated('Use apiResourceDescriptor instead')
const ApiResource$json = {
  '1': 'ApiResource',
  '2': [
    {
      '1': 'security',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.nitric.proto.resources.v1.ApiResource.SecurityEntry',
      '10': 'security'
    },
  ],
  '3': [ApiResource_SecurityEntry$json],
};

@$core.Deprecated('Use apiResourceDescriptor instead')
const ApiResource_SecurityEntry$json = {
  '1': 'SecurityEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.resources.v1.ApiScopes',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `ApiResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiResourceDescriptor = $convert.base64Decode(
    'CgtBcGlSZXNvdXJjZRJQCghzZWN1cml0eRgBIAMoCzI0Lm5pdHJpYy5wcm90by5yZXNvdXJjZX'
    'MudjEuQXBpUmVzb3VyY2UuU2VjdXJpdHlFbnRyeVIIc2VjdXJpdHkaYQoNU2VjdXJpdHlFbnRy'
    'eRIQCgNrZXkYASABKAlSA2tleRI6CgV2YWx1ZRgCIAEoCzIkLm5pdHJpYy5wcm90by5yZXNvdX'
    'JjZXMudjEuQXBpU2NvcGVzUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use resourceDeclareResponseDescriptor instead')
const ResourceDeclareResponse$json = {
  '1': 'ResourceDeclareResponse',
};

/// Descriptor for `ResourceDeclareResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceDeclareResponseDescriptor =
    $convert.base64Decode('ChdSZXNvdXJjZURlY2xhcmVSZXNwb25zZQ==');
