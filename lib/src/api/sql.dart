import 'package:nitric_sdk/nitric.dart';
import 'package:nitric_sdk/src/grpc_helper.dart';
import 'package:nitric_sdk/src/nitric/proto/resources/v1/resources.pb.dart';
import 'package:nitric_sdk/src/nitric/proto/resources/v1/resources.pbgrpc.dart'
    as $rp;
import 'package:nitric_sdk/src/nitric/proto/sql/v1/sql.pbgrpc.dart' as $p;

/// A Topic for publishing events to subscribers of this topic.
class SqlDatabase extends Resource {
  /// The name of the topic
  late final String? migrations;
  late final $p.SqlClient _sqlClient;

  SqlDatabase(String name, this.migrations,
      {$p.SqlClient? client, $rp.ResourcesClient? resourcesClient})
      : super(name, resourcesClient) {
    if (client == null) {
      _sqlClient = $p.SqlClient(ClientChannelSingleton.instance.clientChannel);
    } else {
      _sqlClient = client;
    }
  }

  /// Publish a [message] to the topic. Optional [delay] (in seconds) can be set to delay the message publish time.
  Future<void> connectionString() async {
    await _sqlClient
        .connectionString($p.SqlConnectionStringRequest(databaseName: name));
  }

  @override
  $rp.ResourceDeclareRequest asRequest() {
    var resource =
        $rp.ResourceIdentifier(name: name, type: $rp.ResourceType.SqlDatabase);

    return $rp.ResourceDeclareRequest(
        id: resource,
        sqlDatabase: $rp.SqlDatabaseResource(
            migrations: SqlDatabaseMigrations(migrationsPath: migrations)));
  }
}
