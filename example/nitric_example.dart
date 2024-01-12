import 'package:dart_sdk/dart_sdk.dart';
import 'package:dart_sdk/src/api/bucket.dart';
import 'package:dart_sdk/src/context/common.dart';
import 'package:dart_sdk/src/nitric.dart';
import 'package:dart_sdk/src/resources/common.dart';

void main() {
  var a = api("blah");

  var b = bucket("images").requires([BucketPermission.reading]);

  var s = secret("secret").requires([SecretPermission.accessing]);

  var t = topic("blah");

  var u = t.requires([TopicPermission.publishing]);

  a.get("/hello", (HttpContext ctx) async {
    final bytes = await b.file("cat.txt").read();
    final sec = await s.latest().access();
    u.publish(Map.from(<String, dynamic>{"message": "hello world", "age": 21}));

    ctx.resp.body = "Bucket: $bytes, Secret: ${sec.value}";

    return ctx;
  });

  a.post("/hello", (HttpContext ctx) async {
    await b.file("cat.txt").write("Hello World");
    await s.put("super secret");

    ctx.resp.body =
        "Wrote 'Hello World' to 'cat.txt' and 'super secret' to 'secret'";

    return ctx;
  });

  t.subscribe((ctx) async {
    print(ctx.req.message);

    return ctx;
  });

  b.on(BlobEventType.write, "*", (ctx) async {
    print(ctx.req.file.key);

    return ctx;
  });
}
