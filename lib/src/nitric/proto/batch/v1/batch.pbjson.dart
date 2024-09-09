//
//  Generated code. Do not modify.
//  source: nitric/proto/batch/v1/batch.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

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
      '6': '.nitric.proto.batch.v1.RegistrationRequest',
      '9': 0,
      '10': 'registrationRequest'
    },
    {
      '1': 'job_response',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.batch.v1.JobResponse',
      '9': 0,
      '10': 'jobResponse'
    },
  ],
  '8': [
    {'1': 'content'},
  ],
};

/// Descriptor for `ClientMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientMessageDescriptor = $convert.base64Decode(
    'Cg1DbGllbnRNZXNzYWdlEg4KAmlkGAEgASgJUgJpZBJfChRyZWdpc3RyYXRpb25fcmVxdWVzdB'
    'gCIAEoCzIqLm5pdHJpYy5wcm90by5iYXRjaC52MS5SZWdpc3RyYXRpb25SZXF1ZXN0SABSE3Jl'
    'Z2lzdHJhdGlvblJlcXVlc3QSRwoMam9iX3Jlc3BvbnNlGAMgASgLMiIubml0cmljLnByb3RvLm'
    'JhdGNoLnYxLkpvYlJlc3BvbnNlSABSC2pvYlJlc3BvbnNlQgkKB2NvbnRlbnQ=');

@$core.Deprecated('Use jobRequestDescriptor instead')
const JobRequest$json = {
  '1': 'JobRequest',
  '2': [
    {'1': 'job_name', '3': 1, '4': 1, '5': 9, '10': 'jobName'},
    {
      '1': 'data',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.batch.v1.JobData',
      '10': 'data'
    },
  ],
};

/// Descriptor for `JobRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jobRequestDescriptor = $convert.base64Decode(
    'CgpKb2JSZXF1ZXN0EhkKCGpvYl9uYW1lGAEgASgJUgdqb2JOYW1lEjIKBGRhdGEYAiABKAsyHi'
    '5uaXRyaWMucHJvdG8uYmF0Y2gudjEuSm9iRGF0YVIEZGF0YQ==');

@$core.Deprecated('Use jobDataDescriptor instead')
const JobData$json = {
  '1': 'JobData',
  '2': [
    {
      '1': 'struct',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Struct',
      '9': 0,
      '10': 'struct'
    },
  ],
  '8': [
    {'1': 'data'},
  ],
};

/// Descriptor for `JobData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jobDataDescriptor = $convert.base64Decode(
    'CgdKb2JEYXRhEjEKBnN0cnVjdBgBIAEoCzIXLmdvb2dsZS5wcm90b2J1Zi5TdHJ1Y3RIAFIGc3'
    'RydWN0QgYKBGRhdGE=');

@$core.Deprecated('Use jobResponseDescriptor instead')
const JobResponse$json = {
  '1': 'JobResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `JobResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jobResponseDescriptor = $convert
    .base64Decode('CgtKb2JSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

@$core.Deprecated('Use registrationRequestDescriptor instead')
const RegistrationRequest$json = {
  '1': 'RegistrationRequest',
  '2': [
    {'1': 'job_name', '3': 1, '4': 1, '5': 9, '10': 'jobName'},
    {
      '1': 'requirements',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.batch.v1.JobResourceRequirements',
      '10': 'requirements'
    },
  ],
};

/// Descriptor for `RegistrationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registrationRequestDescriptor = $convert.base64Decode(
    'ChNSZWdpc3RyYXRpb25SZXF1ZXN0EhkKCGpvYl9uYW1lGAEgASgJUgdqb2JOYW1lElIKDHJlcX'
    'VpcmVtZW50cxgCIAEoCzIuLm5pdHJpYy5wcm90by5iYXRjaC52MS5Kb2JSZXNvdXJjZVJlcXVp'
    'cmVtZW50c1IMcmVxdWlyZW1lbnRz');

@$core.Deprecated('Use registrationResponseDescriptor instead')
const RegistrationResponse$json = {
  '1': 'RegistrationResponse',
};

/// Descriptor for `RegistrationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registrationResponseDescriptor =
    $convert.base64Decode('ChRSZWdpc3RyYXRpb25SZXNwb25zZQ==');

@$core.Deprecated('Use jobResourceRequirementsDescriptor instead')
const JobResourceRequirements$json = {
  '1': 'JobResourceRequirements',
  '2': [
    {'1': 'cpus', '3': 1, '4': 1, '5': 2, '10': 'cpus'},
    {'1': 'memory', '3': 2, '4': 1, '5': 3, '10': 'memory'},
    {'1': 'gpus', '3': 3, '4': 1, '5': 3, '10': 'gpus'},
  ],
};

/// Descriptor for `JobResourceRequirements`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jobResourceRequirementsDescriptor =
    $convert.base64Decode(
        'ChdKb2JSZXNvdXJjZVJlcXVpcmVtZW50cxISCgRjcHVzGAEgASgCUgRjcHVzEhYKBm1lbW9yeR'
        'gCIAEoA1IGbWVtb3J5EhIKBGdwdXMYAyABKANSBGdwdXM=');

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
      '6': '.nitric.proto.batch.v1.RegistrationResponse',
      '9': 0,
      '10': 'registrationResponse'
    },
    {
      '1': 'job_request',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.batch.v1.JobRequest',
      '9': 0,
      '10': 'jobRequest'
    },
  ],
  '8': [
    {'1': 'content'},
  ],
};

/// Descriptor for `ServerMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverMessageDescriptor = $convert.base64Decode(
    'Cg1TZXJ2ZXJNZXNzYWdlEg4KAmlkGAEgASgJUgJpZBJiChVyZWdpc3RyYXRpb25fcmVzcG9uc2'
    'UYAiABKAsyKy5uaXRyaWMucHJvdG8uYmF0Y2gudjEuUmVnaXN0cmF0aW9uUmVzcG9uc2VIAFIU'
    'cmVnaXN0cmF0aW9uUmVzcG9uc2USRAoLam9iX3JlcXVlc3QYAyABKAsyIS5uaXRyaWMucHJvdG'
    '8uYmF0Y2gudjEuSm9iUmVxdWVzdEgAUgpqb2JSZXF1ZXN0QgkKB2NvbnRlbnQ=');

@$core.Deprecated('Use jobSubmitRequestDescriptor instead')
const JobSubmitRequest$json = {
  '1': 'JobSubmitRequest',
  '2': [
    {'1': 'job_name', '3': 1, '4': 1, '5': 9, '10': 'jobName'},
    {
      '1': 'data',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.batch.v1.JobData',
      '10': 'data'
    },
  ],
};

/// Descriptor for `JobSubmitRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jobSubmitRequestDescriptor = $convert.base64Decode(
    'ChBKb2JTdWJtaXRSZXF1ZXN0EhkKCGpvYl9uYW1lGAEgASgJUgdqb2JOYW1lEjIKBGRhdGEYAi'
    'ABKAsyHi5uaXRyaWMucHJvdG8uYmF0Y2gudjEuSm9iRGF0YVIEZGF0YQ==');

@$core.Deprecated('Use jobSubmitResponseDescriptor instead')
const JobSubmitResponse$json = {
  '1': 'JobSubmitResponse',
};

/// Descriptor for `JobSubmitResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jobSubmitResponseDescriptor =
    $convert.base64Decode('ChFKb2JTdWJtaXRSZXNwb25zZQ==');
