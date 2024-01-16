import 'dart:async';
import 'dart:convert';

import 'package:dart_sdk/src/context/common.dart';
import 'package:dart_sdk/src/nitric/proto/storage/v1/storage.pbgrpc.dart' as $p;
import 'package:grpc/grpc.dart';

enum BlobEventType { write, delete }

class Bucket {
  late $p.StorageClient _storageClient;

  String name;

  Bucket(this.name) {
    var channel = ClientChannel(
      'localhost',
      port: 50051,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    _storageClient = $p.StorageClient(channel);
  }

  /// Get a reference to
  File file(String key) {
    return File(this, key);
  }

  /// Create a blob event subscription when
  Future<void> on(BlobEventType blobEventType, String keyPrefixFilter,
      BlobEventMiddleware handler) async {
    // Create Storage listener client
    final channel = ClientChannel('localhost',
        port: 50051,
        options: ChannelOptions(credentials: ChannelCredentials.insecure()));
    final client = $p.StorageListenerClient(channel);

    // Create the request to register the Storage listener with the membrane
    final registrationRequest = $p.RegistrationRequest(
      bucketName: name,
    );
    final initMsg = $p.ClientMessage(registrationRequest: registrationRequest);

    // Create the request stream and send the initial message
    final requestStream = StreamController<$p.ClientMessage>();
    requestStream.add(initMsg);

    final response = client.listen(
      requestStream.stream,
    );

    try {
      await for (final msg in response) {
        if (msg.hasRegistrationResponse()) {
          print("Function connected with membrane");
        } else if (msg.hasBlobEventRequest()) {
          var ctx = BlobEventContext.fromRequest(msg, this);

          ctx = await handler(ctx);

          var resp = ctx.toResponse();

          requestStream.add(resp);
        }
      }
    } on GrpcError catch (e) {
      print("caught a GrpcError: $e");
    } on Error catch (e) {
      var resp = BlobEventResponse(false);

      requestStream.add($p.ClientMessage(blobEventResponse: resp.toWire()));
    }
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
}
