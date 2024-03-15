import 'package:mocktail/mocktail.dart';
import 'package:nitric_sdk/src/nitric/proto/resources/v1/resources.pb.dart';
import 'package:nitric_sdk/src/resources/common.dart';
import 'package:test/test.dart';

import '../common.dart';

void main() {
  late MockResourceClient resourceClient;

  setUp(() => resourceClient = MockResourceClient());

  tearDown(() => reset(resourceClient));

  test("Test build oidc", () async {
    var opts =
        OidcOptions("oidcName", "http://test-issuer", ["users"], ["user:read"]);

    expect(opts.name, "oidcName");
    expect(opts.issuer, "http://test-issuer");
    expect(opts.audiences, ["users"]);
    expect(opts.scopes, ["user:read"]);
  });

  test("Test register oidc", () async {
    var opts = OidcOptions(
        "oidcName", "http://test-issuer", ["users"], ["user:read"],
        client: resourceClient);

    var oidc = OidcSecurityDefinition("apiName", opts);

    var req = ResourceDeclareRequest(
        id: ResourceIdentifier(
            name: "oidcName", type: ResourceType.ApiSecurityDefinition),
        apiSecurityDefinition: ApiSecurityDefinitionResource(
            apiName: "apiName",
            oidc: ApiOpenIdConnectionDefinition(
                audiences: ["users"], issuer: "http://test-issuer")));

    var resp = ResourceDeclareResponse();

    when(() => resourceClient.declare(req))
        .thenAnswer((_) => MockResponseFuture.value(resp));

    await oidc.register();

    verify(() => resourceClient.declare(req)).called(1);
  });
}
