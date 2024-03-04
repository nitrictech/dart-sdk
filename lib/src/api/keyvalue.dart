import 'package:nitric_sdk/src/api/api.dart';
import 'package:nitric_sdk/src/grpc_helper.dart';
import 'package:nitric_sdk/src/nitric/proto/keyvalue/v1/keyvalue.pbgrpc.dart'
    as $p;

/// A Key Value Store.
class KeyValueStore {
  late $p.KeyValueClient _keyValueClient;

  final String name;

  KeyValueStore(this.name, {$p.KeyValueClient? client}) {
    if (client == null) {
      var channel = createClientChannelFromEnvVar();

      _keyValueClient = $p.KeyValueClient(channel);
    } else {
      _keyValueClient = client;
    }
  }

  /// Get a reference to a [key] in the store.
  Future<Map<String, dynamic>> get(String key) async {
    var req = $p.KeyValueGetRequest(ref: $p.ValueRef(key: key, store: name));

    var resp = await _keyValueClient.get(req);

    return Proto.mapFromStruct(resp.value.content);
  }

  /// Set a new [value] to a [key] in the store.
  Future<void> set(String key, Map<String, dynamic> value) async {
    var content = Proto.structFromMap(value);

    var req = $p.KeyValueSetRequest(
        ref: $p.ValueRef(key: key, store: name), content: content);

    await _keyValueClient.set(req);
  }

  /// Delete a [key] from the store.
  Future<void> delete(String key) async {
    var req = $p.KeyValueDeleteRequest(ref: $p.ValueRef(key: key, store: name));

    await _keyValueClient.delete(req);
  }
}
