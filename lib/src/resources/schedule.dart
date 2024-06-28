part of 'common.dart';

class Schedule extends Resource {
  $sp.SchedulesClient? _schedulesClient;

  Schedule(String name,
      {$p.ResourcesClient? client, $sp.SchedulesClient? schedulesClient})
      : super(name, client) {
    _schedulesClient = schedulesClient;

    if (schedulesClient == null) {
      _schedulesClient =
          $sp.SchedulesClient(ClientChannelSingleton.instance.clientChannel);
    } else {
      _schedulesClient = schedulesClient;
    }
  }

  @override
  ResourceDeclareRequest asRequest() {
    var res = $p.ResourceIdentifier(name: name, type: $p.ResourceType.Schedule);

    return $p.ResourceDeclareRequest(id: res);
  }

  /// Run [middleware] at a certain interval defined by the [rate]. E.g. '7 days', '3 hours', '30 minutes'.
  Future<void> every(String rate, IntervalHandler middleware) async {
    var registrationRequest = $sp.RegistrationRequest(
        scheduleName: name, every: $s.ScheduleEvery(rate: rate));

    var worker = IntervalWorker(registrationRequest, middleware,
        client: _schedulesClient);

    await worker.start();
  }

  /// Run [middleware] at a certain interval defined by the [cronExpression].
  Future<void> cron(String cronExpression, IntervalHandler middleware) async {
    var registrationRequest = $sp.RegistrationRequest(
      scheduleName: name,
      cron: $sp.ScheduleCron(expression: cronExpression),
    );

    var worker = IntervalWorker(registrationRequest, middleware,
        client: _schedulesClient);

    await worker.start();
  }
}
