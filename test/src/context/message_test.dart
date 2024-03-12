import 'package:nitric_sdk/src/context/common.dart';
import 'package:nitric_sdk/src/google/protobuf/struct.pb.dart';
import 'package:nitric_sdk/src/nitric/proto/topics/v1/topics.pbgrpc.dart'
    as $pb;
import 'package:test/test.dart';

void main() {
  test('Message Context from ServerMessage', () {
    var structPayload = Struct();
    structPayload.fields["message"] = Value(stringValue: "test");

    var msg = $pb.ServerMessage(
        id: 'id',
        messageRequest: $pb.MessageRequest(
            topicName: 'topicName',
            message: $pb.TopicMessage(structPayload: structPayload)));

    final ctx = MessageContext.fromRequest(msg);

    expect(ctx.req.message, {'message': 'test'});
    expect(ctx.req.topicName, msg.messageRequest.topicName);
  });

  test('ClientMessage from Message Context', () {
    final ctx = MessageContext(
        "id",
        MessageRequest("topicName", <String, String>{"message": "test"}),
        MessageResponse(true));

    final clientMessage = ctx.toResponse();

    expect(clientMessage.id, "id");
    expect(clientMessage.hasMessageResponse(), true);
    expect(clientMessage.messageResponse.success, true);
  });
}
