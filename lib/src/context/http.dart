part of './common.dart';

class HttpContext extends TriggerContext<HttpRequest, HttpResponse> {
  HttpContext(String id, HttpRequest req, HttpResponse resp)
      : super(id, req, resp);

  // Create a HttpContext from a server context
  HttpContext.fromRequest($ap.ServerMessage msg)
      : this(
          msg.id,
          HttpRequest(
            body: utf8.decode(msg.httpRequest.body),
            method: msg.httpRequest.method,
            path: msg.httpRequest.path,
            pathParams: msg.httpRequest.pathParams,
            queryParams: msg.httpRequest.queryParams
                .map((key, value) => MapEntry(key, value.value)),
            headers: msg.httpRequest.headers
                .map((key, value) => MapEntry(key, value.value)),
          ),
          HttpResponse(),
        );

  $ap.ClientMessage toResponse() {
    return $ap.ClientMessage(id: id, httpResponse: resp.toWire());
  }
}

class HttpRequest extends TriggerRequest {
  String body;
  String method;
  String path;
  Map<String, String> pathParams;
  Map<String, List<String>> queryParams;
  Map<String, List<String>> headers;

  HttpRequest({
    this.body = "",
    this.method = "",
    this.path = "",
    this.pathParams = const {},
    this.queryParams = const {},
    this.headers = const {},
  });
}

class HttpResponse extends TriggerResponse {
  late String body;
  late int status;
  late Map<String, List<String>> headers;

  HttpResponse({this.body = "", this.status = 200, this.headers = const {}});

  HttpResponse.withError(Error e) {
    body = e.toString();
  }

  $ap.HttpResponse toWire() {
    return $ap.HttpResponse(
      status: status,
      body: utf8.encode(body),
      headers: headers
          .map((key, value) => MapEntry(key, $ap.HeaderValue(value: value))),
    );
  }
}
