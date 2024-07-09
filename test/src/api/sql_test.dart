import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/src/api/sql.dart';
import 'package:nitric_sdk/src/nitric/proto/sql/v1/sql.pbgrpc.dart';
import 'package:test/test.dart';

import '../common.dart';

class MockSqlClient extends Mock implements SqlClient {}

void main() {
  late MockSqlClient sqlClient;
  late MockResourceClient resourceClient;

  setUp(() {
    sqlClient = MockSqlClient();
    resourceClient = MockResourceClient();
  });

  tearDown(() {
    reset(sqlClient);
    reset(resourceClient);
  });

  test('Test build sql database', () {
    var sql = SqlDatabase("databaseName",
        client: sqlClient, resourcesClient: resourceClient);

    expect(sql.name, "databaseName");
  });

  test('Test get connection string', () async {
    var req = SqlConnectionStringRequest(databaseName: "databaseName");

    var resp = SqlConnectionStringResponse(
        connectionString: "psql://user@pass:localhost:5432/databaseName");

    when(() => sqlClient.connectionString(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var db = SqlDatabase("databaseName", client: sqlClient);

    await db.connectionString();

    verify(() => sqlClient.connectionString(req)).called(1);
  });
}
