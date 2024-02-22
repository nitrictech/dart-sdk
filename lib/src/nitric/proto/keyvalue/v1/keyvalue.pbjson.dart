//
//  Generated code. Do not modify.
//  source: nitric/proto/keyvalue/v1/keyvalue.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use storeDescriptor instead')
const Store$json = {
  '1': 'Store',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `Store`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storeDescriptor = $convert.base64Decode(
    'CgVTdG9yZRISCgRuYW1lGAEgASgJUgRuYW1l');

@$core.Deprecated('Use valueRefDescriptor instead')
const ValueRef$json = {
  '1': 'ValueRef',
  '2': [
    {'1': 'store', '3': 1, '4': 1, '5': 9, '10': 'store'},
    {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `ValueRef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List valueRefDescriptor = $convert.base64Decode(
    'CghWYWx1ZVJlZhIUCgVzdG9yZRgBIAEoCVIFc3RvcmUSEAoDa2V5GAIgASgJUgNrZXk=');

@$core.Deprecated('Use valueDescriptor instead')
const Value$json = {
  '1': 'Value',
  '2': [
    {'1': 'ref', '3': 1, '4': 1, '5': 11, '6': '.nitric.proto.KeyValue.v1.ValueRef', '10': 'ref'},
    {'1': 'content', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'content'},
  ],
};

/// Descriptor for `Value`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List valueDescriptor = $convert.base64Decode(
    'CgVWYWx1ZRI0CgNyZWYYASABKAsyIi5uaXRyaWMucHJvdG8uS2V5VmFsdWUudjEuVmFsdWVSZW'
    'ZSA3JlZhIxCgdjb250ZW50GAIgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIHY29udGVu'
    'dA==');

@$core.Deprecated('Use keyValueGetRequestDescriptor instead')
const KeyValueGetRequest$json = {
  '1': 'KeyValueGetRequest',
  '2': [
    {'1': 'ref', '3': 1, '4': 1, '5': 11, '6': '.nitric.proto.KeyValue.v1.ValueRef', '10': 'ref'},
  ],
};

/// Descriptor for `KeyValueGetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyValueGetRequestDescriptor = $convert.base64Decode(
    'ChJLZXlWYWx1ZUdldFJlcXVlc3QSNAoDcmVmGAEgASgLMiIubml0cmljLnByb3RvLktleVZhbH'
    'VlLnYxLlZhbHVlUmVmUgNyZWY=');

@$core.Deprecated('Use keyValueGetResponseDescriptor instead')
const KeyValueGetResponse$json = {
  '1': 'KeyValueGetResponse',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.nitric.proto.KeyValue.v1.Value', '10': 'value'},
  ],
};

/// Descriptor for `KeyValueGetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyValueGetResponseDescriptor = $convert.base64Decode(
    'ChNLZXlWYWx1ZUdldFJlc3BvbnNlEjUKBXZhbHVlGAEgASgLMh8ubml0cmljLnByb3RvLktleV'
    'ZhbHVlLnYxLlZhbHVlUgV2YWx1ZQ==');

@$core.Deprecated('Use keyValueSetRequestDescriptor instead')
const KeyValueSetRequest$json = {
  '1': 'KeyValueSetRequest',
  '2': [
    {'1': 'ref', '3': 1, '4': 1, '5': 11, '6': '.nitric.proto.KeyValue.v1.ValueRef', '10': 'ref'},
    {'1': 'content', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'content'},
  ],
};

/// Descriptor for `KeyValueSetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyValueSetRequestDescriptor = $convert.base64Decode(
    'ChJLZXlWYWx1ZVNldFJlcXVlc3QSNAoDcmVmGAEgASgLMiIubml0cmljLnByb3RvLktleVZhbH'
    'VlLnYxLlZhbHVlUmVmUgNyZWYSMQoHY29udGVudBgDIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5T'
    'dHJ1Y3RSB2NvbnRlbnQ=');

@$core.Deprecated('Use keyValueSetResponseDescriptor instead')
const KeyValueSetResponse$json = {
  '1': 'KeyValueSetResponse',
};

/// Descriptor for `KeyValueSetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyValueSetResponseDescriptor = $convert.base64Decode(
    'ChNLZXlWYWx1ZVNldFJlc3BvbnNl');

@$core.Deprecated('Use keyValueDeleteRequestDescriptor instead')
const KeyValueDeleteRequest$json = {
  '1': 'KeyValueDeleteRequest',
  '2': [
    {'1': 'ref', '3': 1, '4': 1, '5': 11, '6': '.nitric.proto.KeyValue.v1.ValueRef', '10': 'ref'},
  ],
};

/// Descriptor for `KeyValueDeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyValueDeleteRequestDescriptor = $convert.base64Decode(
    'ChVLZXlWYWx1ZURlbGV0ZVJlcXVlc3QSNAoDcmVmGAEgASgLMiIubml0cmljLnByb3RvLktleV'
    'ZhbHVlLnYxLlZhbHVlUmVmUgNyZWY=');

@$core.Deprecated('Use keyValueDeleteResponseDescriptor instead')
const KeyValueDeleteResponse$json = {
  '1': 'KeyValueDeleteResponse',
};

/// Descriptor for `KeyValueDeleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyValueDeleteResponseDescriptor = $convert.base64Decode(
    'ChZLZXlWYWx1ZURlbGV0ZVJlc3BvbnNl');

