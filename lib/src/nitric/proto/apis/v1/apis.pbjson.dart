//
//  Generated code. Do not modify.
//  source: nitric/proto/apis/v1/apis.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use apiDetailsRequestDescriptor instead')
const ApiDetailsRequest$json = {
  '1': 'ApiDetailsRequest',
  '2': [
    {'1': 'api_name', '3': 1, '4': 1, '5': 9, '10': 'apiName'},
  ],
};

/// Descriptor for `ApiDetailsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiDetailsRequestDescriptor = $convert.base64Decode(
    'ChFBcGlEZXRhaWxzUmVxdWVzdBIZCghhcGlfbmFtZRgBIAEoCVIHYXBpTmFtZQ==');

@$core.Deprecated('Use apiDetailsResponseDescriptor instead')
const ApiDetailsResponse$json = {
  '1': 'ApiDetailsResponse',
  '2': [
    {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `ApiDetailsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiDetailsResponseDescriptor = $convert
    .base64Decode('ChJBcGlEZXRhaWxzUmVzcG9uc2USEAoDdXJsGAEgASgJUgN1cmw=');

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage$json = {
  '1': 'ClientMessage',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {
      '1': 'registration_request',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.apis.v1.RegistrationRequest',
      '9': 0,
      '10': 'registrationRequest'
    },
    {
      '1': 'http_response',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.apis.v1.HttpResponse',
      '9': 0,
      '10': 'httpResponse'
    },
  ],
  '8': [
    {'1': 'content'},
  ],
};

/// Descriptor for `ClientMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientMessageDescriptor = $convert.base64Decode(
    'Cg1DbGllbnRNZXNzYWdlEg4KAmlkGAEgASgJUgJpZBJeChRyZWdpc3RyYXRpb25fcmVxdWVzdB'
    'gCIAEoCzIpLm5pdHJpYy5wcm90by5hcGlzLnYxLlJlZ2lzdHJhdGlvblJlcXVlc3RIAFITcmVn'
    'aXN0cmF0aW9uUmVxdWVzdBJJCg1odHRwX3Jlc3BvbnNlGAMgASgLMiIubml0cmljLnByb3RvLm'
    'FwaXMudjEuSHR0cFJlc3BvbnNlSABSDGh0dHBSZXNwb25zZUIJCgdjb250ZW50');

@$core.Deprecated('Use headerValueDescriptor instead')
const HeaderValue$json = {
  '1': 'HeaderValue',
  '2': [
    {'1': 'value', '3': 1, '4': 3, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `HeaderValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List headerValueDescriptor =
    $convert.base64Decode('CgtIZWFkZXJWYWx1ZRIUCgV2YWx1ZRgBIAMoCVIFdmFsdWU=');

@$core.Deprecated('Use queryValueDescriptor instead')
const QueryValue$json = {
  '1': 'QueryValue',
  '2': [
    {'1': 'value', '3': 1, '4': 3, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `QueryValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryValueDescriptor =
    $convert.base64Decode('CgpRdWVyeVZhbHVlEhQKBXZhbHVlGAEgAygJUgV2YWx1ZQ==');

@$core.Deprecated('Use httpRequestDescriptor instead')
const HttpRequest$json = {
  '1': 'HttpRequest',
  '2': [
    {'1': 'method', '3': 1, '4': 1, '5': 9, '10': 'method'},
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    {
      '1': 'headers',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.nitric.proto.apis.v1.HttpRequest.HeadersEntry',
      '10': 'headers'
    },
    {
      '1': 'query_params',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.nitric.proto.apis.v1.HttpRequest.QueryParamsEntry',
      '10': 'queryParams'
    },
    {
      '1': 'path_params',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.nitric.proto.apis.v1.HttpRequest.PathParamsEntry',
      '10': 'pathParams'
    },
    {'1': 'body', '3': 6, '4': 1, '5': 12, '10': 'body'},
  ],
  '3': [
    HttpRequest_HeadersEntry$json,
    HttpRequest_QueryParamsEntry$json,
    HttpRequest_PathParamsEntry$json
  ],
};

@$core.Deprecated('Use httpRequestDescriptor instead')
const HttpRequest_HeadersEntry$json = {
  '1': 'HeadersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.apis.v1.HeaderValue',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use httpRequestDescriptor instead')
const HttpRequest_QueryParamsEntry$json = {
  '1': 'QueryParamsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.apis.v1.QueryValue',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use httpRequestDescriptor instead')
const HttpRequest_PathParamsEntry$json = {
  '1': 'PathParamsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `HttpRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List httpRequestDescriptor = $convert.base64Decode(
    'CgtIdHRwUmVxdWVzdBIWCgZtZXRob2QYASABKAlSBm1ldGhvZBISCgRwYXRoGAIgASgJUgRwYX'
    'RoEkgKB2hlYWRlcnMYAyADKAsyLi5uaXRyaWMucHJvdG8uYXBpcy52MS5IdHRwUmVxdWVzdC5I'
    'ZWFkZXJzRW50cnlSB2hlYWRlcnMSVQoMcXVlcnlfcGFyYW1zGAQgAygLMjIubml0cmljLnByb3'
    'RvLmFwaXMudjEuSHR0cFJlcXVlc3QuUXVlcnlQYXJhbXNFbnRyeVILcXVlcnlQYXJhbXMSUgoL'
    'cGF0aF9wYXJhbXMYBSADKAsyMS5uaXRyaWMucHJvdG8uYXBpcy52MS5IdHRwUmVxdWVzdC5QYX'
    'RoUGFyYW1zRW50cnlSCnBhdGhQYXJhbXMSEgoEYm9keRgGIAEoDFIEYm9keRpdCgxIZWFkZXJz'
    'RW50cnkSEAoDa2V5GAEgASgJUgNrZXkSNwoFdmFsdWUYAiABKAsyIS5uaXRyaWMucHJvdG8uYX'
    'Bpcy52MS5IZWFkZXJWYWx1ZVIFdmFsdWU6AjgBGmAKEFF1ZXJ5UGFyYW1zRW50cnkSEAoDa2V5'
    'GAEgASgJUgNrZXkSNgoFdmFsdWUYAiABKAsyIC5uaXRyaWMucHJvdG8uYXBpcy52MS5RdWVyeV'
    'ZhbHVlUgV2YWx1ZToCOAEaPQoPUGF0aFBhcmFtc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQK'
    'BXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use httpResponseDescriptor instead')
const HttpResponse$json = {
  '1': 'HttpResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 5, '10': 'status'},
    {
      '1': 'headers',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.nitric.proto.apis.v1.HttpResponse.HeadersEntry',
      '10': 'headers'
    },
    {'1': 'body', '3': 3, '4': 1, '5': 12, '10': 'body'},
  ],
  '3': [HttpResponse_HeadersEntry$json],
};

@$core.Deprecated('Use httpResponseDescriptor instead')
const HttpResponse_HeadersEntry$json = {
  '1': 'HeadersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.apis.v1.HeaderValue',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `HttpResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List httpResponseDescriptor = $convert.base64Decode(
    'CgxIdHRwUmVzcG9uc2USFgoGc3RhdHVzGAEgASgFUgZzdGF0dXMSSQoHaGVhZGVycxgCIAMoCz'
    'IvLm5pdHJpYy5wcm90by5hcGlzLnYxLkh0dHBSZXNwb25zZS5IZWFkZXJzRW50cnlSB2hlYWRl'
    'cnMSEgoEYm9keRgDIAEoDFIEYm9keRpdCgxIZWFkZXJzRW50cnkSEAoDa2V5GAEgASgJUgNrZX'
    'kSNwoFdmFsdWUYAiABKAsyIS5uaXRyaWMucHJvdG8uYXBpcy52MS5IZWFkZXJWYWx1ZVIFdmFs'
    'dWU6AjgB');

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage$json = {
  '1': 'ServerMessage',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {
      '1': 'registration_response',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.apis.v1.RegistrationResponse',
      '9': 0,
      '10': 'registrationResponse'
    },
    {
      '1': 'http_request',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.apis.v1.HttpRequest',
      '9': 0,
      '10': 'httpRequest'
    },
  ],
  '8': [
    {'1': 'content'},
  ],
};

/// Descriptor for `ServerMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverMessageDescriptor = $convert.base64Decode(
    'Cg1TZXJ2ZXJNZXNzYWdlEg4KAmlkGAEgASgJUgJpZBJhChVyZWdpc3RyYXRpb25fcmVzcG9uc2'
    'UYAiABKAsyKi5uaXRyaWMucHJvdG8uYXBpcy52MS5SZWdpc3RyYXRpb25SZXNwb25zZUgAUhRy'
    'ZWdpc3RyYXRpb25SZXNwb25zZRJGCgxodHRwX3JlcXVlc3QYAyABKAsyIS5uaXRyaWMucHJvdG'
    '8uYXBpcy52MS5IdHRwUmVxdWVzdEgAUgtodHRwUmVxdWVzdEIJCgdjb250ZW50');

@$core.Deprecated('Use registrationResponseDescriptor instead')
const RegistrationResponse$json = {
  '1': 'RegistrationResponse',
};

/// Descriptor for `RegistrationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registrationResponseDescriptor =
    $convert.base64Decode('ChRSZWdpc3RyYXRpb25SZXNwb25zZQ==');

@$core.Deprecated('Use apiWorkerScopesDescriptor instead')
const ApiWorkerScopes$json = {
  '1': 'ApiWorkerScopes',
  '2': [
    {'1': 'scopes', '3': 1, '4': 3, '5': 9, '10': 'scopes'},
  ],
};

/// Descriptor for `ApiWorkerScopes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiWorkerScopesDescriptor = $convert
    .base64Decode('Cg9BcGlXb3JrZXJTY29wZXMSFgoGc2NvcGVzGAEgAygJUgZzY29wZXM=');

@$core.Deprecated('Use apiWorkerOptionsDescriptor instead')
const ApiWorkerOptions$json = {
  '1': 'ApiWorkerOptions',
  '2': [
    {
      '1': 'security',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.nitric.proto.apis.v1.ApiWorkerOptions.SecurityEntry',
      '10': 'security'
    },
    {
      '1': 'security_disabled',
      '3': 2,
      '4': 1,
      '5': 8,
      '10': 'securityDisabled'
    },
  ],
  '3': [ApiWorkerOptions_SecurityEntry$json],
};

@$core.Deprecated('Use apiWorkerOptionsDescriptor instead')
const ApiWorkerOptions_SecurityEntry$json = {
  '1': 'SecurityEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.apis.v1.ApiWorkerScopes',
      '10': 'value'
    },
  ],
  '7': {'7': true},
};

/// Descriptor for `ApiWorkerOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiWorkerOptionsDescriptor = $convert.base64Decode(
    'ChBBcGlXb3JrZXJPcHRpb25zElAKCHNlY3VyaXR5GAEgAygLMjQubml0cmljLnByb3RvLmFwaX'
    'MudjEuQXBpV29ya2VyT3B0aW9ucy5TZWN1cml0eUVudHJ5UghzZWN1cml0eRIrChFzZWN1cml0'
    'eV9kaXNhYmxlZBgCIAEoCFIQc2VjdXJpdHlEaXNhYmxlZBpiCg1TZWN1cml0eUVudHJ5EhAKA2'
    'tleRgBIAEoCVIDa2V5EjsKBXZhbHVlGAIgASgLMiUubml0cmljLnByb3RvLmFwaXMudjEuQXBp'
    'V29ya2VyU2NvcGVzUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use registrationRequestDescriptor instead')
const RegistrationRequest$json = {
  '1': 'RegistrationRequest',
  '2': [
    {'1': 'api', '3': 1, '4': 1, '5': 9, '10': 'api'},
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    {'1': 'methods', '3': 3, '4': 3, '5': 9, '10': 'methods'},
    {
      '1': 'options',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.nitric.proto.apis.v1.ApiWorkerOptions',
      '10': 'options'
    },
  ],
};

/// Descriptor for `RegistrationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registrationRequestDescriptor = $convert.base64Decode(
    'ChNSZWdpc3RyYXRpb25SZXF1ZXN0EhAKA2FwaRgBIAEoCVIDYXBpEhIKBHBhdGgYAiABKAlSBH'
    'BhdGgSGAoHbWV0aG9kcxgDIAMoCVIHbWV0aG9kcxJACgdvcHRpb25zGAQgASgLMiYubml0cmlj'
    'LnByb3RvLmFwaXMudjEuQXBpV29ya2VyT3B0aW9uc1IHb3B0aW9ucw==');
