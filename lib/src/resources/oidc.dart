part of 'common.dart';

class OidcOptions {
  String name;
  String issuer;
  List<String> audiences;
  List<String> scopes;

  OidcOptions(this.name, this.issuer, this.audiences, this.scopes);
}

typedef SecurityOption = OidcOptions Function(List<String> scopes);

Future<OidcSecurityDefinition> _attachOidc(
    String apiName, OidcOptions options) async {
  var secDef = OidcSecurityDefinition(apiName, options);
  await secDef.register();
  return secDef;
}

class OidcSecurityDefinition extends Resource {
  String apiName;
  late String ruleName;
  late String issuer;
  late List<String> audiences;

  OidcSecurityDefinition(this.apiName, OidcOptions options,
      {$p.ResourcesClient? client})
      : super("${options.name}-$apiName", client) {
    ruleName = options.name;
    issuer = options.issuer;
    audiences = options.audiences;
  }

  @override
  Future<void> register() async {
    var resource = $p.ResourceIdentifier(
      name: ruleName,
      type: $p.ResourceType.ApiSecurityDefinition,
    );

    var oidc =
        ApiOpenIdConnectionDefinition(issuer: issuer, audiences: audiences);
    var securityDefinition =
        ApiSecurityDefinitionResource(apiName: apiName, oidc: oidc);

    await client.declare($p.ResourceDeclareRequest(
        id: resource, apiSecurityDefinition: securityDefinition));

    await channel.shutdown();
  }
}
