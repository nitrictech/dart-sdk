import 'dart:convert';

import 'package:fixnum/fixnum.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/nitric.dart';
import 'package:nitric_sdk/src/api/api.dart';
import 'package:nitric_sdk/src/google/protobuf/duration.pb.dart';
import 'package:nitric_sdk/src/nitric/proto/storage/v1/storage.pbgrpc.dart'
    as $sp;
import 'package:test/test.dart';

import '../common.dart';

class MockStorageClient extends Mock implements $sp.StorageClient {}

class MockStorageListenerClient extends Mock
    implements $sp.StorageListenerClient {}

void main() {
  late MockStorageClient storageClient;
  late MockStorageListenerClient storageListenerClient;

  setUp(() {
    storageClient = MockStorageClient();
    storageListenerClient = MockStorageListenerClient();
  });

  setUpAll(() {
    registerFallbackValue(Stream<$sp.ClientMessage>.empty());
  });

  tearDown(() {
    reset(storageClient);
    reset(storageListenerClient);
  });

  test('Test build bucket', () {
    var bucket = Bucket("bucketName", client: storageClient);

    expect(bucket.name, "bucketName");
  });

  test('Test get file reference', () {
    var bucket = Bucket("bucketName", client: storageClient);

    var file = bucket.file("fileName");

    expect(file.key, "fileName");
  });

  test('Test get list of files with no prefix filter', () async {
    var req = $sp.StorageListBlobsRequest(bucketName: "bucketName", prefix: "");

    var resp = $sp.StorageListBlobsResponse(blobs: [
      $sp.Blob(key: "blob-a"),
      $sp.Blob(key: "blob-b"),
      $sp.Blob(key: "blob-c")
    ]);

    when(() => storageClient.listBlobs(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var bucket = Bucket("bucketName", client: storageClient);

    var blobs = await bucket.files();

    verify(() => storageClient.listBlobs(req)).called(1);

    expect(blobs.length, 3);
    expect(blobs[0].key, "blob-a");
    expect(blobs[1].key, "blob-b");
    expect(blobs[2].key, "blob-c");
  });

  test('Test get list of files with prefix filter', () async {
    var req =
        $sp.StorageListBlobsRequest(bucketName: "bucketName", prefix: "blob-");

    var resp = $sp.StorageListBlobsResponse(blobs: [
      $sp.Blob(key: "blob-a"),
      $sp.Blob(key: "blob-b"),
      $sp.Blob(key: "blob-c")
    ]);

    when(() => storageClient.listBlobs(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var bucket = Bucket("bucketName", client: storageClient);

    var blobs = await bucket.files(prefix: "blob-");

    verify(() => storageClient.listBlobs(req)).called(1);

    expect(blobs.length, 3);
    expect(blobs[0].key, "blob-a");
    expect(blobs[1].key, "blob-b");
    expect(blobs[2].key, "blob-c");
  });

  test('Test write to file', () async {
    var req = $sp.StorageWriteRequest(
        bucketName: "bucketName",
        key: "fileName",
        body: utf8.encode("contents"));

    var resp = $sp.StorageWriteResponse();

    when(() => storageClient.write(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var bucket = Bucket("bucketName", client: storageClient);

    await bucket.file("fileName").write("contents");

    verify(() => storageClient.write(req)).called(1);
  });

  test('Test read from file', () async {
    var req = $sp.StorageReadRequest(
      bucketName: "bucketName",
      key: "fileName",
    );

    var resp = $sp.StorageReadResponse(
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
    var req = $sp.StorageDeleteRequest(
      bucketName: "bucketName",
      key: "fileName",
    );

    var resp = $sp.StorageDeleteResponse();

    when(() => storageClient.delete(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var bucket = Bucket("bucketName", client: storageClient);

    await bucket.file("fileName").delete();

    verify(() => storageClient.delete(req)).called(1);
  });

  test('Test get download url with default expiry', () async {
    var req = $sp.StoragePreSignUrlRequest(
        bucketName: "bucketName",
        key: "fileName",
        operation: $sp.StoragePreSignUrlRequest_Operation.READ,
        expiry: Duration(seconds: Int64(600)));

    var resp = $sp.StoragePreSignUrlResponse(url: "https://test.com/image");

    when(() => storageClient.preSignUrl(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var bucket = Bucket("bucketName", client: storageClient);

    var url = await bucket.file("fileName").getDownloadUrl();

    verify(() => storageClient.preSignUrl(req)).called(1);

    expect(url, "https://test.com/image");
  });

  test('Test get download url with valid expiry', () async {
    var req = $sp.StoragePreSignUrlRequest(
        bucketName: "bucketName",
        key: "fileName",
        operation: $sp.StoragePreSignUrlRequest_Operation.READ,
        expiry: Duration(seconds: Int64(3600)));

    var resp = $sp.StoragePreSignUrlResponse(url: "https://test.com/image");

    when(() => storageClient.preSignUrl(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var bucket = Bucket("bucketName", client: storageClient);

    var url = await bucket.file("fileName").getDownloadUrl(3600);

    verify(() => storageClient.preSignUrl(req)).called(1);

    expect(url, "https://test.com/image");
  });

  test('Test get download url with out of bounds expiry', () async {
    var bucket = Bucket("bucketName", client: storageClient);

    try {
      await bucket.file("fileName").getDownloadUrl(604801);

      expect(true, false); // expecting to throw error
    } on ArgumentError catch (e) {
      expect(e.toString(),
          "Invalid argument (expiry): presigned url expiry must be between 0 and 604800: 604801");
    }
  });

  test('Test get upload url with default expiry', () async {
    var req = $sp.StoragePreSignUrlRequest(
        bucketName: "bucketName",
        key: "fileName",
        operation: $sp.StoragePreSignUrlRequest_Operation.WRITE,
        expiry: Duration(seconds: Int64(600)));

    var resp = $sp.StoragePreSignUrlResponse(url: "https://test.com/image");

    when(() => storageClient.preSignUrl(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var bucket = Bucket("bucketName", client: storageClient);

    var url = await bucket.file("fileName").getUploadUrl();

    verify(() => storageClient.preSignUrl(req)).called(1);

    expect(url, "https://test.com/image");
  });

  test('Test get upload url with valid expiry', () async {
    var req = $sp.StoragePreSignUrlRequest(
        bucketName: "bucketName",
        key: "fileName",
        operation: $sp.StoragePreSignUrlRequest_Operation.WRITE,
        expiry: Duration(seconds: Int64(3600)));

    var resp = $sp.StoragePreSignUrlResponse(url: "https://test.com/image");

    when(() => storageClient.preSignUrl(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var bucket = Bucket("bucketName", client: storageClient);

    var url = await bucket.file("fileName").getUploadUrl(3600);

    verify(() => storageClient.preSignUrl(req)).called(1);

    expect(url, "https://test.com/image");
  });

  test('Test get upload url with out of bounds expiry', () async {
    var bucket = Bucket("bucketName", client: storageClient);

    try {
      await bucket.file("fileName").getUploadUrl(604801);

      expect(true, false); // expecting to throw error
    } on ArgumentError catch (e) {
      expect(e.toString(),
          "Invalid argument (expiry): presigned url expiry must be between 0 and 604800: 604801");
    }
  });

  test('Test file exists', () async {
    var req =
        $sp.StorageExistsRequest(bucketName: "bucketName", key: "fileName");

    var resp = $sp.StorageExistsResponse(exists: true);

    when(() => storageClient.exists(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var bucket = Bucket("bucketName", client: storageClient);

    var exists = await bucket.file("fileName").exists();

    verify(() => storageClient.exists(req)).called(1);

    expect(exists, true);
  });

  test('Test file does not exist', () async {
    var req =
        $sp.StorageExistsRequest(bucketName: "bucketName", key: "fileName");

    var resp = $sp.StorageExistsResponse(exists: false);

    when(() => storageClient.exists(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var bucket = Bucket("bucketName", client: storageClient);

    var exists = await bucket.file("fileName").exists();

    verify(() => storageClient.exists(req)).called(1);

    expect(exists, false);
  });

  test('Test bucket on write event', () async {
    var bucket = Bucket("bucketName",
        client: storageClient, storageListenerClient: storageListenerClient);

    when(() => storageListenerClient.listen(any()))
        .thenAnswer((_) => MockResponseStream.fromIterable([
              $sp.ServerMessage(
                  id: "id-1", registrationResponse: $sp.RegistrationResponse()),
              $sp.ServerMessage(
                  id: "id-2",
                  blobEventRequest: $sp.BlobEventRequest(
                      bucketName: "bucketName",
                      blobEvent: $sp.BlobEvent(
                          key: "test.png", type: $sp.BlobEventType.Created)))
            ]));

    await bucket.on(BlobEventType.write, "*", (ctx) async => ctx);

    verify(() => storageListenerClient.listen(any())).called(1);
  });

  test('Test bucket on delete event', () async {
    var bucket = Bucket("bucketName",
        client: storageClient, storageListenerClient: storageListenerClient);

    when(() => storageListenerClient.listen(any()))
        .thenAnswer((_) => MockResponseStream.fromIterable([
              $sp.ServerMessage(
                  id: "id-1", registrationResponse: $sp.RegistrationResponse()),
              $sp.ServerMessage(
                  id: "id-2",
                  blobEventRequest: $sp.BlobEventRequest(
                      bucketName: "bucketName",
                      blobEvent: $sp.BlobEvent(
                          key: "test.png", type: $sp.BlobEventType.Deleted)))
            ]));

    await bucket.on(BlobEventType.delete, "*", (ctx) async => ctx);

    verify(() => storageListenerClient.listen(any())).called(1);
  });

  test('Test bucket event error', () async {
    var bucket = Bucket("bucketName",
        client: storageClient, storageListenerClient: storageListenerClient);

    when(() => storageListenerClient.listen(any()))
        .thenAnswer((_) => MockResponseStream.fromIterable([
              $sp.ServerMessage(
                  id: "id-1", registrationResponse: $sp.RegistrationResponse()),
              $sp.ServerMessage(
                  id: "id-2",
                  blobEventRequest: $sp.BlobEventRequest(
                      bucketName: "bucketName",
                      blobEvent: $sp.BlobEvent(
                          key: "test.png", type: $sp.BlobEventType.Deleted)))
            ]));

    await bucket.on(BlobEventType.delete, "*",
        (ctx) async => throw Exception("test application error"));

    verify(() => storageListenerClient.listen(any())).called(1);
  });
}
