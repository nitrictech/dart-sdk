library resources;

import 'dart:async';

import 'package:dart_sdk/src/api/topic.dart';
import 'package:grpc/grpc.dart';
import 'package:fixnum/fixnum.dart';
import 'package:dart_sdk/src/context/common.dart';
import 'package:dart_sdk/src/api/bucket.dart';

import 'package:dart_sdk/src/nitric/proto/resources/v1/resources.pbgrpc.dart'
    as $p;
import 'package:dart_sdk/src/nitric/proto/apis/v1/apis.pbgrpc.dart' as $ap;
import 'package:dart_sdk/src/nitric/proto/schedules/v1/schedules.pbgrpc.dart'
    as $sp;
import 'package:dart_sdk/src/nitric/google/protobuf/duration.pb.dart' as $d;

part 'schedule.dart';
part 'secret.dart';
part 'collection.dart';
part 'bucket.dart';
part 'api.dart';
part 'topic.dart';

abstract class Resource {
  String name;
  late $p.ResourcesClient client;

  Resource(this.name) {
    var channel = ClientChannel(
      'localhost',
      port: 50051,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    client = $p.ResourcesClient(channel);
  }

  Future<void> register();
}

abstract class SecureResource<T extends Enum> extends Resource {
  SecureResource(String name) : super(name);

  List<$p.Action> permissionsToActions(List<T> permissions);

  Future<void> registerPolicy(List<T> permissions) async {
    var policy = $p.PolicyResource(
        principals: [$p.Resource(type: $p.ResourceType.Function)],
        resources: [$p.Resource(name: name, type: $p.ResourceType.Policy)],
        actions: permissionsToActions(permissions));

    await client.declare($p.ResourceDeclareRequest(policy: policy));
  }
}
