import 'package:dart_sdk/src/resources/context.dart';

typedef Middleware<T extends TriggerContext> = Future<T> Function(T ctx);

typedef HttpMiddleware = Middleware<HttpContext>;
