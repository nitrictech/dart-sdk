import 'package:dart_sdk/src/resources/middleware.dart';

class Faas {
  List<HttpMiddleware> httpWorkers = [];

  Faas.http(List<HttpMiddleware> workers) {
    httpWorkers = workers;
  }

  Future<void> start() async {
    await Future.wait(httpWorkers.map((w) => await w()))
  }
}
