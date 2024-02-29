import 'package:nitric_sdk/api.dart';
import 'package:nitric_sdk/src/context/common.dart';
import 'package:nitric_sdk/src/nitric/proto/storage/v1/storage.pbgrpc.dart'
    as $pb;
import 'package:test/test.dart';

void main() {
  test('Blob Event Context from ServerMessage', () {
    var msg = $pb.ServerMessage(
      id: 'id',
      blobEventRequest: $pb.BlobEventRequest(
          bucketName: 'bucketName',
          blobEvent:
              $pb.BlobEvent(key: "key", type: $pb.BlobEventType.Created)),
    );

    final bucket = Bucket("bucket");

    final ctx = BlobEventContext.fromRequest(msg, bucket);

    expect(ctx.req.file.key, msg.blobEventRequest.blobEvent.key);
  });

  test('ClientMessage from Blob Event Context', () {
    final ctx = BlobEventContext(
        "id",
        BlobEventRequest(File(Bucket("bucket"), "key")),
        BlobEventResponse(true));

    final clientMessage = ctx.toResponse();

    expect(clientMessage.id, "id");
    expect(clientMessage.hasBlobEventResponse(), true);
    expect(clientMessage.blobEventResponse.success, true);
  });
}
