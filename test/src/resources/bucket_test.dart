import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/nitric.dart';
import 'package:nitric_sdk/resources.dart';
import 'package:nitric_sdk/src/nitric/proto/resources/v1/resources.pb.dart'
    as $p;
import 'package:nitric_sdk/src/nitric/proto/storage/v1/storage.pbgrpc.dart'
    as $sp;
import 'package:nitric_sdk/src/resources/common.dart';
import 'package:test/test.dart';

import '../common.dart';

class MockStorageListenerClient extends Mock
    implements $sp.StorageListenerClient {}

void main() {
  late MockResourceClient resourceClient;
  late MockStorageListenerClient storageListenerClient;

  setUp(() {
    resourceClient = MockResourceClient();
    storageListenerClient = MockStorageListenerClient();
  });

  setUpAll(() {
    registerFallbackValue(Stream<$sp.ClientMessage>.empty());
  });

  tearDown(() {
    reset(resourceClient);
    reset(storageListenerClient);
  });

  test("Test build bucket resource", () async {
    var bucket = BucketResource("bucketName", client: resourceClient);

    expect(bucket.name, "bucketName");
  });

  test("Test register bucket resource", () async {
    var bucket = BucketResource("bucketName", client: resourceClient);

    var req = $p.ResourceDeclareRequest(
        id: $p.ResourceIdentifier(
            name: "bucketName", type: $p.ResourceType.Bucket),
        bucket: $p.BucketResource());

    var resp = $p.ResourceDeclareResponse();

    when(() => resourceClient.declare(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    await bucket.register();

    verify(() => resourceClient.declare(req)).called(1);
  });

  test("Test converting bucket permissions to actions", () async {
    var bucket = BucketResource("bucketName", client: resourceClient);

    var readActions = bucket.permissionsToActions([BucketPermission.reading]);
    expect(readActions, [$p.Action.BucketFileGet, $p.Action.BucketFileList]);

    var writeActions = bucket.permissionsToActions([BucketPermission.writing]);
    expect(writeActions, [$p.Action.BucketFilePut]);

    var deleteActions =
        bucket.permissionsToActions([BucketPermission.deleting]);
    expect(deleteActions, [$p.Action.BucketFileDelete]);

    var allActions = bucket.permissionsToActions([
      BucketPermission.reading,
      BucketPermission.writing,
      BucketPermission.deleting
    ]);
    expect(allActions, [
      $p.Action.BucketFileGet,
      $p.Action.BucketFileList,
      $p.Action.BucketFilePut,
      $p.Action.BucketFileDelete,
    ]);
  });

  test('Test bucket on write event', () async {
    var bucket = BucketResource("bucketName",
        client: resourceClient, storageListenerClient: storageListenerClient);

    when(() => storageListenerClient.listen(any()))
        .thenAnswer((_) => MockResponseStream.fromIterable([
              $sp.ServerMessage(
                  id: "id-1", registrationResponse: $sp.RegistrationResponse()),
              $sp.ServerMessage(
                  id: "id-2",
                  blobEventRequest: $sp.BlobEventRequest(
                      bucketName: "bucketName",
                      blobEvent: $sp.BlobEvent(
                          key: "test.png", type: $sp.BlobEventType.Created)))
            ]));

    await bucket.on(BlobEventType.write, "*", (ctx) async => ctx);

    verify(() => storageListenerClient.listen(any())).called(1);
  });

  test('Test bucket on delete event', () async {
    var bucket = BucketResource("bucketName",
        client: resourceClient, storageListenerClient: storageListenerClient);

    when(() => storageListenerClient.listen(any()))
        .thenAnswer((_) => MockResponseStream.fromIterable([
              $sp.ServerMessage(
                  id: "id-1", registrationResponse: $sp.RegistrationResponse()),
              $sp.ServerMessage(
                  id: "id-2",
                  blobEventRequest: $sp.BlobEventRequest(
                      bucketName: "bucketName",
                      blobEvent: $sp.BlobEvent(
                          key: "test.png", type: $sp.BlobEventType.Deleted)))
            ]));

    await bucket.on(BlobEventType.delete, "*", (ctx) async => ctx);

    verify(() => storageListenerClient.listen(any())).called(1);
  });

  test('Test bucket event error', () async {
    var bucket = BucketResource("bucketName",
        client: resourceClient, storageListenerClient: storageListenerClient);

    when(() => storageListenerClient.listen(any()))
        .thenAnswer((_) => MockResponseStream.fromIterable([
              $sp.ServerMessage(
                  id: "id-1", registrationResponse: $sp.RegistrationResponse()),
              $sp.ServerMessage(
                  id: "id-2",
                  blobEventRequest: $sp.BlobEventRequest(
                      bucketName: "bucketName",
                      blobEvent: $sp.BlobEvent(
                          key: "test.png", type: $sp.BlobEventType.Deleted)))
            ]));

    await bucket.on(BlobEventType.delete, "*",
        (ctx) async => throw Exception("test application error"));

    verify(() => storageListenerClient.listen(any())).called(1);
  });
}
