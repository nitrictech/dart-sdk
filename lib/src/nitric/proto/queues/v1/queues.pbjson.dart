//
//  Generated code. Do not modify.
//  source: nitric/proto/queues/v1/queues.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use queueEnqueueRequestDescriptor instead')
const QueueEnqueueRequest$json = {
  '1': 'QueueEnqueueRequest',
  '2': [
    {'1': 'queue_name', '3': 1, '4': 1, '5': 9, '10': 'queueName'},
    {'1': 'messages', '3': 2, '4': 3, '5': 11, '6': '.nitric.proto.queues.v1.QueueMessage', '10': 'messages'},
  ],
};

/// Descriptor for `QueueEnqueueRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queueEnqueueRequestDescriptor = $convert.base64Decode(
    'ChNRdWV1ZUVucXVldWVSZXF1ZXN0Eh0KCnF1ZXVlX25hbWUYASABKAlSCXF1ZXVlTmFtZRJACg'
    'htZXNzYWdlcxgCIAMoCzIkLm5pdHJpYy5wcm90by5xdWV1ZXMudjEuUXVldWVNZXNzYWdlUght'
    'ZXNzYWdlcw==');

@$core.Deprecated('Use queueEnqueueResponseDescriptor instead')
const QueueEnqueueResponse$json = {
  '1': 'QueueEnqueueResponse',
  '2': [
    {'1': 'failed_messages', '3': 1, '4': 3, '5': 11, '6': '.nitric.proto.queues.v1.FailedEnqueueMessage', '10': 'failedMessages'},
  ],
};

/// Descriptor for `QueueEnqueueResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queueEnqueueResponseDescriptor = $convert.base64Decode(
    'ChRRdWV1ZUVucXVldWVSZXNwb25zZRJVCg9mYWlsZWRfbWVzc2FnZXMYASADKAsyLC5uaXRyaW'
    'MucHJvdG8ucXVldWVzLnYxLkZhaWxlZEVucXVldWVNZXNzYWdlUg5mYWlsZWRNZXNzYWdlcw==');

@$core.Deprecated('Use queueDequeueRequestDescriptor instead')
const QueueDequeueRequest$json = {
  '1': 'QueueDequeueRequest',
  '2': [
    {'1': 'queue_name', '3': 1, '4': 1, '5': 9, '10': 'queueName'},
    {'1': 'depth', '3': 2, '4': 1, '5': 5, '10': 'depth'},
  ],
};

/// Descriptor for `QueueDequeueRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queueDequeueRequestDescriptor = $convert.base64Decode(
    'ChNRdWV1ZURlcXVldWVSZXF1ZXN0Eh0KCnF1ZXVlX25hbWUYASABKAlSCXF1ZXVlTmFtZRIUCg'
    'VkZXB0aBgCIAEoBVIFZGVwdGg=');

@$core.Deprecated('Use queueDequeueResponseDescriptor instead')
const QueueDequeueResponse$json = {
  '1': 'QueueDequeueResponse',
  '2': [
    {'1': 'messages', '3': 1, '4': 3, '5': 11, '6': '.nitric.proto.queues.v1.DequeuedMessage', '10': 'messages'},
  ],
};

/// Descriptor for `QueueDequeueResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queueDequeueResponseDescriptor = $convert.base64Decode(
    'ChRRdWV1ZURlcXVldWVSZXNwb25zZRJDCghtZXNzYWdlcxgBIAMoCzInLm5pdHJpYy5wcm90by'
    '5xdWV1ZXMudjEuRGVxdWV1ZWRNZXNzYWdlUghtZXNzYWdlcw==');

@$core.Deprecated('Use queueCompleteRequestDescriptor instead')
const QueueCompleteRequest$json = {
  '1': 'QueueCompleteRequest',
  '2': [
    {'1': 'queue_name', '3': 1, '4': 1, '5': 9, '10': 'queueName'},
    {'1': 'lease_id', '3': 2, '4': 1, '5': 9, '10': 'leaseId'},
  ],
};

/// Descriptor for `QueueCompleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queueCompleteRequestDescriptor = $convert.base64Decode(
    'ChRRdWV1ZUNvbXBsZXRlUmVxdWVzdBIdCgpxdWV1ZV9uYW1lGAEgASgJUglxdWV1ZU5hbWUSGQ'
    'oIbGVhc2VfaWQYAiABKAlSB2xlYXNlSWQ=');

@$core.Deprecated('Use queueCompleteResponseDescriptor instead')
const QueueCompleteResponse$json = {
  '1': 'QueueCompleteResponse',
};

/// Descriptor for `QueueCompleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queueCompleteResponseDescriptor = $convert.base64Decode(
    'ChVRdWV1ZUNvbXBsZXRlUmVzcG9uc2U=');

@$core.Deprecated('Use queueMessageDescriptor instead')
const QueueMessage$json = {
  '1': 'QueueMessage',
  '2': [
    {'1': 'struct_payload', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '9': 0, '10': 'structPayload'},
  ],
  '8': [
    {'1': 'content'},
  ],
};

/// Descriptor for `QueueMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queueMessageDescriptor = $convert.base64Decode(
    'CgxRdWV1ZU1lc3NhZ2USQAoOc3RydWN0X3BheWxvYWQYASABKAsyFy5nb29nbGUucHJvdG9idW'
    'YuU3RydWN0SABSDXN0cnVjdFBheWxvYWRCCQoHY29udGVudA==');

@$core.Deprecated('Use dequeuedMessageDescriptor instead')
const DequeuedMessage$json = {
  '1': 'DequeuedMessage',
  '2': [
    {'1': 'lease_id', '3': 1, '4': 1, '5': 9, '10': 'leaseId'},
    {'1': 'message', '3': 2, '4': 1, '5': 11, '6': '.nitric.proto.queues.v1.QueueMessage', '10': 'message'},
  ],
};

/// Descriptor for `DequeuedMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dequeuedMessageDescriptor = $convert.base64Decode(
    'Cg9EZXF1ZXVlZE1lc3NhZ2USGQoIbGVhc2VfaWQYASABKAlSB2xlYXNlSWQSPgoHbWVzc2FnZR'
    'gCIAEoCzIkLm5pdHJpYy5wcm90by5xdWV1ZXMudjEuUXVldWVNZXNzYWdlUgdtZXNzYWdl');

@$core.Deprecated('Use failedEnqueueMessageDescriptor instead')
const FailedEnqueueMessage$json = {
  '1': 'FailedEnqueueMessage',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 11, '6': '.nitric.proto.queues.v1.QueueMessage', '10': 'message'},
    {'1': 'details', '3': 2, '4': 1, '5': 9, '10': 'details'},
  ],
};

/// Descriptor for `FailedEnqueueMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List failedEnqueueMessageDescriptor = $convert.base64Decode(
    'ChRGYWlsZWRFbnF1ZXVlTWVzc2FnZRI+CgdtZXNzYWdlGAEgASgLMiQubml0cmljLnByb3RvLn'
    'F1ZXVlcy52MS5RdWV1ZU1lc3NhZ2VSB21lc3NhZ2USGAoHZGV0YWlscxgCIAEoCVIHZGV0YWls'
    'cw==');

