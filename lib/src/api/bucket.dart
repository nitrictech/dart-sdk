import 'dart:convert';

import 'package:grpc/grpc.dart';
import 'package:dart_sdk/src/gen/contracts/proto/storage/v1/storage.pbgrpc.dart'
    as $p;

class Bucket {
  late $p.StorageServiceClient client;

  String name;

  Bucket(this.name) {
    var channel = ClientChannel(
      'localhost',
      port: 50051,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    client = $p.StorageServiceClient(channel);
  }

  File file(String key) {
    return File(this, key);
  }
}

class File {
  Bucket bucket;
  String key;

  File(this.bucket, this.key);

  Future<void> delete() async {
    var req = $p.StorageDeleteRequest(
      bucketName: bucket.name,
      key: key,
    );

    await bucket.client.delete(req);
  }

  Future<String> read() async {
    var req = $p.StorageReadRequest(
      bucketName: bucket.name,
      key: key,
    );

    var resp = await bucket.client.read(req);

    return utf8.decode(resp.body);
  }

  Future<void> write(String body) async {
    var bytes = utf8.encode(body);

    var req = $p.StorageWriteRequest(
      bucketName: bucket.name,
      key: key,
      body: bytes,
    );

    await bucket.client.write(req);
  }

  Future<bool> exists() async {
    var req = $p.StorageExistsRequest(
      bucket: bucket.name,
      key: key,
    );

    var resp = await bucket.client.exists(req);

    return resp.exists;
  }
}
