//
//  Generated code. Do not modify.
//  source: contracts/proto/faas/v1/faas.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use bucketNotificationTypeDescriptor instead')
const BucketNotificationType$json = {
  '1': 'BucketNotificationType',
  '2': [
    {'1': 'All', '2': 0},
    {'1': 'Created', '2': 1},
    {'1': 'Deleted', '2': 2},
  ],
};

/// Descriptor for `BucketNotificationType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List bucketNotificationTypeDescriptor = $convert.base64Decode(
    'ChZCdWNrZXROb3RpZmljYXRpb25UeXBlEgcKA0FsbBAAEgsKB0NyZWF0ZWQQARILCgdEZWxldG'
    'VkEAI=');

@$core.Deprecated('Use websocketEventDescriptor instead')
const WebsocketEvent$json = {
  '1': 'WebsocketEvent',
  '2': [
    {'1': 'Connect', '2': 0},
    {'1': 'Disconnect', '2': 1},
    {'1': 'Message', '2': 2},
  ],
};

/// Descriptor for `WebsocketEvent`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List websocketEventDescriptor = $convert.base64Decode(
    'Cg5XZWJzb2NrZXRFdmVudBILCgdDb25uZWN0EAASDgoKRGlzY29ubmVjdBABEgsKB01lc3NhZ2'
    'UQAg==');

@$core.Deprecated('Use clientMessageDescriptor instead')
const ClientMessage$json = {
  '1': 'ClientMessage',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'init_request', '3': 2, '4': 1, '5': 11, '6': '.nitric.faas.v1.InitRequest', '9': 0, '10': 'initRequest'},
    {'1': 'trigger_response', '3': 3, '4': 1, '5': 11, '6': '.nitric.faas.v1.TriggerResponse', '9': 0, '10': 'triggerResponse'},
  ],
  '8': [
    {'1': 'content'},
  ],
};

/// Descriptor for `ClientMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientMessageDescriptor = $convert.base64Decode(
    'Cg1DbGllbnRNZXNzYWdlEg4KAmlkGAEgASgJUgJpZBJACgxpbml0X3JlcXVlc3QYAiABKAsyGy'
    '5uaXRyaWMuZmFhcy52MS5Jbml0UmVxdWVzdEgAUgtpbml0UmVxdWVzdBJMChB0cmlnZ2VyX3Jl'
    'c3BvbnNlGAMgASgLMh8ubml0cmljLmZhYXMudjEuVHJpZ2dlclJlc3BvbnNlSABSD3RyaWdnZX'
    'JSZXNwb25zZUIJCgdjb250ZW50');

@$core.Deprecated('Use serverMessageDescriptor instead')
const ServerMessage$json = {
  '1': 'ServerMessage',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'init_response', '3': 2, '4': 1, '5': 11, '6': '.nitric.faas.v1.InitResponse', '9': 0, '10': 'initResponse'},
    {'1': 'trigger_request', '3': 3, '4': 1, '5': 11, '6': '.nitric.faas.v1.TriggerRequest', '9': 0, '10': 'triggerRequest'},
  ],
  '8': [
    {'1': 'content'},
  ],
};

/// Descriptor for `ServerMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverMessageDescriptor = $convert.base64Decode(
    'Cg1TZXJ2ZXJNZXNzYWdlEg4KAmlkGAEgASgJUgJpZBJDCg1pbml0X3Jlc3BvbnNlGAIgASgLMh'
    'wubml0cmljLmZhYXMudjEuSW5pdFJlc3BvbnNlSABSDGluaXRSZXNwb25zZRJJCg90cmlnZ2Vy'
    'X3JlcXVlc3QYAyABKAsyHi5uaXRyaWMuZmFhcy52MS5UcmlnZ2VyUmVxdWVzdEgAUg50cmlnZ2'
    'VyUmVxdWVzdEIJCgdjb250ZW50');

@$core.Deprecated('Use apiWorkerScopesDescriptor instead')
const ApiWorkerScopes$json = {
  '1': 'ApiWorkerScopes',
  '2': [
    {'1': 'scopes', '3': 1, '4': 3, '5': 9, '10': 'scopes'},
  ],
};

/// Descriptor for `ApiWorkerScopes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiWorkerScopesDescriptor = $convert.base64Decode(
    'Cg9BcGlXb3JrZXJTY29wZXMSFgoGc2NvcGVzGAEgAygJUgZzY29wZXM=');

@$core.Deprecated('Use apiWorkerOptionsDescriptor instead')
const ApiWorkerOptions$json = {
  '1': 'ApiWorkerOptions',
  '2': [
    {'1': 'security', '3': 1, '4': 3, '5': 11, '6': '.nitric.faas.v1.ApiWorkerOptions.SecurityEntry', '10': 'security'},
    {'1': 'security_disabled', '3': 2, '4': 1, '5': 8, '10': 'securityDisabled'},
  ],
  '3': [ApiWorkerOptions_SecurityEntry$json],
};

@$core.Deprecated('Use apiWorkerOptionsDescriptor instead')
const ApiWorkerOptions_SecurityEntry$json = {
  '1': 'SecurityEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.nitric.faas.v1.ApiWorkerScopes', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ApiWorkerOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiWorkerOptionsDescriptor = $convert.base64Decode(
    'ChBBcGlXb3JrZXJPcHRpb25zEkoKCHNlY3VyaXR5GAEgAygLMi4ubml0cmljLmZhYXMudjEuQX'
    'BpV29ya2VyT3B0aW9ucy5TZWN1cml0eUVudHJ5UghzZWN1cml0eRIrChFzZWN1cml0eV9kaXNh'
    'YmxlZBgCIAEoCFIQc2VjdXJpdHlEaXNhYmxlZBpcCg1TZWN1cml0eUVudHJ5EhAKA2tleRgBIA'
    'EoCVIDa2V5EjUKBXZhbHVlGAIgASgLMh8ubml0cmljLmZhYXMudjEuQXBpV29ya2VyU2NvcGVz'
    'UgV2YWx1ZToCOAE=');

@$core.Deprecated('Use apiWorkerDescriptor instead')
const ApiWorker$json = {
  '1': 'ApiWorker',
  '2': [
    {'1': 'api', '3': 1, '4': 1, '5': 9, '10': 'api'},
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    {'1': 'methods', '3': 3, '4': 3, '5': 9, '10': 'methods'},
    {'1': 'options', '3': 4, '4': 1, '5': 11, '6': '.nitric.faas.v1.ApiWorkerOptions', '10': 'options'},
  ],
};

/// Descriptor for `ApiWorker`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List apiWorkerDescriptor = $convert.base64Decode(
    'CglBcGlXb3JrZXISEAoDYXBpGAEgASgJUgNhcGkSEgoEcGF0aBgCIAEoCVIEcGF0aBIYCgdtZX'
    'Rob2RzGAMgAygJUgdtZXRob2RzEjoKB29wdGlvbnMYBCABKAsyIC5uaXRyaWMuZmFhcy52MS5B'
    'cGlXb3JrZXJPcHRpb25zUgdvcHRpb25z');

@$core.Deprecated('Use subscriptionWorkerDescriptor instead')
const SubscriptionWorker$json = {
  '1': 'SubscriptionWorker',
  '2': [
    {'1': 'topic', '3': 1, '4': 1, '5': 9, '10': 'topic'},
  ],
};

/// Descriptor for `SubscriptionWorker`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscriptionWorkerDescriptor = $convert.base64Decode(
    'ChJTdWJzY3JpcHRpb25Xb3JrZXISFAoFdG9waWMYASABKAlSBXRvcGlj');

@$core.Deprecated('Use scheduleWorkerDescriptor instead')
const ScheduleWorker$json = {
  '1': 'ScheduleWorker',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'rate', '3': 10, '4': 1, '5': 11, '6': '.nitric.faas.v1.ScheduleRate', '9': 0, '10': 'rate'},
    {'1': 'cron', '3': 11, '4': 1, '5': 11, '6': '.nitric.faas.v1.ScheduleCron', '9': 0, '10': 'cron'},
  ],
  '8': [
    {'1': 'cadence'},
  ],
};

/// Descriptor for `ScheduleWorker`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduleWorkerDescriptor = $convert.base64Decode(
    'Cg5TY2hlZHVsZVdvcmtlchIQCgNrZXkYASABKAlSA2tleRIyCgRyYXRlGAogASgLMhwubml0cm'
    'ljLmZhYXMudjEuU2NoZWR1bGVSYXRlSABSBHJhdGUSMgoEY3JvbhgLIAEoCzIcLm5pdHJpYy5m'
    'YWFzLnYxLlNjaGVkdWxlQ3JvbkgAUgRjcm9uQgkKB2NhZGVuY2U=');

@$core.Deprecated('Use scheduleRateDescriptor instead')
const ScheduleRate$json = {
  '1': 'ScheduleRate',
  '2': [
    {'1': 'rate', '3': 1, '4': 1, '5': 9, '10': 'rate'},
  ],
};

/// Descriptor for `ScheduleRate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduleRateDescriptor = $convert.base64Decode(
    'CgxTY2hlZHVsZVJhdGUSEgoEcmF0ZRgBIAEoCVIEcmF0ZQ==');

@$core.Deprecated('Use scheduleCronDescriptor instead')
const ScheduleCron$json = {
  '1': 'ScheduleCron',
  '2': [
    {'1': 'cron', '3': 1, '4': 1, '5': 9, '10': 'cron'},
  ],
};

/// Descriptor for `ScheduleCron`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scheduleCronDescriptor = $convert.base64Decode(
    'CgxTY2hlZHVsZUNyb24SEgoEY3JvbhgBIAEoCVIEY3Jvbg==');

@$core.Deprecated('Use httpWorkerDescriptor instead')
const HttpWorker$json = {
  '1': 'HttpWorker',
  '2': [
    {'1': 'port', '3': 1, '4': 1, '5': 5, '10': 'port'},
  ],
};

/// Descriptor for `HttpWorker`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List httpWorkerDescriptor = $convert.base64Decode(
    'CgpIdHRwV29ya2VyEhIKBHBvcnQYASABKAVSBHBvcnQ=');

@$core.Deprecated('Use bucketNotificationWorkerDescriptor instead')
const BucketNotificationWorker$json = {
  '1': 'BucketNotificationWorker',
  '2': [
    {'1': 'bucket', '3': 1, '4': 1, '5': 9, '10': 'bucket'},
    {'1': 'config', '3': 2, '4': 1, '5': 11, '6': '.nitric.faas.v1.BucketNotificationConfig', '10': 'config'},
  ],
};

/// Descriptor for `BucketNotificationWorker`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bucketNotificationWorkerDescriptor = $convert.base64Decode(
    'ChhCdWNrZXROb3RpZmljYXRpb25Xb3JrZXISFgoGYnVja2V0GAEgASgJUgZidWNrZXQSQAoGY2'
    '9uZmlnGAIgASgLMigubml0cmljLmZhYXMudjEuQnVja2V0Tm90aWZpY2F0aW9uQ29uZmlnUgZj'
    'b25maWc=');

@$core.Deprecated('Use bucketNotificationConfigDescriptor instead')
const BucketNotificationConfig$json = {
  '1': 'BucketNotificationConfig',
  '2': [
    {'1': 'notification_type', '3': 1, '4': 1, '5': 14, '6': '.nitric.faas.v1.BucketNotificationType', '10': 'notificationType'},
    {'1': 'notification_prefix_filter', '3': 2, '4': 1, '5': 9, '10': 'notificationPrefixFilter'},
  ],
};

/// Descriptor for `BucketNotificationConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bucketNotificationConfigDescriptor = $convert.base64Decode(
    'ChhCdWNrZXROb3RpZmljYXRpb25Db25maWcSUwoRbm90aWZpY2F0aW9uX3R5cGUYASABKA4yJi'
    '5uaXRyaWMuZmFhcy52MS5CdWNrZXROb3RpZmljYXRpb25UeXBlUhBub3RpZmljYXRpb25UeXBl'
    'EjwKGm5vdGlmaWNhdGlvbl9wcmVmaXhfZmlsdGVyGAIgASgJUhhub3RpZmljYXRpb25QcmVmaX'
    'hGaWx0ZXI=');

@$core.Deprecated('Use websocketWorkerDescriptor instead')
const WebsocketWorker$json = {
  '1': 'WebsocketWorker',
  '2': [
    {'1': 'socket', '3': 1, '4': 1, '5': 9, '10': 'socket'},
    {'1': 'event', '3': 2, '4': 1, '5': 14, '6': '.nitric.faas.v1.WebsocketEvent', '10': 'event'},
  ],
};

/// Descriptor for `WebsocketWorker`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketWorkerDescriptor = $convert.base64Decode(
    'Cg9XZWJzb2NrZXRXb3JrZXISFgoGc29ja2V0GAEgASgJUgZzb2NrZXQSNAoFZXZlbnQYAiABKA'
    '4yHi5uaXRyaWMuZmFhcy52MS5XZWJzb2NrZXRFdmVudFIFZXZlbnQ=');

@$core.Deprecated('Use initRequestDescriptor instead')
const InitRequest$json = {
  '1': 'InitRequest',
  '2': [
    {'1': 'api', '3': 10, '4': 1, '5': 11, '6': '.nitric.faas.v1.ApiWorker', '9': 0, '10': 'api'},
    {'1': 'subscription', '3': 11, '4': 1, '5': 11, '6': '.nitric.faas.v1.SubscriptionWorker', '9': 0, '10': 'subscription'},
    {'1': 'schedule', '3': 12, '4': 1, '5': 11, '6': '.nitric.faas.v1.ScheduleWorker', '9': 0, '10': 'schedule'},
    {'1': 'bucket_notification', '3': 13, '4': 1, '5': 11, '6': '.nitric.faas.v1.BucketNotificationWorker', '9': 0, '10': 'bucketNotification'},
    {'1': 'websocket', '3': 14, '4': 1, '5': 11, '6': '.nitric.faas.v1.WebsocketWorker', '9': 0, '10': 'websocket'},
    {'1': 'http_worker', '3': 15, '4': 1, '5': 11, '6': '.nitric.faas.v1.HttpWorker', '9': 0, '10': 'httpWorker'},
  ],
  '8': [
    {'1': 'Worker'},
  ],
};

/// Descriptor for `InitRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initRequestDescriptor = $convert.base64Decode(
    'CgtJbml0UmVxdWVzdBItCgNhcGkYCiABKAsyGS5uaXRyaWMuZmFhcy52MS5BcGlXb3JrZXJIAF'
    'IDYXBpEkgKDHN1YnNjcmlwdGlvbhgLIAEoCzIiLm5pdHJpYy5mYWFzLnYxLlN1YnNjcmlwdGlv'
    'bldvcmtlckgAUgxzdWJzY3JpcHRpb24SPAoIc2NoZWR1bGUYDCABKAsyHi5uaXRyaWMuZmFhcy'
    '52MS5TY2hlZHVsZVdvcmtlckgAUghzY2hlZHVsZRJbChNidWNrZXRfbm90aWZpY2F0aW9uGA0g'
    'ASgLMigubml0cmljLmZhYXMudjEuQnVja2V0Tm90aWZpY2F0aW9uV29ya2VySABSEmJ1Y2tldE'
    '5vdGlmaWNhdGlvbhI/Cgl3ZWJzb2NrZXQYDiABKAsyHy5uaXRyaWMuZmFhcy52MS5XZWJzb2Nr'
    'ZXRXb3JrZXJIAFIJd2Vic29ja2V0Ej0KC2h0dHBfd29ya2VyGA8gASgLMhoubml0cmljLmZhYX'
    'MudjEuSHR0cFdvcmtlckgAUgpodHRwV29ya2VyQggKBldvcmtlcg==');

@$core.Deprecated('Use initResponseDescriptor instead')
const InitResponse$json = {
  '1': 'InitResponse',
};

/// Descriptor for `InitResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List initResponseDescriptor = $convert.base64Decode(
    'CgxJbml0UmVzcG9uc2U=');

@$core.Deprecated('Use traceContextDescriptor instead')
const TraceContext$json = {
  '1': 'TraceContext',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 11, '6': '.nitric.faas.v1.TraceContext.ValuesEntry', '10': 'values'},
  ],
  '3': [TraceContext_ValuesEntry$json],
};

@$core.Deprecated('Use traceContextDescriptor instead')
const TraceContext_ValuesEntry$json = {
  '1': 'ValuesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `TraceContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List traceContextDescriptor = $convert.base64Decode(
    'CgxUcmFjZUNvbnRleHQSQAoGdmFsdWVzGAEgAygLMigubml0cmljLmZhYXMudjEuVHJhY2VDb2'
    '50ZXh0LlZhbHVlc0VudHJ5UgZ2YWx1ZXMaOQoLVmFsdWVzRW50cnkSEAoDa2V5GAEgASgJUgNr'
    'ZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use triggerRequestDescriptor instead')
const TriggerRequest$json = {
  '1': 'TriggerRequest',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
    {'1': 'mime_type', '3': 2, '4': 1, '5': 9, '10': 'mimeType'},
    {'1': 'trace_context', '3': 10, '4': 1, '5': 11, '6': '.nitric.faas.v1.TraceContext', '10': 'traceContext'},
    {'1': 'http', '3': 3, '4': 1, '5': 11, '6': '.nitric.faas.v1.HttpTriggerContext', '9': 0, '10': 'http'},
    {'1': 'topic', '3': 4, '4': 1, '5': 11, '6': '.nitric.faas.v1.TopicTriggerContext', '9': 0, '10': 'topic'},
    {'1': 'notification', '3': 5, '4': 1, '5': 11, '6': '.nitric.faas.v1.NotificationTriggerContext', '9': 0, '10': 'notification'},
    {'1': 'websocket', '3': 6, '4': 1, '5': 11, '6': '.nitric.faas.v1.WebsocketTriggerContext', '9': 0, '10': 'websocket'},
  ],
  '8': [
    {'1': 'context'},
  ],
};

/// Descriptor for `TriggerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List triggerRequestDescriptor = $convert.base64Decode(
    'Cg5UcmlnZ2VyUmVxdWVzdBISCgRkYXRhGAEgASgMUgRkYXRhEhsKCW1pbWVfdHlwZRgCIAEoCV'
    'IIbWltZVR5cGUSQQoNdHJhY2VfY29udGV4dBgKIAEoCzIcLm5pdHJpYy5mYWFzLnYxLlRyYWNl'
    'Q29udGV4dFIMdHJhY2VDb250ZXh0EjgKBGh0dHAYAyABKAsyIi5uaXRyaWMuZmFhcy52MS5IdH'
    'RwVHJpZ2dlckNvbnRleHRIAFIEaHR0cBI7CgV0b3BpYxgEIAEoCzIjLm5pdHJpYy5mYWFzLnYx'
    'LlRvcGljVHJpZ2dlckNvbnRleHRIAFIFdG9waWMSUAoMbm90aWZpY2F0aW9uGAUgASgLMioubm'
    'l0cmljLmZhYXMudjEuTm90aWZpY2F0aW9uVHJpZ2dlckNvbnRleHRIAFIMbm90aWZpY2F0aW9u'
    'EkcKCXdlYnNvY2tldBgGIAEoCzInLm5pdHJpYy5mYWFzLnYxLldlYnNvY2tldFRyaWdnZXJDb2'
    '50ZXh0SABSCXdlYnNvY2tldEIJCgdjb250ZXh0');

@$core.Deprecated('Use headerValueDescriptor instead')
const HeaderValue$json = {
  '1': 'HeaderValue',
  '2': [
    {'1': 'value', '3': 1, '4': 3, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `HeaderValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List headerValueDescriptor = $convert.base64Decode(
    'CgtIZWFkZXJWYWx1ZRIUCgV2YWx1ZRgBIAMoCVIFdmFsdWU=');

@$core.Deprecated('Use queryValueDescriptor instead')
const QueryValue$json = {
  '1': 'QueryValue',
  '2': [
    {'1': 'value', '3': 1, '4': 3, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `QueryValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryValueDescriptor = $convert.base64Decode(
    'CgpRdWVyeVZhbHVlEhQKBXZhbHVlGAEgAygJUgV2YWx1ZQ==');

@$core.Deprecated('Use httpTriggerContextDescriptor instead')
const HttpTriggerContext$json = {
  '1': 'HttpTriggerContext',
  '2': [
    {'1': 'method', '3': 1, '4': 1, '5': 9, '10': 'method'},
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    {
      '1': 'headers_old',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.nitric.faas.v1.HttpTriggerContext.HeadersOldEntry',
      '8': {'3': true},
      '10': 'headersOld',
    },
    {
      '1': 'query_params_old',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.nitric.faas.v1.HttpTriggerContext.QueryParamsOldEntry',
      '8': {'3': true},
      '10': 'queryParamsOld',
    },
    {'1': 'headers', '3': 5, '4': 3, '5': 11, '6': '.nitric.faas.v1.HttpTriggerContext.HeadersEntry', '10': 'headers'},
    {'1': 'query_params', '3': 6, '4': 3, '5': 11, '6': '.nitric.faas.v1.HttpTriggerContext.QueryParamsEntry', '10': 'queryParams'},
    {'1': 'path_params', '3': 7, '4': 3, '5': 11, '6': '.nitric.faas.v1.HttpTriggerContext.PathParamsEntry', '10': 'pathParams'},
  ],
  '3': [HttpTriggerContext_HeadersOldEntry$json, HttpTriggerContext_QueryParamsOldEntry$json, HttpTriggerContext_HeadersEntry$json, HttpTriggerContext_QueryParamsEntry$json, HttpTriggerContext_PathParamsEntry$json],
};

@$core.Deprecated('Use httpTriggerContextDescriptor instead')
const HttpTriggerContext_HeadersOldEntry$json = {
  '1': 'HeadersOldEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use httpTriggerContextDescriptor instead')
const HttpTriggerContext_QueryParamsOldEntry$json = {
  '1': 'QueryParamsOldEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use httpTriggerContextDescriptor instead')
const HttpTriggerContext_HeadersEntry$json = {
  '1': 'HeadersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.nitric.faas.v1.HeaderValue', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use httpTriggerContextDescriptor instead')
const HttpTriggerContext_QueryParamsEntry$json = {
  '1': 'QueryParamsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.nitric.faas.v1.QueryValue', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use httpTriggerContextDescriptor instead')
const HttpTriggerContext_PathParamsEntry$json = {
  '1': 'PathParamsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `HttpTriggerContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List httpTriggerContextDescriptor = $convert.base64Decode(
    'ChJIdHRwVHJpZ2dlckNvbnRleHQSFgoGbWV0aG9kGAEgASgJUgZtZXRob2QSEgoEcGF0aBgCIA'
    'EoCVIEcGF0aBJXCgtoZWFkZXJzX29sZBgDIAMoCzIyLm5pdHJpYy5mYWFzLnYxLkh0dHBUcmln'
    'Z2VyQ29udGV4dC5IZWFkZXJzT2xkRW50cnlCAhgBUgpoZWFkZXJzT2xkEmQKEHF1ZXJ5X3Bhcm'
    'Ftc19vbGQYBCADKAsyNi5uaXRyaWMuZmFhcy52MS5IdHRwVHJpZ2dlckNvbnRleHQuUXVlcnlQ'
    'YXJhbXNPbGRFbnRyeUICGAFSDnF1ZXJ5UGFyYW1zT2xkEkkKB2hlYWRlcnMYBSADKAsyLy5uaX'
    'RyaWMuZmFhcy52MS5IdHRwVHJpZ2dlckNvbnRleHQuSGVhZGVyc0VudHJ5UgdoZWFkZXJzElYK'
    'DHF1ZXJ5X3BhcmFtcxgGIAMoCzIzLm5pdHJpYy5mYWFzLnYxLkh0dHBUcmlnZ2VyQ29udGV4dC'
    '5RdWVyeVBhcmFtc0VudHJ5UgtxdWVyeVBhcmFtcxJTCgtwYXRoX3BhcmFtcxgHIAMoCzIyLm5p'
    'dHJpYy5mYWFzLnYxLkh0dHBUcmlnZ2VyQ29udGV4dC5QYXRoUGFyYW1zRW50cnlSCnBhdGhQYX'
    'JhbXMaPQoPSGVhZGVyc09sZEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJ'
    'UgV2YWx1ZToCOAEaQQoTUXVlcnlQYXJhbXNPbGRFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCg'
    'V2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBGlcKDEhlYWRlcnNFbnRyeRIQCgNrZXkYASABKAlSA2tl'
    'eRIxCgV2YWx1ZRgCIAEoCzIbLm5pdHJpYy5mYWFzLnYxLkhlYWRlclZhbHVlUgV2YWx1ZToCOA'
    'EaWgoQUXVlcnlQYXJhbXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIwCgV2YWx1ZRgCIAEoCzIa'
    'Lm5pdHJpYy5mYWFzLnYxLlF1ZXJ5VmFsdWVSBXZhbHVlOgI4ARo9Cg9QYXRoUGFyYW1zRW50cn'
    'kSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use topicTriggerContextDescriptor instead')
const TopicTriggerContext$json = {
  '1': 'TopicTriggerContext',
  '2': [
    {'1': 'topic', '3': 1, '4': 1, '5': 9, '10': 'topic'},
  ],
};

/// Descriptor for `TopicTriggerContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicTriggerContextDescriptor = $convert.base64Decode(
    'ChNUb3BpY1RyaWdnZXJDb250ZXh0EhQKBXRvcGljGAEgASgJUgV0b3BpYw==');

@$core.Deprecated('Use bucketNotificationDescriptor instead')
const BucketNotification$json = {
  '1': 'BucketNotification',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.nitric.faas.v1.BucketNotificationType', '10': 'type'},
  ],
};

/// Descriptor for `BucketNotification`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bucketNotificationDescriptor = $convert.base64Decode(
    'ChJCdWNrZXROb3RpZmljYXRpb24SEAoDa2V5GAEgASgJUgNrZXkSOgoEdHlwZRgCIAEoDjImLm'
    '5pdHJpYy5mYWFzLnYxLkJ1Y2tldE5vdGlmaWNhdGlvblR5cGVSBHR5cGU=');

@$core.Deprecated('Use notificationTriggerContextDescriptor instead')
const NotificationTriggerContext$json = {
  '1': 'NotificationTriggerContext',
  '2': [
    {'1': 'source', '3': 1, '4': 1, '5': 9, '10': 'source'},
    {'1': 'bucket', '3': 10, '4': 1, '5': 11, '6': '.nitric.faas.v1.BucketNotification', '9': 0, '10': 'bucket'},
  ],
  '8': [
    {'1': 'notification'},
  ],
};

/// Descriptor for `NotificationTriggerContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notificationTriggerContextDescriptor = $convert.base64Decode(
    'ChpOb3RpZmljYXRpb25UcmlnZ2VyQ29udGV4dBIWCgZzb3VyY2UYASABKAlSBnNvdXJjZRI8Cg'
    'ZidWNrZXQYCiABKAsyIi5uaXRyaWMuZmFhcy52MS5CdWNrZXROb3RpZmljYXRpb25IAFIGYnVj'
    'a2V0Qg4KDG5vdGlmaWNhdGlvbg==');

@$core.Deprecated('Use websocketTriggerContextDescriptor instead')
const WebsocketTriggerContext$json = {
  '1': 'WebsocketTriggerContext',
  '2': [
    {'1': 'socket', '3': 1, '4': 1, '5': 9, '10': 'socket'},
    {'1': 'event', '3': 2, '4': 1, '5': 14, '6': '.nitric.faas.v1.WebsocketEvent', '10': 'event'},
    {'1': 'connectionId', '3': 3, '4': 1, '5': 9, '10': 'connectionId'},
    {'1': 'query_params', '3': 6, '4': 3, '5': 11, '6': '.nitric.faas.v1.WebsocketTriggerContext.QueryParamsEntry', '10': 'queryParams'},
  ],
  '3': [WebsocketTriggerContext_QueryParamsEntry$json],
};

@$core.Deprecated('Use websocketTriggerContextDescriptor instead')
const WebsocketTriggerContext_QueryParamsEntry$json = {
  '1': 'QueryParamsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.nitric.faas.v1.QueryValue', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `WebsocketTriggerContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketTriggerContextDescriptor = $convert.base64Decode(
    'ChdXZWJzb2NrZXRUcmlnZ2VyQ29udGV4dBIWCgZzb2NrZXQYASABKAlSBnNvY2tldBI0CgVldm'
    'VudBgCIAEoDjIeLm5pdHJpYy5mYWFzLnYxLldlYnNvY2tldEV2ZW50UgVldmVudBIiCgxjb25u'
    'ZWN0aW9uSWQYAyABKAlSDGNvbm5lY3Rpb25JZBJbCgxxdWVyeV9wYXJhbXMYBiADKAsyOC5uaX'
    'RyaWMuZmFhcy52MS5XZWJzb2NrZXRUcmlnZ2VyQ29udGV4dC5RdWVyeVBhcmFtc0VudHJ5Ugtx'
    'dWVyeVBhcmFtcxpaChBRdWVyeVBhcmFtc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EjAKBXZhbH'
    'VlGAIgASgLMhoubml0cmljLmZhYXMudjEuUXVlcnlWYWx1ZVIFdmFsdWU6AjgB');

@$core.Deprecated('Use triggerResponseDescriptor instead')
const TriggerResponse$json = {
  '1': 'TriggerResponse',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 12, '10': 'data'},
    {'1': 'http', '3': 10, '4': 1, '5': 11, '6': '.nitric.faas.v1.HttpResponseContext', '9': 0, '10': 'http'},
    {'1': 'topic', '3': 11, '4': 1, '5': 11, '6': '.nitric.faas.v1.TopicResponseContext', '9': 0, '10': 'topic'},
    {'1': 'notification', '3': 12, '4': 1, '5': 11, '6': '.nitric.faas.v1.NotificationResponseContext', '9': 0, '10': 'notification'},
    {'1': 'websocket', '3': 13, '4': 1, '5': 11, '6': '.nitric.faas.v1.WebsocketResponseContext', '9': 0, '10': 'websocket'},
  ],
  '8': [
    {'1': 'context'},
  ],
};

/// Descriptor for `TriggerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List triggerResponseDescriptor = $convert.base64Decode(
    'Cg9UcmlnZ2VyUmVzcG9uc2USEgoEZGF0YRgBIAEoDFIEZGF0YRI5CgRodHRwGAogASgLMiMubm'
    'l0cmljLmZhYXMudjEuSHR0cFJlc3BvbnNlQ29udGV4dEgAUgRodHRwEjwKBXRvcGljGAsgASgL'
    'MiQubml0cmljLmZhYXMudjEuVG9waWNSZXNwb25zZUNvbnRleHRIAFIFdG9waWMSUQoMbm90aW'
    'ZpY2F0aW9uGAwgASgLMisubml0cmljLmZhYXMudjEuTm90aWZpY2F0aW9uUmVzcG9uc2VDb250'
    'ZXh0SABSDG5vdGlmaWNhdGlvbhJICgl3ZWJzb2NrZXQYDSABKAsyKC5uaXRyaWMuZmFhcy52MS'
    '5XZWJzb2NrZXRSZXNwb25zZUNvbnRleHRIAFIJd2Vic29ja2V0QgkKB2NvbnRleHQ=');

@$core.Deprecated('Use httpResponseContextDescriptor instead')
const HttpResponseContext$json = {
  '1': 'HttpResponseContext',
  '2': [
    {
      '1': 'headers_old',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.nitric.faas.v1.HttpResponseContext.HeadersOldEntry',
      '8': {'3': true},
      '10': 'headersOld',
    },
    {'1': 'status', '3': 2, '4': 1, '5': 5, '10': 'status'},
    {'1': 'headers', '3': 3, '4': 3, '5': 11, '6': '.nitric.faas.v1.HttpResponseContext.HeadersEntry', '10': 'headers'},
  ],
  '3': [HttpResponseContext_HeadersOldEntry$json, HttpResponseContext_HeadersEntry$json],
};

@$core.Deprecated('Use httpResponseContextDescriptor instead')
const HttpResponseContext_HeadersOldEntry$json = {
  '1': 'HeadersOldEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use httpResponseContextDescriptor instead')
const HttpResponseContext_HeadersEntry$json = {
  '1': 'HeadersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.nitric.faas.v1.HeaderValue', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `HttpResponseContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List httpResponseContextDescriptor = $convert.base64Decode(
    'ChNIdHRwUmVzcG9uc2VDb250ZXh0ElgKC2hlYWRlcnNfb2xkGAEgAygLMjMubml0cmljLmZhYX'
    'MudjEuSHR0cFJlc3BvbnNlQ29udGV4dC5IZWFkZXJzT2xkRW50cnlCAhgBUgpoZWFkZXJzT2xk'
    'EhYKBnN0YXR1cxgCIAEoBVIGc3RhdHVzEkoKB2hlYWRlcnMYAyADKAsyMC5uaXRyaWMuZmFhcy'
    '52MS5IdHRwUmVzcG9uc2VDb250ZXh0LkhlYWRlcnNFbnRyeVIHaGVhZGVycxo9Cg9IZWFkZXJz'
    'T2xkRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4ARpXCg'
    'xIZWFkZXJzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSMQoFdmFsdWUYAiABKAsyGy5uaXRyaWMu'
    'ZmFhcy52MS5IZWFkZXJWYWx1ZVIFdmFsdWU6AjgB');

@$core.Deprecated('Use topicResponseContextDescriptor instead')
const TopicResponseContext$json = {
  '1': 'TopicResponseContext',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `TopicResponseContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topicResponseContextDescriptor = $convert.base64Decode(
    'ChRUb3BpY1Jlc3BvbnNlQ29udGV4dBIYCgdzdWNjZXNzGAEgASgIUgdzdWNjZXNz');

@$core.Deprecated('Use notificationResponseContextDescriptor instead')
const NotificationResponseContext$json = {
  '1': 'NotificationResponseContext',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `NotificationResponseContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notificationResponseContextDescriptor = $convert.base64Decode(
    'ChtOb3RpZmljYXRpb25SZXNwb25zZUNvbnRleHQSGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw'
    '==');

@$core.Deprecated('Use websocketResponseContextDescriptor instead')
const WebsocketResponseContext$json = {
  '1': 'WebsocketResponseContext',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `WebsocketResponseContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List websocketResponseContextDescriptor = $convert.base64Decode(
    'ChhXZWJzb2NrZXRSZXNwb25zZUNvbnRleHQSGAoHc3VjY2VzcxgBIAEoCFIHc3VjY2Vzcw==');

