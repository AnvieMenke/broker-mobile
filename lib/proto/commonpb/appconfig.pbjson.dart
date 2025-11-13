//
//  Generated code. Do not modify.
//  source: proto/commonpb/appconfig.proto
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

@$core.Deprecated('Use appConfigDescriptor instead')
const AppConfig$json = {
  '1': 'AppConfig',
  '2': [
    {'1': 'photo', '3': 1, '4': 1, '5': 9, '10': 'photo'},
    {'1': 'is_onboarding', '3': 2, '4': 1, '5': 8, '10': 'isOnboarding'},
    {'1': 'is_margin', '3': 3, '4': 1, '5': 8, '10': 'isMargin'},
    {'1': 'is_cash', '3': 4, '4': 1, '5': 8, '10': 'isCash'},
    {'1': 'cash_min_amt', '3': 5, '4': 1, '5': 9, '10': 'cashMinAmt'},
    {'1': 'margin_min_amt', '3': 6, '4': 1, '5': 9, '10': 'marginMinAmt'},
    {'1': 'broker_name', '3': 7, '4': 1, '5': 9, '10': 'brokerName'},
  ],
};

/// Descriptor for `AppConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appConfigDescriptor = $convert.base64Decode(
    'CglBcHBDb25maWcSFAoFcGhvdG8YASABKAlSBXBob3RvEiMKDWlzX29uYm9hcmRpbmcYAiABKA'
    'hSDGlzT25ib2FyZGluZxIbCglpc19tYXJnaW4YAyABKAhSCGlzTWFyZ2luEhcKB2lzX2Nhc2gY'
    'BCABKAhSBmlzQ2FzaBIgCgxjYXNoX21pbl9hbXQYBSABKAlSCmNhc2hNaW5BbXQSJAoObWFyZ2'
    'luX21pbl9hbXQYBiABKAlSDG1hcmdpbk1pbkFtdBIfCgticm9rZXJfbmFtZRgHIAEoCVIKYnJv'
    'a2VyTmFtZQ==');

@$core.Deprecated('Use mobileAppConfigDescriptor instead')
const MobileAppConfig$json = {
  '1': 'MobileAppConfig',
  '2': [
    {'1': 'broker_name', '3': 1, '4': 1, '5': 9, '10': 'brokerName'},
    {'1': 'mobile_logo', '3': 2, '4': 1, '5': 9, '10': 'mobileLogo'},
  ],
};

/// Descriptor for `MobileAppConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mobileAppConfigDescriptor = $convert.base64Decode(
    'Cg9Nb2JpbGVBcHBDb25maWcSHwoLYnJva2VyX25hbWUYASABKAlSCmJyb2tlck5hbWUSHwoLbW'
    '9iaWxlX2xvZ28YAiABKAlSCm1vYmlsZUxvZ28=');

@$core.Deprecated('Use mobileAppConfigRequestDescriptor instead')
const MobileAppConfigRequest$json = {
  '1': 'MobileAppConfigRequest',
  '2': [
    {'1': 'correspondent', '3': 1, '4': 1, '5': 9, '10': 'correspondent'},
  ],
};

/// Descriptor for `MobileAppConfigRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mobileAppConfigRequestDescriptor = $convert.base64Decode(
    'ChZNb2JpbGVBcHBDb25maWdSZXF1ZXN0EiQKDWNvcnJlc3BvbmRlbnQYASABKAlSDWNvcnJlc3'
    'BvbmRlbnQ=');

