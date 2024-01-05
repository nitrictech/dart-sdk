//
//  Generated code. Do not modify.
//  source: contracts/proto/document/v1/document.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use collectionDescriptor instead')
const Collection$json = {
  '1': 'Collection',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'parent', '3': 2, '4': 1, '5': 11, '6': '.nitric.document.v1.Key', '10': 'parent'},
  ],
};

/// Descriptor for `Collection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionDescriptor = $convert.base64Decode(
    'CgpDb2xsZWN0aW9uEhIKBG5hbWUYASABKAlSBG5hbWUSLwoGcGFyZW50GAIgASgLMhcubml0cm'
    'ljLmRvY3VtZW50LnYxLktleVIGcGFyZW50');

@$core.Deprecated('Use keyDescriptor instead')
const Key$json = {
  '1': 'Key',
  '2': [
    {'1': 'collection', '3': 1, '4': 1, '5': 11, '6': '.nitric.document.v1.Collection', '10': 'collection'},
    {'1': 'id', '3': 2, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `Key`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyDescriptor = $convert.base64Decode(
    'CgNLZXkSPgoKY29sbGVjdGlvbhgBIAEoCzIeLm5pdHJpYy5kb2N1bWVudC52MS5Db2xsZWN0aW'
    '9uUgpjb2xsZWN0aW9uEg4KAmlkGAIgASgJUgJpZA==');

@$core.Deprecated('Use documentDescriptor instead')
const Document$json = {
  '1': 'Document',
  '2': [
    {'1': 'content', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'content'},
    {'1': 'key', '3': 2, '4': 1, '5': 11, '6': '.nitric.document.v1.Key', '10': 'key'},
  ],
};

/// Descriptor for `Document`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentDescriptor = $convert.base64Decode(
    'CghEb2N1bWVudBIxCgdjb250ZW50GAEgASgLMhcuZ29vZ2xlLnByb3RvYnVmLlN0cnVjdFIHY2'
    '9udGVudBIpCgNrZXkYAiABKAsyFy5uaXRyaWMuZG9jdW1lbnQudjEuS2V5UgNrZXk=');

@$core.Deprecated('Use expressionValueDescriptor instead')
const ExpressionValue$json = {
  '1': 'ExpressionValue',
  '2': [
    {'1': 'int_value', '3': 1, '4': 1, '5': 3, '9': 0, '10': 'intValue'},
    {'1': 'double_value', '3': 2, '4': 1, '5': 1, '9': 0, '10': 'doubleValue'},
    {'1': 'string_value', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'stringValue'},
    {'1': 'bool_value', '3': 4, '4': 1, '5': 8, '9': 0, '10': 'boolValue'},
  ],
  '8': [
    {'1': 'kind'},
  ],
};

/// Descriptor for `ExpressionValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List expressionValueDescriptor = $convert.base64Decode(
    'Cg9FeHByZXNzaW9uVmFsdWUSHQoJaW50X3ZhbHVlGAEgASgDSABSCGludFZhbHVlEiMKDGRvdW'
    'JsZV92YWx1ZRgCIAEoAUgAUgtkb3VibGVWYWx1ZRIjCgxzdHJpbmdfdmFsdWUYAyABKAlIAFIL'
    'c3RyaW5nVmFsdWUSHwoKYm9vbF92YWx1ZRgEIAEoCEgAUglib29sVmFsdWVCBgoEa2luZA==');

@$core.Deprecated('Use expressionDescriptor instead')
const Expression$json = {
  '1': 'Expression',
  '2': [
    {'1': 'operand', '3': 1, '4': 1, '5': 9, '10': 'operand'},
    {'1': 'operator', '3': 2, '4': 1, '5': 9, '10': 'operator'},
    {'1': 'value', '3': 3, '4': 1, '5': 11, '6': '.nitric.document.v1.ExpressionValue', '10': 'value'},
  ],
};

/// Descriptor for `Expression`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List expressionDescriptor = $convert.base64Decode(
    'CgpFeHByZXNzaW9uEhgKB29wZXJhbmQYASABKAlSB29wZXJhbmQSGgoIb3BlcmF0b3IYAiABKA'
    'lSCG9wZXJhdG9yEjkKBXZhbHVlGAMgASgLMiMubml0cmljLmRvY3VtZW50LnYxLkV4cHJlc3Np'
    'b25WYWx1ZVIFdmFsdWU=');

@$core.Deprecated('Use documentGetRequestDescriptor instead')
const DocumentGetRequest$json = {
  '1': 'DocumentGetRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 11, '6': '.nitric.document.v1.Key', '10': 'key'},
  ],
};

/// Descriptor for `DocumentGetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentGetRequestDescriptor = $convert.base64Decode(
    'ChJEb2N1bWVudEdldFJlcXVlc3QSKQoDa2V5GAEgASgLMhcubml0cmljLmRvY3VtZW50LnYxLk'
    'tleVIDa2V5');

@$core.Deprecated('Use documentGetResponseDescriptor instead')
const DocumentGetResponse$json = {
  '1': 'DocumentGetResponse',
  '2': [
    {'1': 'document', '3': 1, '4': 1, '5': 11, '6': '.nitric.document.v1.Document', '10': 'document'},
  ],
};

/// Descriptor for `DocumentGetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentGetResponseDescriptor = $convert.base64Decode(
    'ChNEb2N1bWVudEdldFJlc3BvbnNlEjgKCGRvY3VtZW50GAEgASgLMhwubml0cmljLmRvY3VtZW'
    '50LnYxLkRvY3VtZW50Ughkb2N1bWVudA==');

@$core.Deprecated('Use documentSetRequestDescriptor instead')
const DocumentSetRequest$json = {
  '1': 'DocumentSetRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 11, '6': '.nitric.document.v1.Key', '10': 'key'},
    {'1': 'content', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Struct', '10': 'content'},
  ],
};

/// Descriptor for `DocumentSetRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentSetRequestDescriptor = $convert.base64Decode(
    'ChJEb2N1bWVudFNldFJlcXVlc3QSKQoDa2V5GAEgASgLMhcubml0cmljLmRvY3VtZW50LnYxLk'
    'tleVIDa2V5EjEKB2NvbnRlbnQYAyABKAsyFy5nb29nbGUucHJvdG9idWYuU3RydWN0Ugdjb250'
    'ZW50');

@$core.Deprecated('Use documentSetResponseDescriptor instead')
const DocumentSetResponse$json = {
  '1': 'DocumentSetResponse',
};

/// Descriptor for `DocumentSetResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentSetResponseDescriptor = $convert.base64Decode(
    'ChNEb2N1bWVudFNldFJlc3BvbnNl');

@$core.Deprecated('Use documentDeleteRequestDescriptor instead')
const DocumentDeleteRequest$json = {
  '1': 'DocumentDeleteRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 11, '6': '.nitric.document.v1.Key', '10': 'key'},
  ],
};

/// Descriptor for `DocumentDeleteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentDeleteRequestDescriptor = $convert.base64Decode(
    'ChVEb2N1bWVudERlbGV0ZVJlcXVlc3QSKQoDa2V5GAEgASgLMhcubml0cmljLmRvY3VtZW50Ln'
    'YxLktleVIDa2V5');

@$core.Deprecated('Use documentDeleteResponseDescriptor instead')
const DocumentDeleteResponse$json = {
  '1': 'DocumentDeleteResponse',
};

/// Descriptor for `DocumentDeleteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentDeleteResponseDescriptor = $convert.base64Decode(
    'ChZEb2N1bWVudERlbGV0ZVJlc3BvbnNl');

@$core.Deprecated('Use documentQueryRequestDescriptor instead')
const DocumentQueryRequest$json = {
  '1': 'DocumentQueryRequest',
  '2': [
    {'1': 'collection', '3': 1, '4': 1, '5': 11, '6': '.nitric.document.v1.Collection', '10': 'collection'},
    {'1': 'expressions', '3': 3, '4': 3, '5': 11, '6': '.nitric.document.v1.Expression', '10': 'expressions'},
    {'1': 'limit', '3': 4, '4': 1, '5': 5, '10': 'limit'},
    {'1': 'paging_token', '3': 5, '4': 3, '5': 11, '6': '.nitric.document.v1.DocumentQueryRequest.PagingTokenEntry', '10': 'pagingToken'},
  ],
  '3': [DocumentQueryRequest_PagingTokenEntry$json],
};

@$core.Deprecated('Use documentQueryRequestDescriptor instead')
const DocumentQueryRequest_PagingTokenEntry$json = {
  '1': 'PagingTokenEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `DocumentQueryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentQueryRequestDescriptor = $convert.base64Decode(
    'ChREb2N1bWVudFF1ZXJ5UmVxdWVzdBI+Cgpjb2xsZWN0aW9uGAEgASgLMh4ubml0cmljLmRvY3'
    'VtZW50LnYxLkNvbGxlY3Rpb25SCmNvbGxlY3Rpb24SQAoLZXhwcmVzc2lvbnMYAyADKAsyHi5u'
    'aXRyaWMuZG9jdW1lbnQudjEuRXhwcmVzc2lvblILZXhwcmVzc2lvbnMSFAoFbGltaXQYBCABKA'
    'VSBWxpbWl0ElwKDHBhZ2luZ190b2tlbhgFIAMoCzI5Lm5pdHJpYy5kb2N1bWVudC52MS5Eb2N1'
    'bWVudFF1ZXJ5UmVxdWVzdC5QYWdpbmdUb2tlbkVudHJ5UgtwYWdpbmdUb2tlbho+ChBQYWdpbm'
    'dUb2tlbkVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use documentQueryResponseDescriptor instead')
const DocumentQueryResponse$json = {
  '1': 'DocumentQueryResponse',
  '2': [
    {'1': 'documents', '3': 1, '4': 3, '5': 11, '6': '.nitric.document.v1.Document', '10': 'documents'},
    {'1': 'paging_token', '3': 2, '4': 3, '5': 11, '6': '.nitric.document.v1.DocumentQueryResponse.PagingTokenEntry', '10': 'pagingToken'},
  ],
  '3': [DocumentQueryResponse_PagingTokenEntry$json],
};

@$core.Deprecated('Use documentQueryResponseDescriptor instead')
const DocumentQueryResponse_PagingTokenEntry$json = {
  '1': 'PagingTokenEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `DocumentQueryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentQueryResponseDescriptor = $convert.base64Decode(
    'ChVEb2N1bWVudFF1ZXJ5UmVzcG9uc2USOgoJZG9jdW1lbnRzGAEgAygLMhwubml0cmljLmRvY3'
    'VtZW50LnYxLkRvY3VtZW50Uglkb2N1bWVudHMSXQoMcGFnaW5nX3Rva2VuGAIgAygLMjoubml0'
    'cmljLmRvY3VtZW50LnYxLkRvY3VtZW50UXVlcnlSZXNwb25zZS5QYWdpbmdUb2tlbkVudHJ5Ug'
    'twYWdpbmdUb2tlbho+ChBQYWdpbmdUb2tlbkVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZh'
    'bHVlGAIgASgJUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use documentQueryStreamRequestDescriptor instead')
const DocumentQueryStreamRequest$json = {
  '1': 'DocumentQueryStreamRequest',
  '2': [
    {'1': 'collection', '3': 1, '4': 1, '5': 11, '6': '.nitric.document.v1.Collection', '10': 'collection'},
    {'1': 'expressions', '3': 3, '4': 3, '5': 11, '6': '.nitric.document.v1.Expression', '10': 'expressions'},
    {'1': 'limit', '3': 4, '4': 1, '5': 5, '10': 'limit'},
  ],
};

/// Descriptor for `DocumentQueryStreamRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentQueryStreamRequestDescriptor = $convert.base64Decode(
    'ChpEb2N1bWVudFF1ZXJ5U3RyZWFtUmVxdWVzdBI+Cgpjb2xsZWN0aW9uGAEgASgLMh4ubml0cm'
    'ljLmRvY3VtZW50LnYxLkNvbGxlY3Rpb25SCmNvbGxlY3Rpb24SQAoLZXhwcmVzc2lvbnMYAyAD'
    'KAsyHi5uaXRyaWMuZG9jdW1lbnQudjEuRXhwcmVzc2lvblILZXhwcmVzc2lvbnMSFAoFbGltaX'
    'QYBCABKAVSBWxpbWl0');

@$core.Deprecated('Use documentQueryStreamResponseDescriptor instead')
const DocumentQueryStreamResponse$json = {
  '1': 'DocumentQueryStreamResponse',
  '2': [
    {'1': 'document', '3': 1, '4': 1, '5': 11, '6': '.nitric.document.v1.Document', '10': 'document'},
  ],
};

/// Descriptor for `DocumentQueryStreamResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentQueryStreamResponseDescriptor = $convert.base64Decode(
    'ChtEb2N1bWVudFF1ZXJ5U3RyZWFtUmVzcG9uc2USOAoIZG9jdW1lbnQYASABKAsyHC5uaXRyaW'
    'MuZG9jdW1lbnQudjEuRG9jdW1lbnRSCGRvY3VtZW50');

