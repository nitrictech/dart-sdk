part of 'common.dart';

enum SecretPermission { access, put }

class SecretResource extends SecureResource<SecretPermission> {
  SecretResource(String name, {$p.ResourcesClient? client})
      : super(name, client);

  @override
  ResourceDeclareRequest asRequest() {
    var resource = $p.ResourceIdentifier(
      name: name,
      type: $p.ResourceType.Secret,
    );

    return $p.ResourceDeclareRequest(id: resource, secret: $p.SecretResource());
  }

  @override
  List<$p.Action> permissionsToActions(List<SecretPermission> permissions) {
    List<$p.Action> actions = permissions.fold(
        [],
        (actions, permission) => switch (permission) {
              SecretPermission.access => [...actions, $p.Action.SecretAccess],
              SecretPermission.put => [...actions, $p.Action.SecretPut],
            });

    return actions;
  }

  /// Set the function's required [permissions] for the secret.
  $s.Secret allow(List<SecretPermission> permissions) {
    if (permissions.isEmpty) {
      throw "Must supply at least one permission for secret $name";
    }

    unawaited(registerPolicy((permissions)).onError((error, stackTrace) {
      print(error);
    }));

    return $s.Secret(name);
  }
}
