import 'package:nitric_sdk/src/grpc_helper.dart';

import 'package:nitric_sdk/src/nitric/proto/sql/v1/sql.pbgrpc.dart' as $p;

/// A Topic for publishing events to subscribers of this topic.
class Sql {
  /// The name of the topic
  final String name;
  late final $p.SqlClient _sqlClient;

  Sql(this.name, {$p.SqlClient? client}) {
    if (client == null) {
      _sqlClient =
          $p.SqlClient(ClientChannelSingleton.instance.clientChannel);
    } else {
      _sqlClient = client;
    }
  }

  /// Publish a [message] to the topic. Optional [delay] (in seconds) can be set to delay the message publish time.
  Future<void> connectionString() async {
    await _sqlClient.connectionString($p.SqlConnectionStringRequest(databaseName: name));
  }
}
