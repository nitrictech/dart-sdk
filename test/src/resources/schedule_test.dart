import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/src/grpc_helper.dart';
import 'package:nitric_sdk/src/nitric/proto/resources/v1/resources.pbgrpc.dart';
import 'package:nitric_sdk/src/nitric/proto/schedules/v1/schedules.pbgrpc.dart';
import 'package:nitric_sdk/src/resources/common.dart';
import 'package:test/test.dart';

import '../common.dart';

class MockSchedulesClient extends Mock implements SchedulesClient {}

void main() {
  late MockResourceClient resourceClient;
  late MockSchedulesClient schedulesClient;

  setUp(() {
    schedulesClient = MockSchedulesClient();
    resourceClient = MockResourceClient();

    ClientChannelSingleton.registerClientConstructors(Map.from({
      ResourcesClient: resourceClient,
      SchedulesClient: schedulesClient,
    }));
  });

  setUpAll(() {
    registerFallbackValue(Stream<ClientMessage>.empty());
  });

  tearDown(() {
    reset(schedulesClient);
    reset(resourceClient);
  });

  test("Test build schedule", () async {
    var schedule = Schedule("scheduleName");

    expect(schedule.name, "scheduleName");
  });

  test("Test register schedule", () async {
    var api = Schedule("scheduleName");

    var req = ResourceDeclareRequest(
        id: ResourceIdentifier(
            name: "scheduleName", type: ResourceType.Schedule));

    var resp = ResourceDeclareResponse();

    when(() => resourceClient.declare(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    await api.register();

    verify(() => resourceClient.declare(req)).called(1);
  });

  test('Test schedule every worker', () async {
    var schedule = Schedule("scheduleName");

    when(() => schedulesClient.schedule(any()))
        .thenAnswer((_) => MockResponseStream.fromIterable([
              ServerMessage(
                  id: "id-1", registrationResponse: RegistrationResponse()),
              ServerMessage(
                  id: "id-2",
                  intervalRequest:
                      IntervalRequest(scheduleName: "scheduleName"))
            ]));

    await schedule.every("7 days", (ctx) async => ctx);

    verify(() => schedulesClient.schedule(any())).called(1);
  });

  test('Test schedule cron worker', () async {
    var schedule = Schedule("scheduleName");

    when(() => schedulesClient.schedule(any()))
        .thenAnswer((_) => MockResponseStream.fromIterable([
              ServerMessage(
                  id: "id-1", registrationResponse: RegistrationResponse()),
              ServerMessage(
                  id: "id-2",
                  intervalRequest:
                      IntervalRequest(scheduleName: "scheduleName"))
            ]));

    await schedule.cron("* * * * *", (ctx) async => ctx);

    verify(() => schedulesClient.schedule(any())).called(1);
  });

  test('Test schedule worker error', () async {
    var schedule = Schedule("scheduleName");

    when(() => schedulesClient.schedule(any()))
        .thenAnswer((_) => MockResponseStream.fromIterable([
              ServerMessage(
                  id: "id-1", registrationResponse: RegistrationResponse()),
              ServerMessage(
                  id: "id-2",
                  intervalRequest:
                      IntervalRequest(scheduleName: "scheduleName"))
            ]));

    await schedule.cron(
        "7 days", (ctx) async => throw Exception("test application error"));

    verify(() => schedulesClient.schedule(any())).called(1);
  });
}
