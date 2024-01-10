part of './common.dart';

class IntervalContext
    extends TriggerContext<IntervalRequest, IntervalResponse> {
  IntervalContext(String id, IntervalRequest req, IntervalResponse resp)
      : super(id, req, resp);

  IntervalContext.fromRequest($sp.ServerMessage msg)
      : this(
            msg.id,
            IntervalRequest(scheduleName: msg.intervalRequest.scheduleName),
            IntervalResponse());

  $sp.ClientMessage toResponse() {
    return $sp.ClientMessage(
      id: id,
      intervalResponse: resp.toWire(),
    );
  }
}

class IntervalRequest extends TriggerRequest {
  String scheduleName;

  IntervalRequest({this.scheduleName = ""});
}

class IntervalResponse extends TriggerResponse {
  bool success;

  IntervalResponse({this.success = true});

  $sp.IntervalResponse toWire() {
    return $sp.IntervalResponse();
  }
}
