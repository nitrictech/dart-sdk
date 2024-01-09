import 'dart:convert';

import 'package:dart_sdk/src/nitric/proto/apis/v1/apis.pb.dart' as $p;

class TriggerContext<Req, Resp> {
  Req req;
  Resp resp;

  TriggerContext(this.req, this.resp);
}

class HttpContext extends TriggerContext<HttpRequest, HttpResponse> {
  HttpContext(HttpRequest req, HttpResponse resp) : super(req, resp);

  // Create a HttpContext from a server context
  HttpContext.fromRequest($p.ServerMessage msg)
      : this(
          HttpRequest(
            utf8.decode(msg.httpRequest.body),
            msg.httpRequest.method,
            msg.httpRequest.path,
            msg.httpRequest.pathParams,
            msg.httpRequest.queryParams
                .map((key, value) => MapEntry(key, value.value)),
            msg.httpRequest.headers
                .map((key, value) => MapEntry(key, value.value)),
          ),
          HttpResponse(),
        );

  $p.ClientMessage toResponse() {
    return $p.ClientMessage(httpResponse: resp.toWire());
  }
}

class HttpRequest {
  String body = "";
  String method = "";
  String path = "";
  Map<String, String> pathParams = {};
  Map<String, List<String>> queryParams = {};
  Map<String, List<String>> headers = {};

  HttpRequest(this.body, this.method, this.path, this.pathParams,
      this.queryParams, this.headers);
}

class HttpResponse {
  String body = "";
  int status = 200;
  Map<String, List<String>> headers = {};

  HttpResponse();

  HttpResponse.withError(Error e) {
    body = e.toString();
  }

  $p.HttpResponse toWire() {
    return $p.HttpResponse(
      status: status,
      body: utf8.encode(body),
      headers: headers
          .map((key, value) => MapEntry(key, $p.HeaderValue(value: value))),
    );
  }
}
