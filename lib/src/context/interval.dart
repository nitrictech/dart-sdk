part of './common.dart';

/// The context for a scheduled interval request/response.
class IntervalContext
    extends TriggerContext<IntervalRequest, IntervalResponse> {
  late IntervalHandler _nextHandler;

  IntervalContext(super.id, super.req, super.resp,
      {next = _defaultHandler<IntervalContext>}) {
    _nextHandler = next;
  }

  /// Create an Interval context from a server message.
  IntervalContext.fromRequest($sp.ServerMessage msg)
      : this(
          msg.id,
          IntervalRequest(scheduleName: msg.intervalRequest.scheduleName),
          IntervalResponse(),
        );

  IntervalContext.fromCtx(IntervalContext ctx, IntervalHandler next)
      : this(ctx.id, ctx.req, ctx.res, next: next);

  /// Call the next middleware in the middleware chain
  Future<IntervalContext> next() async {
    return await _nextHandler(this);
  }

  /// Converts the context to a gRPC client response.
  $sp.ClientMessage toResponse() {
    return $sp.ClientMessage(
      id: id,
      intervalResponse: res.toWire(),
    );
  }
}

/// Represents a scheduled request.
class IntervalRequest extends TriggerRequest {
  /// The name of the schedule that triggered the request.
  String scheduleName;

  IntervalRequest({this.scheduleName = ""});
}

/// Represents a response to a scheduled request.
class IntervalResponse extends TriggerResponse {
  /// If the request was handled successfully or not. Defaults to true.
  bool success;

  IntervalResponse({this.success = true});

  /// Converts this blob event response to a gRPC response.
  $sp.IntervalResponse toWire() {
    return $sp.IntervalResponse();
  }
}
