part of './common.dart';

class MessageContext extends TriggerContext<MessageRequest, MessageResponse> {
  MessageContext(String id, MessageRequest req, MessageResponse resp)
      : super(id, req, resp);

  MessageContext.fromRequest($ep.ServerMessage msg)
      : this(
            msg.id,
            MessageRequest(msg.messageRequest.topicName,
                msg.messageRequest.message.writeToJson()),
            MessageResponse());

  $ep.ClientMessage toResponse() {
    return $ep.ClientMessage(id: id, messageResponse: resp.toWire());
  }
}

class MessageRequest extends TriggerRequest {
  String topicName;
  String message;

  MessageRequest(this.topicName, this.message);
}

class MessageResponse extends TriggerResponse {
  bool success;

  MessageResponse([this.success = true]);

  $ep.MessageResponse toWire() {
    return $ep.MessageResponse(success: success);
  }
}
