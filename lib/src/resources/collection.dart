part of 'common.dart';

enum CollectionPermission { reading, writing, deleting }

class CollectionResource<T> extends SecureResource<CollectionPermission> {
  CollectionResource(String name) : super(name);

  @override
  Future<void> register() async {
    // TODO: implement register
    print("Registering $name");
  }

  @override
  List<$p.Action> permissionsToActions(List<CollectionPermission> permissions) {
    // TODO: implement permissionsToActions
    return [];
  }

  Store<T> requires(List<CollectionPermission> permissions) {
    return Store<T>(name);
  }
}
