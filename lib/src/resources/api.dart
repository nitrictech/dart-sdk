part of 'common.dart';

enum HttpMethod {
  get,
  put,
  post,
  delete,
  options,
  patch,
}

class ApiOptions {
  List<OidcOptions> security;
  String basePath;
  List<HttpHandler> middlewares;

  ApiOptions(
      {this.security = const [],
      this.basePath = "",
      this.middlewares = const []});
}

/// An API resource.
class Api extends Resource {
  late ApiOptions opts;

  late ApiClient? _apiClient;

  Api(String name,
      {ApiOptions? opts, $p.ResourcesClient? client, ApiClient? apiClient})
      : super(name, client) {
    this.opts = opts ?? ApiOptions();
    _apiClient = apiClient;
  }

  @override
  ResourceDeclareRequest asRequest() {
    var resource = $p.ResourceIdentifier(
      name: name,
      type: $p.ResourceType.Api,
    );

    var apiResource = $p.ApiResource();

    for (var opt in opts.security) {
      unawaited(attachOidc(name, opt).onError((error, stackTrace) {
        print(error);
      }));

      apiResource.security[opt.name] = $p.ApiScopes(scopes: opt.scopes);
    }

    return $p.ResourceDeclareRequest(id: resource, api: apiResource);
  }

  /// A GET request [handler] that [match]es a specific route.
  Future<void> get(String match, HttpHandler handler,
      {List<OidcOptions>? security,
      List<HttpHandler> middlewares = const []}) async {
    await Route(this, match, security: security, apiClient: _apiClient)
        .get(handler, middlewares: middlewares);
  }

  /// A POST request [handler] that [match]es a specific route.
  Future<void> post(String match, HttpHandler handler,
      {List<OidcOptions>? security,
      List<HttpHandler> middlewares = const []}) async {
    await Route(this, match, security: security, apiClient: _apiClient)
        .post(handler, middlewares: middlewares);
  }

  /// A PUT request [handler] that [match]es a specific route.
  Future<void> put(String match, HttpHandler handler,
      {List<OidcOptions>? security,
      List<HttpHandler> middlewares = const []}) async {
    await Route(this, match, security: security, apiClient: _apiClient)
        .put(handler, middlewares: middlewares);
  }

  /// A PATCH request [handler] that [match]es a specific route.
  Future<void> patch(String match, HttpHandler handler,
      {List<OidcOptions>? security,
      List<HttpHandler> middlewares = const []}) async {
    await Route(this, match, security: security, apiClient: _apiClient)
        .patch(handler, middlewares: middlewares);
  }

  /// A DELETE request [handler] that [match]es a specific route.
  Future<void> delete(String match, HttpHandler handler,
      {List<OidcOptions>? security,
      List<HttpHandler> middlewares = const []}) async {
    await Route(this, match, security: security, apiClient: _apiClient)
        .delete(handler, middlewares: middlewares);
  }

  /// A OPTIONS request [handler] that [match]es a specific route.
  Future<void> options(String match, HttpHandler handler,
      {List<OidcOptions>? security,
      List<HttpHandler> middlewares = const []}) async {
    await Route(this, match, security: security, apiClient: _apiClient)
        .options(handler, middlewares: middlewares);
  }

  /// A request [handler] that [match]es a specific route on all HTTP methods.
  Future<void> all(String match, HttpHandler handler,
      {List<OidcOptions>? security,
      List<HttpHandler> middlewares = const []}) async {
    await Route(this, match, security: security, apiClient: _apiClient)
        .all(handler, middlewares: middlewares);
  }

  /// Create a route that [match]es on a specific path.
  Route route(String match, {List<OidcOptions>? security}) {
    return Route(this, match, security: security, apiClient: _apiClient);
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

  ApiClient? _apiClient;

  Route(this.api, match, {security, ApiClient? apiClient})
      : match = api.opts.basePath + match,
        security = security ?? api.opts.security {
    _apiClient = apiClient;
  }

  /// A GET request [handler] for this route.
  Future<void> get(HttpHandler handler,
      {List<HttpHandler> middlewares = const []}) async {
    final composedHandler = composeMiddleware(
        [...api.opts.middlewares, ...middlewares, handler],
        HttpContext.fromCtx);

    var worker = ApiWorker(this, composedHandler, [HttpMethod.get],
        security: security, client: _apiClient);

    await worker.start();
  }

  /// A POST request [handler] for this route.
  Future<void> post(HttpHandler handler,
      {List<HttpHandler> middlewares = const []}) async {
    final composedHandler = composeMiddleware(
        [...api.opts.middlewares, ...middlewares, handler],
        HttpContext.fromCtx);

    var worker = ApiWorker(this, composedHandler, [HttpMethod.post],
        security: security, client: _apiClient);

    await worker.start();
  }

  /// A PUT request [handler] for this route.
  Future<void> put(HttpHandler handler,
      {List<HttpHandler> middlewares = const []}) async {
    final composedHandler = composeMiddleware(
        [...api.opts.middlewares, ...middlewares, handler],
        HttpContext.fromCtx);

    var worker = ApiWorker(this, composedHandler, [HttpMethod.put],
        security: security, client: _apiClient);

    await worker.start();
  }

  /// A PATCH request [handler] for this route.
  Future<void> patch(HttpHandler handler,
      {List<HttpHandler> middlewares = const []}) async {
    final composedHandler = composeMiddleware(
        [...api.opts.middlewares, ...middlewares, handler],
        HttpContext.fromCtx);

    var worker = ApiWorker(this, composedHandler, [HttpMethod.patch],
        security: security, client: _apiClient);

    await worker.start();
  }

  /// A DELETE request [handler] for this route.
  Future<void> delete(HttpHandler handler,
      {List<HttpHandler> middlewares = const []}) async {
    final composedHandler = composeMiddleware(
        [...api.opts.middlewares, ...middlewares, handler],
        HttpContext.fromCtx);

    var worker = ApiWorker(this, composedHandler, [HttpMethod.delete],
        security: security, client: _apiClient);

    await worker.start();
  }

  /// An OPTIONS request [handler] for this route.
  Future<void> options(HttpHandler handler,
      {List<HttpHandler> middlewares = const []}) async {
    final composedHandler = composeMiddleware(
        [...api.opts.middlewares, ...middlewares, handler],
        HttpContext.fromCtx);

    var worker = ApiWorker(this, composedHandler, [HttpMethod.options],
        security: security, client: _apiClient);

    await worker.start();
  }

  /// A request [handler] for this route that matches all HTTP methods.
  Future<void> all(HttpHandler handler,
      {List<HttpHandler> middlewares = const []}) async {
    final composedHandler = composeMiddleware(
        [...api.opts.middlewares, ...middlewares, handler],
        HttpContext.fromCtx);

    var worker = ApiWorker(this, composedHandler, HttpMethod.values,
        security: security, client: _apiClient);

    await worker.start();
  }
}
