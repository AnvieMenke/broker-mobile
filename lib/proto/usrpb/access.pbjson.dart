//
//  Generated code. Do not modify.
//  source: proto/usrpb/usraccess.proto
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

@$core.Deprecated('Use usrAccessDescriptor instead')
const UsrAccess$json = {
  '1': 'UsrAccess',
  '2': [
    {'1': 'usr_id', '3': 1, '4': 1, '5': 13, '10': 'usrId'},
    {'1': 'access_id', '3': 2, '4': 1, '5': 13, '10': 'accessId'},
    {'1': 'access', '3': 3, '4': 1, '5': 9, '10': 'access'},
    {'1': 'sub_access', '3': 4, '4': 1, '5': 9, '10': 'subAccess'},
    {'1': 'role_id', '3': 5, '4': 1, '5': 13, '10': 'roleId'},
    {'1': 'amount_limit', '3': 6, '4': 1, '5': 9, '10': 'amountLimit'},
  ],
};

/// Descriptor for `UsrAccess`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List usrAccessDescriptor = $convert.base64Decode(
    'CglVc3JBY2Nlc3MSFQoGdXNyX2lkGAEgASgNUgV1c3JJZBIbCglhY2Nlc3NfaWQYAiABKA1SCG'
    'FjY2Vzc0lkEhYKBmFjY2VzcxgDIAEoCVIGYWNjZXNzEh0KCnN1Yl9hY2Nlc3MYBCABKAlSCXN1'
    'YkFjY2VzcxIXCgdyb2xlX2lkGAUgASgNUgZyb2xlSWQSIQoMYW1vdW50X2xpbWl0GAYgASgJUg'
    'thbW91bnRMaW1pdA==');

@$core.Deprecated('Use listUsrAccessRequestDescriptor instead')
const ListUsrAccessRequest$json = {
  '1': 'ListUsrAccessRequest',
  '2': [
    {'1': 'usr_id', '3': 1, '4': 1, '5': 13, '10': 'usrId'},
    {'1': 'request_type', '3': 2, '4': 1, '5': 9, '10': 'requestType'},
    {'1': 'role_id', '3': 3, '4': 1, '5': 13, '10': 'roleId'},
  ],
};

/// Descriptor for `ListUsrAccessRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listUsrAccessRequestDescriptor = $convert.base64Decode(
    'ChRMaXN0VXNyQWNjZXNzUmVxdWVzdBIVCgZ1c3JfaWQYASABKA1SBXVzcklkEiEKDHJlcXVlc3'
    'RfdHlwZRgCIAEoCVILcmVxdWVzdFR5cGUSFwoHcm9sZV9pZBgDIAEoDVIGcm9sZUlk');

@$core.Deprecated('Use listUsrAccessResponseDescriptor instead')
const ListUsrAccessResponse$json = {
  '1': 'ListUsrAccessResponse',
  '2': [
    {'1': 'usr_accesses', '3': 1, '4': 3, '5': 11, '6': '.usrpb.UsrAccess', '10': 'usrAccesses'},
  ],
};

/// Descriptor for `ListUsrAccessResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listUsrAccessResponseDescriptor = $convert.base64Decode(
    'ChVMaXN0VXNyQWNjZXNzUmVzcG9uc2USMwoMdXNyX2FjY2Vzc2VzGAEgAygLMhAudXNycGIuVX'
    'NyQWNjZXNzUgt1c3JBY2Nlc3Nlcw==');

@$core.Deprecated('Use updateAmountLimitRequestDescriptor instead')
const UpdateAmountLimitRequest$json = {
  '1': 'UpdateAmountLimitRequest',
  '2': [
    {'1': 'amount_limit', '3': 1, '4': 1, '5': 9, '10': 'amountLimit'},
    {'1': 'access_id', '3': 2, '4': 1, '5': 13, '10': 'accessId'},
  ],
};

/// Descriptor for `UpdateAmountLimitRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateAmountLimitRequestDescriptor = $convert.base64Decode(
    'ChhVcGRhdGVBbW91bnRMaW1pdFJlcXVlc3QSIQoMYW1vdW50X2xpbWl0GAEgASgJUgthbW91bn'
    'RMaW1pdBIbCglhY2Nlc3NfaWQYAiABKA1SCGFjY2Vzc0lk');

