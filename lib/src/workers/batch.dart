part of 'common.dart';

class JobWorker extends Worker<$jp.JobClient> {
  $jp.RegistrationRequest registrationRequest;
  JobHandler middleware;

  JobWorker(this.registrationRequest, this.middleware);

  @override
  Future<void> start() async {
    // Create the request to register the subscription with the membrane
    final initMsg = $jp.ClientMessage(registrationRequest: registrationRequest);

    // Create the request stream and send the initial message
    final requestStream = StreamController<$jp.ClientMessage>();
    requestStream.add(initMsg);

    await ClientChannelSingleton.useClient($jp.JobClient.new, (client) async {
      final response = client.handleJob(
        requestStream.stream,
      );

      await for (final msg in response) {
        if (msg.hasRegistrationResponse()) {
          // Topic connected with Nitric server
        } else if (msg.hasJobRequest()) {
          var ctx = JobContext.fromRequest(msg);

          try {
            ctx = await middleware(ctx);
          } on GrpcError catch (e) {
            print("caught a GrpcError: $e");
          } catch (e) {
            print("unhandled application error: $e");

            ctx.res.success = false;
          }

          requestStream.add(ctx.toResponse());
        }
      }
    });
  }
}
