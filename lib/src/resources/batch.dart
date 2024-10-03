part of 'common.dart';

enum JobPermission { submit }

class JobResourceRequirements {
  double cpus;
  int memory;
  int gpus;

  JobResourceRequirements({this.cpus = 1, this.memory = 1024, this.gpus = 0});

  $jp.JobResourceRequirements _toWire() {
    return $jp.JobResourceRequirements(
        cpus: cpus, memory: Int64(memory), gpus: Int64(gpus));
  }
}

class JobResource extends SecureResource<JobPermission> {
  JobResource(super.name);

  /// Create a handler function that will be executed when a job is submitted.
  Future<void> handler(JobHandler handler,
      {JobResourceRequirements? opts,
      List<JobHandler> middlewares = const []}) async {
    opts ??= JobResourceRequirements();

    final registrationRequest = $jp.RegistrationRequest(
      jobName: name,
      requirements: opts._toWire(),
    );

    final composedHandler =
        composeMiddleware([...middlewares, handler], JobContext.fromCtx);

    var worker = JobWorker(registrationRequest, composedHandler);

    await worker.start();
  }

  @override
  ResourceDeclareRequest asRequest() {
    var resource = $p.ResourceIdentifier(
      type: $p.ResourceType.Job,
      name: name,
    );

    return $p.ResourceDeclareRequest(id: resource, job: $p.JobResource());
  }

  @override
  List<$p.Action> permissionsToActions(List<JobPermission> permissions) {
    List<$p.Action> actions = permissions.fold(
        [],
        (actions, permission) => switch (permission) {
              JobPermission.submit => [...actions, $p.Action.JobSubmit],
            });

    return actions;
  }

  /// Set the function's required [permissions] to the batch.
  Job allow(List<JobPermission> permissions) {
    if (permissions.isEmpty) {
      throw "Must supply at least one permission for job $name";
    }

    unawaited(registerPolicy((permissions)).onError((error, stackTrace) {
      print(error);
    }));

    return Job(name);
  }
}
