//
//  Generated code. Do not modify.
//  source: nitric/proto/batch/v1/batch.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../google/protobuf/struct.pb.dart' as $14;

enum ClientMessage_Content { registrationRequest, jobResponse, notSet }

class ClientMessage extends $pb.GeneratedMessage {
  factory ClientMessage({
    $core.String? id,
    RegistrationRequest? registrationRequest,
    JobResponse? jobResponse,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (registrationRequest != null) {
      $result.registrationRequest = registrationRequest;
    }
    if (jobResponse != null) {
      $result.jobResponse = jobResponse;
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
    3: ClientMessage_Content.jobResponse,
    0: ClientMessage_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ClientMessage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.batch.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<RegistrationRequest>(2, _omitFieldNames ? '' : 'registrationRequest',
        subBuilder: RegistrationRequest.create)
    ..aOM<JobResponse>(3, _omitFieldNames ? '' : 'jobResponse',
        subBuilder: JobResponse.create)
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

  /// globally unique ID of the request/response pair
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

  /// Register a handler for a job
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

  /// Handle a job submission
  @$pb.TagNumber(3)
  JobResponse get jobResponse => $_getN(2);
  @$pb.TagNumber(3)
  set jobResponse(JobResponse v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasJobResponse() => $_has(2);
  @$pb.TagNumber(3)
  void clearJobResponse() => clearField(3);
  @$pb.TagNumber(3)
  JobResponse ensureJobResponse() => $_ensure(2);
}

class JobRequest extends $pb.GeneratedMessage {
  factory JobRequest({
    $core.String? jobName,
    JobData? data,
  }) {
    final $result = create();
    if (jobName != null) {
      $result.jobName = jobName;
    }
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  JobRequest._() : super();
  factory JobRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory JobRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'JobRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.batch.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'jobName')
    ..aOM<JobData>(2, _omitFieldNames ? '' : 'data', subBuilder: JobData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  JobRequest clone() => JobRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  JobRequest copyWith(void Function(JobRequest) updates) =>
      super.copyWith((message) => updates(message as JobRequest)) as JobRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JobRequest create() => JobRequest._();
  JobRequest createEmptyInstance() => create();
  static $pb.PbList<JobRequest> createRepeated() => $pb.PbList<JobRequest>();
  @$core.pragma('dart2js:noInline')
  static JobRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<JobRequest>(create);
  static JobRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get jobName => $_getSZ(0);
  @$pb.TagNumber(1)
  set jobName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasJobName() => $_has(0);
  @$pb.TagNumber(1)
  void clearJobName() => clearField(1);

  @$pb.TagNumber(2)
  JobData get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(JobData v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
  @$pb.TagNumber(2)
  JobData ensureData() => $_ensure(1);
}

enum JobData_Data { struct, notSet }

class JobData extends $pb.GeneratedMessage {
  factory JobData({
    $14.Struct? struct,
  }) {
    final $result = create();
    if (struct != null) {
      $result.struct = struct;
    }
    return $result;
  }
  JobData._() : super();
  factory JobData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory JobData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, JobData_Data> _JobData_DataByTag = {
    1: JobData_Data.struct,
    0: JobData_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'JobData',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.batch.v1'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<$14.Struct>(1, _omitFieldNames ? '' : 'struct',
        subBuilder: $14.Struct.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  JobData clone() => JobData()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  JobData copyWith(void Function(JobData) updates) =>
      super.copyWith((message) => updates(message as JobData)) as JobData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JobData create() => JobData._();
  JobData createEmptyInstance() => create();
  static $pb.PbList<JobData> createRepeated() => $pb.PbList<JobData>();
  @$core.pragma('dart2js:noInline')
  static JobData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JobData>(create);
  static JobData? _defaultInstance;

  JobData_Data whichData() => _JobData_DataByTag[$_whichOneof(0)]!;
  void clearData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $14.Struct get struct => $_getN(0);
  @$pb.TagNumber(1)
  set struct($14.Struct v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStruct() => $_has(0);
  @$pb.TagNumber(1)
  void clearStruct() => clearField(1);
  @$pb.TagNumber(1)
  $14.Struct ensureStruct() => $_ensure(0);
}

class JobResponse extends $pb.GeneratedMessage {
  factory JobResponse({
    $core.bool? success,
  }) {
    final $result = create();
    if (success != null) {
      $result.success = success;
    }
    return $result;
  }
  JobResponse._() : super();
  factory JobResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory JobResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'JobResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.batch.v1'),
      createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  JobResponse clone() => JobResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  JobResponse copyWith(void Function(JobResponse) updates) =>
      super.copyWith((message) => updates(message as JobResponse))
          as JobResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JobResponse create() => JobResponse._();
  JobResponse createEmptyInstance() => create();
  static $pb.PbList<JobResponse> createRepeated() => $pb.PbList<JobResponse>();
  @$core.pragma('dart2js:noInline')
  static JobResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<JobResponse>(create);
  static JobResponse? _defaultInstance;

  /// Mark if the job was successfully processed
  @$pb.TagNumber(1)
  $core.bool get success => $_getBF(0);
  @$pb.TagNumber(1)
  set success($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => clearField(1);
}

class RegistrationRequest extends $pb.GeneratedMessage {
  factory RegistrationRequest({
    $core.String? jobName,
    JobResourceRequirements? requirements,
  }) {
    final $result = create();
    if (jobName != null) {
      $result.jobName = jobName;
    }
    if (requirements != null) {
      $result.requirements = requirements;
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
          _omitMessageNames ? '' : 'nitric.proto.batch.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'jobName')
    ..aOM<JobResourceRequirements>(2, _omitFieldNames ? '' : 'requirements',
        subBuilder: JobResourceRequirements.create)
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

  @$pb.TagNumber(1)
  $core.String get jobName => $_getSZ(0);
  @$pb.TagNumber(1)
  set jobName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasJobName() => $_has(0);
  @$pb.TagNumber(1)
  void clearJobName() => clearField(1);

  /// Register with default requirements
  @$pb.TagNumber(2)
  JobResourceRequirements get requirements => $_getN(1);
  @$pb.TagNumber(2)
  set requirements(JobResourceRequirements v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasRequirements() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequirements() => clearField(2);
  @$pb.TagNumber(2)
  JobResourceRequirements ensureRequirements() => $_ensure(1);
}

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
          _omitMessageNames ? '' : 'nitric.proto.batch.v1'),
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

class JobResourceRequirements extends $pb.GeneratedMessage {
  factory JobResourceRequirements({
    $core.double? cpus,
    $fixnum.Int64? memory,
    $fixnum.Int64? gpus,
  }) {
    final $result = create();
    if (cpus != null) {
      $result.cpus = cpus;
    }
    if (memory != null) {
      $result.memory = memory;
    }
    if (gpus != null) {
      $result.gpus = gpus;
    }
    return $result;
  }
  JobResourceRequirements._() : super();
  factory JobResourceRequirements.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory JobResourceRequirements.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'JobResourceRequirements',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.batch.v1'),
      createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'cpus', $pb.PbFieldType.OF)
    ..aInt64(2, _omitFieldNames ? '' : 'memory')
    ..aInt64(3, _omitFieldNames ? '' : 'gpus')
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  JobResourceRequirements clone() =>
      JobResourceRequirements()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  JobResourceRequirements copyWith(
          void Function(JobResourceRequirements) updates) =>
      super.copyWith((message) => updates(message as JobResourceRequirements))
          as JobResourceRequirements;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JobResourceRequirements create() => JobResourceRequirements._();
  JobResourceRequirements createEmptyInstance() => create();
  static $pb.PbList<JobResourceRequirements> createRepeated() =>
      $pb.PbList<JobResourceRequirements>();
  @$core.pragma('dart2js:noInline')
  static JobResourceRequirements getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<JobResourceRequirements>(create);
  static JobResourceRequirements? _defaultInstance;

  /// The number of CPUs to allocate for the job
  @$pb.TagNumber(1)
  $core.double get cpus => $_getN(0);
  @$pb.TagNumber(1)
  set cpus($core.double v) {
    $_setFloat(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCpus() => $_has(0);
  @$pb.TagNumber(1)
  void clearCpus() => clearField(1);

  /// The amount of memory to allocate for the job
  @$pb.TagNumber(2)
  $fixnum.Int64 get memory => $_getI64(1);
  @$pb.TagNumber(2)
  set memory($fixnum.Int64 v) {
    $_setInt64(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMemory() => $_has(1);
  @$pb.TagNumber(2)
  void clearMemory() => clearField(2);

  /// The number of GPUs to allocate for the job
  @$pb.TagNumber(3)
  $fixnum.Int64 get gpus => $_getI64(2);
  @$pb.TagNumber(3)
  set gpus($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasGpus() => $_has(2);
  @$pb.TagNumber(3)
  void clearGpus() => clearField(3);
}

enum ServerMessage_Content { registrationResponse, jobRequest, notSet }

/// ServerMessage is the message sent from the nitric server to the service
class ServerMessage extends $pb.GeneratedMessage {
  factory ServerMessage({
    $core.String? id,
    RegistrationResponse? registrationResponse,
    JobRequest? jobRequest,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (registrationResponse != null) {
      $result.registrationResponse = registrationResponse;
    }
    if (jobRequest != null) {
      $result.jobRequest = jobRequest;
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
    3: ServerMessage_Content.jobRequest,
    0: ServerMessage_Content.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ServerMessage',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.batch.v1'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<RegistrationResponse>(
        2, _omitFieldNames ? '' : 'registrationResponse',
        subBuilder: RegistrationResponse.create)
    ..aOM<JobRequest>(3, _omitFieldNames ? '' : 'jobRequest',
        subBuilder: JobRequest.create)
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

  /// globally unique ID of the request/response pair
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

  /// Request to a job handler
  @$pb.TagNumber(3)
  JobRequest get jobRequest => $_getN(2);
  @$pb.TagNumber(3)
  set jobRequest(JobRequest v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasJobRequest() => $_has(2);
  @$pb.TagNumber(3)
  void clearJobRequest() => clearField(3);
  @$pb.TagNumber(3)
  JobRequest ensureJobRequest() => $_ensure(2);
}

class JobSubmitRequest extends $pb.GeneratedMessage {
  factory JobSubmitRequest({
    $core.String? jobName,
    JobData? data,
  }) {
    final $result = create();
    if (jobName != null) {
      $result.jobName = jobName;
    }
    if (data != null) {
      $result.data = data;
    }
    return $result;
  }
  JobSubmitRequest._() : super();
  factory JobSubmitRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory JobSubmitRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'JobSubmitRequest',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.batch.v1'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'jobName')
    ..aOM<JobData>(2, _omitFieldNames ? '' : 'data', subBuilder: JobData.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  JobSubmitRequest clone() => JobSubmitRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  JobSubmitRequest copyWith(void Function(JobSubmitRequest) updates) =>
      super.copyWith((message) => updates(message as JobSubmitRequest))
          as JobSubmitRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JobSubmitRequest create() => JobSubmitRequest._();
  JobSubmitRequest createEmptyInstance() => create();
  static $pb.PbList<JobSubmitRequest> createRepeated() =>
      $pb.PbList<JobSubmitRequest>();
  @$core.pragma('dart2js:noInline')
  static JobSubmitRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<JobSubmitRequest>(create);
  static JobSubmitRequest? _defaultInstance;

  /// The name of the job that should handle the data
  @$pb.TagNumber(1)
  $core.String get jobName => $_getSZ(0);
  @$pb.TagNumber(1)
  set jobName($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasJobName() => $_has(0);
  @$pb.TagNumber(1)
  void clearJobName() => clearField(1);

  /// The data to be processed by the job
  @$pb.TagNumber(2)
  JobData get data => $_getN(1);
  @$pb.TagNumber(2)
  set data(JobData v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);
  @$pb.TagNumber(2)
  JobData ensureData() => $_ensure(1);
}

class JobSubmitResponse extends $pb.GeneratedMessage {
  factory JobSubmitResponse() => create();
  JobSubmitResponse._() : super();
  factory JobSubmitResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory JobSubmitResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'JobSubmitResponse',
      package: const $pb.PackageName(
          _omitMessageNames ? '' : 'nitric.proto.batch.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  JobSubmitResponse clone() => JobSubmitResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  JobSubmitResponse copyWith(void Function(JobSubmitResponse) updates) =>
      super.copyWith((message) => updates(message as JobSubmitResponse))
          as JobSubmitResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JobSubmitResponse create() => JobSubmitResponse._();
  JobSubmitResponse createEmptyInstance() => create();
  static $pb.PbList<JobSubmitResponse> createRepeated() =>
      $pb.PbList<JobSubmitResponse>();
  @$core.pragma('dart2js:noInline')
  static JobSubmitResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<JobSubmitResponse>(create);
  static JobSubmitResponse? _defaultInstance;
}

const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
