part of 'common.dart';

enum TopicPermission { publish }

class Topic extends SecureResource<TopicPermission> {
  Topic(super.name);

  /// Register a [handler] to subscribe to messages sent to the topic.
  Future<void> subscribe(MessageHandler handler,
      {List<MessageHandler> middlewares = const []}) async {
    var registrationRequest = $tp.RegistrationRequest(topicName: name);

    final composedHandler =
        composeMiddleware([...middlewares, handler], MessageContext.fromCtx);

    var worker = SubscriptionWorker(registrationRequest, composedHandler);

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
              TopicPermission.publish => [
                  ...actions,
                  $p.Action.TopicPublish,
                ],
            });

    return actions;
  }

  /// Set the function's required [permissions] for the topic.
  $t.Topic allow(List<TopicPermission> permissions) {
    if (permissions.isEmpty) {
      throw "Must supply at least one permission for topic $name";
    }

    unawaited(registerPolicy((permissions)).onError((error, stackTrace) {
      print(error);
    }));

    return $t.Topic(name);
  }
}
