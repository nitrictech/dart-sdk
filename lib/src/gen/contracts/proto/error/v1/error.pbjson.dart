//
//  Generated code. Do not modify.
//  source: contracts/proto/error/v1/error.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use errorScopeDescriptor instead')
const ErrorScope$json = {
  '1': 'ErrorScope',
  '2': [
    {'1': 'service', '3': 1, '4': 1, '5': 9, '10': 'service'},
    {'1': 'plugin', '3': 2, '4': 1, '5': 9, '10': 'plugin'},
    {'1': 'args', '3': 3, '4': 3, '5': 11, '6': '.nitric.error.v1.ErrorScope.ArgsEntry', '10': 'args'},
  ],
  '3': [ErrorScope_ArgsEntry$json],
};

@$core.Deprecated('Use errorScopeDescriptor instead')
const ErrorScope_ArgsEntry$json = {
  '1': 'ArgsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ErrorScope`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorScopeDescriptor = $convert.base64Decode(
    'CgpFcnJvclNjb3BlEhgKB3NlcnZpY2UYASABKAlSB3NlcnZpY2USFgoGcGx1Z2luGAIgASgJUg'
    'ZwbHVnaW4SOQoEYXJncxgDIAMoCzIlLm5pdHJpYy5lcnJvci52MS5FcnJvclNjb3BlLkFyZ3NF'
    'bnRyeVIEYXJncxo3CglBcmdzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKA'
    'lSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use errorDetailsDescriptor instead')
const ErrorDetails$json = {
  '1': 'ErrorDetails',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    {'1': 'cause', '3': 2, '4': 1, '5': 9, '10': 'cause'},
    {'1': 'scope', '3': 3, '4': 1, '5': 11, '6': '.nitric.error.v1.ErrorScope', '10': 'scope'},
  ],
};

/// Descriptor for `ErrorDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorDetailsDescriptor = $convert.base64Decode(
    'CgxFcnJvckRldGFpbHMSGAoHbWVzc2FnZRgBIAEoCVIHbWVzc2FnZRIUCgVjYXVzZRgCIAEoCV'
    'IFY2F1c2USMQoFc2NvcGUYAyABKAsyGy5uaXRyaWMuZXJyb3IudjEuRXJyb3JTY29wZVIFc2Nv'
    'cGU=');

