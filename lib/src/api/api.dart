import 'package:grpc/grpc.dart';

export 'bucket.dart';
export 'keyvalue.dart';
export 'secret.dart';
export 'topic.dart';
export 'proto.dart';
export 'queue.dart';
export 'batch.dart';
export 'sql.dart';

typedef UseClientCallback<GrpcClient extends Client, Resp> = Future<Resp>
    Function(GrpcClient);

typedef ClientConstructor<GrpcClient extends Client> = GrpcClient Function(
    ClientChannel);
