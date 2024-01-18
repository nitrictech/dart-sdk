import 'resources/common.dart';

/// Create a [name]d bucket for storing blobs.
BucketResource bucket(String name) {
  var res = BucketResource(name);

  res.register();

  return res;
}

/// Create a [name]d api for registering HTTP handlers.
Api api(String name) {
  var res = Api(name);

  res.register();

  return res;
}

/// Create a [name]d collection for storing documents.
CollectionResource<T> collection<T>(String name) {
  var res = CollectionResource<T>(name);

  res.register();

  return res;
}

/// Create a [name]d schedule for running handlers on a set interval.
Schedule schedule(String name) {
  var res = Schedule(name);

  res.register();

  return res;
}

/// Create a [name]d secret for storing encrypted values.
SecretResource secret(String name) {
  var res = SecretResource(name);

  res.register();

  return res;
}

/// Create a [name]d topic for registering push-based event handlers.
Topic topic(String name) {
  var res = Topic(name);

  res.register();

  return res;
}

/// Create a [name]d websocket for registering bidirectional HTTP handlers.
Websocket websocket(String name) {
  var res = Websocket(name);

  res.register();

  return res;
}
