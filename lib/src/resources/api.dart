part of 'resource.dart';

enum HttpMethod {
  get,
  put,
  post,
  delete,
  options,
}

class ApiResource extends Resource {
  ApiResource(String name) : super(name);

  @override
  Future<void> register() async {
    var resource = $p.Resource(
      name: name,
      type: $p.ResourceType.Api,
    );

    await client.declare($p.ResourceDeclareRequest(resource: resource));
  }

  Future<void> get(
    String match,
    HttpMiddleware middleware,
  ) async {
    Route(this, match).get(middleware);
  }

  Future<void> post(
    String match,
    HttpMiddleware middleware,
  ) async {
    Route(this, match).post(middleware);
  }

  Future<void> put(
    String match,
    HttpMiddleware middleware,
  ) async {
    Route(this, match).put(middleware);
  }

  Future<void> delete(
    String match,
    HttpMiddleware middleware,
  ) async {
    Route(this, match).delete(middleware);
  }

  Future<void> options(
    String match,
    HttpMiddleware middleware,
  ) async {
    Route(this, match).options(middleware);
  }

  Future<void> all(
    String match,
    HttpMiddleware middleware,
  ) async {
    Route(this, match).all(middleware);
  }

  Route route(String match) {
    return Route(this, match);
  }
}

class Route {
  ApiResource api;
  String match;

  Route(this.api, this.match);

  Future<void> get(HttpMiddleware middleware) async {
    Method(this, middleware, [HttpMethod.get]).start();
  }

  Future<void> post(HttpMiddleware middleware) async {
    Method(this, middleware, [HttpMethod.post]).start();
  }

  Future<void> put(HttpMiddleware middleware) async {
    Method(this, middleware, [HttpMethod.put]).start();
  }

  Future<void> delete(HttpMiddleware middleware) async {
    Method(this, middleware, [HttpMethod.delete]).start();
  }

  Future<void> options(HttpMiddleware middleware) async {
    Method(this, middleware, [HttpMethod.options]).start();
  }

  Future<void> all(HttpMiddleware middleware) async {
    Method(this, middleware, HttpMethod.values).start();
  }
}

class Method {
  Route route;
  HttpMiddleware handler;
  List<HttpMethod> methods;

  Method(this.route, this.handler, this.methods);

  Future<void> start() async {
    // Create API client
    final channel = ClientChannel('localhost',
        port: 50051,
        options: ChannelOptions(credentials: ChannelCredentials.insecure()));
    final client = $ap.ApiClient(channel);

    // Create the request to register the API with the membrane
    final registrationRequest = $ap.RegistrationRequest(
      api: route.api.name,
      path: route.match,
      methods: methods.map((e) => e.name.toUpperCase()),
      options: $ap.ApiWorkerOptions(securityDisabled: true),
    );
    final initMsg = $ap.ClientMessage(registrationRequest: registrationRequest);

    // Create the request stream and send the initial message
    final requestStream = StreamController<$ap.ClientMessage>();
    requestStream.add(initMsg);

    final response = client.serve(
      requestStream.stream,
    );

    try {
      await for (final msg in response) {
        if (msg.hasRegistrationResponse()) {
          print("Function connected with membrane");
        } else if (msg.hasHttpRequest()) {
          var ctx = HttpContext.fromRequest(msg);

          ctx = await handler(ctx);

          var resp = ctx.toResponse();

          requestStream.add(resp);
        }
      }
    } on GrpcError catch (e) {
      print("caught a GrpcError: $e");
    } on Error catch (e) {
      var resp = HttpResponse.withError(e);

      requestStream.add($ap.ClientMessage(httpResponse: resp.toWire()));
    }
  }
}
