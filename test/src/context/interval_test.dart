import 'package:nitric_sdk/src/context/common.dart';
import 'package:nitric_sdk/src/nitric/proto/schedules/v1/schedules.pbgrpc.dart'
    as $pb;
import 'package:test/test.dart';

void main() {
  test('Interval Context from ServerMessage', () {
    var msg = $pb.ServerMessage(
      id: 'id',
      intervalRequest: $pb.IntervalRequest(scheduleName: 'scheduleName'),
    );

    final ctx = IntervalContext.fromRequest(msg);

    expect(ctx.req.scheduleName, msg.intervalRequest.scheduleName);
  });

  test('ClientMessage from Interval Context', () {
    final ctx = IntervalContext(
        "id",
        IntervalRequest(scheduleName: "scheduleName"),
        IntervalResponse(success: true));

    final clientMessage = ctx.toResponse();

    expect(clientMessage.id, "id");
    expect(clientMessage.hasIntervalResponse(), true);
  });
}
