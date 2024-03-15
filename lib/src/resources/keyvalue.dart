part of 'common.dart';

enum KeyValueStorePermission { get, set, delete }

class KeyValueStoreResource extends SecureResource<KeyValueStorePermission> {
  KeyValueStoreResource(String name, {$p.ResourcesClient? client})
      : super(name, client);

  @override
  ResourceDeclareRequest asRequest() {
    var resource = $p.ResourceIdentifier(
      type: $p.ResourceType.KeyValueStore,
      name: name,
    );

    return $p.ResourceDeclareRequest(
        id: resource, keyValueStore: $p.KeyValueStoreResource());
  }

  @override
  List<$p.Action> permissionsToActions(
      List<KeyValueStorePermission> permissions) {
    List<$p.Action> actions = permissions.fold(
        [],
        (actions, permission) => switch (permission) {
              KeyValueStorePermission.get => [
                  ...actions,
                  $p.Action.KeyValueStoreRead
                ],
              KeyValueStorePermission.set => [
                  ...actions,
                  $p.Action.KeyValueStoreWrite
                ],
              KeyValueStorePermission.delete => [
                  ...actions,
                  $p.Action.KeyValueStoreDelete
                ]
            });

    return actions;
  }

  KeyValueStore allow(List<KeyValueStorePermission> permissions) {
    if (permissions.isEmpty) {
      throw "Must supply at least one permission for key value store $name";
    }

    unawaited(registerPolicy((permissions)).onError((error, stackTrace) {
      print(error);
    }));

    return KeyValueStore(name);
  }
}
