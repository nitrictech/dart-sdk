part of 'common.dart';

enum BucketPermission { read, write, delete }

class BucketResource extends SecureResource<BucketPermission> {
  $bp.StorageListenerClient? _storageListenerClient;

  BucketResource(String name,
      {$p.ResourcesClient? client,
      $bp.StorageListenerClient? storageListenerClient})
      : super(name, client) {
    _storageListenerClient = storageListenerClient;

    if (storageListenerClient == null) {
      _storageListenerClient = $bp.StorageListenerClient(
          ClientChannelSingleton.instance.clientChannel);
    } else {
      _storageListenerClient = storageListenerClient;
    }
  }

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
      BlobEventHandler handler) async {
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

    var worker = BlobEventWorker(registrationRequest, handler,
        client: _storageListenerClient);

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
