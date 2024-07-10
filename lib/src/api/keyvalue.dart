import 'dart:async';

import 'package:nitric_sdk/src/api/api.dart';
import 'package:nitric_sdk/src/grpc_helper.dart';
import 'package:nitric_sdk/src/nitric/proto/kvstore/v1/kvstore.pbgrpc.dart'
    as $p;

/// A Key Value Store.
class KeyValueStore {
  late final $p.KvStoreClient? _keyValueClient;

  final String name;

  KeyValueStore(this.name, {$p.KvStoreClient? client}) {
    _keyValueClient = client;
  }

  Future<Resp> _useClient<Resp>(
      UseClientCallback<$p.KvStoreClient, Resp> callback) async {
    final client = _keyValueClient ??
        $p.KvStoreClient(ClientChannelSingleton.instance.clientChannel);

    var resp = callback(client);

    if (_keyValueClient == null) {
      await ClientChannelSingleton.instance.release();
    }

    return resp;
  }

  /// Get a reference to a [key] in the store.
  Future<Map<String, dynamic>> get(String key) async {
    var req =
        $p.KvStoreGetValueRequest(ref: $p.ValueRef(key: key, store: name));

    var resp = await _useClient((client) async => await client.getValue(req));

    return Proto.mapFromStruct(resp.value.content);
  }

  /// Set a new [value] to a [key] in the store.
  Future<void> set(String key, Map<String, dynamic> value) async {
    var content = Proto.structFromMap(value);

    var req = $p.KvStoreSetValueRequest(
        ref: $p.ValueRef(key: key, store: name), content: content);

    await _useClient((client) async => await client.setValue(req));
  }

  /// Delete a [key] from the store.
  Future<void> delete(String key) async {
    var req =
        $p.KvStoreDeleteKeyRequest(ref: $p.ValueRef(key: key, store: name));

    await _useClient((client) async => await client.deleteKey(req));
  }

  /// Get a stream of key values that match the [prefix].
  Future<Stream<String>> keys({String prefix = ""}) async {
    var req =
        $p.KvStoreScanKeysRequest(store: $p.Store(name: name), prefix: prefix);

    var resp = await _useClient((client) async => client.scanKeys(req));

    return resp.map((event) => event.key);
  }
}
