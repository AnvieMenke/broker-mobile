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

@$core.Deprecated('Use lazyAccountNoRequestDescriptor instead')
const LazyAccountNoRequest$json = {
  '1': 'LazyAccountNoRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'correspondent', '3': 2, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'type', '3': 3, '4': 1, '5': 9, '10': 'type'},
    {'1': 'entry_type', '3': 4, '4': 1, '5': 9, '10': 'entryType'},
    {'1': 'limit', '3': 5, '4': 1, '5': 13, '10': 'limit'},
    {'1': 'status', '3': 6, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `LazyAccountNoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lazyAccountNoRequestDescriptor = $convert.base64Decode(
    'ChRMYXp5QWNjb3VudE5vUmVxdWVzdBIQCgNrZXkYASABKAlSA2tleRIkCg1jb3JyZXNwb25kZW'
    '50GAIgASgJUg1jb3JyZXNwb25kZW50EhIKBHR5cGUYAyABKAlSBHR5cGUSHQoKZW50cnlfdHlw'
    'ZRgEIAEoCVIJZW50cnlUeXBlEhQKBWxpbWl0GAUgASgNUgVsaW1pdBIWCgZzdGF0dXMYBiABKA'
    'lSBnN0YXR1cw==');

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

@$core.Deprecated('Use accountNoDescriptor instead')
const AccountNo$json = {
  '1': 'AccountNo',
  '2': [
    {'1': 'account_no', '3': 1, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'account_name', '3': 2, '4': 1, '5': 9, '10': 'accountName'},
    {'1': 'account_id', '3': 3, '4': 1, '5': 13, '10': 'accountId'},
    {'1': 'correspondent', '3': 4, '4': 1, '5': 9, '10': 'correspondent'},
  ],
};

/// Descriptor for `AccountNo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountNoDescriptor = $convert.base64Decode(
    'CglBY2NvdW50Tm8SHQoKYWNjb3VudF9ubxgBIAEoCVIJYWNjb3VudE5vEiEKDGFjY291bnRfbm'
    'FtZRgCIAEoCVILYWNjb3VudE5hbWUSHQoKYWNjb3VudF9pZBgDIAEoDVIJYWNjb3VudElkEiQK'
    'DWNvcnJlc3BvbmRlbnQYBCABKAlSDWNvcnJlc3BvbmRlbnQ=');

@$core.Deprecated('Use masterAccountNoDescriptor instead')
const MasterAccountNo$json = {
  '1': 'MasterAccountNo',
  '2': [
    {'1': 'master_account_no', '3': 1, '4': 1, '5': 9, '10': 'masterAccountNo'},
    {'1': 'account_name', '3': 2, '4': 1, '5': 9, '10': 'accountName'},
  ],
};

/// Descriptor for `MasterAccountNo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List masterAccountNoDescriptor = $convert.base64Decode(
    'Cg9NYXN0ZXJBY2NvdW50Tm8SKgoRbWFzdGVyX2FjY291bnRfbm8YASABKAlSD21hc3RlckFjY2'
    '91bnRObxIhCgxhY2NvdW50X25hbWUYAiABKAlSC2FjY291bnROYW1l');

@$core.Deprecated('Use repDescriptor instead')
const Rep$json = {
  '1': 'Rep',
  '2': [
    {'1': 'rep', '3': 1, '4': 1, '5': 9, '10': 'rep'},
  ],
};

/// Descriptor for `Rep`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repDescriptor = $convert.base64Decode(
    'CgNSZXASEAoDcmVwGAEgASgJUgNyZXA=');

@$core.Deprecated('Use branchDescriptor instead')
const Branch$json = {
  '1': 'Branch',
  '2': [
    {'1': 'branch', '3': 1, '4': 1, '5': 9, '10': 'branch'},
  ],
};

/// Descriptor for `Branch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List branchDescriptor = $convert.base64Decode(
    'CgZCcmFuY2gSFgoGYnJhbmNoGAEgASgJUgZicmFuY2g=');

@$core.Deprecated('Use emptyRequestDescriptor instead')
const EmptyRequest$json = {
  '1': 'EmptyRequest',
};

/// Descriptor for `EmptyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyRequestDescriptor = $convert.base64Decode(
    'CgxFbXB0eVJlcXVlc3Q=');

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

@$core.Deprecated('Use accessibleAccountNoResponseDescriptor instead')
const AccessibleAccountNoResponse$json = {
  '1': 'AccessibleAccountNoResponse',
  '2': [
    {'1': 'account_nos', '3': 1, '4': 3, '5': 11, '6': '.commonpb.AccountNo', '10': 'accountNos'},
  ],
};

/// Descriptor for `AccessibleAccountNoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessibleAccountNoResponseDescriptor = $convert.base64Decode(
    'ChtBY2Nlc3NpYmxlQWNjb3VudE5vUmVzcG9uc2USNAoLYWNjb3VudF9ub3MYASADKAsyEy5jb2'
    '1tb25wYi5BY2NvdW50Tm9SCmFjY291bnROb3M=');

@$core.Deprecated('Use accessibleMasterAccountNoResponseDescriptor instead')
const AccessibleMasterAccountNoResponse$json = {
  '1': 'AccessibleMasterAccountNoResponse',
  '2': [
    {'1': 'master_account_nos', '3': 1, '4': 3, '5': 11, '6': '.commonpb.MasterAccountNo', '10': 'masterAccountNos'},
  ],
};

/// Descriptor for `AccessibleMasterAccountNoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessibleMasterAccountNoResponseDescriptor = $convert.base64Decode(
    'CiFBY2Nlc3NpYmxlTWFzdGVyQWNjb3VudE5vUmVzcG9uc2USRwoSbWFzdGVyX2FjY291bnRfbm'
    '9zGAEgAygLMhkuY29tbW9ucGIuTWFzdGVyQWNjb3VudE5vUhBtYXN0ZXJBY2NvdW50Tm9z');

@$core.Deprecated('Use accessibleAccountNameResponseDescriptor instead')
const AccessibleAccountNameResponse$json = {
  '1': 'AccessibleAccountNameResponse',
  '2': [
    {'1': 'account_names', '3': 1, '4': 3, '5': 9, '10': 'accountNames'},
  ],
};

/// Descriptor for `AccessibleAccountNameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessibleAccountNameResponseDescriptor = $convert.base64Decode(
    'Ch1BY2Nlc3NpYmxlQWNjb3VudE5hbWVSZXNwb25zZRIjCg1hY2NvdW50X25hbWVzGAEgAygJUg'
    'xhY2NvdW50TmFtZXM=');

@$core.Deprecated('Use accessibleRepResponseDescriptor instead')
const AccessibleRepResponse$json = {
  '1': 'AccessibleRepResponse',
  '2': [
    {'1': 'reps', '3': 1, '4': 3, '5': 11, '6': '.commonpb.Rep', '10': 'reps'},
  ],
};

/// Descriptor for `AccessibleRepResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessibleRepResponseDescriptor = $convert.base64Decode(
    'ChVBY2Nlc3NpYmxlUmVwUmVzcG9uc2USIQoEcmVwcxgBIAMoCzINLmNvbW1vbnBiLlJlcFIEcm'
    'Vwcw==');

@$core.Deprecated('Use accessibleBranchResponseDescriptor instead')
const AccessibleBranchResponse$json = {
  '1': 'AccessibleBranchResponse',
  '2': [
    {'1': 'branches', '3': 1, '4': 3, '5': 11, '6': '.commonpb.Branch', '10': 'branches'},
  ],
};

/// Descriptor for `AccessibleBranchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessibleBranchResponseDescriptor = $convert.base64Decode(
    'ChhBY2Nlc3NpYmxlQnJhbmNoUmVzcG9uc2USLAoIYnJhbmNoZXMYASADKAsyEC5jb21tb25wYi'
    '5CcmFuY2hSCGJyYW5jaGVz');

@$core.Deprecated('Use lazyLoadRequestDescriptor instead')
const LazyLoadRequest$json = {
  '1': 'LazyLoadRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'limit', '3': 2, '4': 1, '5': 13, '10': 'limit'},
    {'1': 'field', '3': 3, '4': 1, '5': 9, '10': 'field'},
  ],
};

/// Descriptor for `LazyLoadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lazyLoadRequestDescriptor = $convert.base64Decode(
    'Cg9MYXp5TG9hZFJlcXVlc3QSEAoDa2V5GAEgASgJUgNrZXkSFAoFbGltaXQYAiABKA1SBWxpbW'
    'l0EhQKBWZpZWxkGAMgASgJUgVmaWVsZA==');

@$core.Deprecated('Use lazyCusipDescriptor instead')
const LazyCusip$json = {
  '1': 'LazyCusip',
  '2': [
    {'1': 'cusip', '3': 1, '4': 1, '5': 9, '10': 'cusip'},
  ],
};

/// Descriptor for `LazyCusip`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lazyCusipDescriptor = $convert.base64Decode(
    'CglMYXp5Q3VzaXASFAoFY3VzaXAYASABKAlSBWN1c2lw');

@$core.Deprecated('Use lazyCusipResponseDescriptor instead')
const LazyCusipResponse$json = {
  '1': 'LazyCusipResponse',
  '2': [
    {'1': 'cusip', '3': 1, '4': 3, '5': 11, '6': '.commonpb.LazyCusip', '10': 'cusip'},
  ],
};

/// Descriptor for `LazyCusipResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lazyCusipResponseDescriptor = $convert.base64Decode(
    'ChFMYXp5Q3VzaXBSZXNwb25zZRIpCgVjdXNpcBgBIAMoCzITLmNvbW1vbnBiLkxhenlDdXNpcF'
    'IFY3VzaXA=');

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

