part of './common.dart';

typedef Handler<T extends TriggerContext> = Future<T> Function(T ctx);

typedef HttpHandler = Handler<HttpContext>;
typedef IntervalHandler = Handler<IntervalContext>;
typedef MessageHandler = Handler<MessageContext>;
typedef BlobEventHandler = Handler<BlobEventContext>;
typedef FileEventHandler = Handler<FileEventContext>;
typedef WebsocketHandler = Handler<WebsocketContext>;
typedef JobHandler = Handler<JobContext>;

Future<T> _defaultHandler<T extends TriggerContext>(T ctx) async => ctx;

Handler<T> composeMiddleware<T extends TriggerContext>(
        List<Handler<T>> handlers,
        T Function(T ctx, Handler<T> next) converter) =>
    (T ctx) async {
      final Handler<T> composedHandler = handlers.reversed
          .fold((ctx) async => ctx, (nextHandler, currHandler) {
        return (ctx) => currHandler(converter(ctx, nextHandler));
      });

      return await composedHandler(ctx);
    };
