//
//  Generated code. Do not modify.
//  source: contracts/proto/queue/v1/queue.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use queueSendRequestDescriptor instead')
const QueueSendRequest$json = {
  '1': 'QueueSendRequest',
  '2': [
    {'1': 'queue', '3': 1, '4': 1, '5': 9, '10': 'queue'},
    {'1': 'task', '3': 2, '4': 1, '5': 11, '6': '.nitric.queue.v1.NitricTask', '10': 'task'},
  ],
};

/// Descriptor for `QueueSendRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queueSendRequestDescriptor = $convert.base64Decode(
    'ChBRdWV1ZVNlbmRSZXF1ZXN0EhQKBXF1ZXVlGAEgASgJUgVxdWV1ZRIvCgR0YXNrGAIgASgLMh'
    'subml0cmljLnF1ZXVlLnYxLk5pdHJpY1Rhc2tSBHRhc2s=');

@$core.Deprecated('Use queueSendResponseDescriptor instead')
const QueueSendResponse$json = {
  '1': 'QueueSendResponse',
};

/// Descriptor for `QueueSendResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queueSendResponseDescriptor = $convert.base64Decode(
    'ChFRdWV1ZVNlbmRSZXNwb25zZQ==');

@$core.Deprecated('Use queueSendBatchRequestDescriptor instead')
const QueueSendBatchRequest$json = {
  '1': 'QueueSendBatchRequest',
  '2': [
    {'1': 'queue', '3': 1, '4': 1, '5': 9, '10': 'queue'},
    {'1': 'tasks', '3': 2, '4': 3, '5': 11, '6': '.nitric.queue.v1.NitricTask', '10': 'tasks'},
  ],
};

/// Descriptor for `QueueSendBatchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queueSendBatchRequestDescriptor = $convert.base64Decode(
    'ChVRdWV1ZVNlbmRCYXRjaFJlcXVlc3QSFAoFcXVldWUYASABKAlSBXF1ZXVlEjEKBXRhc2tzGA'
    'IgAygLMhsubml0cmljLnF1ZXVlLnYxLk5pdHJpY1Rhc2tSBXRhc2tz');

@$core.Deprecated('Use queueSendBatchResponseDescriptor instead')
const QueueSendBatchResponse$json = {
  '1': 'QueueSendBatchResponse',
  '2': [
    {'1': 'failedTasks', '3': 1, '4': 3, '5': 11, '6': '.nitric.queue.v1.FailedTask', '10': 'failedTasks'},
  ],
};

/// Descriptor for `QueueSendBatchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queueSendBatchResponseDescriptor = $convert.base64Decode(
    'ChZRdWV1ZVNlbmRCYXRjaFJlc3BvbnNlEj0KC2ZhaWxlZFRhc2tzGAEgAygLMhsubml0cmljLn'
    'F1ZXVlLnYxLkZhaWxlZFRhc2tSC2ZhaWxlZFRhc2tz');

@$core.Deprecated('Use queueReceiveRequestDescriptor instead')
const QueueReceiveRequest$json = {
  '1': 'QueueReceiveRequest',
  '2': [
    {'1': 'queue', '3': 1, '4': 1, '5': 9, '10': 'queue'},
    {'1': 'depth', '3': 2, '4': 1, '5': 5, '10': 'depth'},
  ],
};

/// Descriptor for `QueueReceiveRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queueReceiveRequestDescriptor = $convert.base64Decode(
    'ChNRdWV1ZVJlY2VpdmVSZXF1ZXN0EhQKBXF1ZXVlGAEgASgJUgVxdWV1ZRIUCgVkZXB0aBgCIA'
    'EoBVIFZGVwdGg=');

@$core.Deprecated('Use queueReceiveResponseDescriptor instead')
const QueueReceiveResponse$json = {
  '1': 'QueueReceiveResponse',
  '2': [
    {'1': 'tasks', '3': 1, '4': 3, '5': 11, '6': '.nitric.queue.v1.NitricTask', '10': 'tasks'},
  ],
};

/// Descriptor for `QueueReceiveResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queueReceiveResponseDescriptor = $convert.base64Decode(
    'ChRRdWV1ZVJlY2VpdmVSZXNwb25zZRIxCgV0YXNrcxgBIAMoCzIbLm5pdHJpYy5xdWV1ZS52MS'
    '5OaXRyaWNUYXNrUgV0YXNrcw==');

@$core.Deprecated('Use queueCompleteRequestDescriptor instead')
const QueueCompleteRequest$json = {
  '1': 'QueueCompleteRequest',
  '2': [
    {'1': 'queue', '3': 1, '4': 1, '5': 9, '10': 'queue'},
    {'1': 'lease_id', '3': 2, '4': 1, '5': 9, '10': 'leaseId'},
  ],
};

/// Descriptor for `QueueCompleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queueCompleteRequestDescriptor = $convert.base64Decode(
    'ChRRdWV1ZUNvbXBsZXRlUmVxdWVzdBIUCgVxdWV1ZRgBIAEoCVIFcXVldWUSGQoIbGVhc2VfaW'
    'QYAiABKAlSB2xlYXNlSWQ=');

@$core.Deprecated('Use queueCompleteResponseDescriptor instead')
const QueueCompleteResponse$json = {
  '1': 'QueueCompleteResponse',
};

/// Descriptor for `QueueCompleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queueCompleteResponseDescriptor = $convert.base64Decode(
    'ChVRdWV1ZUNvbXBsZXRlUmVzcG9uc2U=');

@$core.Deprecated('Use failedTaskDescriptor instead')
const FailedTask$json = {
  '1': 'FailedTask',
  '2': [
    {'1': 'task', '3': 1, '4': 1, '5': 11, '6': '.nitric.queue.v1.NitricTask', '10': 'task'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `FailedTask`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List failedTaskDescriptor = $convert.base64Decode(
    'CgpGYWlsZWRUYXNrEi8KBHRhc2sYASABKAsyGy5uaXRyaWMucXVldWUudjEuTml0cmljVGFza1'
    'IEdGFzaxIYCgdtZXNzYWdlGAIgASgJUgdtZXNzYWdl');

@$core.Deprecated('Use nitricTaskDescriptor instead')
const NitricTask$json = {
  '1': 'NitricTask',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'lease_id', '3': 2, '4': 1, '5': 9, '10': 'leaseId'},
    {'1': 'payload_type', '3': 3, '4': 1, '5': 9, '10': 'payloadType'},
    {'1': 'payload', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'payload'},
  ],
};

/// Descriptor for `NitricTask`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nitricTaskDescriptor = $convert.base64Decode(
    'CgpOaXRyaWNUYXNrEg4KAmlkGAEgASgJUgJpZBIZCghsZWFzZV9pZBgCIAEoCVIHbGVhc2VJZB'
    'IhCgxwYXlsb2FkX3R5cGUYAyABKAlSC3BheWxvYWRUeXBlEjEKB3BheWxvYWQYBCABKAsyFy5n'
    'b29nbGUucHJvdG9idWYuU3RydWN0UgdwYXlsb2Fk');

