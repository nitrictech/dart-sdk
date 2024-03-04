part of 'common.dart';

enum QueuePermission { enqueueing, dequeueing }

class QueueResource extends SecureResource<QueuePermission> {
  QueueResource(String name, {$p.ResourcesClient? client})
      : super(name, client);

  @override
  Future<void> register() async {
    var resource = $p.ResourceIdentifier(
      type: $p.ResourceType.Queue,
      name: name,
    );

    await client.declare(
        $p.ResourceDeclareRequest(id: resource, queue: $p.QueueResource()));

    registrationCompletion.complete(resource);
  }

  @override
  List<$p.Action> permissionsToActions(List<QueuePermission> permissions) {
    List<$p.Action> actions = permissions.fold(
        [],
        (actions, permission) => switch (permission) {
              QueuePermission.enqueueing => [
                  ...actions,
                  $p.Action.QueueEnqueue,
                ],
              QueuePermission.dequeueing => [
                  ...actions,
                  $p.Action.QueueDequeue
                ],
            });

    return actions;
  }

  /// Set the function's required [permissions] to the queue.
  Queue requires(List<QueuePermission> permissions) {
    if (permissions.isEmpty) {
      throw "Must supply at least one permission for queue $name";
    }

    registerPolicy(permissions);

    return Queue(name);
  }
}
