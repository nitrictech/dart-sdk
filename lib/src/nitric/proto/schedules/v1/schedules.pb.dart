//
//  Generated code. Do not modify.
//  source: nitric/proto/schedules/v1/schedules.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

enum ClientMessage_Content {
  registrationRequest, 
  intervalResponse, 
  notSet
}

/// ClientMessages are sent from the service to the nitric server
class ClientMessage extends $pb.GeneratedMessage {
  factory ClientMessage({
    $core.String? id,
    RegistrationRequest? registrationRequest,
    IntervalResponse? intervalResponse,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (registrationRequest != null) {
      $result.registrationRequest = registrationRequest;
    }
    if (intervalResponse != null) {
      $result.intervalResponse = intervalResponse;
    }
    return $result;
  }
  ClientMessage._() : super();
  factory ClientMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClientMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ClientMessage_Content> _ClientMessage_ContentByTag = {
    2 : ClientMessage_Content.registrationRequest,
    3 : ClientMessage_Content.intervalResponse,
    0 : ClientMessage_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClientMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.schedules.v1'), createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<RegistrationRequest>(2, _omitFieldNames ? '' : 'registrationRequest', subBuilder: RegistrationRequest.create)
    ..aOM<IntervalResponse>(3, _omitFieldNames ? '' : 'intervalResponse', subBuilder: IntervalResponse.create)
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

  /// Register new a schedule
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

  /// Response to a schedule interval (i.e. response from callback function)
  @$pb.TagNumber(3)
  IntervalResponse get intervalResponse => $_getN(2);
  @$pb.TagNumber(3)
  set intervalResponse(IntervalResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasIntervalResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearIntervalResponse() => clearField(3);
  @$pb.TagNumber(3)
  IntervalResponse ensureIntervalResponse() => $_ensure(2);
}

class IntervalRequest extends $pb.GeneratedMessage {
  factory IntervalRequest({
    $core.String? scheduleName,
  }) {
    final $result = create();
    if (scheduleName != null) {
      $result.scheduleName = scheduleName;
    }
    return $result;
  }
  IntervalRequest._() : super();
  factory IntervalRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IntervalRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IntervalRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.schedules.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'scheduleName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IntervalRequest clone() => IntervalRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IntervalRequest copyWith(void Function(IntervalRequest) updates) => super.copyWith((message) => updates(message as IntervalRequest)) as IntervalRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IntervalRequest create() => IntervalRequest._();
  IntervalRequest createEmptyInstance() => create();
  static $pb.PbList<IntervalRequest> createRepeated() => $pb.PbList<IntervalRequest>();
  @$core.pragma('dart2js:noInline')
  static IntervalRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IntervalRequest>(create);
  static IntervalRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get scheduleName => $_getSZ(0);
  @$pb.TagNumber(1)
  set scheduleName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScheduleName() => $_has(0);
  @$pb.TagNumber(1)
  void clearScheduleName() => clearField(1);
}

enum ServerMessage_Content {
  registrationResponse, 
  intervalRequest, 
  notSet
}

/// ServerMessages are sent from the nitric server to the service
class ServerMessage extends $pb.GeneratedMessage {
  factory ServerMessage({
    $core.String? id,
    RegistrationResponse? registrationResponse,
    IntervalRequest? intervalRequest,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (registrationResponse != null) {
      $result.registrationResponse = registrationResponse;
    }
    if (intervalRequest != null) {
      $result.intervalRequest = intervalRequest;
    }
    return $result;
  }
  ServerMessage._() : super();
  factory ServerMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, ServerMessage_Content> _ServerMessage_ContentByTag = {
    2 : ServerMessage_Content.registrationResponse,
    3 : ServerMessage_Content.intervalRequest,
    0 : ServerMessage_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServerMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.schedules.v1'), createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<RegistrationResponse>(2, _omitFieldNames ? '' : 'registrationResponse', subBuilder: RegistrationResponse.create)
    ..aOM<IntervalRequest>(3, _omitFieldNames ? '' : 'intervalRequest', subBuilder: IntervalRequest.create)
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

  /// Response to a schedule subscription request
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

  /// A schedule interval trigger request (i.e. call the callback)
  @$pb.TagNumber(3)
  IntervalRequest get intervalRequest => $_getN(2);
  @$pb.TagNumber(3)
  set intervalRequest(IntervalRequest v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasIntervalRequest() => $_has(2);
  @$pb.TagNumber(3)
  void clearIntervalRequest() => clearField(3);
  @$pb.TagNumber(3)
  IntervalRequest ensureIntervalRequest() => $_ensure(2);
}

enum RegistrationRequest_Cadence {
  every, 
  cron, 
  notSet
}

class RegistrationRequest extends $pb.GeneratedMessage {
  factory RegistrationRequest({
    $core.String? scheduleName,
    ScheduleEvery? every,
    ScheduleCron? cron,
  }) {
    final $result = create();
    if (scheduleName != null) {
      $result.scheduleName = scheduleName;
    }
    if (every != null) {
      $result.every = every;
    }
    if (cron != null) {
      $result.cron = cron;
    }
    return $result;
  }
  RegistrationRequest._() : super();
  factory RegistrationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegistrationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, RegistrationRequest_Cadence> _RegistrationRequest_CadenceByTag = {
    10 : RegistrationRequest_Cadence.every,
    11 : RegistrationRequest_Cadence.cron,
    0 : RegistrationRequest_Cadence.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegistrationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.schedules.v1'), createEmptyInstance: create)
    ..oo(0, [10, 11])
    ..aOS(1, _omitFieldNames ? '' : 'scheduleName')
    ..aOM<ScheduleEvery>(10, _omitFieldNames ? '' : 'every', subBuilder: ScheduleEvery.create)
    ..aOM<ScheduleCron>(11, _omitFieldNames ? '' : 'cron', subBuilder: ScheduleCron.create)
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

  RegistrationRequest_Cadence whichCadence() => _RegistrationRequest_CadenceByTag[$_whichOneof(0)]!;
  void clearCadence() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.String get scheduleName => $_getSZ(0);
  @$pb.TagNumber(1)
  set scheduleName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasScheduleName() => $_has(0);
  @$pb.TagNumber(1)
  void clearScheduleName() => clearField(1);

  @$pb.TagNumber(10)
  ScheduleEvery get every => $_getN(1);
  @$pb.TagNumber(10)
  set every(ScheduleEvery v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasEvery() => $_has(1);
  @$pb.TagNumber(10)
  void clearEvery() => clearField(10);
  @$pb.TagNumber(10)
  ScheduleEvery ensureEvery() => $_ensure(1);

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

class ScheduleEvery extends $pb.GeneratedMessage {
  factory ScheduleEvery({
    $core.String? rate,
  }) {
    final $result = create();
    if (rate != null) {
      $result.rate = rate;
    }
    return $result;
  }
  ScheduleEvery._() : super();
  factory ScheduleEvery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScheduleEvery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ScheduleEvery', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.schedules.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'rate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScheduleEvery clone() => ScheduleEvery()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScheduleEvery copyWith(void Function(ScheduleEvery) updates) => super.copyWith((message) => updates(message as ScheduleEvery)) as ScheduleEvery;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScheduleEvery create() => ScheduleEvery._();
  ScheduleEvery createEmptyInstance() => create();
  static $pb.PbList<ScheduleEvery> createRepeated() => $pb.PbList<ScheduleEvery>();
  @$core.pragma('dart2js:noInline')
  static ScheduleEvery getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScheduleEvery>(create);
  static ScheduleEvery? _defaultInstance;

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
    $core.String? expression,
  }) {
    final $result = create();
    if (expression != null) {
      $result.expression = expression;
    }
    return $result;
  }
  ScheduleCron._() : super();
  factory ScheduleCron.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScheduleCron.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ScheduleCron', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.schedules.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'expression')
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
  $core.String get expression => $_getSZ(0);
  @$pb.TagNumber(1)
  set expression($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasExpression() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpression() => clearField(1);
}

class RegistrationResponse extends $pb.GeneratedMessage {
  factory RegistrationResponse() => create();
  RegistrationResponse._() : super();
  factory RegistrationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegistrationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegistrationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.schedules.v1'), createEmptyInstance: create)
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

class IntervalResponse extends $pb.GeneratedMessage {
  factory IntervalResponse() => create();
  IntervalResponse._() : super();
  factory IntervalResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IntervalResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IntervalResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'nitric.proto.schedules.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IntervalResponse clone() => IntervalResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IntervalResponse copyWith(void Function(IntervalResponse) updates) => super.copyWith((message) => updates(message as IntervalResponse)) as IntervalResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IntervalResponse create() => IntervalResponse._();
  IntervalResponse createEmptyInstance() => create();
  static $pb.PbList<IntervalResponse> createRepeated() => $pb.PbList<IntervalResponse>();
  @$core.pragma('dart2js:noInline')
  static IntervalResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IntervalResponse>(create);
  static IntervalResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
