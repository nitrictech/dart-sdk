part of './common.dart';

/// The context for a topic message for a subscription.
class JobContext extends TriggerContext<JobRequest, JobResponse> {
  late JobHandler _nextHandler;

  JobContext(super.id, super.req, super.resp,
      {next = _defaultHandler<JobContext>}) {
    _nextHandler = next;
  }

  /// Create an Event context from a server message.
  factory JobContext.fromRequest($jp.ServerMessage msg) {
    var payload = Proto.mapFromStruct(msg.jobRequest.data.struct);

    return JobContext(
      msg.id,
      JobRequest(
        msg.jobRequest.jobName,
        payload,
      ),
      JobResponse(),
    );
  }

  JobContext.fromCtx(JobContext ctx, JobHandler next)
      : this(ctx.id, ctx.req, ctx.res, next: next);

  /// Call the next middleware in the middleware chain
  Future<JobContext> next() async {
    return await _nextHandler(this);
  }

  /// Converts the context to a gRPC client response.
  $jp.ClientMessage toResponse() {
    return $jp.ClientMessage(id: id, jobResponse: res.toWire());
  }
}

/// Represents a request received by a subscription to a topic.
class JobRequest extends TriggerRequest {
  /// The name of the job.
  String jobName;

  /// The message payload that was sent.
  Map<String, dynamic> message;

  JobRequest(this.jobName, this.message);
}

/// Represents a response to a topic subscription request.
class JobResponse extends TriggerResponse {
  /// If the event request was handled successfully or not. Defaults to true.
  bool success;

  JobResponse([this.success = true]);

  /// Converts this blob event response to a gRPC response.
  $jp.JobResponse toWire() {
    return $jp.JobResponse(success: true);
  }
}
