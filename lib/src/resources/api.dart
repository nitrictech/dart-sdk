part of 'common.dart';

enum HttpMethod {
  get,
  put,
  post,
  delete,
  options,
}

/// An API resource.
class Api extends Resource {
  Api(String name) : super(name);

  @override
  Future<void> register() async {
    var resource = $p.ResourceIdentifier(
      name: name,
      type: $p.ResourceType.Api,
    );

    await client.declare($p.ResourceDeclareRequest(id: resource));
  }

  /// A GET request [handler] that [match]es a specific route.
  Future<void> get(
    String match,
    HttpMiddleware handler,
  ) async {
    Route(this, match).get(handler);
  }

  /// A POST request [handler] that [match]es a specific route.
  Future<void> post(
    String match,
    HttpMiddleware handler,
  ) async {
    Route(this, match).post(handler);
  }

  /// A PUT request [handler] that [match]es a specific route.
  Future<void> put(
    String match,
    HttpMiddleware handler,
  ) async {
    Route(this, match).put(handler);
  }

  /// A DELETE request [handler] that [match]es a specific route.
  Future<void> delete(
    String match,
    HttpMiddleware handler,
  ) async {
    Route(this, match).delete(handler);
  }

  /// A OPTIONS request [handler] that [match]es a specific route.
  Future<void> options(
    String match,
    HttpMiddleware handler,
  ) async {
    Route(this, match).options(handler);
  }

  /// A request [handler] that [match]es a specific route on all HTTP methods.
  Future<void> all(
    String match,
    HttpMiddleware handler,
  ) async {
    Route(this, match).all(handler);
  }

  /// Create a route that [match]es on a specific path.
  Route route(String match) {
    return Route(this, match);
  }
}

/// Represents a single route on an API.
class Route {
  /// The api that this route belongs to.
  Api api;

  /// The path that this route will match on.
  String match;

  Route(this.api, this.match);

  /// A GET request [handler] for this route.
  Future<void> get(HttpMiddleware handler) async {
    var worker = ApiWorker(this, handler, [HttpMethod.get]);

    Nitric.registerWorker(worker);
  }

  /// A POST request [handler] for this route.
  Future<void> post(HttpMiddleware handler) async {
    var worker = ApiWorker(this, handler, [HttpMethod.post]);

    Nitric.registerWorker(worker);
  }

  /// A PUT request [handler] for this route.
  Future<void> put(HttpMiddleware handler) async {
    var worker = ApiWorker(this, handler, [HttpMethod.put]);

    Nitric.registerWorker(worker);
  }

  /// A DELETE request [handler] for this route.
  Future<void> delete(HttpMiddleware handler) async {
    var worker = ApiWorker(this, handler, [HttpMethod.delete]);

    Nitric.registerWorker(worker);
  }

  /// An OPTIONS request [handler] for this route.
  Future<void> options(HttpMiddleware handler) async {
    var worker = ApiWorker(this, handler, [HttpMethod.options]);

    Nitric.registerWorker(worker);
  }

  /// A request [handler] for this route that matches all HTTP methods.
  Future<void> all(HttpMiddleware handler) async {
    var worker = ApiWorker(this, handler, HttpMethod.values);

    Nitric.registerWorker(worker);
  }
}

/// Represents a requestable route with the accepted HTTP methods.
class ApiWorker implements Worker {
  /// The requestable route.
  Route route;

  /// The handler that will run on a request.
  HttpMiddleware handler;

  /// The HTTP methods that will be accepted for this trigger.
  List<HttpMethod> methods;

  ApiWorker(this.route, this.handler, this.methods);

  /// Start the route handler.
  @override
  Future<void> start() async {
    // Create API client
    final channel = ClientChannel('127.0.0.1',
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
      print(e);

      var resp = HttpResponse.withError(e);

      requestStream.add($ap.ClientMessage(httpResponse: resp.toWire()));
    }
  }
}
