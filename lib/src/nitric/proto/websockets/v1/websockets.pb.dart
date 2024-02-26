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

import 'websockets.pbenum.dart';

export 'websockets.pbenum.dart';

class WebsocketDetailsRequest extends $pb.GeneratedMessage {
  factory WebsocketDetailsRequest({
    $core.String? socketName,
  }) {
    final $result = create();
    if (socketName != null) {
      $result.socketName = socketName;
    }
    return $result;
  }
  WebsocketDetailsRequest._() : super();
  factory WebsocketDetailsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WebsocketDetailsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WebsocketDetailsRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.websockets.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'socketName')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WebsocketDetailsRequest clone() =>
      WebsocketDetailsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WebsocketDetailsRequest copyWith(
          void Function(WebsocketDetailsRequest) updates) =>
      super.copyWith((message) => updates(message as WebsocketDetailsRequest))
          as WebsocketDetailsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebsocketDetailsRequest create() => WebsocketDetailsRequest._();
  WebsocketDetailsRequest createEmptyInstance() => create();
  static $pb.PbList<WebsocketDetailsRequest> createRepeated() =>
      $pb.PbList<WebsocketDetailsRequest>();
  @$core.pragma('dart2js:noInline')
  static WebsocketDetailsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WebsocketDetailsRequest>(create);
  static WebsocketDetailsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get socketName => $_getSZ(0);
  @$pb.TagNumber(1)
  set socketName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSocketName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSocketName() => clearField(1);
}

class WebsocketDetailsResponse extends $pb.GeneratedMessage {
  factory WebsocketDetailsResponse({
    $core.String? url,
  }) {
    final $result = create();
    if (url != null) {
      $result.url = url;
    }
    return $result;
  }
  WebsocketDetailsResponse._() : super();
  factory WebsocketDetailsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WebsocketDetailsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WebsocketDetailsResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.websockets.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WebsocketDetailsResponse clone() =>
      WebsocketDetailsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WebsocketDetailsResponse copyWith(
          void Function(WebsocketDetailsResponse) updates) =>
      super.copyWith((message) => updates(message as WebsocketDetailsResponse))
          as WebsocketDetailsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebsocketDetailsResponse create() => WebsocketDetailsResponse._();
  WebsocketDetailsResponse createEmptyInstance() => create();
  static $pb.PbList<WebsocketDetailsResponse> createRepeated() =>
      $pb.PbList<WebsocketDetailsResponse>();
  @$core.pragma('dart2js:noInline')
  static WebsocketDetailsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WebsocketDetailsResponse>(create);
  static WebsocketDetailsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);
}

class WebsocketSendRequest extends $pb.GeneratedMessage {
  factory WebsocketSendRequest({
    $core.String? socketName,
    $core.String? connectionId,
    $core.List<$core.int>? data,
  }) {
    final $result = create();
    if (socketName != null) {
      $result.socketName = socketName;
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
  factory WebsocketSendRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WebsocketSendRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WebsocketSendRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.websockets.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'socketName')
    ..aOS(2, _omitFieldNames ? '' : 'connectionId')
    ..a<$core.List<$core.int>>(
        3, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WebsocketSendRequest clone() =>
      WebsocketSendRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WebsocketSendRequest copyWith(void Function(WebsocketSendRequest) updates) =>
      super.copyWith((message) => updates(message as WebsocketSendRequest))
          as WebsocketSendRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebsocketSendRequest create() => WebsocketSendRequest._();
  WebsocketSendRequest createEmptyInstance() => create();
  static $pb.PbList<WebsocketSendRequest> createRepeated() =>
      $pb.PbList<WebsocketSendRequest>();
  @$core.pragma('dart2js:noInline')
  static WebsocketSendRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WebsocketSendRequest>(create);
  static WebsocketSendRequest? _defaultInstance;

  /// The nitric name of the socket to send on
  @$pb.TagNumber(1)
  $core.String get socketName => $_getSZ(0);
  @$pb.TagNumber(1)
  set socketName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSocketName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSocketName() => clearField(1);

  /// The connection ID of the client to send to
  @$pb.TagNumber(2)
  $core.String get connectionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set connectionId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasConnectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectionId() => clearField(2);

  /// The data to send to the socket
  @$pb.TagNumber(3)
  $core.List<$core.int> get data => $_getN(2);
  @$pb.TagNumber(3)
  set data($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasData() => $_has(2);
  @$pb.TagNumber(3)
  void clearData() => clearField(3);
}

class WebsocketSendResponse extends $pb.GeneratedMessage {
  factory WebsocketSendResponse() => create();
  WebsocketSendResponse._() : super();
  factory WebsocketSendResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WebsocketSendResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WebsocketSendResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.websockets.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WebsocketSendResponse clone() =>
      WebsocketSendResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WebsocketSendResponse copyWith(
          void Function(WebsocketSendResponse) updates) =>
      super.copyWith((message) => updates(message as WebsocketSendResponse))
          as WebsocketSendResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebsocketSendResponse create() => WebsocketSendResponse._();
  WebsocketSendResponse createEmptyInstance() => create();
  static $pb.PbList<WebsocketSendResponse> createRepeated() =>
      $pb.PbList<WebsocketSendResponse>();
  @$core.pragma('dart2js:noInline')
  static WebsocketSendResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WebsocketSendResponse>(create);
  static WebsocketSendResponse? _defaultInstance;
}

class WebsocketCloseConnectionRequest extends $pb.GeneratedMessage {
  factory WebsocketCloseConnectionRequest({
    $core.String? socketName,
    $core.String? connectionId,
  }) {
    final $result = create();
    if (socketName != null) {
      $result.socketName = socketName;
    }
    if (connectionId != null) {
      $result.connectionId = connectionId;
    }
    return $result;
  }
  WebsocketCloseConnectionRequest._() : super();
  factory WebsocketCloseConnectionRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WebsocketCloseConnectionRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WebsocketCloseConnectionRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.websockets.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'socketName')
    ..aOS(2, _omitFieldNames ? '' : 'connectionId')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WebsocketCloseConnectionRequest clone() =>
      WebsocketCloseConnectionRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WebsocketCloseConnectionRequest copyWith(
          void Function(WebsocketCloseConnectionRequest) updates) =>
      super.copyWith(
              (message) => updates(message as WebsocketCloseConnectionRequest))
          as WebsocketCloseConnectionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebsocketCloseConnectionRequest create() =>
      WebsocketCloseConnectionRequest._();
  WebsocketCloseConnectionRequest createEmptyInstance() => create();
  static $pb.PbList<WebsocketCloseConnectionRequest> createRepeated() =>
      $pb.PbList<WebsocketCloseConnectionRequest>();
  @$core.pragma('dart2js:noInline')
  static WebsocketCloseConnectionRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WebsocketCloseConnectionRequest>(
          create);
  static WebsocketCloseConnectionRequest? _defaultInstance;

  /// The nitric name of the socket to send on
  @$pb.TagNumber(1)
  $core.String get socketName => $_getSZ(0);
  @$pb.TagNumber(1)
  set socketName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSocketName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSocketName() => clearField(1);

  /// The connection ID of the client to send to
  @$pb.TagNumber(2)
  $core.String get connectionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set connectionId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasConnectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectionId() => clearField(2);
}

class WebsocketCloseConnectionResponse extends $pb.GeneratedMessage {
  factory WebsocketCloseConnectionResponse() => create();
  WebsocketCloseConnectionResponse._() : super();
  factory WebsocketCloseConnectionResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WebsocketCloseConnectionResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WebsocketCloseConnectionResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.websockets.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WebsocketCloseConnectionResponse clone() =>
      WebsocketCloseConnectionResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WebsocketCloseConnectionResponse copyWith(
          void Function(WebsocketCloseConnectionResponse) updates) =>
      super.copyWith(
              (message) => updates(message as WebsocketCloseConnectionResponse))
          as WebsocketCloseConnectionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebsocketCloseConnectionResponse create() =>
      WebsocketCloseConnectionResponse._();
  WebsocketCloseConnectionResponse createEmptyInstance() => create();
  static $pb.PbList<WebsocketCloseConnectionResponse> createRepeated() =>
      $pb.PbList<WebsocketCloseConnectionResponse>();
  @$core.pragma('dart2js:noInline')
  static WebsocketCloseConnectionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WebsocketCloseConnectionResponse>(
          create);
  static WebsocketCloseConnectionResponse? _defaultInstance;
}

enum ClientMessage_Content {
  registrationRequest,
  websocketEventResponse,
  notSet
}

/// ClientMessages are sent from the service to the nitric server
class ClientMessage extends $pb.GeneratedMessage {
  factory ClientMessage({
    $core.String? id,
    RegistrationRequest? registrationRequest,
    WebsocketEventResponse? websocketEventResponse,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (registrationRequest != null) {
      $result.registrationRequest = registrationRequest;
    }
    if (websocketEventResponse != null) {
      $result.websocketEventResponse = websocketEventResponse;
    }
    return $result;
  }
  ClientMessage._() : super();
  factory ClientMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ClientMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ClientMessage_Content>
      _ClientMessage_ContentByTag = {
    2: ClientMessage_Content.registrationRequest,
    3: ClientMessage_Content.websocketEventResponse,
    0: ClientMessage_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClientMessage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.websockets.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<RegistrationRequest>(2, _omitFieldNames ? '' : 'registrationRequest',
        subBuilder: RegistrationRequest.create)
    ..aOM<WebsocketEventResponse>(
        3, _omitFieldNames ? '' : 'websocketEventResponse',
        subBuilder: WebsocketEventResponse.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ClientMessage clone() => ClientMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ClientMessage copyWith(void Function(ClientMessage) updates) =>
      super.copyWith((message) => updates(message as ClientMessage))
          as ClientMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClientMessage create() => ClientMessage._();
  ClientMessage createEmptyInstance() => create();
  static $pb.PbList<ClientMessage> createRepeated() =>
      $pb.PbList<ClientMessage>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ClientMessage>(create);
  static ClientMessage? _defaultInstance;

  ClientMessage_Content whichContent() =>
      _ClientMessage_ContentByTag[$_whichOneof(0)]!;
  void clearContent() => clearField($_whichOneof(0));

  /// Globally unique id to pair requests/responses
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// Client initialisation request
  /// A worker will not be eligible for triggers
  /// until it has identified itself
  @$pb.TagNumber(2)
  RegistrationRequest get registrationRequest => $_getN(1);
  @$pb.TagNumber(2)
  set registrationRequest(RegistrationRequest v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRegistrationRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegistrationRequest() => clearField(2);
  @$pb.TagNumber(2)
  RegistrationRequest ensureRegistrationRequest() => $_ensure(1);

  /// Client responding with result of a trigger
  @$pb.TagNumber(3)
  WebsocketEventResponse get websocketEventResponse => $_getN(2);
  @$pb.TagNumber(3)
  set websocketEventResponse(WebsocketEventResponse v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasWebsocketEventResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearWebsocketEventResponse() => clearField(3);
  @$pb.TagNumber(3)
  WebsocketEventResponse ensureWebsocketEventResponse() => $_ensure(2);
}

/// Placeholder message
class RegistrationResponse extends $pb.GeneratedMessage {
  factory RegistrationResponse() => create();
  RegistrationResponse._() : super();
  factory RegistrationResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegistrationResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegistrationResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.websockets.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegistrationResponse clone() =>
      RegistrationResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegistrationResponse copyWith(void Function(RegistrationResponse) updates) =>
      super.copyWith((message) => updates(message as RegistrationResponse))
          as RegistrationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegistrationResponse create() => RegistrationResponse._();
  RegistrationResponse createEmptyInstance() => create();
  static $pb.PbList<RegistrationResponse> createRepeated() =>
      $pb.PbList<RegistrationResponse>();
  @$core.pragma('dart2js:noInline')
  static RegistrationResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegistrationResponse>(create);
  static RegistrationResponse? _defaultInstance;
}

class RegistrationRequest extends $pb.GeneratedMessage {
  factory RegistrationRequest({
    $core.String? socketName,
    WebsocketEventType? eventType,
  }) {
    final $result = create();
    if (socketName != null) {
      $result.socketName = socketName;
    }
    if (eventType != null) {
      $result.eventType = eventType;
    }
    return $result;
  }
  RegistrationRequest._() : super();
  factory RegistrationRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RegistrationRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RegistrationRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.websockets.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'socketName')
    ..e<WebsocketEventType>(
        2, _omitFieldNames ? '' : 'eventType', $pb.PbFieldType.OE,
        defaultOrMaker: WebsocketEventType.Connect,
        valueOf: WebsocketEventType.valueOf,
        enumValues: WebsocketEventType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  RegistrationRequest clone() => RegistrationRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  RegistrationRequest copyWith(void Function(RegistrationRequest) updates) =>
      super.copyWith((message) => updates(message as RegistrationRequest))
          as RegistrationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegistrationRequest create() => RegistrationRequest._();
  RegistrationRequest createEmptyInstance() => create();
  static $pb.PbList<RegistrationRequest> createRepeated() =>
      $pb.PbList<RegistrationRequest>();
  @$core.pragma('dart2js:noInline')
  static RegistrationRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RegistrationRequest>(create);
  static RegistrationRequest? _defaultInstance;

  /// The nitric name of the socket that this worker listens on
  @$pb.TagNumber(1)
  $core.String get socketName => $_getSZ(0);
  @$pb.TagNumber(1)
  set socketName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSocketName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSocketName() => clearField(1);

  /// The type of event that this worker handles
  @$pb.TagNumber(2)
  WebsocketEventType get eventType => $_getN(1);
  @$pb.TagNumber(2)
  set eventType(WebsocketEventType v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasEventType() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventType() => clearField(2);
}

enum WebsocketEventRequest_WebsocketEvent {
  connection,
  disconnection,
  message,
  notSet
}

class WebsocketEventRequest extends $pb.GeneratedMessage {
  factory WebsocketEventRequest({
    $core.String? socketName,
    $core.String? connectionId,
    WebsocketConnectionEvent? connection,
    WebsocketDisconnectionEvent? disconnection,
    WebsocketMessageEvent? message,
  }) {
    final $result = create();
    if (socketName != null) {
      $result.socketName = socketName;
    }
    if (connectionId != null) {
      $result.connectionId = connectionId;
    }
    if (connection != null) {
      $result.connection = connection;
    }
    if (disconnection != null) {
      $result.disconnection = disconnection;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  WebsocketEventRequest._() : super();
  factory WebsocketEventRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WebsocketEventRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, WebsocketEventRequest_WebsocketEvent>
      _WebsocketEventRequest_WebsocketEventByTag = {
    10: WebsocketEventRequest_WebsocketEvent.connection,
    11: WebsocketEventRequest_WebsocketEvent.disconnection,
    12: WebsocketEventRequest_WebsocketEvent.message,
    0: WebsocketEventRequest_WebsocketEvent.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WebsocketEventRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.websockets.v1'),
      createEmptyInstance: create)
    ..oo(0, [10, 11, 12])
    ..aOS(1, _omitFieldNames ? '' : 'socketName')
    ..aOS(2, _omitFieldNames ? '' : 'connectionId', protoName: 'connectionId')
    ..aOM<WebsocketConnectionEvent>(10, _omitFieldNames ? '' : 'connection',
        subBuilder: WebsocketConnectionEvent.create)
    ..aOM<WebsocketDisconnectionEvent>(
        11, _omitFieldNames ? '' : 'disconnection',
        subBuilder: WebsocketDisconnectionEvent.create)
    ..aOM<WebsocketMessageEvent>(12, _omitFieldNames ? '' : 'message',
        subBuilder: WebsocketMessageEvent.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WebsocketEventRequest clone() =>
      WebsocketEventRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WebsocketEventRequest copyWith(
          void Function(WebsocketEventRequest) updates) =>
      super.copyWith((message) => updates(message as WebsocketEventRequest))
          as WebsocketEventRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebsocketEventRequest create() => WebsocketEventRequest._();
  WebsocketEventRequest createEmptyInstance() => create();
  static $pb.PbList<WebsocketEventRequest> createRepeated() =>
      $pb.PbList<WebsocketEventRequest>();
  @$core.pragma('dart2js:noInline')
  static WebsocketEventRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WebsocketEventRequest>(create);
  static WebsocketEventRequest? _defaultInstance;

  WebsocketEventRequest_WebsocketEvent whichWebsocketEvent() =>
      _WebsocketEventRequest_WebsocketEventByTag[$_whichOneof(0)]!;
  void clearWebsocketEvent() => clearField($_whichOneof(0));

  /// The nitric name of the socket that this worker listens on
  @$pb.TagNumber(1)
  $core.String get socketName => $_getSZ(0);
  @$pb.TagNumber(1)
  set socketName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSocketName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSocketName() => clearField(1);

  /// The connection this trigger came from
  @$pb.TagNumber(2)
  $core.String get connectionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set connectionId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasConnectionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearConnectionId() => clearField(2);

  @$pb.TagNumber(10)
  WebsocketConnectionEvent get connection => $_getN(2);
  @$pb.TagNumber(10)
  set connection(WebsocketConnectionEvent v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasConnection() => $_has(2);
  @$pb.TagNumber(10)
  void clearConnection() => clearField(10);
  @$pb.TagNumber(10)
  WebsocketConnectionEvent ensureConnection() => $_ensure(2);

  @$pb.TagNumber(11)
  WebsocketDisconnectionEvent get disconnection => $_getN(3);
  @$pb.TagNumber(11)
  set disconnection(WebsocketDisconnectionEvent v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasDisconnection() => $_has(3);
  @$pb.TagNumber(11)
  void clearDisconnection() => clearField(11);
  @$pb.TagNumber(11)
  WebsocketDisconnectionEvent ensureDisconnection() => $_ensure(3);

  @$pb.TagNumber(12)
  WebsocketMessageEvent get message => $_getN(4);
  @$pb.TagNumber(12)
  set message(WebsocketMessageEvent v) {
    setField(12, v);
  }

  @$pb.TagNumber(12)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(12)
  void clearMessage() => clearField(12);
  @$pb.TagNumber(12)
  WebsocketMessageEvent ensureMessage() => $_ensure(4);
}

class QueryValue extends $pb.GeneratedMessage {
  factory QueryValue({
    $core.Iterable<$core.String>? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value.addAll(value);
    }
    return $result;
  }
  QueryValue._() : super();
  factory QueryValue.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueryValue.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'QueryValue',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.websockets.v1'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  QueryValue clone() => QueryValue()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  QueryValue copyWith(void Function(QueryValue) updates) =>
      super.copyWith((message) => updates(message as QueryValue)) as QueryValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryValue create() => QueryValue._();
  QueryValue createEmptyInstance() => create();
  static $pb.PbList<QueryValue> createRepeated() => $pb.PbList<QueryValue>();
  @$core.pragma('dart2js:noInline')
  static QueryValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QueryValue>(create);
  static QueryValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get value => $_getList(0);
}

enum ServerMessage_Content {
  registrationResponse,
  websocketEventRequest,
  notSet
}

/// ServerMessages are sent from the nitric server to the service
class ServerMessage extends $pb.GeneratedMessage {
  factory ServerMessage({
    $core.String? id,
    RegistrationResponse? registrationResponse,
    WebsocketEventRequest? websocketEventRequest,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (registrationResponse != null) {
      $result.registrationResponse = registrationResponse;
    }
    if (websocketEventRequest != null) {
      $result.websocketEventRequest = websocketEventRequest;
    }
    return $result;
  }
  ServerMessage._() : super();
  factory ServerMessage.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ServerMessage.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ServerMessage_Content>
      _ServerMessage_ContentByTag = {
    2: ServerMessage_Content.registrationResponse,
    3: ServerMessage_Content.websocketEventRequest,
    0: ServerMessage_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ServerMessage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.websockets.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<RegistrationResponse>(
        2, _omitFieldNames ? '' : 'registrationResponse',
        subBuilder: RegistrationResponse.create)
    ..aOM<WebsocketEventRequest>(
        3, _omitFieldNames ? '' : 'websocketEventRequest',
        subBuilder: WebsocketEventRequest.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ServerMessage clone() => ServerMessage()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ServerMessage copyWith(void Function(ServerMessage) updates) =>
      super.copyWith((message) => updates(message as ServerMessage))
          as ServerMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServerMessage create() => ServerMessage._();
  ServerMessage createEmptyInstance() => create();
  static $pb.PbList<ServerMessage> createRepeated() =>
      $pb.PbList<ServerMessage>();
  @$core.pragma('dart2js:noInline')
  static ServerMessage getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ServerMessage>(create);
  static ServerMessage? _defaultInstance;

  ServerMessage_Content whichContent() =>
      _ServerMessage_ContentByTag[$_whichOneof(0)]!;
  void clearContent() => clearField($_whichOneof(0));

  /// Server message ID, used to pair requests/responses
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// Server responding
  /// with client configuration details to an
  /// InitRequest
  @$pb.TagNumber(2)
  RegistrationResponse get registrationResponse => $_getN(1);
  @$pb.TagNumber(2)
  set registrationResponse(RegistrationResponse v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRegistrationResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegistrationResponse() => clearField(2);
  @$pb.TagNumber(2)
  RegistrationResponse ensureRegistrationResponse() => $_ensure(1);

  /// Server requesting client to process an event
  @$pb.TagNumber(3)
  WebsocketEventRequest get websocketEventRequest => $_getN(2);
  @$pb.TagNumber(3)
  set websocketEventRequest(WebsocketEventRequest v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasWebsocketEventRequest() => $_has(2);
  @$pb.TagNumber(3)
  void clearWebsocketEventRequest() => clearField(3);
  @$pb.TagNumber(3)
  WebsocketEventRequest ensureWebsocketEventRequest() => $_ensure(2);
}

enum WebsocketEventResponse_WebsocketResponse { connectionResponse, notSet }

class WebsocketEventResponse extends $pb.GeneratedMessage {
  factory WebsocketEventResponse({
    WebsocketConnectionResponse? connectionResponse,
  }) {
    final $result = create();
    if (connectionResponse != null) {
      $result.connectionResponse = connectionResponse;
    }
    return $result;
  }
  WebsocketEventResponse._() : super();
  factory WebsocketEventResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WebsocketEventResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, WebsocketEventResponse_WebsocketResponse>
      _WebsocketEventResponse_WebsocketResponseByTag = {
    10: WebsocketEventResponse_WebsocketResponse.connectionResponse,
    0: WebsocketEventResponse_WebsocketResponse.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WebsocketEventResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.websockets.v1'),
      createEmptyInstance: create)
    ..oo(0, [10])
    ..aOM<WebsocketConnectionResponse>(
        10, _omitFieldNames ? '' : 'connectionResponse',
        subBuilder: WebsocketConnectionResponse.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WebsocketEventResponse clone() =>
      WebsocketEventResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WebsocketEventResponse copyWith(
          void Function(WebsocketEventResponse) updates) =>
      super.copyWith((message) => updates(message as WebsocketEventResponse))
          as WebsocketEventResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebsocketEventResponse create() => WebsocketEventResponse._();
  WebsocketEventResponse createEmptyInstance() => create();
  static $pb.PbList<WebsocketEventResponse> createRepeated() =>
      $pb.PbList<WebsocketEventResponse>();
  @$core.pragma('dart2js:noInline')
  static WebsocketEventResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WebsocketEventResponse>(create);
  static WebsocketEventResponse? _defaultInstance;

  WebsocketEventResponse_WebsocketResponse whichWebsocketResponse() =>
      _WebsocketEventResponse_WebsocketResponseByTag[$_whichOneof(0)]!;
  void clearWebsocketResponse() => clearField($_whichOneof(0));

  @$pb.TagNumber(10)
  WebsocketConnectionResponse get connectionResponse => $_getN(0);
  @$pb.TagNumber(10)
  set connectionResponse(WebsocketConnectionResponse v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasConnectionResponse() => $_has(0);
  @$pb.TagNumber(10)
  void clearConnectionResponse() => clearField(10);
  @$pb.TagNumber(10)
  WebsocketConnectionResponse ensureConnectionResponse() => $_ensure(0);
}

class WebsocketConnectionEvent extends $pb.GeneratedMessage {
  factory WebsocketConnectionEvent({
    $core.Map<$core.String, QueryValue>? queryParams,
  }) {
    final $result = create();
    if (queryParams != null) {
      $result.queryParams.addAll(queryParams);
    }
    return $result;
  }
  WebsocketConnectionEvent._() : super();
  factory WebsocketConnectionEvent.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WebsocketConnectionEvent.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WebsocketConnectionEvent',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.websockets.v1'),
      createEmptyInstance: create)
    ..m<$core.String, QueryValue>(1, _omitFieldNames ? '' : 'queryParams',
        entryClassName: 'WebsocketConnectionEvent.QueryParamsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: QueryValue.create,
        valueDefaultOrMaker: QueryValue.getDefault,
        packageName: const $pb.PackageName('nitric.proto.websockets.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WebsocketConnectionEvent clone() =>
      WebsocketConnectionEvent()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WebsocketConnectionEvent copyWith(
          void Function(WebsocketConnectionEvent) updates) =>
      super.copyWith((message) => updates(message as WebsocketConnectionEvent))
          as WebsocketConnectionEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebsocketConnectionEvent create() => WebsocketConnectionEvent._();
  WebsocketConnectionEvent createEmptyInstance() => create();
  static $pb.PbList<WebsocketConnectionEvent> createRepeated() =>
      $pb.PbList<WebsocketConnectionEvent>();
  @$core.pragma('dart2js:noInline')
  static WebsocketConnectionEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WebsocketConnectionEvent>(create);
  static WebsocketConnectionEvent? _defaultInstance;

  /// The query params available in the connection request
  @$pb.TagNumber(1)
  $core.Map<$core.String, QueryValue> get queryParams => $_getMap(0);
}

class WebsocketConnectionResponse extends $pb.GeneratedMessage {
  factory WebsocketConnectionResponse({
    $core.bool? reject,
  }) {
    final $result = create();
    if (reject != null) {
      $result.reject = reject;
    }
    return $result;
  }
  WebsocketConnectionResponse._() : super();
  factory WebsocketConnectionResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WebsocketConnectionResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WebsocketConnectionResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.websockets.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'reject')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WebsocketConnectionResponse clone() =>
      WebsocketConnectionResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WebsocketConnectionResponse copyWith(
          void Function(WebsocketConnectionResponse) updates) =>
      super.copyWith(
              (message) => updates(message as WebsocketConnectionResponse))
          as WebsocketConnectionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebsocketConnectionResponse create() =>
      WebsocketConnectionResponse._();
  WebsocketConnectionResponse createEmptyInstance() => create();
  static $pb.PbList<WebsocketConnectionResponse> createRepeated() =>
      $pb.PbList<WebsocketConnectionResponse>();
  @$core.pragma('dart2js:noInline')
  static WebsocketConnectionResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WebsocketConnectionResponse>(create);
  static WebsocketConnectionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get reject => $_getBF(0);
  @$pb.TagNumber(1)
  set reject($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasReject() => $_has(0);
  @$pb.TagNumber(1)
  void clearReject() => clearField(1);
}

class WebsocketDisconnectionEvent extends $pb.GeneratedMessage {
  factory WebsocketDisconnectionEvent() => create();
  WebsocketDisconnectionEvent._() : super();
  factory WebsocketDisconnectionEvent.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WebsocketDisconnectionEvent.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WebsocketDisconnectionEvent',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.websockets.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WebsocketDisconnectionEvent clone() =>
      WebsocketDisconnectionEvent()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WebsocketDisconnectionEvent copyWith(
          void Function(WebsocketDisconnectionEvent) updates) =>
      super.copyWith(
              (message) => updates(message as WebsocketDisconnectionEvent))
          as WebsocketDisconnectionEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebsocketDisconnectionEvent create() =>
      WebsocketDisconnectionEvent._();
  WebsocketDisconnectionEvent createEmptyInstance() => create();
  static $pb.PbList<WebsocketDisconnectionEvent> createRepeated() =>
      $pb.PbList<WebsocketDisconnectionEvent>();
  @$core.pragma('dart2js:noInline')
  static WebsocketDisconnectionEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WebsocketDisconnectionEvent>(create);
  static WebsocketDisconnectionEvent? _defaultInstance;
}

class WebsocketMessageEvent extends $pb.GeneratedMessage {
  factory WebsocketMessageEvent({
    $core.List<$core.int>? body,
  }) {
    final $result = create();
    if (body != null) {
      $result.body = body;
    }
    return $result;
  }
  WebsocketMessageEvent._() : super();
  factory WebsocketMessageEvent.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WebsocketMessageEvent.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WebsocketMessageEvent',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.websockets.v1'),
      createEmptyInstance: create)
    ..a<$core.List<$core.int>>(
        1, _omitFieldNames ? '' : 'body', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WebsocketMessageEvent clone() =>
      WebsocketMessageEvent()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WebsocketMessageEvent copyWith(
          void Function(WebsocketMessageEvent) updates) =>
      super.copyWith((message) => updates(message as WebsocketMessageEvent))
          as WebsocketMessageEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebsocketMessageEvent create() => WebsocketMessageEvent._();
  WebsocketMessageEvent createEmptyInstance() => create();
  static $pb.PbList<WebsocketMessageEvent> createRepeated() =>
      $pb.PbList<WebsocketMessageEvent>();
  @$core.pragma('dart2js:noInline')
  static WebsocketMessageEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WebsocketMessageEvent>(create);
  static WebsocketMessageEvent? _defaultInstance;

  /// Data available on
  @$pb.TagNumber(1)
  $core.List<$core.int> get body => $_getN(0);
  @$pb.TagNumber(1)
  set body($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBody() => $_has(0);
  @$pb.TagNumber(1)
  void clearBody() => clearField(1);
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
