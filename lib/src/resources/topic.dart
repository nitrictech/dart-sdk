part of 'common.dart';

enum TopicPermission { publishing }

class Topic extends SecureResource<TopicPermission> {
  Topic(String name) : super(name);

  /// Register a [handler] to subscribe to messages sent to the topic.
  Future<void> subscribe(MessageMiddleware handler) async {
    // Create Subscriber client
    final channel = ClientChannel('localhost',
        port: 50051,
        options: ChannelOptions(credentials: ChannelCredentials.insecure()));
    final client = $tp.SubscriberClient(channel);

    // Create the request to register the subscription with the membrane
    final registrationRequest = $tp.RegistrationRequest(topicName: name);
    final initMsg = $tp.ClientMessage(registrationRequest: registrationRequest);

    // Create the request stream and send the initial message
    final requestStream = StreamController<$tp.ClientMessage>();
    requestStream.add(initMsg);

    final response = client.subscribe(
      requestStream.stream,
    );

    try {
      await for (final msg in response) {
        if (msg.hasRegistrationResponse()) {
          print("Function connected with membrane");
        } else if (msg.hasMessageRequest()) {
          var ctx = MessageContext.fromRequest(msg);

          ctx = await handler(ctx);

          var resp = ctx.toResponse();

          requestStream.add(resp);
        }
      }
    } on GrpcError catch (e) {
      print("caught a GrpcError: $e");
    } on Error catch (e) {
      var resp = MessageResponse(false);

      requestStream.add($tp.ClientMessage(messageResponse: resp.toWire()));
    }
  }

  @override
  Future<void> register() async {
    var resource = $p.Resource(
      name: name,
      type: $p.ResourceType.Topic,
    );

    await client.declare($p.ResourceDeclareRequest(resource: resource));
  }

  @override
  List<$p.Action> permissionsToActions(List<TopicPermission> permissions) {
    List<$p.Action> actions = permissions.fold(
        [],
        (actions, permission) => switch (permission) {
              TopicPermission.publishing => [
                  ...actions,
                  $p.Action.TopicEventPublish,
                ],
            });

    return actions;
  }

  /// Set the function's required [permissions] for the topic.
  $t.Topic requires(List<TopicPermission> permissions) {
    if (permissions.isEmpty) {
      throw "Must supply at least one permission for topic $name";
    }

    registerPolicy(permissions);

    return $t.Topic(name);
  }
}
