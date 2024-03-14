part of 'common.dart';

class FileEventWorker extends Worker<$bp.StorageListenerClient> {
  $bp.RegistrationRequest registrationRequest;
  FileEventHandler middleware;
  Bucket bucket;

  FileEventWorker(this.registrationRequest, this.middleware, this.bucket,
      {$bp.StorageListenerClient? client})
      : super(client);

  @override
  Future<void> start() async {
    final initMsg = $bp.ClientMessage(registrationRequest: registrationRequest);

    // Create the request stream and send the initial message
    final requestStream = StreamController<$bp.ClientMessage>();
    requestStream.add(initMsg);

    final response = _client.listen(
      requestStream.stream,
    );

    await for (final msg in response) {
      if (msg.hasRegistrationResponse()) {
        // Blob Notification has connected with Nitric server
      } else if (msg.hasBlobEventRequest()) {
        var ctx = FileEventContext.fromRequest(msg, bucket);

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

    await _shutdownChannel();
  }
}
