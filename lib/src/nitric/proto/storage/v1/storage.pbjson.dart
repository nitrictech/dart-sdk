//
//  Generated code. Do not modify.
//  source: nitric/proto/storage/v1/storage.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use blobEventTypeDescriptor instead')
const BlobEventType$json = {
  '1': 'BlobEventType',
  '2': [
    {'1': 'Created', '2': 0},
    {'1': 'Deleted', '2': 1},
  ],
};

/// Descriptor for `BlobEventType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List blobEventTypeDescriptor = $convert.base64Decode(
    'Cg1CbG9iRXZlbnRUeXBlEgsKB0NyZWF0ZWQQABILCgdEZWxldGVkEAE=');

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage$json = {
  '1': 'ClientMessage',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'registration_request', '3': 2, '4': 1, '5': 11, '6': '.nitric.proto.storage.v1.RegistrationRequest', '9': 0, '10': 'registrationRequest'},
    {'1': 'blob_event_response', '3': 3, '4': 1, '5': 11, '6': '.nitric.proto.storage.v1.BlobEventResponse', '9': 0, '10': 'blobEventResponse'},
  ],
  '8': [
    {'1': 'content'},
  ],
};

/// Descriptor for `ClientMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientMessageDescriptor = $convert.base64Decode(
    'Cg1DbGllbnRNZXNzYWdlEg4KAmlkGAEgASgJUgJpZBJhChRyZWdpc3RyYXRpb25fcmVxdWVzdB'
    'gCIAEoCzIsLm5pdHJpYy5wcm90by5zdG9yYWdlLnYxLlJlZ2lzdHJhdGlvblJlcXVlc3RIAFIT'
    'cmVnaXN0cmF0aW9uUmVxdWVzdBJcChNibG9iX2V2ZW50X3Jlc3BvbnNlGAMgASgLMioubml0cm'
    'ljLnByb3RvLnN0b3JhZ2UudjEuQmxvYkV2ZW50UmVzcG9uc2VIAFIRYmxvYkV2ZW50UmVzcG9u'
    'c2VCCQoHY29udGVudA==');

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage$json = {
  '1': 'ServerMessage',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'registration_response', '3': 2, '4': 1, '5': 11, '6': '.nitric.proto.storage.v1.RegistrationResponse', '9': 0, '10': 'registrationResponse'},
    {'1': 'blob_event_request', '3': 3, '4': 1, '5': 11, '6': '.nitric.proto.storage.v1.BlobEventRequest', '9': 0, '10': 'blobEventRequest'},
  ],
  '8': [
    {'1': 'content'},
  ],
};

/// Descriptor for `ServerMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverMessageDescriptor = $convert.base64Decode(
    'Cg1TZXJ2ZXJNZXNzYWdlEg4KAmlkGAEgASgJUgJpZBJkChVyZWdpc3RyYXRpb25fcmVzcG9uc2'
    'UYAiABKAsyLS5uaXRyaWMucHJvdG8uc3RvcmFnZS52MS5SZWdpc3RyYXRpb25SZXNwb25zZUgA'
    'UhRyZWdpc3RyYXRpb25SZXNwb25zZRJZChJibG9iX2V2ZW50X3JlcXVlc3QYAyABKAsyKS5uaX'
    'RyaWMucHJvdG8uc3RvcmFnZS52MS5CbG9iRXZlbnRSZXF1ZXN0SABSEGJsb2JFdmVudFJlcXVl'
    'c3RCCQoHY29udGVudA==');

@$core.Deprecated('Use blobEventRequestDescriptor instead')
const BlobEventRequest$json = {
  '1': 'BlobEventRequest',
  '2': [
    {'1': 'bucket_name', '3': 1, '4': 1, '5': 9, '10': 'bucketName'},
    {'1': 'blob_event', '3': 10, '4': 1, '5': 11, '6': '.nitric.proto.storage.v1.BlobEvent', '9': 0, '10': 'blobEvent'},
  ],
  '8': [
    {'1': 'event'},
  ],
};

/// Descriptor for `BlobEventRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blobEventRequestDescriptor = $convert.base64Decode(
    'ChBCbG9iRXZlbnRSZXF1ZXN0Eh8KC2J1Y2tldF9uYW1lGAEgASgJUgpidWNrZXROYW1lEkMKCm'
    'Jsb2JfZXZlbnQYCiABKAsyIi5uaXRyaWMucHJvdG8uc3RvcmFnZS52MS5CbG9iRXZlbnRIAFIJ'
    'YmxvYkV2ZW50QgcKBWV2ZW50');

@$core.Deprecated('Use blobEventDescriptor instead')
const BlobEvent$json = {
  '1': 'BlobEvent',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.nitric.proto.storage.v1.BlobEventType', '10': 'type'},
  ],
};

/// Descriptor for `BlobEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blobEventDescriptor = $convert.base64Decode(
    'CglCbG9iRXZlbnQSEAoDa2V5GAEgASgJUgNrZXkSOgoEdHlwZRgCIAEoDjImLm5pdHJpYy5wcm'
    '90by5zdG9yYWdlLnYxLkJsb2JFdmVudFR5cGVSBHR5cGU=');

@$core.Deprecated('Use blobEventResponseDescriptor instead')
const BlobEventResponse$json = {
  '1': 'BlobEventResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `BlobEventResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blobEventResponseDescriptor = $convert.base64Decode(
    'ChFCbG9iRXZlbnRSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

@$core.Deprecated('Use registrationRequestDescriptor instead')
const RegistrationRequest$json = {
  '1': 'RegistrationRequest',
  '2': [
    {'1': 'bucket_name', '3': 1, '4': 1, '5': 9, '10': 'bucketName'},
    {'1': 'blob_event_type', '3': 2, '4': 1, '5': 14, '6': '.nitric.proto.storage.v1.BlobEventType', '10': 'blobEventType'},
    {'1': 'key_prefix_filter', '3': 3, '4': 1, '5': 9, '10': 'keyPrefixFilter'},
  ],
};

/// Descriptor for `RegistrationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registrationRequestDescriptor = $convert.base64Decode(
    'ChNSZWdpc3RyYXRpb25SZXF1ZXN0Eh8KC2J1Y2tldF9uYW1lGAEgASgJUgpidWNrZXROYW1lEk'
    '4KD2Jsb2JfZXZlbnRfdHlwZRgCIAEoDjImLm5pdHJpYy5wcm90by5zdG9yYWdlLnYxLkJsb2JF'
    'dmVudFR5cGVSDWJsb2JFdmVudFR5cGUSKgoRa2V5X3ByZWZpeF9maWx0ZXIYAyABKAlSD2tleV'
    'ByZWZpeEZpbHRlcg==');

@$core.Deprecated('Use registrationResponseDescriptor instead')
const RegistrationResponse$json = {
  '1': 'RegistrationResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `RegistrationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registrationResponseDescriptor = $convert.base64Decode(
    'ChRSZWdpc3RyYXRpb25SZXNwb25zZRIOCgJpZBgBIAEoCVICaWQ=');

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
    {'1': 'operation', '3': 3, '4': 1, '5': 14, '6': '.nitric.proto.storage.v1.StoragePreSignUrlRequest.Operation', '10': 'operation'},
    {'1': 'expiry', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '10': 'expiry'},
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
    '5hbWUSEAoDa2V5GAIgASgJUgNrZXkSWQoJb3BlcmF0aW9uGAMgASgOMjsubml0cmljLnByb3Rv'
    'LnN0b3JhZ2UudjEuU3RvcmFnZVByZVNpZ25VcmxSZXF1ZXN0Lk9wZXJhdGlvblIJb3BlcmF0aW'
    '9uEjEKBmV4cGlyeRgEIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvblIGZXhwaXJ5IiAK'
    'CU9wZXJhdGlvbhIICgRSRUFEEAASCQoFV1JJVEUQAQ==');

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

@$core.Deprecated('Use storageListBlobsRequestDescriptor instead')
const StorageListBlobsRequest$json = {
  '1': 'StorageListBlobsRequest',
  '2': [
    {'1': 'bucket_name', '3': 1, '4': 1, '5': 9, '10': 'bucketName'},
    {'1': 'prefix', '3': 2, '4': 1, '5': 9, '10': 'prefix'},
  ],
};

/// Descriptor for `StorageListBlobsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageListBlobsRequestDescriptor = $convert.base64Decode(
    'ChdTdG9yYWdlTGlzdEJsb2JzUmVxdWVzdBIfCgtidWNrZXRfbmFtZRgBIAEoCVIKYnVja2V0Tm'
    'FtZRIWCgZwcmVmaXgYAiABKAlSBnByZWZpeA==');

@$core.Deprecated('Use blobDescriptor instead')
const Blob$json = {
  '1': 'Blob',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `Blob`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blobDescriptor = $convert.base64Decode(
    'CgRCbG9iEhAKA2tleRgBIAEoCVIDa2V5');

@$core.Deprecated('Use storageListBlobsResponseDescriptor instead')
const StorageListBlobsResponse$json = {
  '1': 'StorageListBlobsResponse',
  '2': [
    {'1': 'blobs', '3': 1, '4': 3, '5': 11, '6': '.nitric.proto.storage.v1.Blob', '10': 'blobs'},
  ],
};

/// Descriptor for `StorageListBlobsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageListBlobsResponseDescriptor = $convert.base64Decode(
    'ChhTdG9yYWdlTGlzdEJsb2JzUmVzcG9uc2USMwoFYmxvYnMYASADKAsyHS5uaXRyaWMucHJvdG'
    '8uc3RvcmFnZS52MS5CbG9iUgVibG9icw==');

@$core.Deprecated('Use storageExistsRequestDescriptor instead')
const StorageExistsRequest$json = {
  '1': 'StorageExistsRequest',
  '2': [
    {'1': 'bucket_name', '3': 1, '4': 1, '5': 9, '10': 'bucketName'},
    {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `StorageExistsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageExistsRequestDescriptor = $convert.base64Decode(
    'ChRTdG9yYWdlRXhpc3RzUmVxdWVzdBIfCgtidWNrZXRfbmFtZRgBIAEoCVIKYnVja2V0TmFtZR'
    'IQCgNrZXkYAiABKAlSA2tleQ==');

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

