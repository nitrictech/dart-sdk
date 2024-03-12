part of 'common.dart';

enum TopicPermission { publishing }

class Topic extends SecureResource<TopicPermission> {
  Topic(String name, {$p.ResourcesClient? client}) : super(name, client);

  /// Register a [handler] to subscribe to messages sent to the topic.
  Future<void> subscribe(MessageHandler middleware) async {
    var registrationRequest = $tp.RegistrationRequest(topicName: name);

    var worker = SubscriptionWorker(registrationRequest, middleware);

    await worker.start();
  }

  @override
  ResourceDeclareRequest asRequest() {
    var resource = $p.ResourceIdentifier(
      name: name,
      type: $p.ResourceType.Topic,
    );

    return $p.ResourceDeclareRequest(id: resource, topic: $p.TopicResource());
  }

  @override
  List<$p.Action> permissionsToActions(List<TopicPermission> permissions) {
    List<$p.Action> actions = permissions.fold(
        [],
        (actions, permission) => switch (permission) {
              TopicPermission.publishing => [
                  ...actions,
                  $p.Action.TopicPublish,
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

class SubscriptionWorker implements Worker {
  $tp.RegistrationRequest registrationRequest;
  MessageHandler middleware;

  SubscriptionWorker(this.registrationRequest, this.middleware);

  @override
  Future<void> start() async {
    // Create Subscriber client
    final channel = createClientChannelFromEnvVar();
    final client = $tp.SubscriberClient(channel);

    // Create the request to register the subscription with the membrane
    final initMsg = $tp.ClientMessage(registrationRequest: registrationRequest);

    // Create the request stream and send the initial message
    final requestStream = StreamController<$tp.ClientMessage>();
    requestStream.add(initMsg);

    final response = client.subscribe(
      requestStream.stream,
    );

    await for (final msg in response) {
      if (msg.hasRegistrationResponse()) {
        // Topic connected with Nitric server
      } else if (msg.hasMessageRequest()) {
        var ctx = MessageContext.fromRequest(msg);

        try {
          ctx = await middleware(ctx);
        } on GrpcError catch (e) {
          print("caught a GrpcError: $e");
        } catch (e) {
          print("unhandled application error: $e");

          ctx.resp.success = false;
        }

        requestStream.add(ctx.toResponse());
      }
    }

    await channel.shutdown();
  }
}
