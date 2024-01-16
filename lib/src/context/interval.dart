part of './common.dart';

/// The context for a scheduled interval request/response.
class IntervalContext
    extends TriggerContext<IntervalRequest, IntervalResponse> {
  IntervalContext(String id, IntervalRequest req, IntervalResponse resp)
      : super(id, req, resp);

  /// Create an Interval context from a server message.
  IntervalContext.fromRequest($sp.ServerMessage msg)
      : this(
            msg.id,
            IntervalRequest(scheduleName: msg.intervalRequest.scheduleName),
            IntervalResponse());

  /// Converts the context to a gRPC client response.
  $sp.ClientMessage toResponse() {
    return $sp.ClientMessage(
      id: id,
      intervalResponse: resp.toWire(),
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
  @protected
  $sp.IntervalResponse toWire() {
    return $sp.IntervalResponse();
  }
}
