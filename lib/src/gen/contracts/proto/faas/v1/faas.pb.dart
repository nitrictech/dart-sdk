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

import 'faas.pbenum.dart';

export 'faas.pbenum.dart';

enum ClientMessage_Content {
  initRequest, 
  triggerResponse, 
  notSet
}

/// Messages the client is able to send to the server
class ClientMessage extends $pb.GeneratedMessage {
  factory ClientMessage({
    $core.String? id,
    InitRequest? initRequest,
    TriggerResponse? triggerResponse,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (initRequest != null) {
      $result.initRequest = initRequest;
    }
    if (triggerResponse != null) {
      $result.triggerResponse = triggerResponse;
    }
    return $result;
  }
  ClientMessage._() : super();
  factory ClientMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ClientMessage_Content> _ClientMessage_ContentByTag = {
    2 : ClientMessage_Content.initRequest,
    3 : ClientMessage_Content.triggerResponse,
    0 : ClientMessage_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClientMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<InitRequest>(2, _omitFieldNames ? '' : 'initRequest', subBuilder: InitRequest.create)
    ..aOM<TriggerResponse>(3, _omitFieldNames ? '' : 'triggerResponse', subBuilder: TriggerResponse.create)
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

  /// Client message ID, used to pair requests/responses
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// Client initialisation request
  /// A worker will not be eligible for triggers
  /// until it has identified itself
  @$pb.TagNumber(2)
  InitRequest get initRequest => $_getN(1);
  @$pb.TagNumber(2)
  set initRequest(InitRequest v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasInitRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearInitRequest() => clearField(2);
  @$pb.TagNumber(2)
  InitRequest ensureInitRequest() => $_ensure(1);

  /// Client responsding with result of
  /// a trigger
  @$pb.TagNumber(3)
  TriggerResponse get triggerResponse => $_getN(2);
  @$pb.TagNumber(3)
  set triggerResponse(TriggerResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTriggerResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearTriggerResponse() => clearField(3);
  @$pb.TagNumber(3)
  TriggerResponse ensureTriggerResponse() => $_ensure(2);
}

enum ServerMessage_Content {
  initResponse, 
  triggerRequest, 
  notSet
}

/// Messages the server is able to send to the client
class ServerMessage extends $pb.GeneratedMessage {
  factory ServerMessage({
    $core.String? id,
    InitResponse? initResponse,
    TriggerRequest? triggerRequest,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (initResponse != null) {
      $result.initResponse = initResponse;
    }
    if (triggerRequest != null) {
      $result.triggerRequest = triggerRequest;
    }
    return $result;
  }
  ServerMessage._() : super();
  factory ServerMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ServerMessage_Content> _ServerMessage_ContentByTag = {
    2 : ServerMessage_Content.initResponse,
    3 : ServerMessage_Content.triggerRequest,
    0 : ServerMessage_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServerMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<InitResponse>(2, _omitFieldNames ? '' : 'initResponse', subBuilder: InitResponse.create)
    ..aOM<TriggerRequest>(3, _omitFieldNames ? '' : 'triggerRequest', subBuilder: TriggerRequest.create)
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

  /// Server message ID, used to pair requests/responses
  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  /// Server responding
  /// with client configuration details to an
  /// InitRequest
  @$pb.TagNumber(2)
  InitResponse get initResponse => $_getN(1);
  @$pb.TagNumber(2)
  set initResponse(InitResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasInitResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearInitResponse() => clearField(2);
  @$pb.TagNumber(2)
  InitResponse ensureInitResponse() => $_ensure(1);

  /// Server requesting client to
  /// process a trigger
  @$pb.TagNumber(3)
  TriggerRequest get triggerRequest => $_getN(2);
  @$pb.TagNumber(3)
  set triggerRequest(TriggerRequest v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTriggerRequest() => $_has(2);
  @$pb.TagNumber(3)
  void clearTriggerRequest() => clearField(3);
  @$pb.TagNumber(3)
  TriggerRequest ensureTriggerRequest() => $_ensure(2);
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApiWorkerScopes', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApiWorkerOptions', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..m<$core.String, ApiWorkerScopes>(1, _omitFieldNames ? '' : 'security', entryClassName: 'ApiWorkerOptions.SecurityEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: ApiWorkerScopes.create, valueDefaultOrMaker: ApiWorkerScopes.getDefault, packageName: const $pb.PackageName('nitric.faas.v1'))
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
  @$pb.TagNumber(1)
  $core.Map<$core.String, ApiWorkerScopes> get security => $_getMap(0);

  /// explicitly disable security for this endpoint
  /// We need to do this as the default value of a repeated field
  /// is always empty so there is no way of knowing if security is explicitly disabled
  @$pb.TagNumber(2)
  $core.bool get securityDisabled => $_getBF(1);
  @$pb.TagNumber(2)
  set securityDisabled($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSecurityDisabled() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecurityDisabled() => clearField(2);
}

class ApiWorker extends $pb.GeneratedMessage {
  factory ApiWorker({
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
  ApiWorker._() : super();
  factory ApiWorker.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApiWorker.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApiWorker', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
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
  ApiWorker clone() => ApiWorker()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApiWorker copyWith(void Function(ApiWorker) updates) => super.copyWith((message) => updates(message as ApiWorker)) as ApiWorker;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApiWorker create() => ApiWorker._();
  ApiWorker createEmptyInstance() => create();
  static $pb.PbList<ApiWorker> createRepeated() => $pb.PbList<ApiWorker>();
  @$core.pragma('dart2js:noInline')
  static ApiWorker getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApiWorker>(create);
  static ApiWorker? _defaultInstance;

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

class SubscriptionWorker extends $pb.GeneratedMessage {
  factory SubscriptionWorker({
    $core.String? topic,
  }) {
    final $result = create();
    if (topic != null) {
      $result.topic = topic;
    }
    return $result;
  }
  SubscriptionWorker._() : super();
  factory SubscriptionWorker.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscriptionWorker.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubscriptionWorker', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'topic')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscriptionWorker clone() => SubscriptionWorker()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscriptionWorker copyWith(void Function(SubscriptionWorker) updates) => super.copyWith((message) => updates(message as SubscriptionWorker)) as SubscriptionWorker;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubscriptionWorker create() => SubscriptionWorker._();
  SubscriptionWorker createEmptyInstance() => create();
  static $pb.PbList<SubscriptionWorker> createRepeated() => $pb.PbList<SubscriptionWorker>();
  @$core.pragma('dart2js:noInline')
  static SubscriptionWorker getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscriptionWorker>(create);
  static SubscriptionWorker? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get topic => $_getSZ(0);
  @$pb.TagNumber(1)
  set topic($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTopic() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopic() => clearField(1);
}

enum ScheduleWorker_Cadence {
  rate, 
  cron, 
  notSet
}

class ScheduleWorker extends $pb.GeneratedMessage {
  factory ScheduleWorker({
    $core.String? key,
    ScheduleRate? rate,
    ScheduleCron? cron,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (rate != null) {
      $result.rate = rate;
    }
    if (cron != null) {
      $result.cron = cron;
    }
    return $result;
  }
  ScheduleWorker._() : super();
  factory ScheduleWorker.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScheduleWorker.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ScheduleWorker_Cadence> _ScheduleWorker_CadenceByTag = {
    10 : ScheduleWorker_Cadence.rate,
    11 : ScheduleWorker_Cadence.cron,
    0 : ScheduleWorker_Cadence.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ScheduleWorker', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..oo(0, [10, 11])
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOM<ScheduleRate>(10, _omitFieldNames ? '' : 'rate', subBuilder: ScheduleRate.create)
    ..aOM<ScheduleCron>(11, _omitFieldNames ? '' : 'cron', subBuilder: ScheduleCron.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScheduleWorker clone() => ScheduleWorker()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScheduleWorker copyWith(void Function(ScheduleWorker) updates) => super.copyWith((message) => updates(message as ScheduleWorker)) as ScheduleWorker;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScheduleWorker create() => ScheduleWorker._();
  ScheduleWorker createEmptyInstance() => create();
  static $pb.PbList<ScheduleWorker> createRepeated() => $pb.PbList<ScheduleWorker>();
  @$core.pragma('dart2js:noInline')
  static ScheduleWorker getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScheduleWorker>(create);
  static ScheduleWorker? _defaultInstance;

  ScheduleWorker_Cadence whichCadence() => _ScheduleWorker_CadenceByTag[$_whichOneof(0)]!;
  void clearCadence() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(10)
  ScheduleRate get rate => $_getN(1);
  @$pb.TagNumber(10)
  set rate(ScheduleRate v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasRate() => $_has(1);
  @$pb.TagNumber(10)
  void clearRate() => clearField(10);
  @$pb.TagNumber(10)
  ScheduleRate ensureRate() => $_ensure(1);

  @$pb.TagNumber(11)
  ScheduleCron get cron => $_getN(2);
  @$pb.TagNumber(11)
  set cron(ScheduleCron v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasCron() => $_has(2);
  @$pb.TagNumber(11)
  void clearCron() => clearField(11);
  @$pb.TagNumber(11)
  ScheduleCron ensureCron() => $_ensure(2);
}

class ScheduleRate extends $pb.GeneratedMessage {
  factory ScheduleRate({
    $core.String? rate,
  }) {
    final $result = create();
    if (rate != null) {
      $result.rate = rate;
    }
    return $result;
  }
  ScheduleRate._() : super();
  factory ScheduleRate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScheduleRate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ScheduleRate', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'rate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScheduleRate clone() => ScheduleRate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScheduleRate copyWith(void Function(ScheduleRate) updates) => super.copyWith((message) => updates(message as ScheduleRate)) as ScheduleRate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScheduleRate create() => ScheduleRate._();
  ScheduleRate createEmptyInstance() => create();
  static $pb.PbList<ScheduleRate> createRepeated() => $pb.PbList<ScheduleRate>();
  @$core.pragma('dart2js:noInline')
  static ScheduleRate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScheduleRate>(create);
  static ScheduleRate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get rate => $_getSZ(0);
  @$pb.TagNumber(1)
  set rate($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRate() => $_has(0);
  @$pb.TagNumber(1)
  void clearRate() => clearField(1);
}

class ScheduleCron extends $pb.GeneratedMessage {
  factory ScheduleCron({
    $core.String? cron,
  }) {
    final $result = create();
    if (cron != null) {
      $result.cron = cron;
    }
    return $result;
  }
  ScheduleCron._() : super();
  factory ScheduleCron.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScheduleCron.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ScheduleCron', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cron')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScheduleCron clone() => ScheduleCron()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScheduleCron copyWith(void Function(ScheduleCron) updates) => super.copyWith((message) => updates(message as ScheduleCron)) as ScheduleCron;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScheduleCron create() => ScheduleCron._();
  ScheduleCron createEmptyInstance() => create();
  static $pb.PbList<ScheduleCron> createRepeated() => $pb.PbList<ScheduleCron>();
  @$core.pragma('dart2js:noInline')
  static ScheduleCron getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScheduleCron>(create);
  static ScheduleCron? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cron => $_getSZ(0);
  @$pb.TagNumber(1)
  set cron($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCron() => $_has(0);
  @$pb.TagNumber(1)
  void clearCron() => clearField(1);
}

class HttpWorker extends $pb.GeneratedMessage {
  factory HttpWorker({
    $core.int? port,
  }) {
    final $result = create();
    if (port != null) {
      $result.port = port;
    }
    return $result;
  }
  HttpWorker._() : super();
  factory HttpWorker.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HttpWorker.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HttpWorker', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'port', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HttpWorker clone() => HttpWorker()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HttpWorker copyWith(void Function(HttpWorker) updates) => super.copyWith((message) => updates(message as HttpWorker)) as HttpWorker;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HttpWorker create() => HttpWorker._();
  HttpWorker createEmptyInstance() => create();
  static $pb.PbList<HttpWorker> createRepeated() => $pb.PbList<HttpWorker>();
  @$core.pragma('dart2js:noInline')
  static HttpWorker getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HttpWorker>(create);
  static HttpWorker? _defaultInstance;

  /// The local port the server can be accessed on
  @$pb.TagNumber(1)
  $core.int get port => $_getIZ(0);
  @$pb.TagNumber(1)
  set port($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPort() => $_has(0);
  @$pb.TagNumber(1)
  void clearPort() => clearField(1);
}

class BucketNotificationWorker extends $pb.GeneratedMessage {
  factory BucketNotificationWorker({
    $core.String? bucket,
    BucketNotificationConfig? config,
  }) {
    final $result = create();
    if (bucket != null) {
      $result.bucket = bucket;
    }
    if (config != null) {
      $result.config = config;
    }
    return $result;
  }
  BucketNotificationWorker._() : super();
  factory BucketNotificationWorker.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BucketNotificationWorker.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BucketNotificationWorker', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'bucket')
    ..aOM<BucketNotificationConfig>(2, _omitFieldNames ? '' : 'config', subBuilder: BucketNotificationConfig.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BucketNotificationWorker clone() => BucketNotificationWorker()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BucketNotificationWorker copyWith(void Function(BucketNotificationWorker) updates) => super.copyWith((message) => updates(message as BucketNotificationWorker)) as BucketNotificationWorker;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BucketNotificationWorker create() => BucketNotificationWorker._();
  BucketNotificationWorker createEmptyInstance() => create();
  static $pb.PbList<BucketNotificationWorker> createRepeated() => $pb.PbList<BucketNotificationWorker>();
  @$core.pragma('dart2js:noInline')
  static BucketNotificationWorker getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BucketNotificationWorker>(create);
  static BucketNotificationWorker? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bucket => $_getSZ(0);
  @$pb.TagNumber(1)
  set bucket($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBucket() => $_has(0);
  @$pb.TagNumber(1)
  void clearBucket() => clearField(1);

  @$pb.TagNumber(2)
  BucketNotificationConfig get config => $_getN(1);
  @$pb.TagNumber(2)
  set config(BucketNotificationConfig v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConfig() => $_has(1);
  @$pb.TagNumber(2)
  void clearConfig() => clearField(2);
  @$pb.TagNumber(2)
  BucketNotificationConfig ensureConfig() => $_ensure(1);
}

class BucketNotificationConfig extends $pb.GeneratedMessage {
  factory BucketNotificationConfig({
    BucketNotificationType? notificationType,
    $core.String? notificationPrefixFilter,
  }) {
    final $result = create();
    if (notificationType != null) {
      $result.notificationType = notificationType;
    }
    if (notificationPrefixFilter != null) {
      $result.notificationPrefixFilter = notificationPrefixFilter;
    }
    return $result;
  }
  BucketNotificationConfig._() : super();
  factory BucketNotificationConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BucketNotificationConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BucketNotificationConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..e<BucketNotificationType>(1, _omitFieldNames ? '' : 'notificationType', $pb.PbFieldType.OE, defaultOrMaker: BucketNotificationType.All, valueOf: BucketNotificationType.valueOf, enumValues: BucketNotificationType.values)
    ..aOS(2, _omitFieldNames ? '' : 'notificationPrefixFilter')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BucketNotificationConfig clone() => BucketNotificationConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BucketNotificationConfig copyWith(void Function(BucketNotificationConfig) updates) => super.copyWith((message) => updates(message as BucketNotificationConfig)) as BucketNotificationConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BucketNotificationConfig create() => BucketNotificationConfig._();
  BucketNotificationConfig createEmptyInstance() => create();
  static $pb.PbList<BucketNotificationConfig> createRepeated() => $pb.PbList<BucketNotificationConfig>();
  @$core.pragma('dart2js:noInline')
  static BucketNotificationConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BucketNotificationConfig>(create);
  static BucketNotificationConfig? _defaultInstance;

  @$pb.TagNumber(1)
  BucketNotificationType get notificationType => $_getN(0);
  @$pb.TagNumber(1)
  set notificationType(BucketNotificationType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNotificationType() => $_has(0);
  @$pb.TagNumber(1)
  void clearNotificationType() => clearField(1);

  /// A notification filter is a prefix for a bucket object in which creations or deletions should trigger a notification:
  /// e.g. Notification filter: /images/cat and Event Type: created, would trigger on creating /images/cat.png and /images/cat.jpg but not creating /cat.png
  @$pb.TagNumber(2)
  $core.String get notificationPrefixFilter => $_getSZ(1);
  @$pb.TagNumber(2)
  set notificationPrefixFilter($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNotificationPrefixFilter() => $_has(1);
  @$pb.TagNumber(2)
  void clearNotificationPrefixFilter() => clearField(2);
}

class WebsocketWorker extends $pb.GeneratedMessage {
  factory WebsocketWorker({
    $core.String? socket,
    WebsocketEvent? event,
  }) {
    final $result = create();
    if (socket != null) {
      $result.socket = socket;
    }
    if (event != null) {
      $result.event = event;
    }
    return $result;
  }
  WebsocketWorker._() : super();
  factory WebsocketWorker.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebsocketWorker.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WebsocketWorker', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'socket')
    ..e<WebsocketEvent>(2, _omitFieldNames ? '' : 'event', $pb.PbFieldType.OE, defaultOrMaker: WebsocketEvent.Connect, valueOf: WebsocketEvent.valueOf, enumValues: WebsocketEvent.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebsocketWorker clone() => WebsocketWorker()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebsocketWorker copyWith(void Function(WebsocketWorker) updates) => super.copyWith((message) => updates(message as WebsocketWorker)) as WebsocketWorker;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebsocketWorker create() => WebsocketWorker._();
  WebsocketWorker createEmptyInstance() => create();
  static $pb.PbList<WebsocketWorker> createRepeated() => $pb.PbList<WebsocketWorker>();
  @$core.pragma('dart2js:noInline')
  static WebsocketWorker getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebsocketWorker>(create);
  static WebsocketWorker? _defaultInstance;

  /// The nitric name of the socket that this worker listens on
  @$pb.TagNumber(1)
  $core.String get socket => $_getSZ(0);
  @$pb.TagNumber(1)
  set socket($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSocket() => $_has(0);
  @$pb.TagNumber(1)
  void clearSocket() => clearField(1);

  /// The type of event that this worker handles
  @$pb.TagNumber(2)
  WebsocketEvent get event => $_getN(1);
  @$pb.TagNumber(2)
  set event(WebsocketEvent v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEvent() => $_has(1);
  @$pb.TagNumber(2)
  void clearEvent() => clearField(2);
}

enum InitRequest_Worker {
  api, 
  subscription, 
  schedule, 
  bucketNotification, 
  websocket, 
  httpWorker, 
  notSet
}

/// InitRequest - Identifies a worker as ready to recieve triggers
/// This message will contain information on the type of triggers that
/// a worker is capable of handling
class InitRequest extends $pb.GeneratedMessage {
  factory InitRequest({
    ApiWorker? api,
    SubscriptionWorker? subscription,
    ScheduleWorker? schedule,
    BucketNotificationWorker? bucketNotification,
    WebsocketWorker? websocket,
    HttpWorker? httpWorker,
  }) {
    final $result = create();
    if (api != null) {
      $result.api = api;
    }
    if (subscription != null) {
      $result.subscription = subscription;
    }
    if (schedule != null) {
      $result.schedule = schedule;
    }
    if (bucketNotification != null) {
      $result.bucketNotification = bucketNotification;
    }
    if (websocket != null) {
      $result.websocket = websocket;
    }
    if (httpWorker != null) {
      $result.httpWorker = httpWorker;
    }
    return $result;
  }
  InitRequest._() : super();
  factory InitRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, InitRequest_Worker> _InitRequest_WorkerByTag = {
    10 : InitRequest_Worker.api,
    11 : InitRequest_Worker.subscription,
    12 : InitRequest_Worker.schedule,
    13 : InitRequest_Worker.bucketNotification,
    14 : InitRequest_Worker.websocket,
    15 : InitRequest_Worker.httpWorker,
    0 : InitRequest_Worker.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InitRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..oo(0, [10, 11, 12, 13, 14, 15])
    ..aOM<ApiWorker>(10, _omitFieldNames ? '' : 'api', subBuilder: ApiWorker.create)
    ..aOM<SubscriptionWorker>(11, _omitFieldNames ? '' : 'subscription', subBuilder: SubscriptionWorker.create)
    ..aOM<ScheduleWorker>(12, _omitFieldNames ? '' : 'schedule', subBuilder: ScheduleWorker.create)
    ..aOM<BucketNotificationWorker>(13, _omitFieldNames ? '' : 'bucketNotification', subBuilder: BucketNotificationWorker.create)
    ..aOM<WebsocketWorker>(14, _omitFieldNames ? '' : 'websocket', subBuilder: WebsocketWorker.create)
    ..aOM<HttpWorker>(15, _omitFieldNames ? '' : 'httpWorker', subBuilder: HttpWorker.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitRequest clone() => InitRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitRequest copyWith(void Function(InitRequest) updates) => super.copyWith((message) => updates(message as InitRequest)) as InitRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InitRequest create() => InitRequest._();
  InitRequest createEmptyInstance() => create();
  static $pb.PbList<InitRequest> createRepeated() => $pb.PbList<InitRequest>();
  @$core.pragma('dart2js:noInline')
  static InitRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitRequest>(create);
  static InitRequest? _defaultInstance;

  InitRequest_Worker whichWorker() => _InitRequest_WorkerByTag[$_whichOneof(0)]!;
  void clearWorker() => clearField($_whichOneof(0));

  @$pb.TagNumber(10)
  ApiWorker get api => $_getN(0);
  @$pb.TagNumber(10)
  set api(ApiWorker v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasApi() => $_has(0);
  @$pb.TagNumber(10)
  void clearApi() => clearField(10);
  @$pb.TagNumber(10)
  ApiWorker ensureApi() => $_ensure(0);

  @$pb.TagNumber(11)
  SubscriptionWorker get subscription => $_getN(1);
  @$pb.TagNumber(11)
  set subscription(SubscriptionWorker v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasSubscription() => $_has(1);
  @$pb.TagNumber(11)
  void clearSubscription() => clearField(11);
  @$pb.TagNumber(11)
  SubscriptionWorker ensureSubscription() => $_ensure(1);

  @$pb.TagNumber(12)
  ScheduleWorker get schedule => $_getN(2);
  @$pb.TagNumber(12)
  set schedule(ScheduleWorker v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasSchedule() => $_has(2);
  @$pb.TagNumber(12)
  void clearSchedule() => clearField(12);
  @$pb.TagNumber(12)
  ScheduleWorker ensureSchedule() => $_ensure(2);

  @$pb.TagNumber(13)
  BucketNotificationWorker get bucketNotification => $_getN(3);
  @$pb.TagNumber(13)
  set bucketNotification(BucketNotificationWorker v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasBucketNotification() => $_has(3);
  @$pb.TagNumber(13)
  void clearBucketNotification() => clearField(13);
  @$pb.TagNumber(13)
  BucketNotificationWorker ensureBucketNotification() => $_ensure(3);

  @$pb.TagNumber(14)
  WebsocketWorker get websocket => $_getN(4);
  @$pb.TagNumber(14)
  set websocket(WebsocketWorker v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasWebsocket() => $_has(4);
  @$pb.TagNumber(14)
  void clearWebsocket() => clearField(14);
  @$pb.TagNumber(14)
  WebsocketWorker ensureWebsocket() => $_ensure(4);

  @$pb.TagNumber(15)
  HttpWorker get httpWorker => $_getN(5);
  @$pb.TagNumber(15)
  set httpWorker(HttpWorker v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasHttpWorker() => $_has(5);
  @$pb.TagNumber(15)
  void clearHttpWorker() => clearField(15);
  @$pb.TagNumber(15)
  HttpWorker ensureHttpWorker() => $_ensure(5);
}

/// Placeholder message
class InitResponse extends $pb.GeneratedMessage {
  factory InitResponse() => create();
  InitResponse._() : super();
  factory InitResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InitResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InitResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InitResponse clone() => InitResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InitResponse copyWith(void Function(InitResponse) updates) => super.copyWith((message) => updates(message as InitResponse)) as InitResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InitResponse create() => InitResponse._();
  InitResponse createEmptyInstance() => create();
  static $pb.PbList<InitResponse> createRepeated() => $pb.PbList<InitResponse>();
  @$core.pragma('dart2js:noInline')
  static InitResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InitResponse>(create);
  static InitResponse? _defaultInstance;
}

class TraceContext extends $pb.GeneratedMessage {
  factory TraceContext({
    $core.Map<$core.String, $core.String>? values,
  }) {
    final $result = create();
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  TraceContext._() : super();
  factory TraceContext.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TraceContext.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TraceContext', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'values', entryClassName: 'TraceContext.ValuesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('nitric.faas.v1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TraceContext clone() => TraceContext()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TraceContext copyWith(void Function(TraceContext) updates) => super.copyWith((message) => updates(message as TraceContext)) as TraceContext;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TraceContext create() => TraceContext._();
  TraceContext createEmptyInstance() => create();
  static $pb.PbList<TraceContext> createRepeated() => $pb.PbList<TraceContext>();
  @$core.pragma('dart2js:noInline')
  static TraceContext getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TraceContext>(create);
  static TraceContext? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get values => $_getMap(0);
}

enum TriggerRequest_Context {
  http, 
  topic, 
  notification, 
  websocket, 
  notSet
}

/// The server has a trigger for the client to handle
class TriggerRequest extends $pb.GeneratedMessage {
  factory TriggerRequest({
    $core.List<$core.int>? data,
    $core.String? mimeType,
    HttpTriggerContext? http,
    TopicTriggerContext? topic,
    NotificationTriggerContext? notification,
    WebsocketTriggerContext? websocket,
    TraceContext? traceContext,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    if (mimeType != null) {
      $result.mimeType = mimeType;
    }
    if (http != null) {
      $result.http = http;
    }
    if (topic != null) {
      $result.topic = topic;
    }
    if (notification != null) {
      $result.notification = notification;
    }
    if (websocket != null) {
      $result.websocket = websocket;
    }
    if (traceContext != null) {
      $result.traceContext = traceContext;
    }
    return $result;
  }
  TriggerRequest._() : super();
  factory TriggerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TriggerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, TriggerRequest_Context> _TriggerRequest_ContextByTag = {
    3 : TriggerRequest_Context.http,
    4 : TriggerRequest_Context.topic,
    5 : TriggerRequest_Context.notification,
    6 : TriggerRequest_Context.websocket,
    0 : TriggerRequest_Context.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TriggerRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..oo(0, [3, 4, 5, 6])
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..aOS(2, _omitFieldNames ? '' : 'mimeType')
    ..aOM<HttpTriggerContext>(3, _omitFieldNames ? '' : 'http', subBuilder: HttpTriggerContext.create)
    ..aOM<TopicTriggerContext>(4, _omitFieldNames ? '' : 'topic', subBuilder: TopicTriggerContext.create)
    ..aOM<NotificationTriggerContext>(5, _omitFieldNames ? '' : 'notification', subBuilder: NotificationTriggerContext.create)
    ..aOM<WebsocketTriggerContext>(6, _omitFieldNames ? '' : 'websocket', subBuilder: WebsocketTriggerContext.create)
    ..aOM<TraceContext>(10, _omitFieldNames ? '' : 'traceContext', subBuilder: TraceContext.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TriggerRequest clone() => TriggerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TriggerRequest copyWith(void Function(TriggerRequest) updates) => super.copyWith((message) => updates(message as TriggerRequest)) as TriggerRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TriggerRequest create() => TriggerRequest._();
  TriggerRequest createEmptyInstance() => create();
  static $pb.PbList<TriggerRequest> createRepeated() => $pb.PbList<TriggerRequest>();
  @$core.pragma('dart2js:noInline')
  static TriggerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TriggerRequest>(create);
  static TriggerRequest? _defaultInstance;

  TriggerRequest_Context whichContext() => _TriggerRequest_ContextByTag[$_whichOneof(0)]!;
  void clearContext() => clearField($_whichOneof(0));

  /// The data in the trigger
  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);

  /// Should we supply a mime type for the data?
  /// Or rely on context?
  @$pb.TagNumber(2)
  $core.String get mimeType => $_getSZ(1);
  @$pb.TagNumber(2)
  set mimeType($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMimeType() => $_has(1);
  @$pb.TagNumber(2)
  void clearMimeType() => clearField(2);

  @$pb.TagNumber(3)
  HttpTriggerContext get http => $_getN(2);
  @$pb.TagNumber(3)
  set http(HttpTriggerContext v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasHttp() => $_has(2);
  @$pb.TagNumber(3)
  void clearHttp() => clearField(3);
  @$pb.TagNumber(3)
  HttpTriggerContext ensureHttp() => $_ensure(2);

  @$pb.TagNumber(4)
  TopicTriggerContext get topic => $_getN(3);
  @$pb.TagNumber(4)
  set topic(TopicTriggerContext v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTopic() => $_has(3);
  @$pb.TagNumber(4)
  void clearTopic() => clearField(4);
  @$pb.TagNumber(4)
  TopicTriggerContext ensureTopic() => $_ensure(3);

  @$pb.TagNumber(5)
  NotificationTriggerContext get notification => $_getN(4);
  @$pb.TagNumber(5)
  set notification(NotificationTriggerContext v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasNotification() => $_has(4);
  @$pb.TagNumber(5)
  void clearNotification() => clearField(5);
  @$pb.TagNumber(5)
  NotificationTriggerContext ensureNotification() => $_ensure(4);

  @$pb.TagNumber(6)
  WebsocketTriggerContext get websocket => $_getN(5);
  @$pb.TagNumber(6)
  set websocket(WebsocketTriggerContext v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasWebsocket() => $_has(5);
  @$pb.TagNumber(6)
  void clearWebsocket() => clearField(6);
  @$pb.TagNumber(6)
  WebsocketTriggerContext ensureWebsocket() => $_ensure(5);

  /// TraceInformation from the membrane
  /// Allows tying traces from external triggers (e.g. HttpRequests)
  /// into each event request/response pair of the Bidirectional stream.
  /// which cannot be facilitated by OOTB stream interceptors from OTEL.
  @$pb.TagNumber(10)
  TraceContext get traceContext => $_getN(6);
  @$pb.TagNumber(10)
  set traceContext(TraceContext v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasTraceContext() => $_has(6);
  @$pb.TagNumber(10)
  void clearTraceContext() => clearField(10);
  @$pb.TagNumber(10)
  TraceContext ensureTraceContext() => $_ensure(6);
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HeaderValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueryValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
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

class HttpTriggerContext extends $pb.GeneratedMessage {
  factory HttpTriggerContext({
    $core.String? method,
    $core.String? path,
  @$core.Deprecated('This field is deprecated.')
    $core.Map<$core.String, $core.String>? headersOld,
  @$core.Deprecated('This field is deprecated.')
    $core.Map<$core.String, $core.String>? queryParamsOld,
    $core.Map<$core.String, HeaderValue>? headers,
    $core.Map<$core.String, QueryValue>? queryParams,
    $core.Map<$core.String, $core.String>? pathParams,
  }) {
    final $result = create();
    if (method != null) {
      $result.method = method;
    }
    if (path != null) {
      $result.path = path;
    }
    if (headersOld != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.headersOld.addAll(headersOld);
    }
    if (queryParamsOld != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.queryParamsOld.addAll(queryParamsOld);
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
    return $result;
  }
  HttpTriggerContext._() : super();
  factory HttpTriggerContext.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HttpTriggerContext.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HttpTriggerContext', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'method')
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'headersOld', entryClassName: 'HttpTriggerContext.HeadersOldEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('nitric.faas.v1'))
    ..m<$core.String, $core.String>(4, _omitFieldNames ? '' : 'queryParamsOld', entryClassName: 'HttpTriggerContext.QueryParamsOldEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('nitric.faas.v1'))
    ..m<$core.String, HeaderValue>(5, _omitFieldNames ? '' : 'headers', entryClassName: 'HttpTriggerContext.HeadersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: HeaderValue.create, valueDefaultOrMaker: HeaderValue.getDefault, packageName: const $pb.PackageName('nitric.faas.v1'))
    ..m<$core.String, QueryValue>(6, _omitFieldNames ? '' : 'queryParams', entryClassName: 'HttpTriggerContext.QueryParamsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: QueryValue.create, valueDefaultOrMaker: QueryValue.getDefault, packageName: const $pb.PackageName('nitric.faas.v1'))
    ..m<$core.String, $core.String>(7, _omitFieldNames ? '' : 'pathParams', entryClassName: 'HttpTriggerContext.PathParamsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('nitric.faas.v1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HttpTriggerContext clone() => HttpTriggerContext()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HttpTriggerContext copyWith(void Function(HttpTriggerContext) updates) => super.copyWith((message) => updates(message as HttpTriggerContext)) as HttpTriggerContext;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HttpTriggerContext create() => HttpTriggerContext._();
  HttpTriggerContext createEmptyInstance() => create();
  static $pb.PbList<HttpTriggerContext> createRepeated() => $pb.PbList<HttpTriggerContext>();
  @$core.pragma('dart2js:noInline')
  static HttpTriggerContext getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HttpTriggerContext>(create);
  static HttpTriggerContext? _defaultInstance;

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

  /// The old request headers (preserving for backwards compatibility)
  /// TODO: Remove in 1.0
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get headersOld => $_getMap(2);

  /// The old query params (preserving for backwards compatibility)
  /// TODO: Remove in 1.0
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.Map<$core.String, $core.String> get queryParamsOld => $_getMap(3);

  /// HTTP request headers
  @$pb.TagNumber(5)
  $core.Map<$core.String, HeaderValue> get headers => $_getMap(4);

  /// HTTP Query params
  @$pb.TagNumber(6)
  $core.Map<$core.String, QueryValue> get queryParams => $_getMap(5);

  /// HTTP Path parameters
  @$pb.TagNumber(7)
  $core.Map<$core.String, $core.String> get pathParams => $_getMap(6);
}

class TopicTriggerContext extends $pb.GeneratedMessage {
  factory TopicTriggerContext({
    $core.String? topic,
  }) {
    final $result = create();
    if (topic != null) {
      $result.topic = topic;
    }
    return $result;
  }
  TopicTriggerContext._() : super();
  factory TopicTriggerContext.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TopicTriggerContext.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TopicTriggerContext', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'topic')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TopicTriggerContext clone() => TopicTriggerContext()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TopicTriggerContext copyWith(void Function(TopicTriggerContext) updates) => super.copyWith((message) => updates(message as TopicTriggerContext)) as TopicTriggerContext;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TopicTriggerContext create() => TopicTriggerContext._();
  TopicTriggerContext createEmptyInstance() => create();
  static $pb.PbList<TopicTriggerContext> createRepeated() => $pb.PbList<TopicTriggerContext>();
  @$core.pragma('dart2js:noInline')
  static TopicTriggerContext getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TopicTriggerContext>(create);
  static TopicTriggerContext? _defaultInstance;

  /// The topic the message was published for
  @$pb.TagNumber(1)
  $core.String get topic => $_getSZ(0);
  @$pb.TagNumber(1)
  set topic($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTopic() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopic() => clearField(1);
}

class BucketNotification extends $pb.GeneratedMessage {
  factory BucketNotification({
    $core.String? key,
    BucketNotificationType? type,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  BucketNotification._() : super();
  factory BucketNotification.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BucketNotification.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BucketNotification', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..e<BucketNotificationType>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: BucketNotificationType.All, valueOf: BucketNotificationType.valueOf, enumValues: BucketNotificationType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BucketNotification clone() => BucketNotification()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BucketNotification copyWith(void Function(BucketNotification) updates) => super.copyWith((message) => updates(message as BucketNotification)) as BucketNotification;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BucketNotification create() => BucketNotification._();
  BucketNotification createEmptyInstance() => create();
  static $pb.PbList<BucketNotification> createRepeated() => $pb.PbList<BucketNotification>();
  @$core.pragma('dart2js:noInline')
  static BucketNotification getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BucketNotification>(create);
  static BucketNotification? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  BucketNotificationType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(BucketNotificationType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

enum NotificationTriggerContext_Notification {
  bucket, 
  notSet
}

class NotificationTriggerContext extends $pb.GeneratedMessage {
  factory NotificationTriggerContext({
    $core.String? source,
    BucketNotification? bucket,
  }) {
    final $result = create();
    if (source != null) {
      $result.source = source;
    }
    if (bucket != null) {
      $result.bucket = bucket;
    }
    return $result;
  }
  NotificationTriggerContext._() : super();
  factory NotificationTriggerContext.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotificationTriggerContext.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, NotificationTriggerContext_Notification> _NotificationTriggerContext_NotificationByTag = {
    10 : NotificationTriggerContext_Notification.bucket,
    0 : NotificationTriggerContext_Notification.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NotificationTriggerContext', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..oo(0, [10])
    ..aOS(1, _omitFieldNames ? '' : 'source')
    ..aOM<BucketNotification>(10, _omitFieldNames ? '' : 'bucket', subBuilder: BucketNotification.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotificationTriggerContext clone() => NotificationTriggerContext()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotificationTriggerContext copyWith(void Function(NotificationTriggerContext) updates) => super.copyWith((message) => updates(message as NotificationTriggerContext)) as NotificationTriggerContext;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotificationTriggerContext create() => NotificationTriggerContext._();
  NotificationTriggerContext createEmptyInstance() => create();
  static $pb.PbList<NotificationTriggerContext> createRepeated() => $pb.PbList<NotificationTriggerContext>();
  @$core.pragma('dart2js:noInline')
  static NotificationTriggerContext getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotificationTriggerContext>(create);
  static NotificationTriggerContext? _defaultInstance;

  NotificationTriggerContext_Notification whichNotification() => _NotificationTriggerContext_NotificationByTag[$_whichOneof(0)]!;
  void clearNotification() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get source => $_getSZ(0);
  @$pb.TagNumber(1)
  set source($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSource() => clearField(1);

  @$pb.TagNumber(10)
  BucketNotification get bucket => $_getN(1);
  @$pb.TagNumber(10)
  set bucket(BucketNotification v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasBucket() => $_has(1);
  @$pb.TagNumber(10)
  void clearBucket() => clearField(10);
  @$pb.TagNumber(10)
  BucketNotification ensureBucket() => $_ensure(1);
}

class WebsocketTriggerContext extends $pb.GeneratedMessage {
  factory WebsocketTriggerContext({
    $core.String? socket,
    WebsocketEvent? event,
    $core.String? connectionId,
    $core.Map<$core.String, QueryValue>? queryParams,
  }) {
    final $result = create();
    if (socket != null) {
      $result.socket = socket;
    }
    if (event != null) {
      $result.event = event;
    }
    if (connectionId != null) {
      $result.connectionId = connectionId;
    }
    if (queryParams != null) {
      $result.queryParams.addAll(queryParams);
    }
    return $result;
  }
  WebsocketTriggerContext._() : super();
  factory WebsocketTriggerContext.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebsocketTriggerContext.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WebsocketTriggerContext', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'socket')
    ..e<WebsocketEvent>(2, _omitFieldNames ? '' : 'event', $pb.PbFieldType.OE, defaultOrMaker: WebsocketEvent.Connect, valueOf: WebsocketEvent.valueOf, enumValues: WebsocketEvent.values)
    ..aOS(3, _omitFieldNames ? '' : 'connectionId', protoName: 'connectionId')
    ..m<$core.String, QueryValue>(6, _omitFieldNames ? '' : 'queryParams', entryClassName: 'WebsocketTriggerContext.QueryParamsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: QueryValue.create, valueDefaultOrMaker: QueryValue.getDefault, packageName: const $pb.PackageName('nitric.faas.v1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebsocketTriggerContext clone() => WebsocketTriggerContext()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebsocketTriggerContext copyWith(void Function(WebsocketTriggerContext) updates) => super.copyWith((message) => updates(message as WebsocketTriggerContext)) as WebsocketTriggerContext;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebsocketTriggerContext create() => WebsocketTriggerContext._();
  WebsocketTriggerContext createEmptyInstance() => create();
  static $pb.PbList<WebsocketTriggerContext> createRepeated() => $pb.PbList<WebsocketTriggerContext>();
  @$core.pragma('dart2js:noInline')
  static WebsocketTriggerContext getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebsocketTriggerContext>(create);
  static WebsocketTriggerContext? _defaultInstance;

  /// The nitric name of the socket that this worker listens on
  @$pb.TagNumber(1)
  $core.String get socket => $_getSZ(0);
  @$pb.TagNumber(1)
  set socket($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSocket() => $_has(0);
  @$pb.TagNumber(1)
  void clearSocket() => clearField(1);

  /// The type of websocket event
  @$pb.TagNumber(2)
  WebsocketEvent get event => $_getN(1);
  @$pb.TagNumber(2)
  set event(WebsocketEvent v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEvent() => $_has(1);
  @$pb.TagNumber(2)
  void clearEvent() => clearField(2);

  /// The connection this trigger came from
  @$pb.TagNumber(3)
  $core.String get connectionId => $_getSZ(2);
  @$pb.TagNumber(3)
  set connectionId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasConnectionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearConnectionId() => clearField(3);

  /// The query params available in the connection request
  @$pb.TagNumber(6)
  $core.Map<$core.String, QueryValue> get queryParams => $_getMap(3);
}

enum TriggerResponse_Context {
  http, 
  topic, 
  notification, 
  websocket, 
  notSet
}

/// The worker has successfully processed a trigger
class TriggerResponse extends $pb.GeneratedMessage {
  factory TriggerResponse({
    $core.List<$core.int>? data,
    HttpResponseContext? http,
    TopicResponseContext? topic,
    NotificationResponseContext? notification,
    WebsocketResponseContext? websocket,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    if (http != null) {
      $result.http = http;
    }
    if (topic != null) {
      $result.topic = topic;
    }
    if (notification != null) {
      $result.notification = notification;
    }
    if (websocket != null) {
      $result.websocket = websocket;
    }
    return $result;
  }
  TriggerResponse._() : super();
  factory TriggerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TriggerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, TriggerResponse_Context> _TriggerResponse_ContextByTag = {
    10 : TriggerResponse_Context.http,
    11 : TriggerResponse_Context.topic,
    12 : TriggerResponse_Context.notification,
    13 : TriggerResponse_Context.websocket,
    0 : TriggerResponse_Context.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TriggerResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..oo(0, [10, 11, 12, 13])
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.OY)
    ..aOM<HttpResponseContext>(10, _omitFieldNames ? '' : 'http', subBuilder: HttpResponseContext.create)
    ..aOM<TopicResponseContext>(11, _omitFieldNames ? '' : 'topic', subBuilder: TopicResponseContext.create)
    ..aOM<NotificationResponseContext>(12, _omitFieldNames ? '' : 'notification', subBuilder: NotificationResponseContext.create)
    ..aOM<WebsocketResponseContext>(13, _omitFieldNames ? '' : 'websocket', subBuilder: WebsocketResponseContext.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TriggerResponse clone() => TriggerResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TriggerResponse copyWith(void Function(TriggerResponse) updates) => super.copyWith((message) => updates(message as TriggerResponse)) as TriggerResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TriggerResponse create() => TriggerResponse._();
  TriggerResponse createEmptyInstance() => create();
  static $pb.PbList<TriggerResponse> createRepeated() => $pb.PbList<TriggerResponse>();
  @$core.pragma('dart2js:noInline')
  static TriggerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TriggerResponse>(create);
  static TriggerResponse? _defaultInstance;

  TriggerResponse_Context whichContext() => _TriggerResponse_ContextByTag[$_whichOneof(0)]!;
  void clearContext() => clearField($_whichOneof(0));

  /// The data returned in the response
  @$pb.TagNumber(1)
  $core.List<$core.int> get data => $_getN(0);
  @$pb.TagNumber(1)
  set data($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);

  /// response to a http request
  @$pb.TagNumber(10)
  HttpResponseContext get http => $_getN(1);
  @$pb.TagNumber(10)
  set http(HttpResponseContext v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasHttp() => $_has(1);
  @$pb.TagNumber(10)
  void clearHttp() => clearField(10);
  @$pb.TagNumber(10)
  HttpResponseContext ensureHttp() => $_ensure(1);

  /// response to a topic trigger
  @$pb.TagNumber(11)
  TopicResponseContext get topic => $_getN(2);
  @$pb.TagNumber(11)
  set topic(TopicResponseContext v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasTopic() => $_has(2);
  @$pb.TagNumber(11)
  void clearTopic() => clearField(11);
  @$pb.TagNumber(11)
  TopicResponseContext ensureTopic() => $_ensure(2);

  /// response to a notification trigger
  @$pb.TagNumber(12)
  NotificationResponseContext get notification => $_getN(3);
  @$pb.TagNumber(12)
  set notification(NotificationResponseContext v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasNotification() => $_has(3);
  @$pb.TagNumber(12)
  void clearNotification() => clearField(12);
  @$pb.TagNumber(12)
  NotificationResponseContext ensureNotification() => $_ensure(3);

  @$pb.TagNumber(13)
  WebsocketResponseContext get websocket => $_getN(4);
  @$pb.TagNumber(13)
  set websocket(WebsocketResponseContext v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasWebsocket() => $_has(4);
  @$pb.TagNumber(13)
  void clearWebsocket() => clearField(13);
  @$pb.TagNumber(13)
  WebsocketResponseContext ensureWebsocket() => $_ensure(4);
}

/// Specific HttpResponse message
/// Note this does not have to be handled by the
/// User at all but they will have the option of control
/// If they choose...
class HttpResponseContext extends $pb.GeneratedMessage {
  factory HttpResponseContext({
  @$core.Deprecated('This field is deprecated.')
    $core.Map<$core.String, $core.String>? headersOld,
    $core.int? status,
    $core.Map<$core.String, HeaderValue>? headers,
  }) {
    final $result = create();
    if (headersOld != null) {
      // ignore: deprecated_member_use_from_same_package
      $result.headersOld.addAll(headersOld);
    }
    if (status != null) {
      $result.status = status;
    }
    if (headers != null) {
      $result.headers.addAll(headers);
    }
    return $result;
  }
  HttpResponseContext._() : super();
  factory HttpResponseContext.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HttpResponseContext.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HttpResponseContext', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'headersOld', entryClassName: 'HttpResponseContext.HeadersOldEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('nitric.faas.v1'))
    ..a<$core.int>(2, _omitFieldNames ? '' : 'status', $pb.PbFieldType.O3)
    ..m<$core.String, HeaderValue>(3, _omitFieldNames ? '' : 'headers', entryClassName: 'HttpResponseContext.HeadersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: HeaderValue.create, valueDefaultOrMaker: HeaderValue.getDefault, packageName: const $pb.PackageName('nitric.faas.v1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HttpResponseContext clone() => HttpResponseContext()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HttpResponseContext copyWith(void Function(HttpResponseContext) updates) => super.copyWith((message) => updates(message as HttpResponseContext)) as HttpResponseContext;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HttpResponseContext create() => HttpResponseContext._();
  HttpResponseContext createEmptyInstance() => create();
  static $pb.PbList<HttpResponseContext> createRepeated() => $pb.PbList<HttpResponseContext>();
  @$core.pragma('dart2js:noInline')
  static HttpResponseContext getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HttpResponseContext>(create);
  static HttpResponseContext? _defaultInstance;

  /// Old HTTP response headers (deprecated)
  /// TODO: Remove in 1.0
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get headersOld => $_getMap(0);

  /// The HTTP status of the request
  @$pb.TagNumber(2)
  $core.int get status => $_getIZ(1);
  @$pb.TagNumber(2)
  set status($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  /// HTTP response headers
  @$pb.TagNumber(3)
  $core.Map<$core.String, HeaderValue> get headers => $_getMap(2);
}

/// Specific event response message
/// We do not accept responses for events
/// only whether or not they were successfully processed
class TopicResponseContext extends $pb.GeneratedMessage {
  factory TopicResponseContext({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  TopicResponseContext._() : super();
  factory TopicResponseContext.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TopicResponseContext.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TopicResponseContext', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TopicResponseContext clone() => TopicResponseContext()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TopicResponseContext copyWith(void Function(TopicResponseContext) updates) => super.copyWith((message) => updates(message as TopicResponseContext)) as TopicResponseContext;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TopicResponseContext create() => TopicResponseContext._();
  TopicResponseContext createEmptyInstance() => create();
  static $pb.PbList<TopicResponseContext> createRepeated() => $pb.PbList<TopicResponseContext>();
  @$core.pragma('dart2js:noInline')
  static TopicResponseContext getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TopicResponseContext>(create);
  static TopicResponseContext? _defaultInstance;

  /// Success status of the handled event
  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class NotificationResponseContext extends $pb.GeneratedMessage {
  factory NotificationResponseContext({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  NotificationResponseContext._() : super();
  factory NotificationResponseContext.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NotificationResponseContext.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NotificationResponseContext', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NotificationResponseContext clone() => NotificationResponseContext()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NotificationResponseContext copyWith(void Function(NotificationResponseContext) updates) => super.copyWith((message) => updates(message as NotificationResponseContext)) as NotificationResponseContext;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NotificationResponseContext create() => NotificationResponseContext._();
  NotificationResponseContext createEmptyInstance() => create();
  static $pb.PbList<NotificationResponseContext> createRepeated() => $pb.PbList<NotificationResponseContext>();
  @$core.pragma('dart2js:noInline')
  static NotificationResponseContext getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NotificationResponseContext>(create);
  static NotificationResponseContext? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class WebsocketResponseContext extends $pb.GeneratedMessage {
  factory WebsocketResponseContext({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  WebsocketResponseContext._() : super();
  factory WebsocketResponseContext.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebsocketResponseContext.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WebsocketResponseContext', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.faas.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebsocketResponseContext clone() => WebsocketResponseContext()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebsocketResponseContext copyWith(void Function(WebsocketResponseContext) updates) => super.copyWith((message) => updates(message as WebsocketResponseContext)) as WebsocketResponseContext;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebsocketResponseContext create() => WebsocketResponseContext._();
  WebsocketResponseContext createEmptyInstance() => create();
  static $pb.PbList<WebsocketResponseContext> createRepeated() => $pb.PbList<WebsocketResponseContext>();
  @$core.pragma('dart2js:noInline')
  static WebsocketResponseContext getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebsocketResponseContext>(create);
  static WebsocketResponseContext? _defaultInstance;

  /// There aren't really responses here, instead we need to provide a runtime
  /// API for responding back and emitting/broadcasting on the websocket from the server
  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
