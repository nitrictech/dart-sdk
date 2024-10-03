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

  Api(super.name, {ApiOptions? opts}) {
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
    await route(match, security: security, middlewares: middlewares)
        .get(handler);
  }

  /// A POST request [handler] that [match]es a specific route.
  Future<void> post(String match, HttpHandler handler,
      {List<OidcOptions>? security,
      List<HttpHandler> middlewares = const []}) async {
    await route(match, security: security, middlewares: middlewares)
        .post(handler);
  }

  /// A PUT request [handler] that [match]es a specific route.
  Future<void> put(String match, HttpHandler handler,
      {List<OidcOptions>? security,
      List<HttpHandler> middlewares = const []}) async {
    await route(match, security: security, middlewares: middlewares)
        .put(handler);
  }

  /// A PATCH request [handler] that [match]es a specific route.
  Future<void> patch(String match, HttpHandler handler,
      {List<OidcOptions>? security,
      List<HttpHandler> middlewares = const []}) async {
    await route(match, security: security, middlewares: middlewares)
        .patch(handler);
  }

  /// A DELETE request [handler] that [match]es a specific route.
  Future<void> delete(String match, HttpHandler handler,
      {List<OidcOptions>? security,
      List<HttpHandler> middlewares = const []}) async {
    await route(match, security: security, middlewares: middlewares)
        .delete(handler);
  }

  /// A OPTIONS request [handler] that [match]es a specific route.
  Future<void> options(String match, HttpHandler handler,
      {List<OidcOptions>? security,
      List<HttpHandler> middlewares = const []}) async {
    await route(match, security: security, middlewares: middlewares)
        .options(handler);
  }

  /// A request [handler] that [match]es a specific route on all HTTP methods.
  Future<void> all(String match, HttpHandler handler,
      {List<OidcOptions>? security,
      List<HttpHandler> middlewares = const []}) async {
    await route(match, security: security, middlewares: middlewares)
        .all(handler);
  }

  /// Create a route that [match]es on a specific path with optional [middlewares] and [security].
  Route route(String match,
      {List<OidcOptions>? security, List<HttpHandler> middlewares = const []}) {
    return Route(this, match, security: security, middlewares: middlewares);
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

  late List<HttpHandler> _middlewares;

  Route(this.api, match,
      {security,
      ApiClient? apiClient,
      List<HttpHandler> middlewares = const []})
      : match = api.opts.basePath + match,
        security = security ?? api.opts.security {
    _middlewares = middlewares;
  }

  Future<void> _method(HttpHandler handler, List<HttpMethod> methods) async {
    final composedHandler = composeMiddleware(
        [...api.opts.middlewares, ..._middlewares, handler],
        HttpContext.fromCtx);

    var worker = ApiWorker(this, composedHandler, methods, security: security);

    await worker.start();
  }

  /// A GET request [handler] for this route.
  Future<void> get(HttpHandler handler) async =>
      await _method(handler, [HttpMethod.get]);

  /// A POST request [handler] for this route.
  Future<void> post(HttpHandler handler) async =>
      await _method(handler, [HttpMethod.post]);

  /// A PUT request [handler] for this route.
  Future<void> put(HttpHandler handler) async =>
      await _method(handler, [HttpMethod.put]);

  /// A PATCH request [handler] for this route.
  Future<void> patch(HttpHandler handler) async =>
      await _method(handler, [HttpMethod.patch]);

  /// A DELETE request [handler] for this route.
  Future<void> delete(HttpHandler handler) async =>
      await _method(handler, [HttpMethod.delete]);

  /// An OPTIONS request [handler] for this route.
  Future<void> options(HttpHandler handler) async =>
      await _method(handler, [HttpMethod.options]);

  /// A request [handler] for this route that matches all HTTP methods.
  Future<void> all(HttpHandler handler) async =>
      await _method(handler, HttpMethod.values);
}
