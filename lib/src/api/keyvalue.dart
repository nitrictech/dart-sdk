import 'dart:convert';

import 'package:nitric_sdk/src/grpc_helper.dart';
import 'package:nitric_sdk/src/nitric/proto/keyvalue/v1/keyvalue.pbgrpc.dart';

import '../google/protobuf/struct.pb.dart';

/// A Key Value Store.
class KeyValueStore<T> {
  late KeyValueClient _keyValueClient;

  final String name;

  KeyValueStore(this.name) {
    var channel = createClientChannelFromEnvVar();

    _keyValueClient = KeyValueClient(channel);
  }

  /// Get a reference to a key in the store.
  Future<T> get(String key) async {
    var req = KeyValueGetRequest(ref: ValueRef(key: key, store: name));

    var resp = await _keyValueClient.get(req);

    return json.decode(resp.writeToJson());
  }

  Future<void> set(String key, T value) async {
    var content = Struct();
    content.mergeFromJson(json.encode(value));

    var req = KeyValueSetRequest(
        ref: ValueRef(key: key, store: name), content: content);

    await _keyValueClient.set(req);
  }

  Future<void> delete(String key) async {
    var req = KeyValueDeleteRequest(ref: ValueRef(key: key, store: name));

    await _keyValueClient.delete(req);
  }
}
