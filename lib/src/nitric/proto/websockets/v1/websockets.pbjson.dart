//
//  Generated code. Do not modify.
//  source: nitric/proto/websockets/v1/websockets.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use websocketEventTypeDescriptor instead')
const WebsocketEventType$json = {
  '1': 'WebsocketEventType',
  '2': [
    {'1': 'Connect', '2': 0},
    {'1': 'Disconnect', '2': 1},
    {'1': 'Message', '2': 2},
  ],
};

/// Descriptor for `WebsocketEventType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List websocketEventTypeDescriptor = $convert.base64Decode(
    'ChJXZWJzb2NrZXRFdmVudFR5cGUSCwoHQ29ubmVjdBAAEg4KCkRpc2Nvbm5lY3QQARILCgdNZX'
    'NzYWdlEAI=');

@$core.Deprecated('Use websocketDetailsRequestDescriptor instead')
const WebsocketDetailsRequest$json = {
  '1': 'WebsocketDetailsRequest',
  '2': [
    {'1': 'socket_name', '3': 1, '4': 1, '5': 9, '10': 'socketName'},
  ],
};

/// Descriptor for `WebsocketDetailsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketDetailsRequestDescriptor =
    $convert.base64Decode(
        'ChdXZWJzb2NrZXREZXRhaWxzUmVxdWVzdBIfCgtzb2NrZXRfbmFtZRgBIAEoCVIKc29ja2V0Tm'
        'FtZQ==');

@$core.Deprecated('Use websocketDetailsResponseDescriptor instead')
const WebsocketDetailsResponse$json = {
  '1': 'WebsocketDetailsResponse',
  '2': [
    {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `WebsocketDetailsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketDetailsResponseDescriptor =
    $convert.base64Decode(
        'ChhXZWJzb2NrZXREZXRhaWxzUmVzcG9uc2USEAoDdXJsGAEgASgJUgN1cmw=');

@$core.Deprecated('Use websocketSendRequestDescriptor instead')
const WebsocketSendRequest$json = {
  '1': 'WebsocketSendRequest',
  '2': [
    {'1': 'socket_name', '3': 1, '4': 1, '5': 9, '10': 'socketName'},
    {'1': 'connection_id', '3': 2, '4': 1, '5': 9, '10': 'connectionId'},
    {'1': 'data', '3': 3, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `WebsocketSendRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketSendRequestDescriptor = $convert.base64Decode(
    'ChRXZWJzb2NrZXRTZW5kUmVxdWVzdBIfCgtzb2NrZXRfbmFtZRgBIAEoCVIKc29ja2V0TmFtZR'
    'IjCg1jb25uZWN0aW9uX2lkGAIgASgJUgxjb25uZWN0aW9uSWQSEgoEZGF0YRgDIAEoDFIEZGF0'
    'YQ==');

@$core.Deprecated('Use websocketSendResponseDescriptor instead')
const WebsocketSendResponse$json = {
  '1': 'WebsocketSendResponse',
};

/// Descriptor for `WebsocketSendResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketSendResponseDescriptor =
    $convert.base64Decode('ChVXZWJzb2NrZXRTZW5kUmVzcG9uc2U=');

@$core.Deprecated('Use websocketCloseConnectionRequestDescriptor instead')
const WebsocketCloseConnectionRequest$json = {
  '1': 'WebsocketCloseConnectionRequest',
  '2': [
    {'1': 'socket_name', '3': 1, '4': 1, '5': 9, '10': 'socketName'},
    {'1': 'connection_id', '3': 2, '4': 1, '5': 9, '10': 'connectionId'},
  ],
};

/// Descriptor for `WebsocketCloseConnectionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketCloseConnectionRequestDescriptor =
    $convert.base64Decode(
        'Ch9XZWJzb2NrZXRDbG9zZUNvbm5lY3Rpb25SZXF1ZXN0Eh8KC3NvY2tldF9uYW1lGAEgASgJUg'
        'pzb2NrZXROYW1lEiMKDWNvbm5lY3Rpb25faWQYAiABKAlSDGNvbm5lY3Rpb25JZA==');

@$core.Deprecated('Use websocketCloseConnectionResponseDescriptor instead')
const WebsocketCloseConnectionResponse$json = {
  '1': 'WebsocketCloseConnectionResponse',
};

/// Descriptor for `WebsocketCloseConnectionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketCloseConnectionResponseDescriptor =
    $convert.base64Decode('CiBXZWJzb2NrZXRDbG9zZUNvbm5lY3Rpb25SZXNwb25zZQ==');

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
      '6': '.nitric.proto.websockets.v1.RegistrationRequest',
      '9': 0,
      '10': 'registrationRequest'
    },
    {
      '1': 'websocket_event_response',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.websockets.v1.WebsocketEventResponse',
      '9': 0,
      '10': 'websocketEventResponse'
    },
  ],
  '8': [
    {'1': 'content'},
  ],
};

/// Descriptor for `ClientMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientMessageDescriptor = $convert.base64Decode(
    'Cg1DbGllbnRNZXNzYWdlEg4KAmlkGAEgASgJUgJpZBJkChRyZWdpc3RyYXRpb25fcmVxdWVzdB'
    'gCIAEoCzIvLm5pdHJpYy5wcm90by53ZWJzb2NrZXRzLnYxLlJlZ2lzdHJhdGlvblJlcXVlc3RI'
    'AFITcmVnaXN0cmF0aW9uUmVxdWVzdBJuChh3ZWJzb2NrZXRfZXZlbnRfcmVzcG9uc2UYAyABKA'
    'syMi5uaXRyaWMucHJvdG8ud2Vic29ja2V0cy52MS5XZWJzb2NrZXRFdmVudFJlc3BvbnNlSABS'
    'FndlYnNvY2tldEV2ZW50UmVzcG9uc2VCCQoHY29udGVudA==');

@$core.Deprecated('Use registrationResponseDescriptor instead')
const RegistrationResponse$json = {
  '1': 'RegistrationResponse',
};

/// Descriptor for `RegistrationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registrationResponseDescriptor =
    $convert.base64Decode('ChRSZWdpc3RyYXRpb25SZXNwb25zZQ==');

@$core.Deprecated('Use registrationRequestDescriptor instead')
const RegistrationRequest$json = {
  '1': 'RegistrationRequest',
  '2': [
    {'1': 'socket_name', '3': 1, '4': 1, '5': 9, '10': 'socketName'},
    {
      '1': 'event_type',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.nitric.proto.websockets.v1.WebsocketEventType',
      '10': 'eventType'
    },
  ],
};

/// Descriptor for `RegistrationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registrationRequestDescriptor = $convert.base64Decode(
    'ChNSZWdpc3RyYXRpb25SZXF1ZXN0Eh8KC3NvY2tldF9uYW1lGAEgASgJUgpzb2NrZXROYW1lEk'
    '0KCmV2ZW50X3R5cGUYAiABKA4yLi5uaXRyaWMucHJvdG8ud2Vic29ja2V0cy52MS5XZWJzb2Nr'
    'ZXRFdmVudFR5cGVSCWV2ZW50VHlwZQ==');

@$core.Deprecated('Use websocketEventRequestDescriptor instead')
const WebsocketEventRequest$json = {
  '1': 'WebsocketEventRequest',
  '2': [
    {'1': 'socket_name', '3': 1, '4': 1, '5': 9, '10': 'socketName'},
    {'1': 'connection_id', '3': 2, '4': 1, '5': 9, '10': 'connectionId'},
    {
      '1': 'connection',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.websockets.v1.WebsocketConnectionEvent',
      '9': 0,
      '10': 'connection'
    },
    {
      '1': 'disconnection',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.websockets.v1.WebsocketDisconnectionEvent',
      '9': 0,
      '10': 'disconnection'
    },
    {
      '1': 'message',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.websockets.v1.WebsocketMessageEvent',
      '9': 0,
      '10': 'message'
    },
  ],
  '8': [
    {'1': 'websocket_event'},
  ],
};

/// Descriptor for `WebsocketEventRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketEventRequestDescriptor = $convert.base64Decode(
    'ChVXZWJzb2NrZXRFdmVudFJlcXVlc3QSHwoLc29ja2V0X25hbWUYASABKAlSCnNvY2tldE5hbW'
    'USIwoNY29ubmVjdGlvbl9pZBgCIAEoCVIMY29ubmVjdGlvbklkElYKCmNvbm5lY3Rpb24YCiAB'
    'KAsyNC5uaXRyaWMucHJvdG8ud2Vic29ja2V0cy52MS5XZWJzb2NrZXRDb25uZWN0aW9uRXZlbn'
    'RIAFIKY29ubmVjdGlvbhJfCg1kaXNjb25uZWN0aW9uGAsgASgLMjcubml0cmljLnByb3RvLndl'
    'YnNvY2tldHMudjEuV2Vic29ja2V0RGlzY29ubmVjdGlvbkV2ZW50SABSDWRpc2Nvbm5lY3Rpb2'
    '4STQoHbWVzc2FnZRgMIAEoCzIxLm5pdHJpYy5wcm90by53ZWJzb2NrZXRzLnYxLldlYnNvY2tl'
    'dE1lc3NhZ2VFdmVudEgAUgdtZXNzYWdlQhEKD3dlYnNvY2tldF9ldmVudA==');

@$core.Deprecated('Use queryValueDescriptor instead')
const QueryValue$json = {
  '1': 'QueryValue',
  '2': [
    {'1': 'value', '3': 1, '4': 3, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `QueryValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryValueDescriptor =
    $convert.base64Decode('CgpRdWVyeVZhbHVlEhQKBXZhbHVlGAEgAygJUgV2YWx1ZQ==');

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
      '6': '.nitric.proto.websockets.v1.RegistrationResponse',
      '9': 0,
      '10': 'registrationResponse'
    },
    {
      '1': 'websocket_event_request',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.websockets.v1.WebsocketEventRequest',
      '9': 0,
      '10': 'websocketEventRequest'
    },
  ],
  '8': [
    {'1': 'content'},
  ],
};

/// Descriptor for `ServerMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverMessageDescriptor = $convert.base64Decode(
    'Cg1TZXJ2ZXJNZXNzYWdlEg4KAmlkGAEgASgJUgJpZBJnChVyZWdpc3RyYXRpb25fcmVzcG9uc2'
    'UYAiABKAsyMC5uaXRyaWMucHJvdG8ud2Vic29ja2V0cy52MS5SZWdpc3RyYXRpb25SZXNwb25z'
    'ZUgAUhRyZWdpc3RyYXRpb25SZXNwb25zZRJrChd3ZWJzb2NrZXRfZXZlbnRfcmVxdWVzdBgDIA'
    'EoCzIxLm5pdHJpYy5wcm90by53ZWJzb2NrZXRzLnYxLldlYnNvY2tldEV2ZW50UmVxdWVzdEgA'
    'UhV3ZWJzb2NrZXRFdmVudFJlcXVlc3RCCQoHY29udGVudA==');

@$core.Deprecated('Use websocketEventResponseDescriptor instead')
const WebsocketEventResponse$json = {
  '1': 'WebsocketEventResponse',
  '2': [
    {
      '1': 'connection_response',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.websockets.v1.WebsocketConnectionResponse',
      '9': 0,
      '10': 'connectionResponse'
    },
  ],
  '8': [
    {'1': 'websocket_response'},
  ],
};

/// Descriptor for `WebsocketEventResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketEventResponseDescriptor = $convert.base64Decode(
    'ChZXZWJzb2NrZXRFdmVudFJlc3BvbnNlEmoKE2Nvbm5lY3Rpb25fcmVzcG9uc2UYCiABKAsyNy'
    '5uaXRyaWMucHJvdG8ud2Vic29ja2V0cy52MS5XZWJzb2NrZXRDb25uZWN0aW9uUmVzcG9uc2VI'
    'AFISY29ubmVjdGlvblJlc3BvbnNlQhQKEndlYnNvY2tldF9yZXNwb25zZQ==');

@$core.Deprecated('Use websocketConnectionEventDescriptor instead')
const WebsocketConnectionEvent$json = {
  '1': 'WebsocketConnectionEvent',
  '2': [
    {
      '1': 'query_params',
      '3': 1,
      '4': 3,
      '5': 11,
      '6':
          '.nitric.proto.websockets.v1.WebsocketConnectionEvent.QueryParamsEntry',
      '10': 'queryParams'
    },
  ],
  '3': [WebsocketConnectionEvent_QueryParamsEntry$json],
};

@$core.Deprecated('Use websocketConnectionEventDescriptor instead')
const WebsocketConnectionEvent_QueryParamsEntry$json = {
  '1': 'QueryParamsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.websockets.v1.QueryValue',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `WebsocketConnectionEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketConnectionEventDescriptor = $convert.base64Decode(
    'ChhXZWJzb2NrZXRDb25uZWN0aW9uRXZlbnQSaAoMcXVlcnlfcGFyYW1zGAEgAygLMkUubml0cm'
    'ljLnByb3RvLndlYnNvY2tldHMudjEuV2Vic29ja2V0Q29ubmVjdGlvbkV2ZW50LlF1ZXJ5UGFy'
    'YW1zRW50cnlSC3F1ZXJ5UGFyYW1zGmYKEFF1ZXJ5UGFyYW1zRW50cnkSEAoDa2V5GAEgASgJUg'
    'NrZXkSPAoFdmFsdWUYAiABKAsyJi5uaXRyaWMucHJvdG8ud2Vic29ja2V0cy52MS5RdWVyeVZh'
    'bHVlUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use websocketConnectionResponseDescriptor instead')
const WebsocketConnectionResponse$json = {
  '1': 'WebsocketConnectionResponse',
  '2': [
    {'1': 'reject', '3': 1, '4': 1, '5': 8, '10': 'reject'},
  ],
};

/// Descriptor for `WebsocketConnectionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketConnectionResponseDescriptor =
    $convert.base64Decode(
        'ChtXZWJzb2NrZXRDb25uZWN0aW9uUmVzcG9uc2USFgoGcmVqZWN0GAEgASgIUgZyZWplY3Q=');

@$core.Deprecated('Use websocketDisconnectionEventDescriptor instead')
const WebsocketDisconnectionEvent$json = {
  '1': 'WebsocketDisconnectionEvent',
};

/// Descriptor for `WebsocketDisconnectionEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketDisconnectionEventDescriptor =
    $convert.base64Decode('ChtXZWJzb2NrZXREaXNjb25uZWN0aW9uRXZlbnQ=');

@$core.Deprecated('Use websocketMessageEventDescriptor instead')
const WebsocketMessageEvent$json = {
  '1': 'WebsocketMessageEvent',
  '2': [
    {'1': 'body', '3': 1, '4': 1, '5': 12, '10': 'body'},
  ],
};

/// Descriptor for `WebsocketMessageEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketMessageEventDescriptor =
    $convert.base64Decode(
        'ChVXZWJzb2NrZXRNZXNzYWdlRXZlbnQSEgoEYm9keRgBIAEoDFIEYm9keQ==');
