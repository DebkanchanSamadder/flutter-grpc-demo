import 'package:grpc/grpc.dart';
import 'package:grpc_demo/generated/ping.pbgrpc.dart';

class PingPongClient {
  late final channel = ClientChannel('ping-upstream-b3zzuedwgq-uc.a.run.app');

  late final stub = PingServerClient(channel);

  Future<String> ping(String greeting) async {
    final res = await stub.doPing(Ping(greetings: greeting));

    return res.acknowledgement;
  }
}
