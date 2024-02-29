import 'dart:convert';

import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/api.dart';
import 'package:nitric_sdk/src/nitric/proto/secrets/v1/secrets.pbgrpc.dart'
    as $p;
import 'package:test/test.dart';

import '../common.dart';

class MockSecretClient extends Mock implements $p.SecretManagerClient {}

void main() {
  test('Test build secret', () {
    var secret = Secret("secretName");

    expect(secret.name, "secretName");
  });

  test('Test get secret version', () {
    var secret = Secret("secretName");

    var version = secret.version("versionID");

    expect(version.version, "versionID");
  });

  test('Test get latest secret version', () {
    var secret = Secret("secretName");

    var latest = secret.latest();

    expect(latest.version, "latest");
  });

  test('Test set new secret', () async {
    var secretClient = MockSecretClient();

    var req = $p.SecretPutRequest(
        secret: $p.Secret(name: "secretName"), value: utf8.encode("contents"));

    var resp = $p.SecretPutResponse(
        secretVersion: $p.SecretVersion(
            secret: $p.Secret(name: "secretName"), version: "versionID"));

    when(() => secretClient.put(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var secret = Secret("secretName", client: secretClient);

    await secret.put("contents");

    verify(() => secretClient.put(req)).called(1);
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
