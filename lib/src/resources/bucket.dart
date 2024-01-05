library resources;

import 'package:dart_sdk/src/api/bucket.dart';
import 'package:dart_sdk/src/gen/contracts/proto/resource/v1/resource.pb.dart'
    as $p;

import 'resource.dart';

enum BucketPermission { reading, writing, deleting }

class BucketResource extends SecureResource<BucketPermission> {
  BucketResource(String name) : super(name);

  @override
  Future<void> register() async {
    var resource = $p.Resource(
      type: $p.ResourceType.Bucket,
      name: name,
    );

    await client.declare($p.ResourceDeclareRequest(resource: resource));
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

  Future<Bucket> requires(List<BucketPermission> permissions) async {
    if (permissions.isEmpty) {
      throw "Must supply at least one permission for bucket $name";
    }

    await registerPolicy(permissions);

    return Bucket(name);
  }
}
