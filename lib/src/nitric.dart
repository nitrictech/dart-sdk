import 'package:nitric_sdk/src/api/sql.dart';

import 'resources/common.dart';

class Nitric {
  static final Map<String, Map<String, Resource>> _cache = {};

  static Resource _makeResource<T extends Resource>(
      String name, T Function(String name) creator) {
    var typename = T.toString();

    if (!_cache.containsKey(typename)) {
      _cache[typename] = {};
    }

    if (!_cache[typename]!.containsKey(name)) {
      _cache[typename]![name] = creator(name);

      var registerFuture = _cache[typename]![name]!.register();

      registerFuture.onError((error, stackTrace) =>
          print("error occurred registering $typename $name: $error"));
    }

    return _cache[typename]![name] as T;
  }

  /// Create a [name]d bucket for storing blobs.
  static BucketResource bucket(String name) =>
      _makeResource(name, BucketResource.new) as BucketResource;

  /// Create a [name]d queue for enqueuing and dequeuing messages.
  static QueueResource queue(String name) =>
      _makeResource(name, QueueResource.new) as QueueResource;

  /// Create a [name]d api for registering HTTP handlers.
  static Api api(String name, {ApiOptions? opts}) =>
      _makeResource(name, (name) => Api(name, opts: opts)) as Api;

  /// Create a [name]d collection for storing documents.
  static KeyValueStoreResource kv(String name) =>
      _makeResource(name, KeyValueStoreResource.new) as KeyValueStoreResource;

  /// Create a [name]d schedule for running handlers on a set interval.
  static Schedule schedule(String name) =>
      _makeResource(name, Schedule.new) as Schedule;

  /// Create a [name]d secret for storing encrypted values.
  static SecretResource secret(String name) =>
      _makeResource(name, SecretResource.new) as SecretResource;

  /// Create a [name]d sql database.
  static SqlDatabase sql(String name, {String? migrations}) =>
      _makeResource(name, (name) => SqlDatabase(name, migrations))
          as SqlDatabase;

  /// Create a [name]d topic for registering push-based event handlers.
  static Topic topic(String name) => _makeResource(name, Topic.new) as Topic;

  /// Create a [name]d websocket for registering bidirectional HTTP handlers.
  static Websocket websocket(String name) =>
      _makeResource(name, Websocket.new) as Websocket;

  /// Create a [name]d oidc rule for attaching security definitions to APIs.
  static SecurityOption oidcRule(
      String name, String issuer, List<String> audiences) {
    return (List<String> scopes) {
      return OidcOptions(name, issuer, audiences, scopes);
    };
  }
}
