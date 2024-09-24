library resources;

import 'dart:async';
import 'dart:convert';

import 'package:nitric_sdk/src/api/api.dart';
import 'package:nitric_sdk/src/grpc_helper.dart';
import 'package:nitric_sdk/src/nitric/proto/apis/v1/apis.pbgrpc.dart';
import 'package:nitric_sdk/src/nitric/proto/resources/v1/resources.pb.dart';
import 'package:nitric_sdk/src/nitric/proto/schedules/v1/schedules.pb.dart'
    as $s;
import 'package:nitric_sdk/src/context/common.dart';
import 'package:nitric_sdk/src/api/topic.dart' as $t;
import 'package:nitric_sdk/src/api/secret.dart' as $s;

import 'package:nitric_sdk/src/nitric/proto/resources/v1/resources.pbgrpc.dart'
    as $p;
import 'package:nitric_sdk/src/nitric/proto/schedules/v1/schedules.pbgrpc.dart'
    as $sp;
import 'package:nitric_sdk/src/nitric/proto/topics/v1/topics.pbgrpc.dart'
    as $tp;
import 'package:nitric_sdk/src/nitric/proto/websockets/v1/websockets.pbgrpc.dart'
    as $wp;
import 'package:nitric_sdk/src/nitric/proto/storage/v1/storage.pbgrpc.dart'
    as $bp;
import 'package:meta/meta.dart' hide ResourceIdentifier;
import 'package:nitric_sdk/src/workers/common.dart';

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
  final Completer<ResourceIdentifier> _registrationCompletion =
      Completer<ResourceIdentifier>();

  /// Internal resource client to declare the resource.
  final $p.ResourcesClient? _client;

  @protected
  Resource(this.name, $p.ResourcesClient? client)
      : _client = client; 

  Future<Resp> _useClient<Resp>(
      UseClientCallback<$p.ResourcesClient, Resp> callback) async {
    final client = _client ?? $p.ResourcesClient(ClientChannelSingleton.instance.clientChannel);

    var resp = callback(client);

    if (_client == null) {
      await ClientChannelSingleton.instance.release();
    }

    return resp;
  }

  ResourceDeclareRequest asRequest();

  /// Register the resource with the Nitric server. Handles shutting down the channel.
  Future<void> register() async {
    var res = asRequest();

    await _useClient((client) async => await client.declare(res));

    _registrationCompletion.complete(res.id);
  }
}

/// A resource that requires permissions to access it.
abstract class SecureResource<T extends Enum> extends Resource {
  SecureResource(super.name, super.client);

  /// Convert a list of permissions to gRPC actions.
  List<$p.Action> permissionsToActions(List<T> permissions);

  /// Register a policy with the Nitric server to secure the resource with least-privilege. Handles shutting down the channel.
  Future<void> registerPolicy(List<T> permissions) async {
    var resourceIdentifier = await _registrationCompletion.future;

    var policyResource = $p.ResourceIdentifier(type: $p.ResourceType.Policy);

    var policy = $p.PolicyResource(
        principals: [$p.ResourceIdentifier(type: $p.ResourceType.Service)],
        resources: [resourceIdentifier],
        actions: permissionsToActions(permissions));

    await _useClient((client) async => await client.declare($p.ResourceDeclareRequest(policy: policy, id: policyResource)));
  }

  /// Register the resource with the Nitric server.
  @override
  Future<void> register() async {
    var res = asRequest();

    await _useClient((client) async => await client.declare(res));

    _registrationCompletion.complete(res.id);
  }
}
