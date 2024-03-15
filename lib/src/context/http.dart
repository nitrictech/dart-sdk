part of './common.dart';

/// The context of a HTTP request/response triggered by a request to an API.
class HttpContext extends TriggerContext<HttpRequest, HttpResponse> {
  HttpContext(String id, HttpRequest req, HttpResponse resp)
      : super(id, req, resp);

  /// Create a HTTP context from a server message.
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

  /// Converts the context to a gRPC client response.
  $ap.ClientMessage toResponse() {
    return $ap.ClientMessage(id: id, httpResponse: res.toWire());
  }
}

/// Represents a HTTP request.
class HttpRequest extends TriggerRequest {
  /// The body that was sent with the request.
  String body;

  /// The HTTP method used for the request.
  String method;

  /// The path that the request was sent on.
  String path;

  /// The path params sent with the request. i.e. /hello/:name.
  Map<String, String> pathParams;

  /// The query params sent with the request. i.e. /hello?query=param.
  Map<String, List<String>> queryParams;

  /// The request headers.
  Map<String, List<String>> headers;

  HttpRequest({
    this.body = "",
    this.method = "",
    this.path = "",
    this.pathParams = const {},
    this.queryParams = const {},
    this.headers = const {},
  });

  Map<String, dynamic> json() {
    try {
      return jsonDecode(body);
    } catch (e) {
      throw FormatException("Body contents must be json serializable");
    }
  }
}

/// Represents a HTTP response.
class HttpResponse extends TriggerResponse {
  /// The response body.
  late String body;

  /// The HTTP status code to respond with. Defaults to 200 (ok).
  late int status;

  /// The headers to respond with.
  late Map<String, List<String>> headers;

  HttpResponse([this.body = "", this.status = 200]) {
    headers = {};
  }

  /// Creates a http response with an error for the body and 500 (internal server error) as the status.
  void withError(Object e) {
    status = 500;
    body = e.toString();
    headers = {};
  }

  /// Sets the response [body] as a json string and adds a json content type if the content type isn't set.
  void json(Map<String, dynamic> contents) {
    body = jsonEncode(contents);
    headers.putIfAbsent("Content-Type", () => ["application/json"]);
  }

  /// Converts to a gRPC response.
  $ap.HttpResponse toWire() {
    return $ap.HttpResponse(
      status: status,
      body: utf8.encode(body),
      headers: headers
          .map((key, value) => MapEntry(key, $ap.HeaderValue(value: value))),
    );
  }
}
