//
//  Generated code. Do not modify.
//  source: nitric/proto/kvstore/v1/kvstore.proto
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
final $typed_data.Uint8List storeDescriptor =
    $convert.base64Decode('CgVTdG9yZRISCgRuYW1lGAEgASgJUgRuYW1l');

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
    {
      '1': 'ref',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.kvstore.v1.ValueRef',
      '10': 'ref'
    },
    {
      '1': 'content',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'content'
    },
  ],
};

/// Descriptor for `Value`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List valueDescriptor = $convert.base64Decode(
    'CgVWYWx1ZRIzCgNyZWYYASABKAsyIS5uaXRyaWMucHJvdG8ua3ZzdG9yZS52MS5WYWx1ZVJlZl'
    'IDcmVmEjEKB2NvbnRlbnQYAiABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0Ugdjb250ZW50');

@$core.Deprecated('Use kvStoreGetValueRequestDescriptor instead')
const KvStoreGetValueRequest$json = {
  '1': 'KvStoreGetValueRequest',
  '2': [
    {
      '1': 'ref',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.kvstore.v1.ValueRef',
      '10': 'ref'
    },
  ],
};

/// Descriptor for `KvStoreGetValueRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kvStoreGetValueRequestDescriptor =
    $convert.base64Decode(
        'ChZLdlN0b3JlR2V0VmFsdWVSZXF1ZXN0EjMKA3JlZhgBIAEoCzIhLm5pdHJpYy5wcm90by5rdn'
        'N0b3JlLnYxLlZhbHVlUmVmUgNyZWY=');

@$core.Deprecated('Use kvStoreGetValueResponseDescriptor instead')
const KvStoreGetValueResponse$json = {
  '1': 'KvStoreGetValueResponse',
  '2': [
    {
      '1': 'value',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.kvstore.v1.Value',
      '10': 'value'
    },
  ],
};

/// Descriptor for `KvStoreGetValueResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kvStoreGetValueResponseDescriptor =
    $convert.base64Decode(
        'ChdLdlN0b3JlR2V0VmFsdWVSZXNwb25zZRI0CgV2YWx1ZRgBIAEoCzIeLm5pdHJpYy5wcm90by'
        '5rdnN0b3JlLnYxLlZhbHVlUgV2YWx1ZQ==');

@$core.Deprecated('Use kvStoreSetValueRequestDescriptor instead')
const KvStoreSetValueRequest$json = {
  '1': 'KvStoreSetValueRequest',
  '2': [
    {
      '1': 'ref',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.kvstore.v1.ValueRef',
      '10': 'ref'
    },
    {
      '1': 'content',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '10': 'content'
    },
  ],
};

/// Descriptor for `KvStoreSetValueRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kvStoreSetValueRequestDescriptor = $convert.base64Decode(
    'ChZLdlN0b3JlU2V0VmFsdWVSZXF1ZXN0EjMKA3JlZhgBIAEoCzIhLm5pdHJpYy5wcm90by5rdn'
    'N0b3JlLnYxLlZhbHVlUmVmUgNyZWYSMQoHY29udGVudBgDIAEoCzIXLmdvb2dsZS5wcm90b2J1'
    'Zi5TdHJ1Y3RSB2NvbnRlbnQ=');

@$core.Deprecated('Use kvStoreSetValueResponseDescriptor instead')
const KvStoreSetValueResponse$json = {
  '1': 'KvStoreSetValueResponse',
};

/// Descriptor for `KvStoreSetValueResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kvStoreSetValueResponseDescriptor =
    $convert.base64Decode('ChdLdlN0b3JlU2V0VmFsdWVSZXNwb25zZQ==');

@$core.Deprecated('Use kvStoreDeleteKeyRequestDescriptor instead')
const KvStoreDeleteKeyRequest$json = {
  '1': 'KvStoreDeleteKeyRequest',
  '2': [
    {
      '1': 'ref',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.kvstore.v1.ValueRef',
      '10': 'ref'
    },
  ],
};

/// Descriptor for `KvStoreDeleteKeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kvStoreDeleteKeyRequestDescriptor =
    $convert.base64Decode(
        'ChdLdlN0b3JlRGVsZXRlS2V5UmVxdWVzdBIzCgNyZWYYASABKAsyIS5uaXRyaWMucHJvdG8ua3'
        'ZzdG9yZS52MS5WYWx1ZVJlZlIDcmVm');

@$core.Deprecated('Use kvStoreDeleteKeyResponseDescriptor instead')
const KvStoreDeleteKeyResponse$json = {
  '1': 'KvStoreDeleteKeyResponse',
};

/// Descriptor for `KvStoreDeleteKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kvStoreDeleteKeyResponseDescriptor =
    $convert.base64Decode('ChhLdlN0b3JlRGVsZXRlS2V5UmVzcG9uc2U=');

@$core.Deprecated('Use kvStoreScanKeysRequestDescriptor instead')
const KvStoreScanKeysRequest$json = {
  '1': 'KvStoreScanKeysRequest',
  '2': [
    {
      '1': 'store',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.kvstore.v1.Store',
      '10': 'store'
    },
    {'1': 'prefix', '3': 2, '4': 1, '5': 9, '10': 'prefix'},
  ],
};

/// Descriptor for `KvStoreScanKeysRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kvStoreScanKeysRequestDescriptor =
    $convert.base64Decode(
        'ChZLdlN0b3JlU2NhbktleXNSZXF1ZXN0EjQKBXN0b3JlGAEgASgLMh4ubml0cmljLnByb3RvLm'
        't2c3RvcmUudjEuU3RvcmVSBXN0b3JlEhYKBnByZWZpeBgCIAEoCVIGcHJlZml4');

@$core.Deprecated('Use kvStoreScanKeysResponseDescriptor instead')
const KvStoreScanKeysResponse$json = {
  '1': 'KvStoreScanKeysResponse',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `KvStoreScanKeysResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kvStoreScanKeysResponseDescriptor =
    $convert.base64Decode(
        'ChdLdlN0b3JlU2NhbktleXNSZXNwb25zZRIQCgNrZXkYASABKAlSA2tleQ==');
