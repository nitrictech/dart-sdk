part of 'common.dart';

enum BucketPermission { reading, writing, deleting }

class BucketResource extends SecureResource<BucketPermission> {
  BucketResource(String name, {$p.ResourcesClient? client})
      : super(name, client);

  @override
  ResourceDeclareRequest asRequest() {
    var resource = $p.ResourceIdentifier(
      type: $p.ResourceType.Bucket,
      name: name,
    );

    return $p.ResourceDeclareRequest(id: resource, bucket: $p.BucketResource());
  }

  @override
  List<$p.Action> permissionsToActions(List<BucketPermission> permissions) {
    List<$p.Action> actions = permissions.fold(
        [],
        (actions, permission) => switch (permission) {
              BucketPermission.reading => [
                  ...actions,
                  $p.Action.BucketFileGet,
                  $p.Action.BucketFileList
                ],
              BucketPermission.writing => [...actions, $p.Action.BucketFilePut],
              BucketPermission.deleting => [
                  ...actions,
                  $p.Action.BucketFileDelete
                ],
            });

    return actions;
  }

  /// Set the function's required [permissions] to the bucket.
  Bucket requires(List<BucketPermission> permissions) {
    if (permissions.isEmpty) {
      throw "Must supply at least one permission for bucket $name";
    }

    registerPolicy(permissions);

    return Bucket(name);
  }
}
