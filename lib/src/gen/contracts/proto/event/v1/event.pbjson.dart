//
//  Generated code. Do not modify.
//  source: contracts/proto/event/v1/event.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use eventPublishRequestDescriptor instead')
const EventPublishRequest$json = {
  '1': 'EventPublishRequest',
  '2': [
    {'1': 'topic', '3': 1, '4': 1, '5': 9, '10': 'topic'},
    {'1': 'event', '3': 2, '4': 1, '5': 11, '6': '.nitric.event.v1.NitricEvent', '10': 'event'},
    {'1': 'delay', '3': 3, '4': 1, '5': 13, '10': 'delay'},
  ],
};

/// Descriptor for `EventPublishRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventPublishRequestDescriptor = $convert.base64Decode(
    'ChNFdmVudFB1Ymxpc2hSZXF1ZXN0EhQKBXRvcGljGAEgASgJUgV0b3BpYxIyCgVldmVudBgCIA'
    'EoCzIcLm5pdHJpYy5ldmVudC52MS5OaXRyaWNFdmVudFIFZXZlbnQSFAoFZGVsYXkYAyABKA1S'
    'BWRlbGF5');

@$core.Deprecated('Use eventPublishResponseDescriptor instead')
const EventPublishResponse$json = {
  '1': 'EventPublishResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `EventPublishResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventPublishResponseDescriptor = $convert.base64Decode(
    'ChRFdmVudFB1Ymxpc2hSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use topicListRequestDescriptor instead')
const TopicListRequest$json = {
  '1': 'TopicListRequest',
};

/// Descriptor for `TopicListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicListRequestDescriptor = $convert.base64Decode(
    'ChBUb3BpY0xpc3RSZXF1ZXN0');

@$core.Deprecated('Use topicListResponseDescriptor instead')
const TopicListResponse$json = {
  '1': 'TopicListResponse',
  '2': [
    {'1': 'topics', '3': 1, '4': 3, '5': 11, '6': '.nitric.event.v1.NitricTopic', '10': 'topics'},
  ],
};

/// Descriptor for `TopicListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicListResponseDescriptor = $convert.base64Decode(
    'ChFUb3BpY0xpc3RSZXNwb25zZRI0CgZ0b3BpY3MYASADKAsyHC5uaXRyaWMuZXZlbnQudjEuTm'
    'l0cmljVG9waWNSBnRvcGljcw==');

@$core.Deprecated('Use nitricTopicDescriptor instead')
const NitricTopic$json = {
  '1': 'NitricTopic',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `NitricTopic`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nitricTopicDescriptor = $convert.base64Decode(
    'CgtOaXRyaWNUb3BpYxISCgRuYW1lGAEgASgJUgRuYW1l');

@$core.Deprecated('Use nitricEventDescriptor instead')
const NitricEvent$json = {
  '1': 'NitricEvent',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'payload_type', '3': 2, '4': 1, '5': 9, '10': 'payloadType'},
    {'1': 'payload', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'payload'},
  ],
};

/// Descriptor for `NitricEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nitricEventDescriptor = $convert.base64Decode(
    'CgtOaXRyaWNFdmVudBIOCgJpZBgBIAEoCVICaWQSIQoMcGF5bG9hZF90eXBlGAIgASgJUgtwYX'
    'lsb2FkVHlwZRIxCgdwYXlsb2FkGAMgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIHcGF5'
    'bG9hZA==');

