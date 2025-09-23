//
//  Generated code. Do not modify.
//  source: proto/admpb/profile.proto
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

@$core.Deprecated('Use profileDescriptor instead')
const Profile$json = {
  '1': 'Profile',
  '2': [
    {'1': 'system_date', '3': 1, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'systemDate'},
    {'1': 'trade_date', '3': 2, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'tradeDate'},
    {'1': 'settle_date', '3': 3, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'settleDate'},
    {'1': 'previous_date', '3': 4, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'previousDate'},
    {'1': 'base_currency', '3': 5, '4': 1, '5': 9, '10': 'baseCurrency'},
    {'1': 'version_no', '3': 6, '4': 1, '5': 9, '10': 'versionNo'},
    {'1': 'cut_of_date', '3': 7, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'cutOfDate'},
    {'1': 'participant_no', '3': 8, '4': 1, '5': 9, '10': 'participantNo'},
    {'1': 'correspondent', '3': 9, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'debit_sign', '3': 10, '4': 1, '5': 9, '10': 'debitSign'},
    {'1': 'credit_sign', '3': 11, '4': 1, '5': 9, '10': 'creditSign'},
    {'1': 'profile_name', '3': 12, '4': 1, '5': 9, '10': 'profileName'},
    {'1': 'trade_confirm', '3': 13, '4': 1, '5': 9, '10': 'tradeConfirm'},
    {'1': 'company_tin', '3': 14, '4': 1, '5': 9, '10': 'companyTin'},
    {'1': 'photo', '3': 15, '4': 1, '5': 9, '10': 'photo'},
    {'1': 'company_name', '3': 16, '4': 1, '5': 9, '10': 'companyName'},
    {'1': 'address', '3': 17, '4': 1, '5': 9, '10': 'address'},
    {'1': 'city', '3': 18, '4': 1, '5': 9, '10': 'city'},
    {'1': 'state', '3': 19, '4': 1, '5': 9, '10': 'state'},
    {'1': 'country', '3': 20, '4': 1, '5': 9, '10': 'country'},
    {'1': 'zip', '3': 21, '4': 1, '5': 9, '10': 'zip'},
    {'1': 'tel_no', '3': 22, '4': 1, '5': 9, '10': 'telNo'},
    {'1': 'disclosure', '3': 23, '4': 1, '5': 9, '10': 'disclosure'},
    {'1': 'template', '3': 25, '4': 1, '5': 9, '10': 'template'},
    {'1': 'monthly_statement', '3': 26, '4': 1, '5': 9, '10': 'monthlyStatement'},
  ],
};

/// Descriptor for `Profile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profileDescriptor = $convert.base64Decode(
    'CgdQcm9maWxlEjIKC3N5c3RlbV9kYXRlGAEgASgLMhEuZ29vZ2xlLnR5cGUuRGF0ZVIKc3lzdG'
    'VtRGF0ZRIwCgp0cmFkZV9kYXRlGAIgASgLMhEuZ29vZ2xlLnR5cGUuRGF0ZVIJdHJhZGVEYXRl'
    'EjIKC3NldHRsZV9kYXRlGAMgASgLMhEuZ29vZ2xlLnR5cGUuRGF0ZVIKc2V0dGxlRGF0ZRI2Cg'
    '1wcmV2aW91c19kYXRlGAQgASgLMhEuZ29vZ2xlLnR5cGUuRGF0ZVIMcHJldmlvdXNEYXRlEiMK'
    'DWJhc2VfY3VycmVuY3kYBSABKAlSDGJhc2VDdXJyZW5jeRIdCgp2ZXJzaW9uX25vGAYgASgJUg'
    'l2ZXJzaW9uTm8SMQoLY3V0X29mX2RhdGUYByABKAsyES5nb29nbGUudHlwZS5EYXRlUgljdXRP'
    'ZkRhdGUSJQoOcGFydGljaXBhbnRfbm8YCCABKAlSDXBhcnRpY2lwYW50Tm8SJAoNY29ycmVzcG'
    '9uZGVudBgJIAEoCVINY29ycmVzcG9uZGVudBIdCgpkZWJpdF9zaWduGAogASgJUglkZWJpdFNp'
    'Z24SHwoLY3JlZGl0X3NpZ24YCyABKAlSCmNyZWRpdFNpZ24SIQoMcHJvZmlsZV9uYW1lGAwgAS'
    'gJUgtwcm9maWxlTmFtZRIjCg10cmFkZV9jb25maXJtGA0gASgJUgx0cmFkZUNvbmZpcm0SHwoL'
    'Y29tcGFueV90aW4YDiABKAlSCmNvbXBhbnlUaW4SFAoFcGhvdG8YDyABKAlSBXBob3RvEiEKDG'
    'NvbXBhbnlfbmFtZRgQIAEoCVILY29tcGFueU5hbWUSGAoHYWRkcmVzcxgRIAEoCVIHYWRkcmVz'
    'cxISCgRjaXR5GBIgASgJUgRjaXR5EhQKBXN0YXRlGBMgASgJUgVzdGF0ZRIYCgdjb3VudHJ5GB'
    'QgASgJUgdjb3VudHJ5EhAKA3ppcBgVIAEoCVIDemlwEhUKBnRlbF9ubxgWIAEoCVIFdGVsTm8S'
    'HgoKZGlzY2xvc3VyZRgXIAEoCVIKZGlzY2xvc3VyZRIaCgh0ZW1wbGF0ZRgZIAEoCVIIdGVtcG'
    'xhdGUSKwoRbW9udGhseV9zdGF0ZW1lbnQYGiABKAlSEG1vbnRobHlTdGF0ZW1lbnQ=');

@$core.Deprecated('Use readProfileRequestDescriptor instead')
const ReadProfileRequest$json = {
  '1': 'ReadProfileRequest',
  '2': [
    {'1': 'profile', '3': 1, '4': 1, '5': 11, '6': '.admpb.Profile', '10': 'profile'},
  ],
};

/// Descriptor for `ReadProfileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readProfileRequestDescriptor = $convert.base64Decode(
    'ChJSZWFkUHJvZmlsZVJlcXVlc3QSKAoHcHJvZmlsZRgBIAEoCzIOLmFkbXBiLlByb2ZpbGVSB3'
    'Byb2ZpbGU=');

@$core.Deprecated('Use readProfileResponseDescriptor instead')
const ReadProfileResponse$json = {
  '1': 'ReadProfileResponse',
  '2': [
    {'1': 'profile', '3': 1, '4': 1, '5': 11, '6': '.admpb.Profile', '10': 'profile'},
  ],
};

/// Descriptor for `ReadProfileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readProfileResponseDescriptor = $convert.base64Decode(
    'ChNSZWFkUHJvZmlsZVJlc3BvbnNlEigKB3Byb2ZpbGUYASABKAsyDi5hZG1wYi5Qcm9maWxlUg'
    'dwcm9maWxl');

@$core.Deprecated('Use listProfileRequestDescriptor instead')
const ListProfileRequest$json = {
  '1': 'ListProfileRequest',
};

/// Descriptor for `ListProfileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listProfileRequestDescriptor = $convert.base64Decode(
    'ChJMaXN0UHJvZmlsZVJlcXVlc3Q=');

@$core.Deprecated('Use listProfileResponseDescriptor instead')
const ListProfileResponse$json = {
  '1': 'ListProfileResponse',
  '2': [
    {'1': 'profile', '3': 1, '4': 1, '5': 11, '6': '.admpb.Profile', '10': 'profile'},
  ],
};

/// Descriptor for `ListProfileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listProfileResponseDescriptor = $convert.base64Decode(
    'ChNMaXN0UHJvZmlsZVJlc3BvbnNlEigKB3Byb2ZpbGUYASABKAsyDi5hZG1wYi5Qcm9maWxlUg'
    'dwcm9maWxl');

@$core.Deprecated('Use executeProfileRequestDescriptor instead')
const ExecuteProfileRequest$json = {
  '1': 'ExecuteProfileRequest',
  '2': [
    {'1': 'process', '3': 1, '4': 1, '5': 9, '10': 'process'},
    {'1': 'rollback_date', '3': 2, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'rollbackDate'},
  ],
};

/// Descriptor for `ExecuteProfileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeProfileRequestDescriptor = $convert.base64Decode(
    'ChVFeGVjdXRlUHJvZmlsZVJlcXVlc3QSGAoHcHJvY2VzcxgBIAEoCVIHcHJvY2VzcxI2Cg1yb2'
    'xsYmFja19kYXRlGAIgASgLMhEuZ29vZ2xlLnR5cGUuRGF0ZVIMcm9sbGJhY2tEYXRl');

@$core.Deprecated('Use executeProfileResponseDescriptor instead')
const ExecuteProfileResponse$json = {
  '1': 'ExecuteProfileResponse',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `ExecuteProfileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executeProfileResponseDescriptor = $convert.base64Decode(
    'ChZFeGVjdXRlUHJvZmlsZVJlc3BvbnNlEhgKB21lc3NhZ2UYASABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use settleDateRequestDescriptor instead')
const SettleDateRequest$json = {
  '1': 'SettleDateRequest',
  '2': [
    {'1': 'trade_date', '3': 1, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'tradeDate'},
  ],
};

/// Descriptor for `SettleDateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List settleDateRequestDescriptor = $convert.base64Decode(
    'ChFTZXR0bGVEYXRlUmVxdWVzdBIwCgp0cmFkZV9kYXRlGAEgASgLMhEuZ29vZ2xlLnR5cGUuRG'
    'F0ZVIJdHJhZGVEYXRl');

@$core.Deprecated('Use updateProfileRequestDescriptor instead')
const UpdateProfileRequest$json = {
  '1': 'UpdateProfileRequest',
  '2': [
    {'1': 'participant_no', '3': 1, '4': 1, '5': 9, '10': 'participantNo'},
    {'1': 'correspondent', '3': 2, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'debit_sign', '3': 3, '4': 1, '5': 9, '10': 'debitSign'},
    {'1': 'credit_sign', '3': 4, '4': 1, '5': 9, '10': 'creditSign'},
    {'1': 'monthly_statement', '3': 5, '4': 1, '5': 9, '10': 'monthlyStatement'},
  ],
};

/// Descriptor for `UpdateProfileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateProfileRequestDescriptor = $convert.base64Decode(
    'ChRVcGRhdGVQcm9maWxlUmVxdWVzdBIlCg5wYXJ0aWNpcGFudF9ubxgBIAEoCVINcGFydGljaX'
    'BhbnRObxIkCg1jb3JyZXNwb25kZW50GAIgASgJUg1jb3JyZXNwb25kZW50Eh0KCmRlYml0X3Np'
    'Z24YAyABKAlSCWRlYml0U2lnbhIfCgtjcmVkaXRfc2lnbhgEIAEoCVIKY3JlZGl0U2lnbhIrCh'
    'Ftb250aGx5X3N0YXRlbWVudBgFIAEoCVIQbW9udGhseVN0YXRlbWVudA==');

@$core.Deprecated('Use updateProfileResponseDescriptor instead')
const UpdateProfileResponse$json = {
  '1': 'UpdateProfileResponse',
  '2': [
    {'1': 'profile', '3': 1, '4': 1, '5': 11, '6': '.admpb.Profile', '10': 'profile'},
  ],
};

/// Descriptor for `UpdateProfileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateProfileResponseDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVQcm9maWxlUmVzcG9uc2USKAoHcHJvZmlsZRgBIAEoCzIOLmFkbXBiLlByb2ZpbG'
    'VSB3Byb2ZpbGU=');

