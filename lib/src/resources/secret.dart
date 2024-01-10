part of 'common.dart';

enum SecretPermission { accessing, putting }

class SecretResource extends SecureResource<SecretPermission> {
  SecretResource(String name) : super(name);

  @override
  Future<void> register() {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  List<$p.Action> permissionsToActions(List<SecretPermission> permissions) {
    // TODO: implement permissionsToActions
    throw UnimplementedError();
  }
}
