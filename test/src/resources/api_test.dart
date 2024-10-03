import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/nitric.dart';
import 'package:nitric_sdk/src/grpc_helper.dart';
import 'package:nitric_sdk/src/nitric/proto/apis/v1/apis.pbgrpc.dart' as $p;
import 'package:nitric_sdk/src/nitric/proto/resources/v1/resources.pbgrpc.dart';
import 'package:test/test.dart';

import '../common.dart';

class MockApiClient extends Mock implements $p.ApiClient {}

Future<HttpContext> defaultHandler(ctx) async {
  return ctx;
}

void main() {
  late MockApiClient apiClient;
  late MockResourceClient resourceClient;

  setUp(() {
    apiClient = MockApiClient();
    resourceClient = MockResourceClient();

    ClientChannelSingleton.registerClientConstructors(Map.from({
      $p.ApiClient: apiClient,
      ResourcesClient: resourceClient,
    }));
  });

  setUpAll(() {
    registerFallbackValue(Stream<$p.ClientMessage>.empty());
    registerFallbackValue(ResourceDeclareRequest());
  });

  tearDown(() {
    reset(apiClient);
    reset(resourceClient);
  });

  test("Test build api", () async {
    var api = Api(
      "apiName",
    );

    expect(api.name, "apiName");
  });

  test("Test register api", () async {
    var api = Api(
      "apiName",
    );

    var req = ResourceDeclareRequest(
        id: ResourceIdentifier(name: "apiName", type: ResourceType.Api),
        api: ApiResource(security: {}));

    var resp = ResourceDeclareResponse();

    when(() => resourceClient.declare(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    await api.register();

    verify(() => resourceClient.declare(req)).called(1);
  });

  group("test building API worker with no security", () {
    test('HTTP GET Worker build', () async {
      var api = Api("apiName");

      when(() => apiClient.serve(any()))
          .thenAnswer((_) => MockResponseStream.fromIterable([
                $p.ServerMessage(
                    id: "id-1",
                    registrationResponse: $p.RegistrationResponse()),
                $p.ServerMessage(id: "id-2", httpRequest: $p.HttpRequest())
              ]));

      await api.get("/routename", defaultHandler);

      verify(() => apiClient.serve(any())).called(1);
    });

    test('HTTP POST Worker build', () async {
      var api = Api("apiName");

      when(() => apiClient.serve(any()))
          .thenAnswer((_) => MockResponseStream.fromIterable([
                $p.ServerMessage(
                    id: "id-1",
                    registrationResponse: $p.RegistrationResponse()),
                $p.ServerMessage(id: "id-2", httpRequest: $p.HttpRequest())
              ]));

      await api.post("/routename", defaultHandler);

      verify(() => apiClient.serve(any())).called(1);
    });

    test('HTTP PATCH Worker build ', () async {
      var api = Api("apiName");

      when(() => apiClient.serve(any()))
          .thenAnswer((_) => MockResponseStream.fromIterable([
                $p.ServerMessage(
                    id: "id-1",
                    registrationResponse: $p.RegistrationResponse()),
                $p.ServerMessage(id: "id-2", httpRequest: $p.HttpRequest())
              ]));

      await api.patch("/routename", defaultHandler);

      verify(() => apiClient.serve(any())).called(1);
    });

    test('HTTP OPTIONS Worker build ', () async {
      var api = Api("apiName");

      when(() => apiClient.serve(any()))
          .thenAnswer((_) => MockResponseStream.fromIterable([
                $p.ServerMessage(
                    id: "id-1",
                    registrationResponse: $p.RegistrationResponse()),
                $p.ServerMessage(id: "id-2", httpRequest: $p.HttpRequest())
              ]));

      await api.options("/routename", defaultHandler);

      verify(() => apiClient.serve(any())).called(1);
    });

    test('HTTP DELETE Worker build ', () async {
      var api = Api("apiName");

      when(() => apiClient.serve(any()))
          .thenAnswer((_) => MockResponseStream.fromIterable([
                $p.ServerMessage(
                    id: "id-1",
                    registrationResponse: $p.RegistrationResponse()),
                $p.ServerMessage(id: "id-2", httpRequest: $p.HttpRequest())
              ]));

      await api.delete("/routename", defaultHandler);

      verify(() => apiClient.serve(any())).called(1);
    });

    test('HTTP PUT Worker build ', () async {
      var api = Api("apiName");

      when(() => apiClient.serve(any()))
          .thenAnswer((_) => MockResponseStream.fromIterable([
                $p.ServerMessage(
                    id: "id-1",
                    registrationResponse: $p.RegistrationResponse()),
                $p.ServerMessage(id: "id-2", httpRequest: $p.HttpRequest())
              ]));

      await api.put("/routename", defaultHandler);

      verify(() => apiClient.serve(any())).called(1);
    });

    test('HTTP ALL Worker build ', () async {
      var api = Api("apiName");

      when(() => apiClient.serve(any()))
          .thenAnswer((_) => MockResponseStream.fromIterable([
                $p.ServerMessage(
                    id: "id-1",
                    registrationResponse: $p.RegistrationResponse()),
                $p.ServerMessage(id: "id-2", httpRequest: $p.HttpRequest())
              ]));

      await api.all("/routename", defaultHandler);

      verify(() => apiClient.serve(any())).called(1);
    });
  });

  group("test building API with route", () {
    test('HTTP GET Worker build', () async {
      var api = Api("apiName");

      when(() => apiClient.serve(any()))
          .thenAnswer((_) => MockResponseStream.fromIterable([
                $p.ServerMessage(
                    id: "id-1",
                    registrationResponse: $p.RegistrationResponse()),
                $p.ServerMessage(id: "id-2", httpRequest: $p.HttpRequest())
              ]));

      await api.route("routeName").get(defaultHandler);

      verify(() => apiClient.serve(any())).called(1);
    });

    test('HTTP POST Worker build', () async {
      var api = Api("apiName");

      when(() => apiClient.serve(any()))
          .thenAnswer((_) => MockResponseStream.fromIterable([
                $p.ServerMessage(
                    id: "id-1",
                    registrationResponse: $p.RegistrationResponse()),
                $p.ServerMessage(id: "id-2", httpRequest: $p.HttpRequest())
              ]));

      await api.route("routeName").post(defaultHandler);

      verify(() => apiClient.serve(any())).called(1);
    });

    test('HTTP PATCH Worker build', () async {
      var api = Api("apiName");

      when(() => apiClient.serve(any()))
          .thenAnswer((_) => MockResponseStream.fromIterable([
                $p.ServerMessage(
                    id: "id-1",
                    registrationResponse: $p.RegistrationResponse()),
                $p.ServerMessage(id: "id-2", httpRequest: $p.HttpRequest())
              ]));

      await api.route("routeName").patch(defaultHandler);

      verify(() => apiClient.serve(any())).called(1);
    });

    test('HTTP OPTIONS Worker build', () async {
      var api = Api("apiName");

      when(() => apiClient.serve(any()))
          .thenAnswer((_) => MockResponseStream.fromIterable([
                $p.ServerMessage(
                    id: "id-1",
                    registrationResponse: $p.RegistrationResponse()),
                $p.ServerMessage(id: "id-2", httpRequest: $p.HttpRequest())
              ]));

      await api.route("routeName").options(defaultHandler);

      verify(() => apiClient.serve(any())).called(1);
    });

    test('HTTP DELETE Worker build', () async {
      var api = Api("apiName");

      when(() => apiClient.serve(any()))
          .thenAnswer((_) => MockResponseStream.fromIterable([
                $p.ServerMessage(
                    id: "id-1",
                    registrationResponse: $p.RegistrationResponse()),
                $p.ServerMessage(id: "id-2", httpRequest: $p.HttpRequest())
              ]));

      await api.route("routeName").delete(defaultHandler);

      verify(() => apiClient.serve(any())).called(1);
    });

    test('HTTP PUT Worker build', () async {
      var api = Api("apiName");

      when(() => apiClient.serve(any()))
          .thenAnswer((_) => MockResponseStream.fromIterable([
                $p.ServerMessage(
                    id: "id-1",
                    registrationResponse: $p.RegistrationResponse()),
                $p.ServerMessage(id: "id-2", httpRequest: $p.HttpRequest())
              ]));

      await api.route("routeName").put(defaultHandler);

      verify(() => apiClient.serve(any())).called(1);
    });

    test('HTTP ALL Worker build', () async {
      var api = Api("apiName");

      when(() => apiClient.serve(any()))
          .thenAnswer((_) => MockResponseStream.fromIterable([
                $p.ServerMessage(
                    id: "id-1",
                    registrationResponse: $p.RegistrationResponse()),
                $p.ServerMessage(id: "id-2", httpRequest: $p.HttpRequest())
              ]));

      await api.route("routeName").all(defaultHandler);

      verify(() => apiClient.serve(any())).called(1);
    });
  });

  group("test building with security", () {
    test('HTTP GET Worker build', () async {
      var oidc = OidcOptions(
        "oidcName",
        "oidcIssuer",
        ["oidcAudience"],
        ["oidcScopes"],
      );

      var api = Api("apiName", opts: ApiOptions(security: [oidc]));

      when(() => apiClient.serve(any()))
          .thenAnswer((_) => MockResponseStream.fromIterable([
                $p.ServerMessage(
                    id: "id-1",
                    registrationResponse: $p.RegistrationResponse()),
                $p.ServerMessage(id: "id-2", httpRequest: $p.HttpRequest())
              ]));

      when(() => resourceClient.declare(any())).thenAnswer(
          (_) => MockResponseFuture.value(ResourceDeclareResponse()));

      await api.route("routeName").get(defaultHandler);

      verify(() => apiClient.serve(any())).called(1);
      verify(() => resourceClient.declare(any())).called(1);
    });

    test('HTTP POST Worker build', () async {
      var oidc = OidcOptions(
        "oidcName",
        "oidcIssuer",
        ["oidcAudience"],
        ["oidcScopes"],
      );

      var api = Api("apiName", opts: ApiOptions(security: [oidc]));

      when(() => apiClient.serve(any()))
          .thenAnswer((_) => MockResponseStream.fromIterable([
                $p.ServerMessage(
                    id: "id-1",
                    registrationResponse: $p.RegistrationResponse()),
                $p.ServerMessage(id: "id-2", httpRequest: $p.HttpRequest())
              ]));

      when(() => resourceClient.declare(any())).thenAnswer(
          (_) => MockResponseFuture.value(ResourceDeclareResponse()));

      await api.route("routeName").post(defaultHandler);

      verify(() => apiClient.serve(any())).called(1);
      verify(() => resourceClient.declare(any())).called(1);
    });

    test('HTTP PUT Worker build', () async {
      var oidc = OidcOptions(
        "oidcName",
        "oidcIssuer",
        ["oidcAudience"],
        ["oidcScopes"],
      );

      var api = Api("apiName", opts: ApiOptions(security: [oidc]));

      when(() => apiClient.serve(any()))
          .thenAnswer((_) => MockResponseStream.fromIterable([
                $p.ServerMessage(
                    id: "id-1",
                    registrationResponse: $p.RegistrationResponse()),
                $p.ServerMessage(id: "id-2", httpRequest: $p.HttpRequest())
              ]));

      when(() => resourceClient.declare(any())).thenAnswer(
          (_) => MockResponseFuture.value(ResourceDeclareResponse()));

      await api.route("routeName").put(defaultHandler);

      verify(() => apiClient.serve(any())).called(1);
      verify(() => resourceClient.declare(any())).called(1);
    });

    test('HTTP PATCH Worker build', () async {
      var oidc = OidcOptions(
        "oidcName",
        "oidcIssuer",
        ["oidcAudience"],
        ["oidcScopes"],
      );

      var api = Api("apiName", opts: ApiOptions(security: [oidc]));

      when(() => apiClient.serve(any()))
          .thenAnswer((_) => MockResponseStream.fromIterable([
                $p.ServerMessage(
                    id: "id-1",
                    registrationResponse: $p.RegistrationResponse()),
                $p.ServerMessage(id: "id-2", httpRequest: $p.HttpRequest())
              ]));

      when(() => resourceClient.declare(any())).thenAnswer(
          (_) => MockResponseFuture.value(ResourceDeclareResponse()));

      await api.route("routeName").patch(defaultHandler);

      verify(() => apiClient.serve(any())).called(1);
      verify(() => resourceClient.declare(any())).called(1);
    });

    test('HTTP OPTIONS Worker build', () async {
      var oidc = OidcOptions(
        "oidcName",
        "oidcIssuer",
        ["oidcAudience"],
        ["oidcScopes"],
      );

      var api = Api("apiName", opts: ApiOptions(security: [oidc]));

      when(() => apiClient.serve(any()))
          .thenAnswer((_) => MockResponseStream.fromIterable([
                $p.ServerMessage(
                    id: "id-1",
                    registrationResponse: $p.RegistrationResponse()),
                $p.ServerMessage(id: "id-2", httpRequest: $p.HttpRequest())
              ]));

      when(() => resourceClient.declare(any())).thenAnswer(
          (_) => MockResponseFuture.value(ResourceDeclareResponse()));

      await api.route("routeName").options(defaultHandler);

      verify(() => apiClient.serve(any())).called(1);
      verify(() => resourceClient.declare(any())).called(1);
    });

    test('HTTP DELETE Worker build', () async {
      var oidc = OidcOptions(
        "oidcName",
        "oidcIssuer",
        ["oidcAudience"],
        ["oidcScopes"],
      );

      var api = Api("apiName", opts: ApiOptions(security: [oidc]));

      when(() => apiClient.serve(any()))
          .thenAnswer((_) => MockResponseStream.fromIterable([
                $p.ServerMessage(
                    id: "id-1",
                    registrationResponse: $p.RegistrationResponse()),
                $p.ServerMessage(id: "id-2", httpRequest: $p.HttpRequest())
              ]));

      when(() => resourceClient.declare(any())).thenAnswer(
          (_) => MockResponseFuture.value(ResourceDeclareResponse()));

      await api.route("routeName").delete(defaultHandler);

      verify(() => apiClient.serve(any())).called(1);
      verify(() => resourceClient.declare(any())).called(1);
    });

    test('HTTP ALL Worker build', () async {
      var oidc = OidcOptions(
        "oidcName",
        "oidcIssuer",
        ["oidcAudience"],
        ["oidcScopes"],
      );

      var api = Api("apiName", opts: ApiOptions(security: [oidc]));

      when(() => apiClient.serve(any()))
          .thenAnswer((_) => MockResponseStream.fromIterable([
                $p.ServerMessage(
                    id: "id-1",
                    registrationResponse: $p.RegistrationResponse()),
                $p.ServerMessage(id: "id-2", httpRequest: $p.HttpRequest())
              ]));

      when(() => resourceClient.declare(any())).thenAnswer(
          (_) => MockResponseFuture.value(ResourceDeclareResponse()));

      await api.route("routeName").all(defaultHandler);

      verify(() => apiClient.serve(any())).called(1);
      verify(() => resourceClient.declare(any())).called(1);
    });
  });

  test('HTTP worker error', () async {
    var api = Api("apiName");

    when(() => apiClient.serve(any()))
        .thenAnswer((_) => MockResponseStream.fromIterable([
              $p.ServerMessage(
                  id: "id-1", registrationResponse: $p.RegistrationResponse()),
              $p.ServerMessage(id: "id-2", httpRequest: $p.HttpRequest())
            ]));

    await api
        .route("routeName")
        .get((ctx) async => throw Exception("test application error"));

    verify(() => apiClient.serve(any())).called(1);
  });
}
