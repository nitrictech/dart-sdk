//
//  Generated code. Do not modify.
//  source: nitric/proto/schedules/v1/schedules.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage$json = {
  '1': 'ClientMessage',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {
      '1': 'registration_request',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.schedules.v1.RegistrationRequest',
      '9': 0,
      '10': 'registrationRequest'
    },
    {
      '1': 'interval_response',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.schedules.v1.IntervalResponse',
      '9': 0,
      '10': 'intervalResponse'
    },
  ],
  '8': [
    {'1': 'content'},
  ],
};

/// Descriptor for `ClientMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientMessageDescriptor = $convert.base64Decode(
    'Cg1DbGllbnRNZXNzYWdlEg4KAmlkGAEgASgJUgJpZBJjChRyZWdpc3RyYXRpb25fcmVxdWVzdB'
    'gCIAEoCzIuLm5pdHJpYy5wcm90by5zY2hlZHVsZXMudjEuUmVnaXN0cmF0aW9uUmVxdWVzdEgA'
    'UhNyZWdpc3RyYXRpb25SZXF1ZXN0EloKEWludGVydmFsX3Jlc3BvbnNlGAMgASgLMisubml0cm'
    'ljLnByb3RvLnNjaGVkdWxlcy52MS5JbnRlcnZhbFJlc3BvbnNlSABSEGludGVydmFsUmVzcG9u'
    'c2VCCQoHY29udGVudA==');

@$core.Deprecated('Use intervalRequestDescriptor instead')
const IntervalRequest$json = {
  '1': 'IntervalRequest',
  '2': [
    {'1': 'schedule_name', '3': 1, '4': 1, '5': 9, '10': 'scheduleName'},
  ],
};

/// Descriptor for `IntervalRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List intervalRequestDescriptor = $convert.base64Decode(
    'Cg9JbnRlcnZhbFJlcXVlc3QSIwoNc2NoZWR1bGVfbmFtZRgBIAEoCVIMc2NoZWR1bGVOYW1l');

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage$json = {
  '1': 'ServerMessage',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {
      '1': 'registration_response',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.schedules.v1.RegistrationResponse',
      '9': 0,
      '10': 'registrationResponse'
    },
    {
      '1': 'interval_request',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.schedules.v1.IntervalRequest',
      '9': 0,
      '10': 'intervalRequest'
    },
  ],
  '8': [
    {'1': 'content'},
  ],
};

/// Descriptor for `ServerMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverMessageDescriptor = $convert.base64Decode(
    'Cg1TZXJ2ZXJNZXNzYWdlEg4KAmlkGAEgASgJUgJpZBJmChVyZWdpc3RyYXRpb25fcmVzcG9uc2'
    'UYAiABKAsyLy5uaXRyaWMucHJvdG8uc2NoZWR1bGVzLnYxLlJlZ2lzdHJhdGlvblJlc3BvbnNl'
    'SABSFHJlZ2lzdHJhdGlvblJlc3BvbnNlElcKEGludGVydmFsX3JlcXVlc3QYAyABKAsyKi5uaX'
    'RyaWMucHJvdG8uc2NoZWR1bGVzLnYxLkludGVydmFsUmVxdWVzdEgAUg9pbnRlcnZhbFJlcXVl'
    'c3RCCQoHY29udGVudA==');

@$core.Deprecated('Use registrationRequestDescriptor instead')
const RegistrationRequest$json = {
  '1': 'RegistrationRequest',
  '2': [
    {'1': 'schedule_name', '3': 1, '4': 1, '5': 9, '10': 'scheduleName'},
    {
      '1': 'every',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.schedules.v1.ScheduleEvery',
      '9': 0,
      '10': 'every'
    },
    {
      '1': 'cron',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.schedules.v1.ScheduleCron',
      '9': 0,
      '10': 'cron'
    },
  ],
  '8': [
    {'1': 'cadence'},
  ],
};

/// Descriptor for `RegistrationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registrationRequestDescriptor = $convert.base64Decode(
    'ChNSZWdpc3RyYXRpb25SZXF1ZXN0EiMKDXNjaGVkdWxlX25hbWUYASABKAlSDHNjaGVkdWxlTm'
    'FtZRJACgVldmVyeRgKIAEoCzIoLm5pdHJpYy5wcm90by5zY2hlZHVsZXMudjEuU2NoZWR1bGVF'
    'dmVyeUgAUgVldmVyeRI9CgRjcm9uGAsgASgLMicubml0cmljLnByb3RvLnNjaGVkdWxlcy52MS'
    '5TY2hlZHVsZUNyb25IAFIEY3JvbkIJCgdjYWRlbmNl');

@$core.Deprecated('Use scheduleEveryDescriptor instead')
const ScheduleEvery$json = {
  '1': 'ScheduleEvery',
  '2': [
    {'1': 'rate', '3': 1, '4': 1, '5': 9, '10': 'rate'},
  ],
};

/// Descriptor for `ScheduleEvery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduleEveryDescriptor =
    $convert.base64Decode('Cg1TY2hlZHVsZUV2ZXJ5EhIKBHJhdGUYASABKAlSBHJhdGU=');

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

@$core.Deprecated('Use registrationResponseDescriptor instead')
const RegistrationResponse$json = {
  '1': 'RegistrationResponse',
};

/// Descriptor for `RegistrationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registrationResponseDescriptor =
    $convert.base64Decode('ChRSZWdpc3RyYXRpb25SZXNwb25zZQ==');

@$core.Deprecated('Use intervalResponseDescriptor instead')
const IntervalResponse$json = {
  '1': 'IntervalResponse',
};

/// Descriptor for `IntervalResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List intervalResponseDescriptor =
    $convert.base64Decode('ChBJbnRlcnZhbFJlc3BvbnNl');
