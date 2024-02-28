import 'resources/common.dart';

abstract class Worker {
  Future<void> start();
}

class Nitric {
  /// Create a [name]d bucket for storing blobs.
  static BucketResource bucket(String name) {
    var res = BucketResource(name);

    res.register();

    return res;
  }

  /// Create a [name]d api for registering HTTP handlers.
  static Api api(String name) {
    var res = Api(name);

    res.register();

    return res;
  }

  /// Create a [name]d collection for storing documents.
  static KeyValueStoreResource<T> store<T>(String name) {
    var res = KeyValueStoreResource<T>(name);

    res.register();

    return res;
  }

  /// Create a [name]d schedule for running handlers on a set interval.
  static Schedule schedule(String name) {
    var res = Schedule(name);

    res.register();

    return res;
  }

  /// Create a [name]d secret for storing encrypted values.
  static SecretResource secret(String name) {
    var res = SecretResource(name);

    res.register();

    return res;
  }

  /// Create a [name]d topic for registering push-based event handlers.
  static Topic topic(String name) {
    var res = Topic(name);

    res.register();

    return res;
  }

  /// Create a [name]d websocket for registering bidirectional HTTP handlers.
  static Websocket websocket(String name) {
    var res = Websocket(name);

    res.register();

    return res;
  }
}
