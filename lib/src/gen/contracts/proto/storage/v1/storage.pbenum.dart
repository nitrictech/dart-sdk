//
//  Generated code. Do not modify.
//  source: contracts/proto/storage/v1/storage.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

/// Operation
class StoragePreSignUrlRequest_Operation extends $pb.ProtobufEnum {
  static const StoragePreSignUrlRequest_Operation READ = StoragePreSignUrlRequest_Operation._(0, _omitEnumNames ? '' : 'READ');
  static const StoragePreSignUrlRequest_Operation WRITE = StoragePreSignUrlRequest_Operation._(1, _omitEnumNames ? '' : 'WRITE');

  static const $core.List<StoragePreSignUrlRequest_Operation> values = <StoragePreSignUrlRequest_Operation> [
    READ,
    WRITE,
  ];

  static final $core.Map<$core.int, StoragePreSignUrlRequest_Operation> _byValue = $pb.ProtobufEnum.initByValue(values);
  static StoragePreSignUrlRequest_Operation? valueOf($core.int value) => _byValue[value];

  const StoragePreSignUrlRequest_Operation._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
