import 'package:dart_sdk/dart_sdk.dart';
import 'package:dart_sdk/src/nitric.dart';
import 'package:dart_sdk/src/resources/bucket.dart';
import 'package:dart_sdk/src/resources/context/http.dart';

void main() {
  var a = api("blah");

  var b = bucket("images").requires([BucketPermission.reading]);

  a.get("/hello", (HttpContext ctx) async {
    final bytes = await b.file("cat.txt").read();

    ctx.resp.body = bytes;

    return ctx;
  });

  a.post("/hello", (HttpContext ctx) async {
    await b.file("cat.txt").write("Hello World");

    ctx.resp.body = "Wrote 'Hello World' to 'cat.txt'";

    return ctx;
  });
}
