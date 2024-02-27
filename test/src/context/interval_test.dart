import 'package:nitric_sdk/src/context/common.dart';
import 'package:nitric_sdk/src/nitric/proto/schedules/v1/schedules.pbgrpc.dart'
    as $pb;
import 'package:test/test.dart';

void main() {
  test('Interval Request from ServerMessage', () {
    var msg = $pb.ServerMessage(
      id: 'id',
      intervalRequest: $pb.IntervalRequest(scheduleName: 'scheduleName'),
    );

    IntervalContext req = IntervalContext.fromRequest(msg);

    expect(req.req.scheduleName, msg.intervalRequest.scheduleName);
  });
}
