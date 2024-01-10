part of 'common.dart';

enum CollectionPermission { reading, writing, deleting }

class CollectionResource extends SecureResource<CollectionPermission> {
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
}
