//
//  Generated code. Do not modify.
//  source: contracts/proto/websocket/v1/websocket.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use websocketSendRequestDescriptor instead')
const WebsocketSendRequest$json = {
  '1': 'WebsocketSendRequest',
  '2': [
    {'1': 'socket', '3': 1, '4': 1, '5': 9, '10': 'socket'},
    {'1': 'connection_id', '3': 2, '4': 1, '5': 9, '10': 'connectionId'},
    {'1': 'data', '3': 3, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `WebsocketSendRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketSendRequestDescriptor = $convert.base64Decode(
    'ChRXZWJzb2NrZXRTZW5kUmVxdWVzdBIWCgZzb2NrZXQYASABKAlSBnNvY2tldBIjCg1jb25uZW'
    'N0aW9uX2lkGAIgASgJUgxjb25uZWN0aW9uSWQSEgoEZGF0YRgDIAEoDFIEZGF0YQ==');

@$core.Deprecated('Use websocketSendResponseDescriptor instead')
const WebsocketSendResponse$json = {
  '1': 'WebsocketSendResponse',
};

/// Descriptor for `WebsocketSendResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketSendResponseDescriptor = $convert.base64Decode(
    'ChVXZWJzb2NrZXRTZW5kUmVzcG9uc2U=');

@$core.Deprecated('Use websocketCloseRequestDescriptor instead')
const WebsocketCloseRequest$json = {
  '1': 'WebsocketCloseRequest',
  '2': [
    {'1': 'socket', '3': 1, '4': 1, '5': 9, '10': 'socket'},
    {'1': 'connection_id', '3': 2, '4': 1, '5': 9, '10': 'connectionId'},
  ],
};

/// Descriptor for `WebsocketCloseRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketCloseRequestDescriptor = $convert.base64Decode(
    'ChVXZWJzb2NrZXRDbG9zZVJlcXVlc3QSFgoGc29ja2V0GAEgASgJUgZzb2NrZXQSIwoNY29ubm'
    'VjdGlvbl9pZBgCIAEoCVIMY29ubmVjdGlvbklk');

@$core.Deprecated('Use websocketCloseResponseDescriptor instead')
const WebsocketCloseResponse$json = {
  '1': 'WebsocketCloseResponse',
};

/// Descriptor for `WebsocketCloseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketCloseResponseDescriptor = $convert.base64Decode(
    'ChZXZWJzb2NrZXRDbG9zZVJlc3BvbnNl');

