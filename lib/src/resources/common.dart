library resources;

import 'dart:async';
import 'dart:convert';

import 'package:nitric_sdk/src/api/collection.dart';
import 'package:nitric_sdk/src/nitric/proto/websockets/v1/websockets.pb.dart';
import 'package:grpc/grpc.dart';
import 'package:fixnum/fixnum.dart';
import 'package:nitric_sdk/src/context/common.dart';
import 'package:nitric_sdk/src/api/bucket.dart';
import 'package:nitric_sdk/src/api/topic.dart' as $t;
import 'package:nitric_sdk/src/api/secret.dart' as $s;

import 'package:nitric_sdk/src/nitric/proto/resources/v1/resources.pbgrpc.dart'
    as $p;
import 'package:nitric_sdk/src/nitric/proto/apis/v1/apis.pbgrpc.dart' as $ap;
import 'package:nitric_sdk/src/nitric/proto/schedules/v1/schedules.pbgrpc.dart'
    as $sp;
import 'package:nitric_sdk/src/nitric/google/protobuf/duration.pb.dart' as $d;
import 'package:nitric_sdk/src/nitric/proto/topics/v1/topics.pbgrpc.dart'
    as $tp;
import 'package:nitric_sdk/src/nitric/proto/websockets/v1/websockets.pbgrpc.dart'
    as $wp;
import 'package:meta/meta.dart';

part 'schedule.dart';
part 'secret.dart';
part 'collection.dart';
part 'bucket.dart';
part 'api.dart';
part 'topic.dart';
part 'websocket.dart';

/// A representation of a resource that can be registered with the Nitric server.
abstract class Resource {
  /// The name of the resource.
  final String name;

  /// Internal resource client to declare the resource.
  @protected
  late final $p.ResourcesClient client;

  @protected
  Resource(this.name) {
    var channel = ClientChannel(
      'localhost',
      port: 50051,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    client = $p.ResourcesClient(channel);
  }

  /// Register the resource with the Nitric server.
  Future<void> register();
}

/// A resource that requires permissions to access it.
abstract class SecureResource<T extends Enum> extends Resource {
  SecureResource(String name) : super(name);

  /// Convert a list of permissions to gRPC actions.
  List<$p.Action> permissionsToActions(List<T> permissions);

  /// Register a policy with the Nitric server to secure the resource with least-privilege.
  Future<void> registerPolicy(List<T> permissions) async {
    var policy = $p.PolicyResource(
        principals: [$p.Resource(type: $p.ResourceType.Function)],
        resources: [$p.Resource(name: name, type: $p.ResourceType.Policy)],
        actions: permissionsToActions(permissions));

    await client.declare($p.ResourceDeclareRequest(policy: policy));
  }
}
