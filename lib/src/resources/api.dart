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
  Api(String name, {$p.ResourcesClient? client}) : super(name, client);

  @override
  Future<void> register() async {
    var resource = $p.ResourceIdentifier(
      name: name,
      type: $p.ResourceType.Api,
    );

    //var apiScopes = $p.ApiScopes();
    var apiResource = $p.ApiResource(security: {}); // TODO security

    await client
        .declare($p.ResourceDeclareRequest(id: resource, api: apiResource));
  }

  /// A GET request [handler] that [match]es a specific route.
  Future<void> get(
    String match,
    HttpHandler handler,
  ) async {
    Route(this, match).get(handler);
  }

  /// A POST request [handler] that [match]es a specific route.
  Future<void> post(
    String match,
    HttpHandler handler,
  ) async {
    Route(this, match).post(handler);
  }

  /// A PUT request [handler] that [match]es a specific route.
  Future<void> put(
    String match,
    HttpHandler handler,
  ) async {
    Route(this, match).put(handler);
  }

  /// A DELETE request [handler] that [match]es a specific route.
  Future<void> delete(
    String match,
    HttpHandler handler,
  ) async {
    Route(this, match).delete(handler);
  }

  /// A OPTIONS request [handler] that [match]es a specific route.
  Future<void> options(
    String match,
    HttpHandler handler,
  ) async {
    Route(this, match).options(handler);
  }

  /// A request [handler] that [match]es a specific route on all HTTP methods.
  Future<void> all(
    String match,
    HttpHandler handler,
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
  Future<void> get(HttpHandler handler) async {
    var worker = ApiWorker(this, handler, [HttpMethod.get]);

    worker.start();
  }

  /// A POST request [handler] for this route.
  Future<void> post(HttpHandler handler) async {
    var worker = ApiWorker(this, handler, [HttpMethod.post]);

    worker.start();
  }

  /// A PUT request [handler] for this route.
  Future<void> put(HttpHandler handler) async {
    var worker = ApiWorker(this, handler, [HttpMethod.put]);

    worker.start();
  }

  /// A DELETE request [handler] for this route.
  Future<void> delete(HttpHandler handler) async {
    var worker = ApiWorker(this, handler, [HttpMethod.delete]);

    worker.start();
  }

  /// An OPTIONS request [handler] for this route.
  Future<void> options(HttpHandler handler) async {
    var worker = ApiWorker(this, handler, [HttpMethod.options]);

    worker.start();
  }

  /// A request [handler] for this route that matches all HTTP methods.
  Future<void> all(HttpHandler handler) async {
    var worker = ApiWorker(this, handler, HttpMethod.values);

    worker.start();
  }
}

/// Represents a requestable route with the accepted HTTP methods.
class ApiWorker implements Worker {
  /// The requestable route.
  Route route;

  /// The handler that will run on a request.
  HttpHandler handler;

  /// The HTTP methods that will be accepted for this trigger.
  List<HttpMethod> methods;

  ApiWorker(this.route, this.handler, this.methods);

  /// Start the route handler.
  @override
  Future<void> start() async {
    // Create API client
    final channel = createClientChannelFromEnvVar();
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

    await for (final msg in response) {
      if (msg.hasRegistrationResponse()) {
        // Function connected with Nitric server
      } else if (msg.hasHttpRequest()) {
        var ctx = HttpContext.fromRequest(msg);

        try {
          ctx = await handler(ctx);
        } on GrpcError catch (e) {
          print("caught a GrpcError: $e");
        } catch (e) {
          // Program has experienced an unexpected programatic error
          print("unhandled application error: $e");

          ctx.resp.withError(e);
        }

        requestStream.add(ctx.toResponse());
      }
    }
  }
}
