import 'dart:async';

import 'package:nitric_sdk/src/api/api.dart';
import 'package:nitric_sdk/src/grpc_helper.dart';
import 'package:nitric_sdk/src/nitric/proto/batch/v1/batch.pb.dart';
import 'package:nitric_sdk/src/nitric/proto/batch/v1/batch.pbgrpc.dart' as $p;

class Job {
  late final $p.BatchClient? _batchClient;

  String name;

  Job(this.name, {$p.BatchClient? batchClient}) {
    _batchClient = batchClient;
  }

  Future<Resp> _useClient<Resp>(
      UseClientCallback<$p.BatchClient, Resp> callback) async {
    final client = _batchClient ??
        $p.BatchClient(ClientChannelSingleton.instance.clientChannel);

    var resp = await callback(client);

    if (_batchClient == null) {
      await ClientChannelSingleton.instance.release();
    }

    return resp;
  }

  Future<void> submit(Map<String, dynamic> message) async {
    final data = JobData(struct: Proto.structFromMap(message));

    final req = $p.JobSubmitRequest(data: data, jobName: name);

    await _useClient((client) async {
      await client.submitJob(req);
    });
  }
}
