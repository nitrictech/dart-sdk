import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:synchronized/synchronized.dart';

const String envVarName = 'SERVICE_ADDRESS';

ClientChannel _createClientChannelFromEnvVar({int defaultPort = 50051}) {
  // Get the value of an environment variable or use a default value
  String? envVar = Platform.environment[envVarName];

  if (envVar == null) {
    return ClientChannel(
      '127.0.0.1',
      port: defaultPort,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
  }

  // Split the host and port
  List<String> parts = envVar.split(':');

  // Ensure that there are at least two parts
  if (parts.length >= 2) {
    String host = parts[0];
    int port = int.tryParse(parts[1]) ?? defaultPort;

    // Create the ClientChannel
    return ClientChannel(
      host,
      port: port,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
  } else {
    print(
        'Invalid format for $envVarName. Expected "host:port". Using default values.');
    return ClientChannel(
      '127.0.0.1',
      port: defaultPort,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
  }
}

class ClientChannelSingleton {
  ClientChannel? _clientChannel;

  int _consumerCount = 0;
  final _lock = Lock();

  ClientChannelSingleton._privateConstructor() {
    _clientChannel = _createClientChannelFromEnvVar();
  }

  static final ClientChannelSingleton _instance =
      ClientChannelSingleton._privateConstructor();

  static ClientChannelSingleton get instance => _instance;

  ClientChannel get clientChannel {
    _lock.synchronized(() {
      _clientChannel ??= _createClientChannelFromEnvVar();
      _consumerCount++;
    });

    return _clientChannel as ClientChannel;
  }

  Future<void> release() async {
    await _lock.synchronized(() async {
      _consumerCount--;
      if (_consumerCount <= 0) {
        await _clientChannel?.shutdown();
        _clientChannel = null;
      }
    });
  }

  Future<void> shutdown() async {
    await _lock.synchronized(() async {
      await _clientChannel?.shutdown();
      _clientChannel = null;
    });
  }
}
