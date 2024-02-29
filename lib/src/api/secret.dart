import 'dart:convert';

import 'package:nitric_sdk/src/grpc_helper.dart';
import 'package:nitric_sdk/src/nitric/proto/secrets/v1/secrets.pbgrpc.dart'
    as $p;

/// References an encrypted secret stored in a secret manager.
class Secret {
  /// The name of the secret
  final String name;
  late final $p.SecretManagerClient _secretClient;

  Secret(this.name, {$p.SecretManagerClient? client}) {
    if (client == null) {
      final channel = createClientChannelFromEnvVar();

      _secretClient = $p.SecretManagerClient(channel);
    } else {
      _secretClient = client;
    }
  }

  /// Get a reference to a specific [version] of this secret.
  SecretVersion version(String version) {
    return SecretVersion(this, version);
  }

  /// Get a reference to the latest version of this secret.
  SecretVersion latest() {
    return SecretVersion(this);
  }

  /// Put a new [value] to the secret, creating a new secret version and returning it.
  Future<SecretVersion> put(String value) async {
    var req = $p.SecretPutRequest(secret: _toWire(), value: utf8.encode(value));
    var resp = await _secretClient.put(req);

    return SecretVersion._fromWire(this, resp.secretVersion);
  }

  /// Converts this Secret to a gRPC Secret for requests.
  $p.Secret _toWire() {
    return $p.Secret(name: name);
  }
}

/// References a specific version of a secret.
class SecretVersion {
  final Secret _secret;

  /// The version that this secret version references.
  late final String version;

  SecretVersion(this._secret, [this.version = "latest"]);

  /// Construct this secret version from a gRPC Secret version.
  SecretVersion._fromWire(this._secret, $p.SecretVersion secretVersion) {
    version = secretVersion.version;
  }

  /// Access the value of this secret version.
  Future<SecretValue> access() async {
    var req = $p.SecretAccessRequest(secretVersion: _toWire());
    var resp = await _secret._secretClient.access(req);

    return SecretValue(version, utf8.decode(resp.value));
  }

  /// Converts this Secret version to a gRPC Secret version for requests.
  $p.SecretVersion _toWire() {
    return $p.SecretVersion(secret: _secret._toWire(), version: version);
  }
}

class SecretValue {
  /// The version that contained this value.
  final String version;

  /// The value that was stored at the referenced version.
  final String value;

  SecretValue(this.version, this.value);
}
