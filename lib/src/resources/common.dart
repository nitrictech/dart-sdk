library resources;

import 'dart:async';
import 'dart:convert';

import 'package:nitric_sdk/api.dart';
import 'package:nitric_sdk/resources.dart';
import 'package:nitric_sdk/src/api/queue.dart';
import 'package:nitric_sdk/src/grpc_helper.dart';
import 'package:nitric_sdk/src/nitric.dart';
import 'package:nitric_sdk/src/nitric/proto/resources/v1/resources.pb.dart';
import 'package:nitric_sdk/src/nitric/proto/schedules/v1/schedules.pb.dart'
    as $s;
import 'package:grpc/grpc.dart';
import 'package:nitric_sdk/src/context/common.dart';
import 'package:nitric_sdk/src/api/topic.dart' as $t;
import 'package:nitric_sdk/src/api/secret.dart' as $s;

import 'package:nitric_sdk/src/nitric/proto/resources/v1/resources.pbgrpc.dart'
    as $p;
import 'package:nitric_sdk/src/nitric/proto/apis/v1/apis.pbgrpc.dart' as $ap;
import 'package:nitric_sdk/src/nitric/proto/schedules/v1/schedules.pbgrpc.dart'
    as $sp;
import 'package:nitric_sdk/src/nitric/proto/topics/v1/topics.pbgrpc.dart'
    as $tp;
import 'package:nitric_sdk/src/nitric/proto/websockets/v1/websockets.pbgrpc.dart'
    as $wp;
import 'package:meta/meta.dart' hide ResourceIdentifier;

part 'schedule.dart';
part 'secret.dart';
part 'keyvalue.dart';
part 'bucket.dart';
part 'api.dart';
part 'topic.dart';
part 'websocket.dart';
part 'queue.dart';
part 'oidc.dart';

/// A representation of a resource that can be registered with the Nitric server.
abstract class Resource {
  /// The name of the resource.
  final String name;

  // Used to resolve the given resource for policy creation
  @protected
  final Completer<ResourceIdentifier> registrationCompletion =
      Completer<ResourceIdentifier>();

  /// Internal resource client to declare the resource.
  @protected
  late final $p.ResourcesClient client;

  @protected
  Resource(this.name, $p.ResourcesClient? client) {
    if (client == null) {
      final channel = createClientChannelFromEnvVar();

      this.client = $p.ResourcesClient(channel);
    } else {
      this.client = client;
    }
  }

  /// Register the resource with the Nitric server.
  Future<void> register();
}

/// A resource that requires permissions to access it.
abstract class SecureResource<T extends Enum> extends Resource {
  SecureResource(String name, $p.ResourcesClient? client) : super(name, client);

  /// Convert a list of permissions to gRPC actions.
  List<$p.Action> permissionsToActions(List<T> permissions);

  /// Register a policy with the Nitric server to secure the resource with least-privilege.
  Future<void> registerPolicy(List<T> permissions) async {
    var resourceIdentifier = await registrationCompletion.future;

    var policyResource = $p.ResourceIdentifier(type: $p.ResourceType.Policy);

    var policy = $p.PolicyResource(
        principals: [$p.ResourceIdentifier(type: $p.ResourceType.Service)],
        resources: [resourceIdentifier],
        actions: permissionsToActions(permissions));

    await client
        .declare($p.ResourceDeclareRequest(policy: policy, id: policyResource));
  }
}
