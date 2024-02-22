//
//  Generated code. Do not modify.
//  source: nitric/proto/apis/v1/apis.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ApiDetailsRequest extends $pb.GeneratedMessage {
  factory ApiDetailsRequest({
    $core.String? apiName,
  }) {
    final $result = create();
    if (apiName != null) {
      $result.apiName = apiName;
    }
    return $result;
  }
  ApiDetailsRequest._() : super();
  factory ApiDetailsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiDetailsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApiDetailsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.apis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'apiName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiDetailsRequest clone() => ApiDetailsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiDetailsRequest copyWith(void Function(ApiDetailsRequest) updates) => super.copyWith((message) => updates(message as ApiDetailsRequest)) as ApiDetailsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApiDetailsRequest create() => ApiDetailsRequest._();
  ApiDetailsRequest createEmptyInstance() => create();
  static $pb.PbList<ApiDetailsRequest> createRepeated() => $pb.PbList<ApiDetailsRequest>();
  @$core.pragma('dart2js:noInline')
  static ApiDetailsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiDetailsRequest>(create);
  static ApiDetailsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get apiName => $_getSZ(0);
  @$pb.TagNumber(1)
  set apiName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApiName() => $_has(0);
  @$pb.TagNumber(1)
  void clearApiName() => clearField(1);
}

class ApiDetailsResponse extends $pb.GeneratedMessage {
  factory ApiDetailsResponse({
    $core.String? url,
  }) {
    final $result = create();
    if (url != null) {
      $result.url = url;
    }
    return $result;
  }
  ApiDetailsResponse._() : super();
  factory ApiDetailsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiDetailsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApiDetailsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.apis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiDetailsResponse clone() => ApiDetailsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiDetailsResponse copyWith(void Function(ApiDetailsResponse) updates) => super.copyWith((message) => updates(message as ApiDetailsResponse)) as ApiDetailsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApiDetailsResponse create() => ApiDetailsResponse._();
  ApiDetailsResponse createEmptyInstance() => create();
  static $pb.PbList<ApiDetailsResponse> createRepeated() => $pb.PbList<ApiDetailsResponse>();
  @$core.pragma('dart2js:noInline')
  static ApiDetailsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiDetailsResponse>(create);
  static ApiDetailsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);
}

enum ClientMessage_Content {
  registrationRequest, 
  httpResponse, 
  notSet
}

/// ClientMessage sent by the service to the nitric server
class ClientMessage extends $pb.GeneratedMessage {
  factory ClientMessage({
    $core.String? id,
    RegistrationRequest? registrationRequest,
    HttpResponse? httpResponse,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (registrationRequest != null) {
      $result.registrationRequest = registrationRequest;
    }
    if (httpResponse != null) {
      $result.httpResponse = httpResponse;
    }
    return $result;
  }
  ClientMessage._() : super();
  factory ClientMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ClientMessage_Content> _ClientMessage_ContentByTag = {
    2 : ClientMessage_Content.registrationRequest,
    3 : ClientMessage_Content.httpResponse,
    0 : ClientMessage_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClientMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.apis.v1'), createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<RegistrationRequest>(2, _omitFieldNames ? '' : 'registrationRequest', subBuilder: RegistrationRequest.create)
    ..aOM<HttpResponse>(3, _omitFieldNames ? '' : 'httpResponse', subBuilder: HttpResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClientMessage clone() => ClientMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClientMessage copyWith(void Function(ClientMessage) updates) => super.copyWith((message) => updates(message as ClientMessage)) as ClientMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClientMessage create() => ClientMessage._();
  ClientMessage createEmptyInstance() => create();
  static $pb.PbList<ClientMessage> createRepeated() => $pb.PbList<ClientMessage>();
  @$core.pragma('dart2js:noInline')
  static ClientMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClientMessage>(create);
  static ClientMessage? _defaultInstance;

  ClientMessage_Content whichContent() => _ClientMessage_ContentByTag[$_whichOneof(0)]!;
  void clearContent() => clearField($_whichOneof(0));

  /// globally unique ID of the request/response pair
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// Register an API route handler
  @$pb.TagNumber(2)
  RegistrationRequest get registrationRequest => $_getN(1);
  @$pb.TagNumber(2)
  set registrationRequest(RegistrationRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRegistrationRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegistrationRequest() => clearField(2);
  @$pb.TagNumber(2)
  RegistrationRequest ensureRegistrationRequest() => $_ensure(1);

  /// Response to an HTTP request
  @$pb.TagNumber(3)
  HttpResponse get httpResponse => $_getN(2);
  @$pb.TagNumber(3)
  set httpResponse(HttpResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasHttpResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearHttpResponse() => clearField(3);
  @$pb.TagNumber(3)
  HttpResponse ensureHttpResponse() => $_ensure(2);
}

class HeaderValue extends $pb.GeneratedMessage {
  factory HeaderValue({
    $core.Iterable<$core.String>? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value.addAll(value);
    }
    return $result;
  }
  HeaderValue._() : super();
  factory HeaderValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HeaderValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HeaderValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.apis.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HeaderValue clone() => HeaderValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HeaderValue copyWith(void Function(HeaderValue) updates) => super.copyWith((message) => updates(message as HeaderValue)) as HeaderValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HeaderValue create() => HeaderValue._();
  HeaderValue createEmptyInstance() => create();
  static $pb.PbList<HeaderValue> createRepeated() => $pb.PbList<HeaderValue>();
  @$core.pragma('dart2js:noInline')
  static HeaderValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HeaderValue>(create);
  static HeaderValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get value => $_getList(0);
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
  factory QueryValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.apis.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryValue clone() => QueryValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryValue copyWith(void Function(QueryValue) updates) => super.copyWith((message) => updates(message as QueryValue)) as QueryValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueryValue create() => QueryValue._();
  QueryValue createEmptyInstance() => create();
  static $pb.PbList<QueryValue> createRepeated() => $pb.PbList<QueryValue>();
  @$core.pragma('dart2js:noInline')
  static QueryValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryValue>(create);
  static QueryValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get value => $_getList(0);
}

class HttpRequest extends $pb.GeneratedMessage {
  factory HttpRequest({
    $core.String? method,
    $core.String? path,
    $core.Map<$core.String, HeaderValue>? headers,
    $core.Map<$core.String, QueryValue>? queryParams,
    $core.Map<$core.String, $core.String>? pathParams,
    $core.List<$core.int>? body,
  }) {
    final $result = create();
    if (method != null) {
      $result.method = method;
    }
    if (path != null) {
      $result.path = path;
    }
    if (headers != null) {
      $result.headers.addAll(headers);
    }
    if (queryParams != null) {
      $result.queryParams.addAll(queryParams);
    }
    if (pathParams != null) {
      $result.pathParams.addAll(pathParams);
    }
    if (body != null) {
      $result.body = body;
    }
    return $result;
  }
  HttpRequest._() : super();
  factory HttpRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HttpRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HttpRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.apis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'method')
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..m<$core.String, HeaderValue>(3, _omitFieldNames ? '' : 'headers', entryClassName: 'HttpRequest.HeadersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: HeaderValue.create, valueDefaultOrMaker: HeaderValue.getDefault, packageName: const $pb.PackageName('nitric.proto.apis.v1'))
    ..m<$core.String, QueryValue>(4, _omitFieldNames ? '' : 'queryParams', entryClassName: 'HttpRequest.QueryParamsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: QueryValue.create, valueDefaultOrMaker: QueryValue.getDefault, packageName: const $pb.PackageName('nitric.proto.apis.v1'))
    ..m<$core.String, $core.String>(5, _omitFieldNames ? '' : 'pathParams', entryClassName: 'HttpRequest.PathParamsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('nitric.proto.apis.v1'))
    ..a<$core.List<$core.int>>(6, _omitFieldNames ? '' : 'body', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HttpRequest clone() => HttpRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HttpRequest copyWith(void Function(HttpRequest) updates) => super.copyWith((message) => updates(message as HttpRequest)) as HttpRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HttpRequest create() => HttpRequest._();
  HttpRequest createEmptyInstance() => create();
  static $pb.PbList<HttpRequest> createRepeated() => $pb.PbList<HttpRequest>();
  @$core.pragma('dart2js:noInline')
  static HttpRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HttpRequest>(create);
  static HttpRequest? _defaultInstance;

  /// The request method
  @$pb.TagNumber(1)
  $core.String get method => $_getSZ(0);
  @$pb.TagNumber(1)
  set method($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMethod() => $_has(0);
  @$pb.TagNumber(1)
  void clearMethod() => clearField(1);

  /// The path of the request
  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => clearField(2);

  /// HTTP request headers
  @$pb.TagNumber(3)
  $core.Map<$core.String, HeaderValue> get headers => $_getMap(2);

  /// HTTP Query params
  @$pb.TagNumber(4)
  $core.Map<$core.String, QueryValue> get queryParams => $_getMap(3);

  /// HTTP Path parameters
  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get pathParams => $_getMap(4);

  /// HTTP Request body
  @$pb.TagNumber(6)
  $core.List<$core.int> get body => $_getN(5);
  @$pb.TagNumber(6)
  set body($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBody() => $_has(5);
  @$pb.TagNumber(6)
  void clearBody() => clearField(6);
}

/// HttpResponseMessage
class HttpResponse extends $pb.GeneratedMessage {
  factory HttpResponse({
    $core.int? status,
    $core.Map<$core.String, HeaderValue>? headers,
    $core.List<$core.int>? body,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    if (headers != null) {
      $result.headers.addAll(headers);
    }
    if (body != null) {
      $result.body = body;
    }
    return $result;
  }
  HttpResponse._() : super();
  factory HttpResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HttpResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HttpResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.apis.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..m<$core.String, HeaderValue>(2, _omitFieldNames ? '' : 'headers', entryClassName: 'HttpResponse.HeadersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: HeaderValue.create, valueDefaultOrMaker: HeaderValue.getDefault, packageName: const $pb.PackageName('nitric.proto.apis.v1'))
    ..a<$core.List<$core.int>>(3, _omitFieldNames ? '' : 'body', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HttpResponse clone() => HttpResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HttpResponse copyWith(void Function(HttpResponse) updates) => super.copyWith((message) => updates(message as HttpResponse)) as HttpResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HttpResponse create() => HttpResponse._();
  HttpResponse createEmptyInstance() => create();
  static $pb.PbList<HttpResponse> createRepeated() => $pb.PbList<HttpResponse>();
  @$core.pragma('dart2js:noInline')
  static HttpResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HttpResponse>(create);
  static HttpResponse? _defaultInstance;

  /// The HTTP response status code
  @$pb.TagNumber(1)
  $core.int get status => $_getIZ(0);
  @$pb.TagNumber(1)
  set status($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  /// HTTP response headers
  @$pb.TagNumber(2)
  $core.Map<$core.String, HeaderValue> get headers => $_getMap(1);

  /// HTTP response body
  @$pb.TagNumber(3)
  $core.List<$core.int> get body => $_getN(2);
  @$pb.TagNumber(3)
  set body($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBody() => $_has(2);
  @$pb.TagNumber(3)
  void clearBody() => clearField(3);
}

enum ServerMessage_Content {
  registrationResponse, 
  httpRequest, 
  notSet
}

/// ServerMessage sent by the nitric server to the service
class ServerMessage extends $pb.GeneratedMessage {
  factory ServerMessage({
    $core.String? id,
    RegistrationResponse? registrationResponse,
    HttpRequest? httpRequest,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (registrationResponse != null) {
      $result.registrationResponse = registrationResponse;
    }
    if (httpRequest != null) {
      $result.httpRequest = httpRequest;
    }
    return $result;
  }
  ServerMessage._() : super();
  factory ServerMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ServerMessage_Content> _ServerMessage_ContentByTag = {
    2 : ServerMessage_Content.registrationResponse,
    3 : ServerMessage_Content.httpRequest,
    0 : ServerMessage_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServerMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.apis.v1'), createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<RegistrationResponse>(2, _omitFieldNames ? '' : 'registrationResponse', subBuilder: RegistrationResponse.create)
    ..aOM<HttpRequest>(3, _omitFieldNames ? '' : 'httpRequest', subBuilder: HttpRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServerMessage clone() => ServerMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServerMessage copyWith(void Function(ServerMessage) updates) => super.copyWith((message) => updates(message as ServerMessage)) as ServerMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServerMessage create() => ServerMessage._();
  ServerMessage createEmptyInstance() => create();
  static $pb.PbList<ServerMessage> createRepeated() => $pb.PbList<ServerMessage>();
  @$core.pragma('dart2js:noInline')
  static ServerMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerMessage>(create);
  static ServerMessage? _defaultInstance;

  ServerMessage_Content whichContent() => _ServerMessage_ContentByTag[$_whichOneof(0)]!;
  void clearContent() => clearField($_whichOneof(0));

  /// globally unique ID of the request/response pair
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// Response to an API serve request
  @$pb.TagNumber(2)
  RegistrationResponse get registrationResponse => $_getN(1);
  @$pb.TagNumber(2)
  set registrationResponse(RegistrationResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRegistrationResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearRegistrationResponse() => clearField(2);
  @$pb.TagNumber(2)
  RegistrationResponse ensureRegistrationResponse() => $_ensure(1);

  /// HTTP request to be routed to the service (handler)
  @$pb.TagNumber(3)
  HttpRequest get httpRequest => $_getN(2);
  @$pb.TagNumber(3)
  set httpRequest(HttpRequest v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasHttpRequest() => $_has(2);
  @$pb.TagNumber(3)
  void clearHttpRequest() => clearField(3);
  @$pb.TagNumber(3)
  HttpRequest ensureHttpRequest() => $_ensure(2);
}

class RegistrationResponse extends $pb.GeneratedMessage {
  factory RegistrationResponse() => create();
  RegistrationResponse._() : super();
  factory RegistrationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegistrationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegistrationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.apis.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegistrationResponse clone() => RegistrationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegistrationResponse copyWith(void Function(RegistrationResponse) updates) => super.copyWith((message) => updates(message as RegistrationResponse)) as RegistrationResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegistrationResponse create() => RegistrationResponse._();
  RegistrationResponse createEmptyInstance() => create();
  static $pb.PbList<RegistrationResponse> createRepeated() => $pb.PbList<RegistrationResponse>();
  @$core.pragma('dart2js:noInline')
  static RegistrationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegistrationResponse>(create);
  static RegistrationResponse? _defaultInstance;
}

class ApiWorkerScopes extends $pb.GeneratedMessage {
  factory ApiWorkerScopes({
    $core.Iterable<$core.String>? scopes,
  }) {
    final $result = create();
    if (scopes != null) {
      $result.scopes.addAll(scopes);
    }
    return $result;
  }
  ApiWorkerScopes._() : super();
  factory ApiWorkerScopes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiWorkerScopes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApiWorkerScopes', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.apis.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'scopes')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiWorkerScopes clone() => ApiWorkerScopes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiWorkerScopes copyWith(void Function(ApiWorkerScopes) updates) => super.copyWith((message) => updates(message as ApiWorkerScopes)) as ApiWorkerScopes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApiWorkerScopes create() => ApiWorkerScopes._();
  ApiWorkerScopes createEmptyInstance() => create();
  static $pb.PbList<ApiWorkerScopes> createRepeated() => $pb.PbList<ApiWorkerScopes>();
  @$core.pragma('dart2js:noInline')
  static ApiWorkerScopes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiWorkerScopes>(create);
  static ApiWorkerScopes? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get scopes => $_getList(0);
}

class ApiWorkerOptions extends $pb.GeneratedMessage {
  factory ApiWorkerOptions({
    $core.Map<$core.String, ApiWorkerScopes>? security,
    $core.bool? securityDisabled,
  }) {
    final $result = create();
    if (security != null) {
      $result.security.addAll(security);
    }
    if (securityDisabled != null) {
      $result.securityDisabled = securityDisabled;
    }
    return $result;
  }
  ApiWorkerOptions._() : super();
  factory ApiWorkerOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiWorkerOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApiWorkerOptions', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.apis.v1'), createEmptyInstance: create)
    ..m<$core.String, ApiWorkerScopes>(1, _omitFieldNames ? '' : 'security', entryClassName: 'ApiWorkerOptions.SecurityEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: ApiWorkerScopes.create, valueDefaultOrMaker: ApiWorkerScopes.getDefault, packageName: const $pb.PackageName('nitric.proto.apis.v1'))
    ..aOB(2, _omitFieldNames ? '' : 'securityDisabled')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApiWorkerOptions clone() => ApiWorkerOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiWorkerOptions copyWith(void Function(ApiWorkerOptions) updates) => super.copyWith((message) => updates(message as ApiWorkerOptions)) as ApiWorkerOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApiWorkerOptions create() => ApiWorkerOptions._();
  ApiWorkerOptions createEmptyInstance() => create();
  static $pb.PbList<ApiWorkerOptions> createRepeated() => $pb.PbList<ApiWorkerOptions>();
  @$core.pragma('dart2js:noInline')
  static ApiWorkerOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiWorkerOptions>(create);
  static ApiWorkerOptions? _defaultInstance;

  /// Apply security definitions to this operation
  /// This will be mapped to named ApiSecurityDefinitionResource(s)
  @$pb.TagNumber(1)
  $core.Map<$core.String, ApiWorkerScopes> get security => $_getMap(0);

  /// explicitly disable security for this endpoint
  /// We need to do this as the default value of a repeated field
  /// is always empty so there is no way of knowing if security is explicitly
  /// disabled
  @$pb.TagNumber(2)
  $core.bool get securityDisabled => $_getBF(1);
  @$pb.TagNumber(2)
  set securityDisabled($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSecurityDisabled() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecurityDisabled() => clearField(2);
}

class RegistrationRequest extends $pb.GeneratedMessage {
  factory RegistrationRequest({
    $core.String? api,
    $core.String? path,
    $core.Iterable<$core.String>? methods,
    ApiWorkerOptions? options,
  }) {
    final $result = create();
    if (api != null) {
      $result.api = api;
    }
    if (path != null) {
      $result.path = path;
    }
    if (methods != null) {
      $result.methods.addAll(methods);
    }
    if (options != null) {
      $result.options = options;
    }
    return $result;
  }
  RegistrationRequest._() : super();
  factory RegistrationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegistrationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegistrationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.apis.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'api')
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..pPS(3, _omitFieldNames ? '' : 'methods')
    ..aOM<ApiWorkerOptions>(4, _omitFieldNames ? '' : 'options', subBuilder: ApiWorkerOptions.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegistrationRequest clone() => RegistrationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegistrationRequest copyWith(void Function(RegistrationRequest) updates) => super.copyWith((message) => updates(message as RegistrationRequest)) as RegistrationRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegistrationRequest create() => RegistrationRequest._();
  RegistrationRequest createEmptyInstance() => create();
  static $pb.PbList<RegistrationRequest> createRepeated() => $pb.PbList<RegistrationRequest>();
  @$core.pragma('dart2js:noInline')
  static RegistrationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegistrationRequest>(create);
  static RegistrationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get api => $_getSZ(0);
  @$pb.TagNumber(1)
  set api($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApi() => $_has(0);
  @$pb.TagNumber(1)
  void clearApi() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.String> get methods => $_getList(2);

  @$pb.TagNumber(4)
  ApiWorkerOptions get options => $_getN(3);
  @$pb.TagNumber(4)
  set options(ApiWorkerOptions v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasOptions() => $_has(3);
  @$pb.TagNumber(4)
  void clearOptions() => clearField(4);
  @$pb.TagNumber(4)
  ApiWorkerOptions ensureOptions() => $_ensure(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
