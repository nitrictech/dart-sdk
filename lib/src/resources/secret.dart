part of 'common.dart';

enum SecretPermission { accessing, putting }

class SecretResource extends SecureResource<SecretPermission> {
  SecretResource(String name, {$p.ResourcesClient? client})
      : super(name, client);

  @override
  Future<void> register() async {
    var resource = $p.ResourceIdentifier(
      name: name,
      type: $p.ResourceType.Secret,
    );

    await client.declare(
        $p.ResourceDeclareRequest(id: resource, secret: $p.SecretResource()));

    registrationCompletion.complete(resource);
  }

  @override
  List<$p.Action> permissionsToActions(List<SecretPermission> permissions) {
    List<$p.Action> actions = permissions.fold(
        [],
        (actions, permission) => switch (permission) {
              SecretPermission.accessing => [
                  ...actions,
                  $p.Action.SecretAccess
                ],
              SecretPermission.putting => [...actions, $p.Action.SecretPut],
            });

    return actions;
  }

  /// Set the function's required [permissions] for the secret.
  $s.Secret requires(List<SecretPermission> permissions) {
    if (permissions.isEmpty) {
      throw "Must supply at least one permission for secret $name";
    }

    registerPolicy(permissions);

    return $s.Secret(name);
  }
}
