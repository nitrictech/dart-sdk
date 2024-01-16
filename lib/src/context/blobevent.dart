part of 'common.dart';

/// The context of a Blob event request/response.
class BlobEventContext
    extends TriggerContext<BlobEventRequest, BlobEventResponse> {
  BlobEventContext(String id, BlobEventRequest req, BlobEventResponse resp)
      : super(id, req, resp);

  /// Create a Blob Event context from a server message.
  BlobEventContext.fromRequest($bp.ServerMessage msg, Bucket bucket)
      : this(
            msg.id,
            BlobEventRequest(bucket.file(msg.blobEventRequest.blobEvent.key)),
            BlobEventResponse());

  /// Converts the context to a gRPC client response.
  $bp.ClientMessage toResponse() {
    return $bp.ClientMessage(id: id, blobEventResponse: resp.toWire());
  }
}

/// Represents the blob event request.
class BlobEventRequest extends TriggerRequest {
  /// The file that triggered the blob event, either through creating or deleting.
  final File file;

  BlobEventRequest(this.file);
}

/// Represents the blob event response.
class BlobEventResponse extends TriggerResponse {
  /// If the blob event was handled successfully or not. Defaults to true.
  bool success;

  BlobEventResponse([this.success = true]);

  /// Converts this blob event response to a gRPC response.
  @protected
  $bp.BlobEventResponse toWire() {
    return $bp.BlobEventResponse(success: success);
  }
}
