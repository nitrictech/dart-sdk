part of 'common.dart';

enum HttpMethod {
  get,
  put,
  post,
  delete,
  options,
}

class ApiOptions {
  List<OidcOptions> security;
  String basePath;

  ApiOptions({this.security = const [], this.basePath = ""});
}

/// An API resource.
class Api extends Resource {
  late ApiOptions opts;

  Api(String name, {ApiOptions? opts, $p.ResourcesClient? client})
      : super(name, client) {
    this.opts = opts ?? ApiOptions();
  }

  @override
  ResourceDeclareRequest asRequest() {
    var resource = $p.ResourceIdentifier(
      name: name,
      type: $p.ResourceType.Api,
    );

    var apiResource = $p.ApiResource();

    for (var opt in opts.security) {
      _attachOidc(name, opt);

      apiResource.security[opt.name] = $p.ApiScopes(scopes: opt.scopes);
    }

    return $p.ResourceDeclareRequest(id: resource, api: apiResource);
  }

  /// A GET request [handler] that [match]es a specific route.
  Future<void> get(String match, HttpHandler handler,
      {List<OidcOptions>? security}) async {
    Route(this, opts.basePath + match, security: security ?? opts.security)
        .get(handler);
  }

  /// A POST request [handler] that [match]es a specific route.
  Future<void> post(String match, HttpHandler handler,
      {List<OidcOptions>? security}) async {
    Route(this, opts.basePath + match, security: security ?? opts.security)
        .post(handler);
  }

  /// A PUT request [handler] that [match]es a specific route.
  Future<void> put(String match, HttpHandler handler,
      {List<OidcOptions>? security}) async {
    Route(this, opts.basePath + match, security: security ?? opts.security)
        .put(handler);
  }

  /// A DELETE request [handler] that [match]es a specific route.
  Future<void> delete(String match, HttpHandler handler,
      {List<OidcOptions>? security}) async {
    Route(this, opts.basePath + match, security: security ?? opts.security)
        .delete(handler);
  }

  /// A OPTIONS request [handler] that [match]es a specific route.
  Future<void> options(String match, HttpHandler handler,
      {List<OidcOptions>? security}) async {
    Route(this, opts.basePath + match, security: security ?? opts.security)
        .options(handler);
  }

  /// A request [handler] that [match]es a specific route on all HTTP methods.
  Future<void> all(String match, HttpHandler handler,
      {List<OidcOptions>? security}) async {
    Route(this, opts.basePath + match, security: security ?? opts.security)
        .all(handler);
  }

  /// Create a route that [match]es on a specific path.
  Route route(String match, {List<OidcOptions>? security}) {
    return Route(this, opts.basePath + match,
        security: security ?? opts.security);
  }
}

/// Represents a single route on an API.
class Route {
  /// The api that this route belongs to.
  Api api;

  /// The path that this route will match on.
  String match;

  /// The security to apply to the route.
  List<OidcOptions> security;

  Route(this.api, this.match, {this.security = const []});

  /// A GET request [handler] for this route.
  Future<void> get(HttpHandler handler) async {
    var worker = ApiWorker(this, handler, [HttpMethod.get], security: security);

    worker.start();
  }

  /// A POST request [handler] for this route.
  Future<void> post(HttpHandler handler) async {
    var worker =
        ApiWorker(this, handler, [HttpMethod.post], security: security);

    worker.start();
  }

  /// A PUT request [handler] for this route.
  Future<void> put(HttpHandler handler) async {
    var worker = ApiWorker(this, handler, [HttpMethod.put], security: security);

    worker.start();
  }

  /// A DELETE request [handler] for this route.
  Future<void> delete(HttpHandler handler) async {
    var worker =
        ApiWorker(this, handler, [HttpMethod.delete], security: security);

    worker.start();
  }

  /// An OPTIONS request [handler] for this route.
  Future<void> options(HttpHandler handler) async {
    var worker =
        ApiWorker(this, handler, [HttpMethod.options], security: security);

    worker.start();
  }

  /// A request [handler] for this route that matches all HTTP methods.
  Future<void> all(HttpHandler handler) async {
    var worker =
        ApiWorker(this, handler, HttpMethod.values, security: security);

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

  /// The security to apply to this api worker.
  List<OidcOptions> security;

  ApiWorker(this.route, this.handler, this.methods, {this.security = const []});

  /// Start the route handler.
  @override
  Future<void> start() async {
    // Create API client
    final channel = createClientChannelFromEnvVar();
    final client = $ap.ApiClient(channel);

    var options = $ap.ApiWorkerOptions(securityDisabled: security.isEmpty);

    for (var s in security) {
      await _attachOidc(route.api.name, s);

      options.security[s.name] = $ap.ApiWorkerScopes(scopes: s.scopes);
    }

    // Create the request to register the API with the membrane
    final registrationRequest = $ap.RegistrationRequest(
      api: route.api.name,
      path: route.match,
      methods: methods.map((e) => e.name.toUpperCase()),
      options: options,
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

    await channel.shutdown();
  }
}
