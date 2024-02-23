//
//  Generated code. Do not modify.
//  source: nitric/proto/http/v1/http.proto
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
    {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.nitric.proto.http.v1.HttpProxyRequest', '10': 'request'},
  ],
};

/// Descriptor for `ClientMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientMessageDescriptor = $convert.base64Decode(
    'Cg1DbGllbnRNZXNzYWdlEkAKB3JlcXVlc3QYASABKAsyJi5uaXRyaWMucHJvdG8uaHR0cC52MS'
    '5IdHRwUHJveHlSZXF1ZXN0UgdyZXF1ZXN0');

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage$json = {
  '1': 'ServerMessage',
};

/// Descriptor for `ServerMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverMessageDescriptor = $convert.base64Decode(
    'Cg1TZXJ2ZXJNZXNzYWdl');

@$core.Deprecated('Use httpProxyRequestDescriptor instead')
const HttpProxyRequest$json = {
  '1': 'HttpProxyRequest',
  '2': [
    {'1': 'host', '3': 1, '4': 1, '5': 9, '10': 'host'},
  ],
};

/// Descriptor for `HttpProxyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List httpProxyRequestDescriptor = $convert.base64Decode(
    'ChBIdHRwUHJveHlSZXF1ZXN0EhIKBGhvc3QYASABKAlSBGhvc3Q=');

