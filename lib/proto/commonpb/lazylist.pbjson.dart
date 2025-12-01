//
//  Generated code. Do not modify.
//  source: proto/commonpb/lazylist.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use lazyAccountDescriptor instead')
const LazyAccount$json = {
  '1': 'LazyAccount',
  '2': [
    {'1': 'account_id', '3': 1, '4': 1, '5': 13, '10': 'accountId'},
    {'1': 'correspondent', '3': 2, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'branch', '3': 3, '4': 1, '5': 9, '10': 'branch'},
    {'1': 'account_no', '3': 4, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'account_name', '3': 5, '4': 1, '5': 9, '10': 'accountName'},
    {'1': 'master_account_no', '3': 6, '4': 1, '5': 9, '10': 'masterAccountNo'},
    {'1': 'rep', '3': 7, '4': 1, '5': 9, '10': 'rep'},
    {'1': 'broker', '3': 8, '4': 1, '5': 9, '10': 'broker'},
  ],
};

/// Descriptor for `LazyAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lazyAccountDescriptor = $convert.base64Decode(
    'CgtMYXp5QWNjb3VudBIdCgphY2NvdW50X2lkGAEgASgNUglhY2NvdW50SWQSJAoNY29ycmVzcG'
    '9uZGVudBgCIAEoCVINY29ycmVzcG9uZGVudBIWCgZicmFuY2gYAyABKAlSBmJyYW5jaBIdCgph'
    'Y2NvdW50X25vGAQgASgJUglhY2NvdW50Tm8SIQoMYWNjb3VudF9uYW1lGAUgASgJUgthY2NvdW'
    '50TmFtZRIqChFtYXN0ZXJfYWNjb3VudF9ubxgGIAEoCVIPbWFzdGVyQWNjb3VudE5vEhAKA3Jl'
    'cBgHIAEoCVIDcmVwEhYKBmJyb2tlchgIIAEoCVIGYnJva2Vy');

@$core.Deprecated('Use lazyAccountResponseDescriptor instead')
const LazyAccountResponse$json = {
  '1': 'LazyAccountResponse',
  '2': [
    {'1': 'accounts', '3': 1, '4': 3, '5': 11, '6': '.commonpb.LazyAccount', '10': 'accounts'},
  ],
};

/// Descriptor for `LazyAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lazyAccountResponseDescriptor = $convert.base64Decode(
    'ChNMYXp5QWNjb3VudFJlc3BvbnNlEjEKCGFjY291bnRzGAEgAygLMhUuY29tbW9ucGIuTGF6eU'
    'FjY291bnRSCGFjY291bnRz');

@$core.Deprecated('Use lazyAccountRequestDescriptor instead')
const LazyAccountRequest$json = {
  '1': 'LazyAccountRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'limit', '3': 2, '4': 1, '5': 13, '10': 'limit'},
    {'1': 'order_by', '3': 3, '4': 1, '5': 9, '10': 'orderBy'},
    {'1': 'col_type', '3': 4, '4': 1, '5': 9, '10': 'colType'},
    {'1': 'correspondent', '3': 5, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'is_active', '3': 6, '4': 1, '5': 8, '10': 'isActive'},
  ],
};

/// Descriptor for `LazyAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lazyAccountRequestDescriptor = $convert.base64Decode(
    'ChJMYXp5QWNjb3VudFJlcXVlc3QSEAoDa2V5GAEgASgJUgNrZXkSFAoFbGltaXQYAiABKA1SBW'
    'xpbWl0EhkKCG9yZGVyX2J5GAMgASgJUgdvcmRlckJ5EhkKCGNvbF90eXBlGAQgASgJUgdjb2xU'
    'eXBlEiQKDWNvcnJlc3BvbmRlbnQYBSABKAlSDWNvcnJlc3BvbmRlbnQSGwoJaXNfYWN0aXZlGA'
    'YgASgIUghpc0FjdGl2ZQ==');

@$core.Deprecated('Use repAdvisorDescriptor instead')
const RepAdvisor$json = {
  '1': 'RepAdvisor',
  '2': [
    {'1': 'first_name', '3': 1, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'last_name', '3': 2, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'correspondent', '3': 3, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'rep_code', '3': 4, '4': 1, '5': 9, '10': 'repCode'},
  ],
};

/// Descriptor for `RepAdvisor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repAdvisorDescriptor = $convert.base64Decode(
    'CgpSZXBBZHZpc29yEh0KCmZpcnN0X25hbWUYASABKAlSCWZpcnN0TmFtZRIbCglsYXN0X25hbW'
    'UYAiABKAlSCGxhc3ROYW1lEiQKDWNvcnJlc3BvbmRlbnQYAyABKAlSDWNvcnJlc3BvbmRlbnQS'
    'GQoIcmVwX2NvZGUYBCABKAlSB3JlcENvZGU=');

@$core.Deprecated('Use lazyRepAdvisorResponseDescriptor instead')
const LazyRepAdvisorResponse$json = {
  '1': 'LazyRepAdvisorResponse',
  '2': [
    {'1': 'repAdvisors', '3': 1, '4': 3, '5': 11, '6': '.commonpb.RepAdvisor', '10': 'repAdvisors'},
  ],
};

/// Descriptor for `LazyRepAdvisorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lazyRepAdvisorResponseDescriptor = $convert.base64Decode(
    'ChZMYXp5UmVwQWR2aXNvclJlc3BvbnNlEjYKC3JlcEFkdmlzb3JzGAEgAygLMhQuY29tbW9ucG'
    'IuUmVwQWR2aXNvclILcmVwQWR2aXNvcnM=');

@$core.Deprecated('Use lazySecurityDescriptor instead')
const LazySecurity$json = {
  '1': 'LazySecurity',
  '2': [
    {'1': 'symbol', '3': 1, '4': 1, '5': 9, '10': 'symbol'},
    {'1': 'symbol_description', '3': 2, '4': 1, '5': 9, '10': 'symbolDescription'},
    {'1': 'cusip', '3': 3, '4': 1, '5': 9, '10': 'cusip'},
  ],
};

/// Descriptor for `LazySecurity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lazySecurityDescriptor = $convert.base64Decode(
    'CgxMYXp5U2VjdXJpdHkSFgoGc3ltYm9sGAEgASgJUgZzeW1ib2wSLQoSc3ltYm9sX2Rlc2NyaX'
    'B0aW9uGAIgASgJUhFzeW1ib2xEZXNjcmlwdGlvbhIUCgVjdXNpcBgDIAEoCVIFY3VzaXA=');

@$core.Deprecated('Use lazyLoadSecurityRequestDescriptor instead')
const LazyLoadSecurityRequest$json = {
  '1': 'LazyLoadSecurityRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'limit', '3': 2, '4': 1, '5': 13, '10': 'limit'},
    {'1': 'field', '3': 3, '4': 1, '5': 9, '10': 'field'},
    {'1': 'asset_type', '3': 4, '4': 1, '5': 9, '10': 'assetType'},
    {'1': 'is_active', '3': 5, '4': 1, '5': 8, '10': 'isActive'},
  ],
};

/// Descriptor for `LazyLoadSecurityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lazyLoadSecurityRequestDescriptor = $convert.base64Decode(
    'ChdMYXp5TG9hZFNlY3VyaXR5UmVxdWVzdBIQCgNrZXkYASABKAlSA2tleRIUCgVsaW1pdBgCIA'
    'EoDVIFbGltaXQSFAoFZmllbGQYAyABKAlSBWZpZWxkEh0KCmFzc2V0X3R5cGUYBCABKAlSCWFz'
    'c2V0VHlwZRIbCglpc19hY3RpdmUYBSABKAhSCGlzQWN0aXZl');

@$core.Deprecated('Use lazyLoadSecurityResponseDescriptor instead')
const LazyLoadSecurityResponse$json = {
  '1': 'LazyLoadSecurityResponse',
  '2': [
    {'1': 'securities', '3': 1, '4': 3, '5': 11, '6': '.commonpb.LazySecurity', '10': 'securities'},
  ],
};

/// Descriptor for `LazyLoadSecurityResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lazyLoadSecurityResponseDescriptor = $convert.base64Decode(
    'ChhMYXp5TG9hZFNlY3VyaXR5UmVzcG9uc2USNgoKc2VjdXJpdGllcxgBIAMoCzIWLmNvbW1vbn'
    'BiLkxhenlTZWN1cml0eVIKc2VjdXJpdGllcw==');

@$core.Deprecated('Use accessibleRequestDescriptor instead')
const AccessibleRequest$json = {
  '1': 'AccessibleRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'correspondent', '3': 2, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'is_all_status', '3': 3, '4': 1, '5': 8, '10': 'isAllStatus'},
    {'1': 'type', '3': 4, '4': 1, '5': 9, '10': 'type'},
  ],
};

/// Descriptor for `AccessibleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessibleRequestDescriptor = $convert.base64Decode(
    'ChFBY2Nlc3NpYmxlUmVxdWVzdBIQCgNrZXkYASABKAlSA2tleRIkCg1jb3JyZXNwb25kZW50GA'
    'IgASgJUg1jb3JyZXNwb25kZW50EiIKDWlzX2FsbF9zdGF0dXMYAyABKAhSC2lzQWxsU3RhdHVz'
    'EhIKBHR5cGUYBCABKAlSBHR5cGU=');

@$core.Deprecated('Use accessibleCorrespondentResponseDescriptor instead')
const AccessibleCorrespondentResponse$json = {
  '1': 'AccessibleCorrespondentResponse',
  '2': [
    {'1': 'correspondents', '3': 1, '4': 3, '5': 9, '10': 'correspondents'},
  ],
};

/// Descriptor for `AccessibleCorrespondentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessibleCorrespondentResponseDescriptor = $convert.base64Decode(
    'Ch9BY2Nlc3NpYmxlQ29ycmVzcG9uZGVudFJlc3BvbnNlEiYKDmNvcnJlc3BvbmRlbnRzGAEgAy'
    'gJUg5jb3JyZXNwb25kZW50cw==');

@$core.Deprecated('Use lazyAdministratorEmailResponseDescriptor instead')
const LazyAdministratorEmailResponse$json = {
  '1': 'LazyAdministratorEmailResponse',
  '2': [
    {'1': 'administrator_emails', '3': 1, '4': 3, '5': 9, '10': 'administratorEmails'},
  ],
};

/// Descriptor for `LazyAdministratorEmailResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lazyAdministratorEmailResponseDescriptor = $convert.base64Decode(
    'Ch5MYXp5QWRtaW5pc3RyYXRvckVtYWlsUmVzcG9uc2USMQoUYWRtaW5pc3RyYXRvcl9lbWFpbH'
    'MYASADKAlSE2FkbWluaXN0cmF0b3JFbWFpbHM=');

