part of 'common.dart';

enum BucketPermission { read, write, delete }

class BucketResource extends SecureResource<BucketPermission> {
  BucketResource(super.name);

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
              BucketPermission.read => [
                  ...actions,
                  $p.Action.BucketFileGet,
                  $p.Action.BucketFileList
                ],
              BucketPermission.write => [...actions, $p.Action.BucketFilePut],
              BucketPermission.delete => [
                  ...actions,
                  $p.Action.BucketFileDelete
                ],
            });

    return actions;
  }

  /// Create a blob event subscription triggered on the [blobEventType] filtered by files that match the [keyPrefixFilter].
  Future<void> on(BlobEventType blobEventType, String keyPrefixFilter,
      BlobEventHandler handler,
      {List<BlobEventHandler> middlewares = const []}) async {
    // Create the request to register the Storage listener with the membrane
    final eventType = switch (blobEventType) {
      BlobEventType.write => $bp.BlobEventType.Created,
      BlobEventType.delete => $bp.BlobEventType.Deleted,
    };

    final registrationRequest = $bp.RegistrationRequest(
      bucketName: name,
      keyPrefixFilter: keyPrefixFilter,
      blobEventType: eventType,
    );

    final composedHandler =
        composeMiddleware([...middlewares, handler], BlobEventContext.fromCtx);

    var worker = BlobEventWorker(registrationRequest, composedHandler);

    await worker.start();
  }

  /// Set the function's required [permissions] to the bucket.
  Bucket allow(List<BucketPermission> permissions) {
    if (permissions.isEmpty) {
      throw "Must supply at least one permission for bucket $name";
    }

    unawaited(registerPolicy((permissions)).onError((error, stackTrace) {
      print(error);
    }));

    return Bucket(name);
  }
}
