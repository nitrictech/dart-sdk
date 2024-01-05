import 'dart:convert';

import 'package:dart_sdk/src/gen/contracts/proto/faas/v1/faas.pbgrpc.dart'
    as $p;

class TriggerContext<Req extends TriggerRequest, Resp extends TriggerResponse> {
  Req req;
  Resp resp;

  TriggerContext(this.req, this.resp);
}

class TriggerResponse {}

class TriggerRequest {
  String data;

  TriggerRequest(this.data);
}

class HttpContext extends TriggerContext<HttpRequest, HttpResponse> {
  HttpContext(HttpRequest req, HttpResponse resp) : super(req, resp);
}

class HttpRequest extends TriggerRequest {
  late String method;
  late String path;
  late Map<String, List<String>> headers;

  HttpRequest(String data, this.method, this.path, this.headers) : super(data);

  HttpRequest.fromGrpcTriggerRequest($p.TriggerRequest req)
      : super(utf8.decode(req.data)) {
    var http = req.ensureHttp();

    method = http.method;
    path = http.path;
    headers = http.headers.map((key, value) => MapEntry(key, value.value));
  }
}

class HttpResponse extends TriggerResponse {
  late String body;
  late int status;
  late Map<String, List<String>> headers;

  $p.TriggerResponse toGrpcTriggerResponse() {
    return $p.TriggerResponse(
        data: utf8.encode(body),
        http: $p.HttpResponseContext(
            status: status,
            headers: headers.map(
                (key, value) => MapEntry(key, $p.HeaderValue(value: value)))));
  }
}
