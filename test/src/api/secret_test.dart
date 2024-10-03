import 'dart:convert';

import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/src/api/api.dart';
import 'package:nitric_sdk/src/grpc_helper.dart';
import 'package:nitric_sdk/src/nitric/proto/secrets/v1/secrets.pbgrpc.dart'
    as $p;
import 'package:test/test.dart';

import '../common.dart';

class MockSecretClient extends Mock implements $p.SecretManagerClient {}

void main() {
  late MockSecretClient secretClient;

  setUp(() {
    secretClient = MockSecretClient();

    ClientChannelSingleton.registerClientConstructors(Map.from({
      $p.SecretManagerClient: secretClient,
    }));
  });

  tearDown(() => reset(secretClient));

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
    var req = $p.SecretPutRequest(
        secret: $p.Secret(name: "secretName"), value: utf8.encode("contents"));

    var resp = $p.SecretPutResponse(
        secretVersion: $p.SecretVersion(
            secret: $p.Secret(name: "secretName"), version: "versionID"));

    when(() => secretClient.put(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var secret = Secret("secretName");

    await secret.put("contents");

    verify(() => secretClient.put(req)).called(1);
  });

  test('Test access a secret', () async {
    var req = $p.SecretAccessRequest(
        secretVersion: $p.SecretVersion(
            secret: $p.Secret(name: "secretName"), version: "secretVersion"));

    var resp = $p.SecretAccessResponse(
      secretVersion: $p.SecretVersion(
          secret: $p.Secret(name: "secretName"), version: "secretVersion"),
      value: utf8.encode("secret contents"),
    );

    when(() => secretClient.access(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var secret = Secret("secretName");

    var contents = await secret.version("secretVersion").access();

    verify(() => secretClient.access(req)).called(1);

    expect(contents.value, "secret contents");
    expect(contents.version, "secretVersion");
  });
}
