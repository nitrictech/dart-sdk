part of 'common.dart';

enum QueuePermission { enqueue, dequeue }

class QueueResource extends SecureResource<QueuePermission> {
  QueueResource(super.name);

  @override
  ResourceDeclareRequest asRequest() {
    var resource = $p.ResourceIdentifier(
      type: $p.ResourceType.Queue,
      name: name,
    );

    return $p.ResourceDeclareRequest(id: resource, queue: $p.QueueResource());
  }

  @override
  List<$p.Action> permissionsToActions(List<QueuePermission> permissions) {
    List<$p.Action> actions = permissions.fold(
        [],
        (actions, permission) => switch (permission) {
              QueuePermission.enqueue => [
                  ...actions,
                  $p.Action.QueueEnqueue,
                ],
              QueuePermission.dequeue => [...actions, $p.Action.QueueDequeue],
            });

    return actions;
  }

  /// Set the function's required [permissions] to the queue.
  Queue allow(List<QueuePermission> permissions) {
    if (permissions.isEmpty) {
      throw "Must supply at least one permission for queue $name";
    }

    unawaited(registerPolicy((permissions)).onError((error, stackTrace) {
      print(error);
    }));

    return Queue(name);
  }
}
