part of 'common.dart';

class BlobEventWorker extends Worker<$bp.StorageListenerClient> {
  $bp.RegistrationRequest registrationRequest;
  BlobEventHandler middleware;

  BlobEventWorker(this.registrationRequest, this.middleware);

  @override
  Future<void> _startWorkerLoop() async {
    final initMsg = $bp.ClientMessage(registrationRequest: registrationRequest);

    // Create the request stream and send the initial message
    final requestStream = StreamController<$bp.ClientMessage>();
    requestStream.add(initMsg);

    await ClientChannelSingleton.useClient($bp.StorageListenerClient.new,
        (client) async {
      final response = client.listen(
        requestStream.stream,
      );

      await for (final msg in response) {
        if (msg.hasRegistrationResponse()) {
          // Blob Notification has connected with Nitric server
        } else if (msg.hasBlobEventRequest()) {
          var ctx = BlobEventContext.fromRequest(msg);

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
