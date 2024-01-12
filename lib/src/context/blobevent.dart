part of 'common.dart';

class BlobEventContext
    extends TriggerContext<BlobEventRequest, BlobEventResponse> {
  BlobEventContext(String id, BlobEventRequest req, BlobEventResponse resp)
      : super(id, req, resp);

  BlobEventContext.fromRequest($bp.ServerMessage msg, Bucket bucket)
      : this(
            msg.id,
            BlobEventRequest(bucket.file(msg.blobEventRequest.blobEvent.key)),
            BlobEventResponse());

  $bp.ClientMessage toResponse() {
    return $bp.ClientMessage(id: id, blobEventResponse: resp.toWire());
  }
}

class BlobEventRequest extends TriggerRequest {
  File file;

  BlobEventRequest(this.file);
}

class BlobEventResponse extends TriggerResponse {
  bool success;

  BlobEventResponse([this.success = true]);

  $bp.BlobEventResponse toWire() {
    return $bp.BlobEventResponse(success: success);
  }
}
