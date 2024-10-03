import 'dart:async';

import 'package:nitric_sdk/src/api/api.dart';
import 'package:nitric_sdk/src/grpc_helper.dart';
import 'package:nitric_sdk/src/nitric/proto/batch/v1/batch.pb.dart';
import 'package:nitric_sdk/src/nitric/proto/batch/v1/batch.pbgrpc.dart' as $p;

class Job {
  String name;

  Job(this.name);

  Future<void> submit(Map<String, dynamic> message) async {
    final data = JobData(struct: Proto.structFromMap(message));

    final req = $p.JobSubmitRequest(data: data, jobName: name);

    await ClientChannelSingleton.useClient($p.BatchClient.new, (client) async {
      await client.submitJob(req);
    });
  }
}
