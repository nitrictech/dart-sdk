import 'dart:io';

import 'package:grpc/grpc.dart';

const String envVarName = 'SERVICE_ADDRESS';

ClientChannel createClientChannelFromEnvVar({int defaultPort = 50051}) {
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
