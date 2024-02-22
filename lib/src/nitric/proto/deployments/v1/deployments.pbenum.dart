//
//  Generated code. Do not modify.
//  source: nitric/proto/deployments/v1/deployments.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ResourceDeploymentAction extends $pb.ProtobufEnum {
  static const ResourceDeploymentAction CREATE = ResourceDeploymentAction._(0, _omitEnumNames ? '' : 'CREATE');
  static const ResourceDeploymentAction UPDATE = ResourceDeploymentAction._(1, _omitEnumNames ? '' : 'UPDATE');
  static const ResourceDeploymentAction REPLACE = ResourceDeploymentAction._(2, _omitEnumNames ? '' : 'REPLACE');
  static const ResourceDeploymentAction SAME = ResourceDeploymentAction._(3, _omitEnumNames ? '' : 'SAME');
  static const ResourceDeploymentAction DELETE = ResourceDeploymentAction._(4, _omitEnumNames ? '' : 'DELETE');

  static const $core.List<ResourceDeploymentAction> values = <ResourceDeploymentAction> [
    CREATE,
    UPDATE,
    REPLACE,
    SAME,
    DELETE,
  ];

  static final $core.Map<$core.int, ResourceDeploymentAction> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ResourceDeploymentAction? valueOf($core.int value) => _byValue[value];

  const ResourceDeploymentAction._($core.int v, $core.String n) : super(v, n);
}

class ResourceDeploymentStatus extends $pb.ProtobufEnum {
  static const ResourceDeploymentStatus PENDING = ResourceDeploymentStatus._(0, _omitEnumNames ? '' : 'PENDING');
  static const ResourceDeploymentStatus IN_PROGRESS = ResourceDeploymentStatus._(1, _omitEnumNames ? '' : 'IN_PROGRESS');
  static const ResourceDeploymentStatus SUCCESS = ResourceDeploymentStatus._(2, _omitEnumNames ? '' : 'SUCCESS');
  static const ResourceDeploymentStatus FAILED = ResourceDeploymentStatus._(3, _omitEnumNames ? '' : 'FAILED');

  static const $core.List<ResourceDeploymentStatus> values = <ResourceDeploymentStatus> [
    PENDING,
    IN_PROGRESS,
    SUCCESS,
    FAILED,
  ];

  static final $core.Map<$core.int, ResourceDeploymentStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ResourceDeploymentStatus? valueOf($core.int value) => _byValue[value];

  const ResourceDeploymentStatus._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
