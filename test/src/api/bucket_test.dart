import 'dart:convert';

import 'package:fixnum/fixnum.dart';
import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/api.dart';
import 'package:nitric_sdk/src/google/protobuf/duration.pb.dart';
import 'package:nitric_sdk/src/nitric/proto/storage/v1/storage.pbgrpc.dart';
import 'package:test/test.dart';

import '../common.dart';

class MockStorageClient extends Mock implements StorageClient {}

void main() {
  late MockStorageClient storageClient;

  setUp(() => storageClient = MockStorageClient());

  tearDown(() => reset(storageClient));

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
    var req = StorageListBlobsRequest(bucketName: "bucketName", prefix: "");

    var resp = StorageListBlobsResponse(
        blobs: [Blob(key: "blob-a"), Blob(key: "blob-b"), Blob(key: "blob-c")]);

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
        StorageListBlobsRequest(bucketName: "bucketName", prefix: "blob-");

    var resp = StorageListBlobsResponse(
        blobs: [Blob(key: "blob-a"), Blob(key: "blob-b"), Blob(key: "blob-c")]);

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

  test('Test get download url with default expiry', () async {
    var req = StoragePreSignUrlRequest(
        bucketName: "bucketName",
        key: "fileName",
        operation: StoragePreSignUrlRequest_Operation.READ,
        expiry: Duration(seconds: Int64(600)));

    var resp = StoragePreSignUrlResponse(url: "https://test.com/image");

    when(() => storageClient.preSignUrl(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var bucket = Bucket("bucketName", client: storageClient);

    var url = await bucket.file("fileName").getDownloadUrl();

    verify(() => storageClient.preSignUrl(req)).called(1);

    expect(url, "https://test.com/image");
  });

  test('Test get download url with valid expiry', () async {
    var req = StoragePreSignUrlRequest(
        bucketName: "bucketName",
        key: "fileName",
        operation: StoragePreSignUrlRequest_Operation.READ,
        expiry: Duration(seconds: Int64(3600)));

    var resp = StoragePreSignUrlResponse(url: "https://test.com/image");

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
    var req = StoragePreSignUrlRequest(
        bucketName: "bucketName",
        key: "fileName",
        operation: StoragePreSignUrlRequest_Operation.WRITE,
        expiry: Duration(seconds: Int64(600)));

    var resp = StoragePreSignUrlResponse(url: "https://test.com/image");

    when(() => storageClient.preSignUrl(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var bucket = Bucket("bucketName", client: storageClient);

    var url = await bucket.file("fileName").getUploadUrl();

    verify(() => storageClient.preSignUrl(req)).called(1);

    expect(url, "https://test.com/image");
  });

  test('Test get upload url with valid expiry', () async {
    var req = StoragePreSignUrlRequest(
        bucketName: "bucketName",
        key: "fileName",
        operation: StoragePreSignUrlRequest_Operation.WRITE,
        expiry: Duration(seconds: Int64(3600)));

    var resp = StoragePreSignUrlResponse(url: "https://test.com/image");

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
}
