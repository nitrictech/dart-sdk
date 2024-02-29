import 'dart:convert';

import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/api.dart';
import 'package:nitric_sdk/src/nitric/proto/storage/v1/storage.pbgrpc.dart';
import 'package:test/test.dart';

import '../common.dart';

class MockStorageClient extends Mock implements StorageClient {}

void main() {
  test('Test build bucket', () {
    var bucket = Bucket("bucketName");

    expect(bucket.name, "bucketName");
  });

  test('Test get file reference', () {
    var bucket = Bucket("bucketName");

    var file = bucket.file("fileName");

    expect(file.key, "fileName");
  });

  test('Test write to file', () async {
    var storageClient = MockStorageClient();

    var req = StorageWriteRequest(
        bucketName: "bucketName",
        key: "fileName",
        body: utf8.encode("contents"));

    var resp = StorageWriteResponse();

    when(() => storageClient.write(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var bucket = Bucket("bucketName", client: storageClient);

    await bucket.file("fileName").write("contents");

    verify(() => storageClient.write(req)).called(1);
  });

  test('Test read from file', () async {
    var storageClient = MockStorageClient();

    var req = StorageReadRequest(
      bucketName: "bucketName",
      key: "fileName",
    );

    var resp = StorageReadResponse(
      body: utf8.encode("bucket contents"),
    );

    when(() => storageClient.read(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var bucket = Bucket("bucketName", client: storageClient);

    var contents = await bucket.file("fileName").read();

    verify(() => storageClient.read(req)).called(1);

    expect(contents, "bucket contents");
  });

  test('Test delete file', () async {
    var storageClient = MockStorageClient();

    var req = StorageDeleteRequest(
      bucketName: "bucketName",
      key: "fileName",
    );

    var resp = StorageDeleteResponse();

    when(() => storageClient.delete(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var bucket = Bucket("bucketName", client: storageClient);

    await bucket.file("fileName").delete();

    verify(() => storageClient.delete(req)).called(1);
  });
}
