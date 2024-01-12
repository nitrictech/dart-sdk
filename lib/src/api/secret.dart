import 'dart:convert';

import 'package:dart_sdk/src/nitric/proto/secrets/v1/secrets.pb.dart';
import 'package:dart_sdk/src/nitric/proto/secrets/v1/secrets.pbgrpc.dart' as $p;
import 'package:grpc/grpc.dart';

class Secret {
  String name;
  late $p.SecretManagerClient _secretClient;

  Secret(this.name) {
    final channel = ClientChannel('localhost',
        port: 50051,
        options: ChannelOptions(credentials: ChannelCredentials.insecure()));

    _secretClient = $p.SecretManagerClient(channel);
  }

  SecretVersion version(String version) {
    return SecretVersion(this, version);
  }

  SecretVersion latest() {
    return SecretVersion(this);
  }

  Future<SecretVersion> put(String value) async {
    var req = $p.SecretPutRequest(secret: _toWire(), value: utf8.encode(value));
    var resp = await _secretClient.put(req);

    return SecretVersion._fromWire(this, resp.secretVersion);
  }

  $p.Secret _toWire() {
    return $p.Secret(name: name);
  }
}

class SecretVersion {
  Secret secret;
  late String version;

  SecretVersion(this.secret, [this.version = "latest"]);

  SecretVersion._fromWire(this.secret, $p.SecretVersion secretVersion) {
    version = secretVersion.version;
  }

  Future<SecretValue> access() async {
    var req = $p.SecretAccessRequest(secretVersion: _toWire());
    var resp = await secret._secretClient.access(req);

    return SecretValue(utf8.decode(resp.value));
  }

  $p.SecretVersion _toWire() {
    return $p.SecretVersion(secret: secret._toWire(), version: version);
  }
}

class SecretValue {
  String value;

  SecretValue(this.value);
}
