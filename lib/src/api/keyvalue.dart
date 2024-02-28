import 'dart:convert';

import 'package:nitric_sdk/src/grpc_helper.dart';
import 'package:nitric_sdk/src/nitric/proto/keyvalue/v1/keyvalue.pbgrpc.dart';

import '../nitric/google/protobuf/struct.pb.dart' as $s;

/// A Key Value Store.
class KeyValueStore {
  late KeyValueClient _keyValueClient;

  final String name;

  KeyValueStore(this.name) {
    var channel = createClientChannelFromEnvVar();

    _keyValueClient = KeyValueClient(channel);
  }

  /// Get a reference to a key in the store.
  Future<Map<String, dynamic>> get(String key) async {
    var req = KeyValueGetRequest(ref: ValueRef(key: key, store: name));

    var resp = await _keyValueClient.get(req);

    return json.decode(resp.writeToJson());
  }

  Future<void> set(String key, Map<String, dynamic> value) async {
    var content = $s.Struct();
    value.forEach((key, value) => content.fields[key] = _asValue(value));

    var req = KeyValueSetRequest(
        ref: ValueRef(key: key, store: name), content: content);

    await _keyValueClient.set(req);
  }

  $s.Value _asValue(dynamic value) {
    if (value is String) {
      return $s.Value(stringValue: value);
    } else if (value is int) {
      return $s.Value(numberValue: value.toDouble());
    } else if (value is double) {
      return $s.Value(numberValue: value);
    } else if (value is List) {
      return $s.Value(
          listValue: $s.ListValue(values: value.map((e) => _asValue(e))));
    } else if (value is Map) {
      var content = $s.Struct();
      value.forEach((key, value) => content.fields[key] = _asValue(value));
      return $s.Value(structValue: content);
    }

    return $s.Value(nullValue: null);
  }

  Future<void> delete(String key) async {
    var req = KeyValueDeleteRequest(ref: ValueRef(key: key, store: name));

    await _keyValueClient.delete(req);
  }
}
