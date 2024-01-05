//
//  Generated code. Do not modify.
//  source: contracts/proto/faas/v1/faas.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Notification Workers
class BucketNotificationType extends $pb.ProtobufEnum {
  static const BucketNotificationType All = BucketNotificationType._(0, _omitEnumNames ? '' : 'All');
  static const BucketNotificationType Created = BucketNotificationType._(1, _omitEnumNames ? '' : 'Created');
  static const BucketNotificationType Deleted = BucketNotificationType._(2, _omitEnumNames ? '' : 'Deleted');

  static const $core.List<BucketNotificationType> values = <BucketNotificationType> [
    All,
    Created,
    Deleted,
  ];

  static final $core.Map<$core.int, BucketNotificationType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static BucketNotificationType? valueOf($core.int value) => _byValue[value];

  const BucketNotificationType._($core.int v, $core.String n) : super(v, n);
}

class WebsocketEvent extends $pb.ProtobufEnum {
  static const WebsocketEvent Connect = WebsocketEvent._(0, _omitEnumNames ? '' : 'Connect');
  static const WebsocketEvent Disconnect = WebsocketEvent._(1, _omitEnumNames ? '' : 'Disconnect');
  static const WebsocketEvent Message = WebsocketEvent._(2, _omitEnumNames ? '' : 'Message');

  static const $core.List<WebsocketEvent> values = <WebsocketEvent> [
    Connect,
    Disconnect,
    Message,
  ];

  static final $core.Map<$core.int, WebsocketEvent> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WebsocketEvent? valueOf($core.int value) => _byValue[value];

  const WebsocketEvent._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
