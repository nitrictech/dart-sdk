import 'dart:convert';

import 'package:nitric_sdk/src/context/common.dart';
import 'package:nitric_sdk/src/nitric/proto/apis/v1/apis.pbgrpc.dart' as $pb;
import 'package:test/test.dart';

void main() {
  test('HTTP Context from ServerMessage', () {
    var msg = $pb.ServerMessage(
        id: 'id',
        httpRequest: $pb.HttpRequest(
            body: utf8.encode("application testing"),
            method: "GET",
            path: "/test",
            headers: <String, $pb.HeaderValue>{
              "Content-Type":
                  $pb.HeaderValue(value: ["application/test", "test/plain"])
            },
            queryParams: <String, $pb.QueryValue>{
              "application": $pb.QueryValue(value: ["test", "http"])
            },
            pathParams: <String, String>{
              "id": "testing-1234"
            }));

    final ctx = HttpContext.fromRequest(msg);

    expect(ctx.req.body, "application testing");
    expect(ctx.req.path, "/test");
    expect(ctx.req.method, "GET");
    expect(ctx.req.headers, {
      "Content-Type": ["application/test", "test/plain"]
    });
    expect(ctx.req.pathParams, {"id": "testing-1234"});
    expect(ctx.req.queryParams, {
      "application": ["test", "http"]
    });
  });

  test('ClientMessage from HTTP Context', () {
    final ctx = HttpContext(
        "id", HttpRequest(), HttpResponse("successful response", 400));

    final clientMessage = ctx.toResponse();

    expect(clientMessage.id, "id");
    expect(clientMessage.httpResponse.body, utf8.encode("successful response"));
    expect(clientMessage.httpResponse.status, 400);
    expect(clientMessage.httpResponse.headers, <String, $pb.HeaderValue>{});
  });

  test('HttpResponse setting JSON body', () {
    final ctx = HttpContext("id", HttpRequest(), HttpResponse());

    ctx.res.json({
      "message": "Hello World",
      "count": 15,
      "sub-json": {"message": "Hello Nested World"}
    });

    expect(ctx.res.body,
        '{"message":"Hello World","count":15,"sub-json":{"message":"Hello Nested World"}}');
    expect(ctx.res.headers.length, 1);
    expect(ctx.res.headers["Content-Type"], ["application/json"]);
  });

  test('HttpRequest setting JSON body', () {
    final jsonString =
        '{"message":"Hello World","count":15,"sub-json":{"message":"Hello Nested World"}}';

    final ctx = HttpContext(
        "id",
        HttpRequest(body: jsonString, headers: {
          "Content-Type": ["application/json"]
        }),
        HttpResponse());

    expect(ctx.req.json(), {
      "message": "Hello World",
      "count": 15,
      "sub-json": {"message": "Hello Nested World"}
    });
    expect(ctx.req.headers.length, 1);
    expect(ctx.req.headers["Content-Type"], ["application/json"]);
  });

  test('HttpRequest setting invalid JSON body', () {
    final jsonString = '{"message":"Hello World}';

    final ctx = HttpContext(
        "id",
        HttpRequest(body: jsonString, headers: {
          "Content-Type": ["application/json"]
        }),
        HttpResponse());

    try {
      ctx.req.json();
      expect(false, true);
    } on FormatException catch (err) {
      expect(err.toString(),
          "FormatException: Body contents must be json serializable");
    }
  });

  test('HttpResponse with error', () {
    final err = Exception("error occurred in user application");

    final resp = HttpResponse();
    resp.withError(err);

    expect(resp.body, "Exception: error occurred in user application");
    expect(resp.headers, {});
    expect(resp.status, 500);
  });
}
