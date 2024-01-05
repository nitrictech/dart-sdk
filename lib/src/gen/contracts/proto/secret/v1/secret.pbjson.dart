//
//  Generated code. Do not modify.
//  source: contracts/proto/secret/v1/secret.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use secretPutRequestDescriptor instead')
const SecretPutRequest$json = {
  '1': 'SecretPutRequest',
  '2': [
    {'1': 'secret', '3': 1, '4': 1, '5': 11, '6': '.nitric.secret.v1.Secret', '10': 'secret'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
};

/// Descriptor for `SecretPutRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List secretPutRequestDescriptor = $convert.base64Decode(
    'ChBTZWNyZXRQdXRSZXF1ZXN0EjAKBnNlY3JldBgBIAEoCzIYLm5pdHJpYy5zZWNyZXQudjEuU2'
    'VjcmV0UgZzZWNyZXQSFAoFdmFsdWUYAiABKAxSBXZhbHVl');

@$core.Deprecated('Use secretPutResponseDescriptor instead')
const SecretPutResponse$json = {
  '1': 'SecretPutResponse',
  '2': [
    {'1': 'secret_version', '3': 1, '4': 1, '5': 11, '6': '.nitric.secret.v1.SecretVersion', '10': 'secretVersion'},
  ],
};

/// Descriptor for `SecretPutResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List secretPutResponseDescriptor = $convert.base64Decode(
    'ChFTZWNyZXRQdXRSZXNwb25zZRJGCg5zZWNyZXRfdmVyc2lvbhgBIAEoCzIfLm5pdHJpYy5zZW'
    'NyZXQudjEuU2VjcmV0VmVyc2lvblINc2VjcmV0VmVyc2lvbg==');

@$core.Deprecated('Use secretAccessRequestDescriptor instead')
const SecretAccessRequest$json = {
  '1': 'SecretAccessRequest',
  '2': [
    {'1': 'secret_version', '3': 1, '4': 1, '5': 11, '6': '.nitric.secret.v1.SecretVersion', '10': 'secretVersion'},
  ],
};

/// Descriptor for `SecretAccessRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List secretAccessRequestDescriptor = $convert.base64Decode(
    'ChNTZWNyZXRBY2Nlc3NSZXF1ZXN0EkYKDnNlY3JldF92ZXJzaW9uGAEgASgLMh8ubml0cmljLn'
    'NlY3JldC52MS5TZWNyZXRWZXJzaW9uUg1zZWNyZXRWZXJzaW9u');

@$core.Deprecated('Use secretAccessResponseDescriptor instead')
const SecretAccessResponse$json = {
  '1': 'SecretAccessResponse',
  '2': [
    {'1': 'secret_version', '3': 1, '4': 1, '5': 11, '6': '.nitric.secret.v1.SecretVersion', '10': 'secretVersion'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
};

/// Descriptor for `SecretAccessResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List secretAccessResponseDescriptor = $convert.base64Decode(
    'ChRTZWNyZXRBY2Nlc3NSZXNwb25zZRJGCg5zZWNyZXRfdmVyc2lvbhgBIAEoCzIfLm5pdHJpYy'
    '5zZWNyZXQudjEuU2VjcmV0VmVyc2lvblINc2VjcmV0VmVyc2lvbhIUCgV2YWx1ZRgCIAEoDFIF'
    'dmFsdWU=');

@$core.Deprecated('Use secretDescriptor instead')
const Secret$json = {
  '1': 'Secret',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `Secret`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List secretDescriptor = $convert.base64Decode(
    'CgZTZWNyZXQSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use secretVersionDescriptor instead')
const SecretVersion$json = {
  '1': 'SecretVersion',
  '2': [
    {'1': 'secret', '3': 1, '4': 1, '5': 11, '6': '.nitric.secret.v1.Secret', '10': 'secret'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `SecretVersion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List secretVersionDescriptor = $convert.base64Decode(
    'Cg1TZWNyZXRWZXJzaW9uEjAKBnNlY3JldBgBIAEoCzIYLm5pdHJpYy5zZWNyZXQudjEuU2Vjcm'
    'V0UgZzZWNyZXQSGAoHdmVyc2lvbhgCIAEoCVIHdmVyc2lvbg==');

