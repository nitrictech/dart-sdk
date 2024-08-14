part of 'common.dart';

enum BlobEventType { write, delete }

/// The context of a Blob event request/response.
class BlobEventContext
    extends TriggerContext<BlobEventRequest, BlobEventResponse> {
  late BlobEventHandler _nextHandler;

  BlobEventContext(super.id, super.req, super.resp,
      {next = _defaultHandler<BlobEventContext>}) {
    _nextHandler = next;
  }

  /// Create a Blob Event context from a server message.
  BlobEventContext.fromRequest($bp.ServerMessage msg)
      : this(
          msg.id,
          BlobEventRequest(msg.blobEventRequest.blobEvent.key),
          BlobEventResponse(),
        );

  BlobEventContext.fromCtx(BlobEventContext ctx, BlobEventHandler next)
      : this(ctx.id, ctx.req, ctx.res, next: next);

  Future<BlobEventContext> next() async {
    return await _nextHandler(this);
  }

  /// Converts the context to a gRPC client response.
  $bp.ClientMessage toResponse() {
    return $bp.ClientMessage(id: id, blobEventResponse: res.toWire());
  }
}

/// The context of a Blob event request/response.
class FileEventContext
    extends TriggerContext<FileEventRequest, BlobEventResponse> {
  late FileEventHandler _nextHandler;

  FileEventContext(super.id, super.req, super.resp,
      {next = _defaultHandler<FileEventContext>}) {
    _nextHandler = next;
  }

  /// Create a Blob Event context from a server message.
  FileEventContext.fromRequest($bp.ServerMessage msg, Bucket bucket)
      : this(
          msg.id,
          FileEventRequest(bucket.file(msg.blobEventRequest.blobEvent.key)),
          BlobEventResponse(),
        );

  /// Call the next middleware in the middleware chain
  FileEventContext.fromCtx(FileEventContext ctx, FileEventHandler next)
      : this(ctx.id, ctx.req, ctx.res, next: next);

  Future<FileEventContext> next() async {
    return await _nextHandler(this);
  }

  /// Converts the context to a gRPC client response.
  $bp.ClientMessage toResponse() {
    return $bp.ClientMessage(id: id, blobEventResponse: res.toWire());
  }
}

/// Represents the blob event request.
class FileEventRequest extends TriggerRequest {
  /// The file that triggered the blob event, either through creating or deleting.
  final File file;

  FileEventRequest(this.file);
}

/// Represents the blob event request
class BlobEventRequest extends TriggerRequest {
  final String key;

  BlobEventRequest(this.key);
}

/// Represents the blob event response.
class BlobEventResponse extends TriggerResponse {
  /// If the blob event was handled successfully or not. Defaults to true.
  bool success;

  BlobEventResponse([this.success = true]);

  /// Converts this blob event response to a gRPC response.
  @internal
  $bp.BlobEventResponse toWire() {
    return $bp.BlobEventResponse(success: success);
  }
}
