library resources;

import 'package:dart_sdk/src/gen/contracts/proto/resource/v1/resource.pbgrpc.dart'
    as $p;

import 'package:grpc/grpc.dart';

abstract class Resource {
  String name;
  late $p.ResourceServiceClient client;

  Resource(this.name) {
    var channel = ClientChannel(
      'localhost',
      port: 50051,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    client = $p.ResourceServiceClient(channel);
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
