part of 'common.dart';

enum KeyValueStorePermission { getting, setting, deleting }

class KeyValueStoreResource extends SecureResource<KeyValueStorePermission> {
  KeyValueStoreResource(String name) : super(name);

  @override
  Future<void> register() async {
    var resource = $p.ResourceIdentifier(
      type: $p.ResourceType.KeyValueStore,
      name: name,
    );

    await client.declare($p.ResourceDeclareRequest(id: resource));

    registrationCompletion.complete(resource);
  }

  @override
  List<$p.Action> permissionsToActions(
      List<KeyValueStorePermission> permissions) {
    List<$p.Action> actions = permissions.fold(
        [],
        (actions, permission) => switch (permission) {
              KeyValueStorePermission.getting => [
                  ...actions,
                  $p.Action.KeyValueStoreRead
                ],
              KeyValueStorePermission.setting => [
                  ...actions,
                  $p.Action.KeyValueStoreWrite
                ],
              KeyValueStorePermission.deleting => [
                  ...actions,
                  $p.Action.KeyValueStoreDelete
                ]
            });

    return actions;
  }

  KeyValueStore requires(List<KeyValueStorePermission> permissions) {
    if (permissions.isEmpty) {
      throw "Must supply at least one permission for key value store $name";
    }

    registerPolicy(permissions);

    return KeyValueStore(name);
  }
}
