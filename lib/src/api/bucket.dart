import 'dart:async';
import 'dart:convert';

import 'package:nitric_sdk/nitric.dart';
import 'package:nitric_sdk/src/context/common.dart';
import 'package:nitric_sdk/src/grpc_helper.dart';
import 'package:nitric_sdk/src/nitric/proto/storage/v1/storage.pbgrpc.dart'
    as $p;
import 'package:nitric_sdk/src/google/protobuf/duration.pb.dart' as $d;
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';

class Bucket {
  late $p.StorageClient _storageClient;

  String name;

  Bucket(this.name, {$p.StorageClient? client}) {
    if (client == null) {
      final channel = createClientChannelFromEnvVar();

      _storageClient = $p.StorageClient(channel);
    } else {
      _storageClient = client;
    }
  }

  /// Get a reference to
  File file(String key) {
    return File(this, key);
  }

  /// Create a blob event subscription when
  Future<void> on(BlobEventType blobEventType, String keyPrefixFilter,
      BlobEventHandler handler) async {
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

    var worker = BlobEventWorker(registrationRequest, handler, this);

    worker.start();
  }
}

/// A reference to a file in the bucket.
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

    await _bucket._storageClient.delete(req);
  }

  /// Read the file from the bucket.
  Future<String> read() async {
    var req = $p.StorageReadRequest(
      bucketName: _bucket.name,
      key: key,
    );

    var resp = await _bucket._storageClient.read(req);

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

    await _bucket._storageClient.write(req);
  }

  /// Check whether the file exists in the bucket.
  Future<bool> exists() async {
    var req = $p.StorageExistsRequest(
      bucketName: _bucket.name,
      key: key,
    );

    var resp = await _bucket._storageClient.exists(req);

    return resp.exists;
  }

  /// Get a presigned download URL with an [expiry] time (in seconds). Defaults to 600.
  Future<String> getDownloadUrl([int expiry = 600]) async {
    return _getSignedUrl($p.StoragePreSignUrlRequest_Operation.READ, expiry);
  }

  /// Get a presigned upload URL with an [expiry] time (in seconds). Defaults to 600.
  Future<String> getUploadUrl([int expiry = 600]) async {
    return _getSignedUrl($p.StoragePreSignUrlRequest_Operation.WRITE, expiry);
  }

  /// Create a presigned URL with a determined [op] type and [expiry] time (in seconds).
  Future<String> _getSignedUrl(
      $p.StoragePreSignUrlRequest_Operation op, int expiry) async {
    var exp = $d.Duration(seconds: Int64(expiry));

    var req = $p.StoragePreSignUrlRequest(
      bucketName: _bucket.name,
      key: key,
      operation: op,
      expiry: exp,
    );

    var resp = await _bucket._storageClient.preSignUrl(req);

    return resp.url;
  }
}

class BlobEventWorker implements Worker {
  $p.RegistrationRequest registrationRequest;
  BlobEventHandler middleware;
  Bucket bucket;

  BlobEventWorker(this.registrationRequest, this.middleware, this.bucket);

  @override
  Future<void> start() async {
    // Create Storage listener client
    final channel = createClientChannelFromEnvVar();
    final client = $p.StorageListenerClient(channel);

    final initMsg = $p.ClientMessage(registrationRequest: registrationRequest);

    // Create the request stream and send the initial message
    final requestStream = StreamController<$p.ClientMessage>();
    requestStream.add(initMsg);

    final response = client.listen(
      requestStream.stream,
    );

    await for (final msg in response) {
      if (msg.hasRegistrationResponse()) {
        // Blob Notification has connected with Nitric server
      } else if (msg.hasBlobEventRequest()) {
        var ctx = BlobEventContext.fromRequest(msg, bucket);

        try {
          ctx = await middleware(ctx);
        } on GrpcError catch (e) {
          print("caught a GrpcError: $e");
        } catch (e) {
          print("unhandled application error: $e");

          ctx.resp.success = false;
        }

        requestStream.add(ctx.toResponse());
      }
    }
  }
}
