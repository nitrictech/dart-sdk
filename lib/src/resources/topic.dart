part of 'common.dart';

enum TopicPermission { publishing }

class Topic extends SecureResource<TopicPermission> {
  $tp.SubscriberClient? _subscriberClient;

  Topic(String name,
      {$p.ResourcesClient? client, $tp.SubscriberClient? subscriberClient})
      : super(name, client) {
    _subscriberClient = subscriberClient;
  }

  /// Register a [handler] to subscribe to messages sent to the topic.
  Future<void> subscribe(MessageHandler middleware) async {
    var registrationRequest = $tp.RegistrationRequest(topicName: name);

    var worker = SubscriptionWorker(registrationRequest, middleware,
        client: _subscriberClient);

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
