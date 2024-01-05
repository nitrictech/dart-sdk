import 'package:dart_sdk/src/gen/contracts/proto/resource/v1/resource.pb.dart'
    as $p;
import 'package:dart_sdk/src/gen/contracts/proto/resource/v1/resource.pbgrpc.dart'
    as $pc;
import 'package:dart_sdk/src/resources/middleware.dart';
import 'package:dart_sdk/src/resources/resource.dart';

class ApiResource extends Resource {
  ApiResource(String name) : super(name);

  @override
  Future<void> register() async {
    var resource = $p.Resource(
      name: name,
      type: $p.ResourceType.Api,
    );

    await client.declare($pc.ResourceDeclareRequest(resource: resource));
  }

  Future<void> get(
    String match,
    HttpMiddleware middleware,
  ) {
    return Route(match).get(middleware);
  }
}

class Route {
  String match;

  Route(this.match);

  Future<void> get(HttpMiddleware) {}
}
