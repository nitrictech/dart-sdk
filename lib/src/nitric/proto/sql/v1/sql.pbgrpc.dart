//
//  Generated code. Do not modify.
//  source: nitric/proto/sql/v1/sql.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'sql.pb.dart' as $11;

export 'sql.pb.dart';

@$pb.GrpcServiceName('nitric.proto.sql.v1.Sql')
class SqlClient extends $grpc.Client {
  static final _$connectionString = $grpc.ClientMethod<
          $11.SqlConnectionStringRequest, $11.SqlConnectionStringResponse>(
      '/nitric.proto.sql.v1.Sql/ConnectionString',
      ($11.SqlConnectionStringRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $11.SqlConnectionStringResponse.fromBuffer(value));

  SqlClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$11.SqlConnectionStringResponse> connectionString(
      $11.SqlConnectionStringRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$connectionString, request, options: options);
  }
}

@$pb.GrpcServiceName('nitric.proto.sql.v1.Sql')
abstract class SqlServiceBase extends $grpc.Service {
  $core.String get $name => 'nitric.proto.sql.v1.Sql';

  SqlServiceBase() {
    $addMethod($grpc.ServiceMethod<$11.SqlConnectionStringRequest,
            $11.SqlConnectionStringResponse>(
        'ConnectionString',
        connectionString_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $11.SqlConnectionStringRequest.fromBuffer(value),
        ($11.SqlConnectionStringResponse value) => value.writeToBuffer()));
  }

  $async.Future<$11.SqlConnectionStringResponse> connectionString_Pre(
      $grpc.ServiceCall call,
      $async.Future<$11.SqlConnectionStringRequest> request) async {
    return connectionString(call, await request);
  }

  $async.Future<$11.SqlConnectionStringResponse> connectionString(
      $grpc.ServiceCall call, $11.SqlConnectionStringRequest request);
}
