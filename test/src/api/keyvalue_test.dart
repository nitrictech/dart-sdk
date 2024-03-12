import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/src/api/api.dart';
import 'package:nitric_sdk/src/google/protobuf/struct.pb.dart' as $p;
import 'package:nitric_sdk/src/nitric/proto/kvstore/v1/kvstore.pbgrpc.dart';
import 'package:test/test.dart';

import '../common.dart';

class MockKeyValueClient extends Mock implements KvStoreClient {}

void main() {
  late MockKeyValueClient keyValueClient;

  setUp(() => keyValueClient = MockKeyValueClient());

  tearDown(() => reset(keyValueClient));

  test('Test build key value store', () {
    var kv = KeyValueStore("keyvalueName", client: keyValueClient);

    expect(kv.name, "keyvalueName");
  });

  test('Test set to key value store', () async {
    var contents = $p.Struct();
    contents.fields["message"] = $p.Value(stringValue: "test");

    var req = KvStoreSetValueRequest(
        ref: ValueRef(store: "keyvalueName", key: "keyName"),
        content: contents);

    var resp = KvStoreSetValueResponse();

    when(() => keyValueClient.setValue(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var kvStore = KeyValueStore("keyvalueName", client: keyValueClient);

    await kvStore.set("keyName", {'message': 'test'});

    verify(() => keyValueClient.setValue(req)).called(1);
  });

  test('Test get to key value store', () async {
    var contents = $p.Struct();
    contents.fields["message"] = $p.Value(stringValue: "test");

    var req = KvStoreGetValueRequest(
      ref: ValueRef(store: "keyvalueName", key: "keyName"),
    );

    var resp = KvStoreGetValueResponse(
        value: Value(
            ref: ValueRef(store: "keyvalueName", key: "keyName"),
            content: contents));

    when(() => keyValueClient.getValue(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var kvStore = KeyValueStore("keyvalueName", client: keyValueClient);

    var keyContents = await kvStore.get("keyName");

    verify(() => keyValueClient.getValue(req)).called(1);

    expect(keyContents, Map.from({'message': 'test'}));
  });

  test('Test delete from key value store', () async {
    var req = KvStoreDeleteKeyRequest(
      ref: ValueRef(store: "keyvalueName", key: "keyName"),
    );

    var resp = KvStoreDeleteKeyResponse();

    when(() => keyValueClient.deleteKey(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var kvStore = KeyValueStore("keyvalueName", client: keyValueClient);

    await kvStore.delete("keyName");

    verify(() => keyValueClient.deleteKey(req)).called(1);
  });

  // test('Test get keys from key value store with empty prefix', () async {
  //   var req = KvStoreScanKeysRequest(
  //     store: Store(name: "keyvalueName"),
  //     prefix: "",
  //   );

  //   var resp = ["first", "second", "third", "fourth", "fifth"]
  //       .map((key) => KvStoreScanKeysResponse(key: key))
  //       .toList();

  //   when(() => keyValueClient.scanKeys(req))
  //       .thenAnswer((_) => MockResponseStream.fromIterable(resp));

  //   var kvStore = KeyValueStore("keyvalueName", client: keyValueClient);

  //   var keys = kvStore.keys();

  //   verify(() => keyValueClient.scanKeys(req)).called(1);

  //   expect(keys.single, "fifth");
  //   expect(keys.single, "fourth");
  // });
}
