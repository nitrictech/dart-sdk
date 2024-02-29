part of './common.dart';

typedef Handler<T extends TriggerContext> = Future<T> Function(T ctx);

typedef HttpHandler = Handler<HttpContext>;
typedef IntervalHandler = Handler<IntervalContext>;
typedef MessageHandler = Handler<MessageContext>;
typedef BlobEventHandler = Handler<BlobEventContext>;
typedef WebsocketHandler = Handler<WebsocketContext>;
