//
//  Generated code. Do not modify.
//  source: nitric/proto/websockets/v1/websockets.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class WebsocketEventType extends $pb.ProtobufEnum {
  static const WebsocketEventType Connect = WebsocketEventType._(0, _omitEnumNames ? '' : 'Connect');
  static const WebsocketEventType Disconnect = WebsocketEventType._(1, _omitEnumNames ? '' : 'Disconnect');
  static const WebsocketEventType Message = WebsocketEventType._(2, _omitEnumNames ? '' : 'Message');

  static const $core.List<WebsocketEventType> values = <WebsocketEventType> [
    Connect,
    Disconnect,
    Message,
  ];

  static final $core.Map<$core.int, WebsocketEventType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WebsocketEventType? valueOf($core.int value) => _byValue[value];

  const WebsocketEventType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
