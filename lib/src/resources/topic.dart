part of 'common.dart';

enum TopicPermission { publishing }

class TopicResource extends SecureResource<TopicPermission> {
  TopicResource(String name) : super(name);

  Future<void> subscribe(MessageMiddleware middleware) async {}

  @override
  Future<void> register() {}

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

  Topic requires(List<TopicPermission> permissions) {
    if (permissions.isEmpty) {
      throw "Must supply at least one permission for topic $name";
    }

    registerPolicy(permissions);

    return Topic(name);
  }
}
