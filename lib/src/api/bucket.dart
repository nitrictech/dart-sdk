import 'dart:async';
import 'dart:convert';

import 'package:nitric_sdk/src/api/api.dart';
import 'package:nitric_sdk/src/context/common.dart';
import 'package:nitric_sdk/src/grpc_helper.dart';
import 'package:nitric_sdk/src/nitric/proto/storage/v1/storage.pbgrpc.dart'
    as $p;
import 'package:nitric_sdk/src/google/protobuf/duration.pb.dart' as $d;
import 'package:fixnum/fixnum.dart';
import 'package:nitric_sdk/src/workers/common.dart';

class Bucket {
  late final $p.StorageClient? _storageClient;
  late final $p.StorageListenerClient? _storageListenerClient;

  String name;

  Bucket(this.name,
      {$p.StorageListenerClient? storageListenerClient,
      $p.StorageClient? client}) {
    _storageClient = client;
    _storageListenerClient = storageListenerClient;
  }

  /// Get a reference to a file by it's [key].
  File file(String key) {
    return File(this, key);
  }

  Future<Resp> _useClient<Resp>(
      UseClientCallback<$p.StorageClient, Resp> callback) async {
    final client = _storageClient ??
        $p.StorageClient(ClientChannelSingleton.instance.clientChannel);

    var resp = await callback(client);

    if (_storageClient == null) {
      await ClientChannelSingleton.instance.release();
    }

    return resp;
  }

  /// Get a list of references to the files in the bucket. Optionally supply a [prefix] to filter by.
  Future<List<File>> files({String prefix = ""}) async {
    final request =
        $p.StorageListBlobsRequest(bucketName: name, prefix: prefix);

    var resp =
        await _useClient((client) async => await client.listBlobs(request));

    return resp.blobs.map((blob) => File(this, blob.key)).toList();
  }

  /// Create a blob event subscription triggered on the [blobEventType] filtered by files that match the [keyPrefixFilter].
  Future<void> on(BlobEventType blobEventType, String keyPrefixFilter,
      FileEventHandler handler,
      {List<FileEventHandler> middlewares = const []}) async {
    // Create the request to register the Storage listener with the membrane
    final eventType = switch (blobEventType) {
      BlobEventType.write => $p.BlobEventType.Created,
      BlobEventType.delete => $p.BlobEventType.Deleted,
    };

    final registrationRequest = $p.RegistrationRequest(
      bucketName: name,
      keyPrefixFilter: keyPrefixFilter,
      blobEventType: eventType,
    );

    final composedHandler =
        composeMiddleware([...middlewares, handler], FileEventContext.fromCtx);

    var worker = FileEventWorker(registrationRequest, composedHandler, this,
        client: _storageListenerClient);

    await worker.start();
  }
}

/// A reference to a [File] in the bucket.
class File {
  final Bucket _bucket;

  /// The name of the file
  final String key;

  File(this._bucket, this.key);

  /// Delete the file from the bucket.
  Future<void> delete() async {
    var req = $p.StorageDeleteRequest(
      bucketName: _bucket.name,
      key: key,
    );

    await _bucket._useClient((client) async => await client.delete(req));
  }

  /// Read the file from the bucket.
  Future<String> read() async {
    var req = $p.StorageReadRequest(
      bucketName: _bucket.name,
      key: key,
    );

    var resp =
        await _bucket._useClient((client) async => await client.read(req));

    return utf8.decode(resp.body);
  }

  /// Write [contents] to the file.
  Future<void> write(String contents) async {
    var bytes = utf8.encode(contents);

    var req = $p.StorageWriteRequest(
      bucketName: _bucket.name,
      key: key,
      body: bytes,
    );

    await _bucket._useClient((client) async => await client.write(req));
  }

  /// Check whether the file exists in the bucket.
  Future<bool> exists() async {
    var req = $p.StorageExistsRequest(
      bucketName: _bucket.name,
      key: key,
    );

    var resp =
        await _bucket._useClient((client) async => await client.exists(req));

    return resp.exists;
  }

  /// Get a presigned download URL with an [expiry] time (in seconds). Defaults to 600 (10 minutes), max of 604800 (7 days).
  Future<String> getDownloadUrl([int expiry = 600]) async {
    return _getSignedUrl($p.StoragePreSignUrlRequest_Operation.READ, expiry);
  }

  /// Get a presigned upload URL with an [expiry] time (in seconds). Defaults to 600 (10 minutes), max of 604800 (7 days).
  Future<String> getUploadUrl([int expiry = 600]) async {
    return _getSignedUrl($p.StoragePreSignUrlRequest_Operation.WRITE, expiry);
  }

  /// Create a presigned URL with a determined [op] type and [expiry] time (in seconds).
  Future<String> _getSignedUrl(
      $p.StoragePreSignUrlRequest_Operation op, int expiry) async {
    if (expiry < 0 || expiry > 604800) {
      throw ArgumentError.value(expiry, "expiry",
          "presigned url expiry must be between 0 and 604800");
    }

    var exp = $d.Duration(seconds: Int64(expiry));

    var req = $p.StoragePreSignUrlRequest(
      bucketName: _bucket.name,
      key: key,
      operation: op,
      expiry: exp,
    );

    var resp = await _bucket
        ._useClient((client) async => await client.preSignUrl(req));

    return resp.url;
  }
}
