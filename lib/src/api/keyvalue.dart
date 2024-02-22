import 'dart:convert';

import 'package:grpc/grpc.dart';
import 'package:nitric_sdk/src/nitric/proto/keyvalue/v1/keyvalue.pbgrpc.dart';

import '../nitric/google/protobuf/struct.pb.dart';

/// A Key Value Store.
class KeyValueStore<T> {
  late KeyValueClient _keyValueClient;

  final String name;

  KeyValueStore(this.name) {
    var channel = ClientChannel(
      '127.0.0.1',
      port: 50051,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

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
