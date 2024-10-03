part of 'common.dart';

/// Represents a requestable route with the accepted HTTP methods.
class ApiWorker extends Worker<$ap.ApiClient> {
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

    var options = $ap.ApiWorkerOptions(securityDisabled: security.isEmpty);

    for (var s in security) {
      await attachOidc(route.api.name, s);

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

    await ClientChannelSingleton.useClient($ap.ApiClient.new, (client) async {
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

            ctx.res.withError(e);
          }

          requestStream.add(ctx.toResponse());
        }
      }
    });
  }
}
