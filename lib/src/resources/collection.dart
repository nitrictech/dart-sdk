part of 'common.dart';

enum CollectionPermission { reading, writing, deleting }

class CollectionResource<T> extends SecureResource<CollectionPermission> {
  CollectionResource(String name) : super(name);

  @override
  Future<void> register() {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  List<$p.Action> permissionsToActions(List<CollectionPermission> permissions) {
    // TODO: implement permissionsToActions
    throw UnimplementedError();
  }

  Store<T> requires(List<CollectionPermission> permissions) {
    return Store<T>(name);
  }
}
