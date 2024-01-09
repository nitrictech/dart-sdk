import 'package:dart_sdk/dart_sdk.dart';
import 'package:dart_sdk/src/nitric.dart';
import 'package:dart_sdk/src/resources/context.dart';

void main() {
  var a = api("apiName");

  a.get("/hello", (HttpContext ctx) async {
    print("Hello world");

    return ctx;
  });
}
