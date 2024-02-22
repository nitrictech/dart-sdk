part of './common.dart';

/// The context for a topic message for a subscription.
class MessageContext<T>
    extends TriggerContext<MessageRequest<T>, MessageResponse> {
  MessageContext(String id, MessageRequest<T> req, MessageResponse resp)
      : super(id, req, resp);

  /// Create an Event context from a server message.
  MessageContext.fromRequest($ep.ServerMessage msg)
      : this(
            msg.id,
            MessageRequest(
                msg.messageRequest.topicName,
                json.decode(
                    msg.messageRequest.message.structPayload.writeToJson())),
            MessageResponse());

  /// Converts the context to a gRPC client response.
  $ep.ClientMessage toResponse() {
    return $ep.ClientMessage(id: id, messageResponse: resp.toWire());
  }
}

/// Represents a request received by a subscription to a topic.
class MessageRequest<T> extends TriggerRequest {
  /// The name of the topic that triggered this subscription.
  String topicName;

  /// The message payload that was sent.
  T message;

  MessageRequest(this.topicName, this.message);
}

/// Represents a response to a topic subscription request.
class MessageResponse extends TriggerResponse {
  /// If the event request was handled successfully or not. Defaults to true.
  bool success;

  MessageResponse([this.success = true]);

  /// Converts this blob event response to a gRPC response.
  $ep.MessageResponse toWire() {
    return $ep.MessageResponse(success: success);
  }
}
