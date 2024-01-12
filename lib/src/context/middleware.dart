part of './common.dart';

typedef Middleware<T extends TriggerContext> = Future<T> Function(T ctx);

typedef HttpMiddleware = Middleware<HttpContext>;
typedef IntervalMiddleware = Middleware<IntervalContext>;
typedef MessageMiddleware = Middleware<MessageContext>;
typedef BlobEventMiddleware = Middleware<BlobEventContext>;
typedef WebsocketMiddleware = Middleware<WebsocketContext>;
