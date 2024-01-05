//
//  Generated code. Do not modify.
//  source: contracts/proto/storage/v1/storage.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use storageWriteRequestDescriptor instead')
const StorageWriteRequest$json = {
  '1': 'StorageWriteRequest',
  '2': [
    {'1': 'bucket_name', '3': 1, '4': 1, '5': 9, '10': 'bucketName'},
    {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    {'1': 'body', '3': 3, '4': 1, '5': 12, '10': 'body'},
  ],
};

/// Descriptor for `StorageWriteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageWriteRequestDescriptor = $convert.base64Decode(
    'ChNTdG9yYWdlV3JpdGVSZXF1ZXN0Eh8KC2J1Y2tldF9uYW1lGAEgASgJUgpidWNrZXROYW1lEh'
    'AKA2tleRgCIAEoCVIDa2V5EhIKBGJvZHkYAyABKAxSBGJvZHk=');

@$core.Deprecated('Use storageWriteResponseDescriptor instead')
const StorageWriteResponse$json = {
  '1': 'StorageWriteResponse',
};

/// Descriptor for `StorageWriteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageWriteResponseDescriptor = $convert.base64Decode(
    'ChRTdG9yYWdlV3JpdGVSZXNwb25zZQ==');

@$core.Deprecated('Use storageReadRequestDescriptor instead')
const StorageReadRequest$json = {
  '1': 'StorageReadRequest',
  '2': [
    {'1': 'bucket_name', '3': 1, '4': 1, '5': 9, '10': 'bucketName'},
    {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `StorageReadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageReadRequestDescriptor = $convert.base64Decode(
    'ChJTdG9yYWdlUmVhZFJlcXVlc3QSHwoLYnVja2V0X25hbWUYASABKAlSCmJ1Y2tldE5hbWUSEA'
    'oDa2V5GAIgASgJUgNrZXk=');

@$core.Deprecated('Use storageReadResponseDescriptor instead')
const StorageReadResponse$json = {
  '1': 'StorageReadResponse',
  '2': [
    {'1': 'body', '3': 1, '4': 1, '5': 12, '10': 'body'},
  ],
};

/// Descriptor for `StorageReadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageReadResponseDescriptor = $convert.base64Decode(
    'ChNTdG9yYWdlUmVhZFJlc3BvbnNlEhIKBGJvZHkYASABKAxSBGJvZHk=');

@$core.Deprecated('Use storageDeleteRequestDescriptor instead')
const StorageDeleteRequest$json = {
  '1': 'StorageDeleteRequest',
  '2': [
    {'1': 'bucket_name', '3': 1, '4': 1, '5': 9, '10': 'bucketName'},
    {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `StorageDeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageDeleteRequestDescriptor = $convert.base64Decode(
    'ChRTdG9yYWdlRGVsZXRlUmVxdWVzdBIfCgtidWNrZXRfbmFtZRgBIAEoCVIKYnVja2V0TmFtZR'
    'IQCgNrZXkYAiABKAlSA2tleQ==');

@$core.Deprecated('Use storageDeleteResponseDescriptor instead')
const StorageDeleteResponse$json = {
  '1': 'StorageDeleteResponse',
};

/// Descriptor for `StorageDeleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageDeleteResponseDescriptor = $convert.base64Decode(
    'ChVTdG9yYWdlRGVsZXRlUmVzcG9uc2U=');

@$core.Deprecated('Use storagePreSignUrlRequestDescriptor instead')
const StoragePreSignUrlRequest$json = {
  '1': 'StoragePreSignUrlRequest',
  '2': [
    {'1': 'bucket_name', '3': 1, '4': 1, '5': 9, '10': 'bucketName'},
    {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    {'1': 'operation', '3': 3, '4': 1, '5': 14, '6': '.nitric.storage.v1.StoragePreSignUrlRequest.Operation', '10': 'operation'},
    {'1': 'expiry', '3': 4, '4': 1, '5': 13, '10': 'expiry'},
  ],
  '4': [StoragePreSignUrlRequest_Operation$json],
};

@$core.Deprecated('Use storagePreSignUrlRequestDescriptor instead')
const StoragePreSignUrlRequest_Operation$json = {
  '1': 'Operation',
  '2': [
    {'1': 'READ', '2': 0},
    {'1': 'WRITE', '2': 1},
  ],
};

/// Descriptor for `StoragePreSignUrlRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storagePreSignUrlRequestDescriptor = $convert.base64Decode(
    'ChhTdG9yYWdlUHJlU2lnblVybFJlcXVlc3QSHwoLYnVja2V0X25hbWUYASABKAlSCmJ1Y2tldE'
    '5hbWUSEAoDa2V5GAIgASgJUgNrZXkSUwoJb3BlcmF0aW9uGAMgASgOMjUubml0cmljLnN0b3Jh'
    'Z2UudjEuU3RvcmFnZVByZVNpZ25VcmxSZXF1ZXN0Lk9wZXJhdGlvblIJb3BlcmF0aW9uEhYKBm'
    'V4cGlyeRgEIAEoDVIGZXhwaXJ5IiAKCU9wZXJhdGlvbhIICgRSRUFEEAASCQoFV1JJVEUQAQ==');

@$core.Deprecated('Use storagePreSignUrlResponseDescriptor instead')
const StoragePreSignUrlResponse$json = {
  '1': 'StoragePreSignUrlResponse',
  '2': [
    {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `StoragePreSignUrlResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storagePreSignUrlResponseDescriptor = $convert.base64Decode(
    'ChlTdG9yYWdlUHJlU2lnblVybFJlc3BvbnNlEhAKA3VybBgBIAEoCVIDdXJs');

@$core.Deprecated('Use storageListFilesRequestDescriptor instead')
const StorageListFilesRequest$json = {
  '1': 'StorageListFilesRequest',
  '2': [
    {'1': 'bucket_name', '3': 1, '4': 1, '5': 9, '10': 'bucketName'},
    {'1': 'prefix', '3': 2, '4': 1, '5': 9, '10': 'prefix'},
  ],
};

/// Descriptor for `StorageListFilesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageListFilesRequestDescriptor = $convert.base64Decode(
    'ChdTdG9yYWdlTGlzdEZpbGVzUmVxdWVzdBIfCgtidWNrZXRfbmFtZRgBIAEoCVIKYnVja2V0Tm'
    'FtZRIWCgZwcmVmaXgYAiABKAlSBnByZWZpeA==');

@$core.Deprecated('Use fileDescriptor instead')
const File$json = {
  '1': 'File',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `File`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileDescriptor = $convert.base64Decode(
    'CgRGaWxlEhAKA2tleRgBIAEoCVIDa2V5');

@$core.Deprecated('Use storageListFilesResponseDescriptor instead')
const StorageListFilesResponse$json = {
  '1': 'StorageListFilesResponse',
  '2': [
    {'1': 'files', '3': 1, '4': 3, '5': 11, '6': '.nitric.storage.v1.File', '10': 'files'},
  ],
};

/// Descriptor for `StorageListFilesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageListFilesResponseDescriptor = $convert.base64Decode(
    'ChhTdG9yYWdlTGlzdEZpbGVzUmVzcG9uc2USLQoFZmlsZXMYASADKAsyFy5uaXRyaWMuc3Rvcm'
    'FnZS52MS5GaWxlUgVmaWxlcw==');

@$core.Deprecated('Use storageExistsRequestDescriptor instead')
const StorageExistsRequest$json = {
  '1': 'StorageExistsRequest',
  '2': [
    {'1': 'bucket', '3': 1, '4': 1, '5': 9, '10': 'bucket'},
    {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `StorageExistsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageExistsRequestDescriptor = $convert.base64Decode(
    'ChRTdG9yYWdlRXhpc3RzUmVxdWVzdBIWCgZidWNrZXQYASABKAlSBmJ1Y2tldBIQCgNrZXkYAi'
    'ABKAlSA2tleQ==');

@$core.Deprecated('Use storageExistsResponseDescriptor instead')
const StorageExistsResponse$json = {
  '1': 'StorageExistsResponse',
  '2': [
    {'1': 'exists', '3': 1, '4': 1, '5': 8, '10': 'exists'},
  ],
};

/// Descriptor for `StorageExistsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageExistsResponseDescriptor = $convert.base64Decode(
    'ChVTdG9yYWdlRXhpc3RzUmVzcG9uc2USFgoGZXhpc3RzGAEgASgIUgZleGlzdHM=');

