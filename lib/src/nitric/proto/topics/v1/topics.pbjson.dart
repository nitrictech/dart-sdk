//
//  Generated code. Do not modify.
//  source: nitric/proto/topics/v1/topics.proto
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
      '6': '.nitric.proto.topics.v1.RegistrationRequest',
      '9': 0,
      '10': 'registrationRequest'
    },
    {
      '1': 'message_response',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.topics.v1.MessageResponse',
      '9': 0,
      '10': 'messageResponse'
    },
  ],
  '8': [
    {'1': 'content'},
  ],
};

/// Descriptor for `ClientMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientMessageDescriptor = $convert.base64Decode(
    'Cg1DbGllbnRNZXNzYWdlEg4KAmlkGAEgASgJUgJpZBJgChRyZWdpc3RyYXRpb25fcmVxdWVzdB'
    'gCIAEoCzIrLm5pdHJpYy5wcm90by50b3BpY3MudjEuUmVnaXN0cmF0aW9uUmVxdWVzdEgAUhNy'
    'ZWdpc3RyYXRpb25SZXF1ZXN0ElQKEG1lc3NhZ2VfcmVzcG9uc2UYAyABKAsyJy5uaXRyaWMucH'
    'JvdG8udG9waWNzLnYxLk1lc3NhZ2VSZXNwb25zZUgAUg9tZXNzYWdlUmVzcG9uc2VCCQoHY29u'
    'dGVudA==');

@$core.Deprecated('Use messageRequestDescriptor instead')
const MessageRequest$json = {
  '1': 'MessageRequest',
  '2': [
    {'1': 'topic_name', '3': 1, '4': 1, '5': 9, '10': 'topicName'},
    {
      '1': 'message',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.topics.v1.TopicMessage',
      '10': 'message'
    },
  ],
};

/// Descriptor for `MessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageRequestDescriptor = $convert.base64Decode(
    'Cg5NZXNzYWdlUmVxdWVzdBIdCgp0b3BpY19uYW1lGAEgASgJUgl0b3BpY05hbWUSPgoHbWVzc2'
    'FnZRgCIAEoCzIkLm5pdHJpYy5wcm90by50b3BpY3MudjEuVG9waWNNZXNzYWdlUgdtZXNzYWdl');

@$core.Deprecated('Use messageResponseDescriptor instead')
const MessageResponse$json = {
  '1': 'MessageResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `MessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageResponseDescriptor = $convert.base64Decode(
    'Cg9NZXNzYWdlUmVzcG9uc2USGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');

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
      '6': '.nitric.proto.topics.v1.RegistrationResponse',
      '9': 0,
      '10': 'registrationResponse'
    },
    {
      '1': 'message_request',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.topics.v1.MessageRequest',
      '9': 0,
      '10': 'messageRequest'
    },
  ],
  '8': [
    {'1': 'content'},
  ],
};

/// Descriptor for `ServerMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverMessageDescriptor = $convert.base64Decode(
    'Cg1TZXJ2ZXJNZXNzYWdlEg4KAmlkGAEgASgJUgJpZBJjChVyZWdpc3RyYXRpb25fcmVzcG9uc2'
    'UYAiABKAsyLC5uaXRyaWMucHJvdG8udG9waWNzLnYxLlJlZ2lzdHJhdGlvblJlc3BvbnNlSABS'
    'FHJlZ2lzdHJhdGlvblJlc3BvbnNlElEKD21lc3NhZ2VfcmVxdWVzdBgDIAEoCzImLm5pdHJpYy'
    '5wcm90by50b3BpY3MudjEuTWVzc2FnZVJlcXVlc3RIAFIObWVzc2FnZVJlcXVlc3RCCQoHY29u'
    'dGVudA==');

@$core.Deprecated('Use registrationRequestDescriptor instead')
const RegistrationRequest$json = {
  '1': 'RegistrationRequest',
  '2': [
    {'1': 'topic_name', '3': 1, '4': 1, '5': 9, '10': 'topicName'},
  ],
};

/// Descriptor for `RegistrationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registrationRequestDescriptor = $convert.base64Decode(
    'ChNSZWdpc3RyYXRpb25SZXF1ZXN0Eh0KCnRvcGljX25hbWUYASABKAlSCXRvcGljTmFtZQ==');

@$core.Deprecated('Use registrationResponseDescriptor instead')
const RegistrationResponse$json = {
  '1': 'RegistrationResponse',
};

/// Descriptor for `RegistrationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registrationResponseDescriptor =
    $convert.base64Decode('ChRSZWdpc3RyYXRpb25SZXNwb25zZQ==');

@$core.Deprecated('Use topicMessageDescriptor instead')
const TopicMessage$json = {
  '1': 'TopicMessage',
  '2': [
    {
      '1': 'struct_payload',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '9': 0,
      '10': 'structPayload'
    },
  ],
  '8': [
    {'1': 'content'},
  ],
};

/// Descriptor for `TopicMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicMessageDescriptor = $convert.base64Decode(
    'CgxUb3BpY01lc3NhZ2USQAoOc3RydWN0X3BheWxvYWQYASABKAsyFy5nb29nbGUucHJvdG9idW'
    'YuU3RydWN0SABSDXN0cnVjdFBheWxvYWRCCQoHY29udGVudA==');

@$core.Deprecated('Use topicPublishRequestDescriptor instead')
const TopicPublishRequest$json = {
  '1': 'TopicPublishRequest',
  '2': [
    {'1': 'topic_name', '3': 1, '4': 1, '5': 9, '10': 'topicName'},
    {
      '1': 'message',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.topics.v1.TopicMessage',
      '10': 'message'
    },
    {
      '1': 'delay',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Duration',
      '10': 'delay'
    },
  ],
};

/// Descriptor for `TopicPublishRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicPublishRequestDescriptor = $convert.base64Decode(
    'ChNUb3BpY1B1Ymxpc2hSZXF1ZXN0Eh0KCnRvcGljX25hbWUYASABKAlSCXRvcGljTmFtZRI+Cg'
    'dtZXNzYWdlGAIgASgLMiQubml0cmljLnByb3RvLnRvcGljcy52MS5Ub3BpY01lc3NhZ2VSB21l'
    'c3NhZ2USLwoFZGVsYXkYAyABKAsyGS5nb29nbGUucHJvdG9idWYuRHVyYXRpb25SBWRlbGF5');

@$core.Deprecated('Use topicPublishResponseDescriptor instead')
const TopicPublishResponse$json = {
  '1': 'TopicPublishResponse',
};

/// Descriptor for `TopicPublishResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicPublishResponseDescriptor =
    $convert.base64Decode('ChRUb3BpY1B1Ymxpc2hSZXNwb25zZQ==');
