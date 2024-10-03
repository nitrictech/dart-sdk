import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/nitric.dart';
import 'package:nitric_sdk/src/grpc_helper.dart';
import 'package:nitric_sdk/src/nitric/proto/resources/v1/resources.pbgrpc.dart'
    as $p;
import 'package:nitric_sdk/src/nitric/proto/storage/v1/storage.pbgrpc.dart'
    as $sp;
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

    ClientChannelSingleton.registerClientConstructors(Map.from({
      $sp.StorageListenerClient: storageListenerClient,
      $p.ResourcesClient: resourceClient,
    }));
  });

  setUpAll(() {
    registerFallbackValue(Stream<$sp.ClientMessage>.empty());
  });

  tearDown(() {
    reset(resourceClient);
    reset(storageListenerClient);
  });

  test("Test build bucket resource", () async {
    var bucket = BucketResource("bucketName");

    expect(bucket.name, "bucketName");
  });

  test("Test register bucket resource", () async {
    var bucket = BucketResource("bucketName");

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
    var bucket = BucketResource("bucketName");

    var readActions = bucket.permissionsToActions([BucketPermission.read]);
    expect(readActions, [$p.Action.BucketFileGet, $p.Action.BucketFileList]);

    var writeActions = bucket.permissionsToActions([BucketPermission.write]);
    expect(writeActions, [$p.Action.BucketFilePut]);

    var deleteActions = bucket.permissionsToActions([BucketPermission.delete]);
    expect(deleteActions, [$p.Action.BucketFileDelete]);

    var allActions = bucket.permissionsToActions([
      BucketPermission.read,
      BucketPermission.write,
      BucketPermission.delete
    ]);
    expect(allActions, [
      $p.Action.BucketFileGet,
      $p.Action.BucketFileList,
      $p.Action.BucketFilePut,
      $p.Action.BucketFileDelete,
    ]);
  });

  test('Test bucket on write event', () async {
    var bucket = BucketResource("bucketName");

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
    var bucket = BucketResource("bucketName");

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
    var bucket = BucketResource("bucketName");

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

  test("Test register bucket policies", () async {
    var bucketResource = BucketResource("bucketName");

    var resourceIdentifier =
        $p.ResourceIdentifier(type: $p.ResourceType.Bucket, name: "bucketName");
    var policyResource = $p.ResourceIdentifier(type: $p.ResourceType.Policy);

    var policy = $p.PolicyResource(principals: [
      $p.ResourceIdentifier(type: $p.ResourceType.Service)
    ], resources: [
      resourceIdentifier
    ], actions: [
      $p.Action.BucketFileGet,
      $p.Action.BucketFileDelete,
      $p.Action.BucketFileList,
      $p.Action.BucketFilePut
    ]);

    var req = $p.ResourceDeclareRequest(policy: policy, id: policyResource);

    var resp = $p.ResourceDeclareResponse();

    when(() => resourceClient.declare(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    var bucket = bucketResource.allow([
      BucketPermission.delete,
      BucketPermission.read,
      BucketPermission.write
    ]);

    expect(bucket.name, "bucketName");
  });
}
