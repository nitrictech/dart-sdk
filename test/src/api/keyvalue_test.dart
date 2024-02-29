import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/src/api/api.dart';
import 'package:nitric_sdk/src/google/protobuf/struct.pb.dart' as $p;
import 'package:nitric_sdk/src/nitric/proto/keyvalue/v1/keyvalue.pbgrpc.dart';
import 'package:test/test.dart';

import '../common.dart';

class MockKeyValueClient extends Mock implements KeyValueClient {}

void main() {
  test('Test build key value store', () {
    var kv = KeyValueStore("keyvalueName");

    expect(kv.name, "keyvalueName");
  });

  test('Test set to key value store', () async {
    var keyvalueClient = MockKeyValueClient();

    var contents = $p.Struct();
    contents.fields["message"] = $p.Value(stringValue: "test");

    var req = KeyValueSetRequest(
        ref: ValueRef(store: "keyvalueName", key: "keyName"),
        content: contents);

    var resp = KeyValueSetResponse();

    when(() => keyvalueClient.set(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var kvStore = KeyValueStore("keyvalueName", client: keyvalueClient);

    await kvStore.set("keyName", {'message': 'test'});

    verify(() => keyvalueClient.set(req)).called(1);
  });

  test('Test get to key value store', () async {
    var keyvalueClient = MockKeyValueClient();

    var contents = $p.Struct();
    contents.fields["message"] = $p.Value(stringValue: "test");

    var req = KeyValueGetRequest(
      ref: ValueRef(store: "keyvalueName", key: "keyName"),
    );

    var resp = KeyValueGetResponse(
        value: Value(
            ref: ValueRef(store: "keyvalueName", key: "keyName"),
            content: contents));

    when(() => keyvalueClient.get(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var kvStore = KeyValueStore("keyvalueName", client: keyvalueClient);

    var keyContents = await kvStore.get("keyName");

    verify(() => keyvalueClient.get(req)).called(1);

    expect(keyContents, Map.from({'message': 'test'}));
  });

  test('Test delete from key value store', () async {
    var keyvalueClient = MockKeyValueClient();

    var req = KeyValueDeleteRequest(
      ref: ValueRef(store: "keyvalueName", key: "keyName"),
    );

    var resp = KeyValueDeleteResponse();

    when(() => keyvalueClient.delete(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var kvStore = KeyValueStore("keyvalueName", client: keyvalueClient);

    await kvStore.delete("keyName");

    verify(() => keyvalueClient.delete(req)).called(1);
  });
}
