//
//  Generated code. Do not modify.
//  source: nitric/proto/sql/v1/sql.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use sqlConnectionStringRequestDescriptor instead')
const SqlConnectionStringRequest$json = {
  '1': 'SqlConnectionStringRequest',
  '2': [
    {'1': 'database_name', '3': 1, '4': 1, '5': 9, '10': 'databaseName'},
  ],
};

/// Descriptor for `SqlConnectionStringRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sqlConnectionStringRequestDescriptor =
    $convert.base64Decode(
        'ChpTcWxDb25uZWN0aW9uU3RyaW5nUmVxdWVzdBIjCg1kYXRhYmFzZV9uYW1lGAEgASgJUgxkYX'
        'RhYmFzZU5hbWU=');

@$core.Deprecated('Use sqlConnectionStringResponseDescriptor instead')
const SqlConnectionStringResponse$json = {
  '1': 'SqlConnectionStringResponse',
  '2': [
    {
      '1': 'connection_string',
      '3': 1,
      '4': 1,
      '5': 9,
      '10': 'connectionString'
    },
  ],
};

/// Descriptor for `SqlConnectionStringResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sqlConnectionStringResponseDescriptor =
    $convert.base64Decode(
        'ChtTcWxDb25uZWN0aW9uU3RyaW5nUmVzcG9uc2USKwoRY29ubmVjdGlvbl9zdHJpbmcYASABKA'
        'lSEGNvbm5lY3Rpb25TdHJpbmc=');
