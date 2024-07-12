part of './common.dart';

/// The context for a topic message for a subscription.
class MessageContext extends TriggerContext<MessageRequest, MessageResponse> {
  MessageContext(super.id, super.req, super.resp);

  /// Create an Event context from a server message.
  factory MessageContext.fromRequest($ep.ServerMessage msg) {
    var payload = Proto.mapFromStruct(msg.messageRequest.message.structPayload);

    return MessageContext(
        msg.id,
        MessageRequest(
          msg.messageRequest.topicName,
          payload,
        ),
        MessageResponse());
  }

  /// Converts the context to a gRPC client response.
  $ep.ClientMessage toResponse() {
    return $ep.ClientMessage(id: id, messageResponse: res.toWire());
  }
}

/// Represents a request received by a subscription to a topic.
class MessageRequest extends TriggerRequest {
  /// The name of the topic that triggered this subscription.
  String topicName;

  /// The message payload that was sent.
  Map<String, dynamic> message;

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
