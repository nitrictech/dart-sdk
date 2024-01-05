//
//  Generated code. Do not modify.
//  source: contracts/proto/websocket/v1/websocket.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class WebsocketSendRequest extends $pb.GeneratedMessage {
  factory WebsocketSendRequest({
    $core.String? socket,
    $core.String? connectionId,
    $core.List<$core.int>? data,
  }) {
    final $result = create();
    if (socket != null) {
      $result.socket = socket;
    }
    if (connectionId != null) {
      $result.connectionId = connectionId;
    }
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  WebsocketSendRequest._() : super();
  factory WebsocketSendRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebsocketSendRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WebsocketSendRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.websocket.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'socket')
    ..aOS(2, _omitFieldNames ? '' : 'connectionId')
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebsocketSendRequest clone() => WebsocketSendRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebsocketSendRequest copyWith(void Function(WebsocketSendRequest) updates) => super.copyWith((message) => updates(message as WebsocketSendRequest)) as WebsocketSendRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebsocketSendRequest create() => WebsocketSendRequest._();
  WebsocketSendRequest createEmptyInstance() => create();
  static $pb.PbList<WebsocketSendRequest> createRepeated() => $pb.PbList<WebsocketSendRequest>();
  @$core.pragma('dart2js:noInline')
  static WebsocketSendRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebsocketSendRequest>(create);
  static WebsocketSendRequest? _defaultInstance;

  /// The nitric name of the socket to send on
  @$pb.TagNumber(1)
  $core.String get socket => $_getSZ(0);
  @$pb.TagNumber(1)
  set socket($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSocket() => $_has(0);
  @$pb.TagNumber(1)
  void clearSocket() => clearField(1);

  /// The connection ID of the client to send to
  @$pb.TagNumber(2)
  $core.String get connectionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set connectionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectionId() => clearField(2);

  /// The data to send to the socket
  @$pb.TagNumber(3)
  $core.List<$core.int> get data => $_getN(2);
  @$pb.TagNumber(3)
  set data($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => clearField(3);
}

class WebsocketSendResponse extends $pb.GeneratedMessage {
  factory WebsocketSendResponse() => create();
  WebsocketSendResponse._() : super();
  factory WebsocketSendResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebsocketSendResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WebsocketSendResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.websocket.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebsocketSendResponse clone() => WebsocketSendResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebsocketSendResponse copyWith(void Function(WebsocketSendResponse) updates) => super.copyWith((message) => updates(message as WebsocketSendResponse)) as WebsocketSendResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebsocketSendResponse create() => WebsocketSendResponse._();
  WebsocketSendResponse createEmptyInstance() => create();
  static $pb.PbList<WebsocketSendResponse> createRepeated() => $pb.PbList<WebsocketSendResponse>();
  @$core.pragma('dart2js:noInline')
  static WebsocketSendResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebsocketSendResponse>(create);
  static WebsocketSendResponse? _defaultInstance;
}

class WebsocketCloseRequest extends $pb.GeneratedMessage {
  factory WebsocketCloseRequest({
    $core.String? socket,
    $core.String? connectionId,
  }) {
    final $result = create();
    if (socket != null) {
      $result.socket = socket;
    }
    if (connectionId != null) {
      $result.connectionId = connectionId;
    }
    return $result;
  }
  WebsocketCloseRequest._() : super();
  factory WebsocketCloseRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebsocketCloseRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WebsocketCloseRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.websocket.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'socket')
    ..aOS(2, _omitFieldNames ? '' : 'connectionId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebsocketCloseRequest clone() => WebsocketCloseRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebsocketCloseRequest copyWith(void Function(WebsocketCloseRequest) updates) => super.copyWith((message) => updates(message as WebsocketCloseRequest)) as WebsocketCloseRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebsocketCloseRequest create() => WebsocketCloseRequest._();
  WebsocketCloseRequest createEmptyInstance() => create();
  static $pb.PbList<WebsocketCloseRequest> createRepeated() => $pb.PbList<WebsocketCloseRequest>();
  @$core.pragma('dart2js:noInline')
  static WebsocketCloseRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebsocketCloseRequest>(create);
  static WebsocketCloseRequest? _defaultInstance;

  /// The nitric name of the socket to send on
  @$pb.TagNumber(1)
  $core.String get socket => $_getSZ(0);
  @$pb.TagNumber(1)
  set socket($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSocket() => $_has(0);
  @$pb.TagNumber(1)
  void clearSocket() => clearField(1);

  /// The connection ID of the client to send to
  @$pb.TagNumber(2)
  $core.String get connectionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set connectionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConnectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectionId() => clearField(2);
}

class WebsocketCloseResponse extends $pb.GeneratedMessage {
  factory WebsocketCloseResponse() => create();
  WebsocketCloseResponse._() : super();
  factory WebsocketCloseResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebsocketCloseResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WebsocketCloseResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.websocket.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebsocketCloseResponse clone() => WebsocketCloseResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebsocketCloseResponse copyWith(void Function(WebsocketCloseResponse) updates) => super.copyWith((message) => updates(message as WebsocketCloseResponse)) as WebsocketCloseResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebsocketCloseResponse create() => WebsocketCloseResponse._();
  WebsocketCloseResponse createEmptyInstance() => create();
  static $pb.PbList<WebsocketCloseResponse> createRepeated() => $pb.PbList<WebsocketCloseResponse>();
  @$core.pragma('dart2js:noInline')
  static WebsocketCloseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebsocketCloseResponse>(create);
  static WebsocketCloseResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
