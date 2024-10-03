part of 'common.dart';

class OidcOptions {
  String name;
  String issuer;
  List<String> audiences;
  List<String> scopes;

  OidcOptions(this.name, this.issuer, this.audiences, this.scopes);
}

typedef SecurityOption = OidcOptions Function(List<String> scopes);

Future<void> attachOidc(String apiName, OidcOptions options) async {
  var secDef = OidcSecurityDefinition(apiName, options);

  await secDef.register();
}

class OidcSecurityDefinition extends Resource {
  String apiName;
  late String ruleName;
  late String issuer;
  late List<String> audiences;

  OidcSecurityDefinition(this.apiName, OidcOptions options)
      : super("${options.name}-$apiName") {
    ruleName = options.name;
    issuer = options.issuer;
    audiences = options.audiences;
  }

  @override
  ResourceDeclareRequest asRequest() {
    var resource = $p.ResourceIdentifier(
      name: ruleName,
      type: $p.ResourceType.ApiSecurityDefinition,
    );

    var oidc =
        ApiOpenIdConnectionDefinition(issuer: issuer, audiences: audiences);
    var securityDefinition =
        ApiSecurityDefinitionResource(apiName: apiName, oidc: oidc);

    return $p.ResourceDeclareRequest(
        id: resource, apiSecurityDefinition: securityDefinition);
  }
}
