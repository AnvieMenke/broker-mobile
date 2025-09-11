//
//  Generated code. Do not modify.
//  source: proto/bankpb/account.proto
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

@$core.Deprecated('Use accountDescriptor instead')
const Account$json = {
  '1': 'Account',
  '2': [
    {'1': 'bank_id', '3': 1, '4': 1, '5': 13, '10': 'bankId'},
    {'1': 'correspondent', '3': 2, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'master_account_no', '3': 3, '4': 1, '5': 9, '10': 'masterAccountNo'},
    {'1': 'account_no', '3': 4, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'bank_owner_name', '3': 5, '4': 1, '5': 9, '10': 'bankOwnerName'},
    {'1': 'bank_name', '3': 6, '4': 1, '5': 9, '10': 'bankName'},
    {'1': 'ach_routing_no', '3': 7, '4': 1, '5': 9, '10': 'achRoutingNo'},
    {'1': 'wire_routing_no', '3': 8, '4': 1, '5': 9, '10': 'wireRoutingNo'},
    {'1': 'bank_account_no', '3': 9, '4': 1, '5': 9, '10': 'bankAccountNo'},
    {'1': 'bank_account_type', '3': 10, '4': 1, '5': 9, '10': 'bankAccountType'},
    {'1': 'approved_method', '3': 11, '4': 1, '5': 9, '10': 'approvedMethod'},
    {'1': 'plaid_access_token', '3': 12, '4': 1, '5': 9, '10': 'plaidAccessToken'},
    {'1': 'status', '3': 13, '4': 1, '5': 9, '10': 'status'},
    {'1': 'created_at', '3': 14, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'created_by', '3': 15, '4': 1, '5': 9, '10': 'createdBy'},
    {'1': 'system_date', '3': 16, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'systemDate'},
    {'1': 'bank_address_id', '3': 17, '4': 1, '5': 13, '10': 'bankAddressId'},
    {'1': 'bank_identifier_code', '3': 18, '4': 1, '5': 9, '10': 'bankIdentifierCode'},
    {'1': 'gl_account_id', '3': 19, '4': 1, '5': 13, '10': 'glAccountId'},
    {'1': 'gl_account_no', '3': 20, '4': 1, '5': 9, '10': 'glAccountNo'},
    {'1': 'modified_at', '3': 21, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'modifiedAt'},
    {'1': 'modified_by', '3': 22, '4': 1, '5': 9, '10': 'modifiedBy'},
    {'1': 'nick_name', '3': 23, '4': 1, '5': 9, '10': 'nickName'},
    {'1': 'ach', '3': 24, '4': 1, '5': 8, '10': 'ach'},
    {'1': 'wire', '3': 25, '4': 1, '5': 8, '10': 'wire'},
    {'1': 'check', '3': 26, '4': 1, '5': 8, '10': 'check'},
  ],
};

/// Descriptor for `Account`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountDescriptor = $convert.base64Decode(
    'CgdBY2NvdW50EhcKB2JhbmtfaWQYASABKA1SBmJhbmtJZBIkCg1jb3JyZXNwb25kZW50GAIgAS'
    'gJUg1jb3JyZXNwb25kZW50EioKEW1hc3Rlcl9hY2NvdW50X25vGAMgASgJUg9tYXN0ZXJBY2Nv'
    'dW50Tm8SHQoKYWNjb3VudF9ubxgEIAEoCVIJYWNjb3VudE5vEiYKD2Jhbmtfb3duZXJfbmFtZR'
    'gFIAEoCVINYmFua093bmVyTmFtZRIbCgliYW5rX25hbWUYBiABKAlSCGJhbmtOYW1lEiQKDmFj'
    'aF9yb3V0aW5nX25vGAcgASgJUgxhY2hSb3V0aW5nTm8SJgoPd2lyZV9yb3V0aW5nX25vGAggAS'
    'gJUg13aXJlUm91dGluZ05vEiYKD2JhbmtfYWNjb3VudF9ubxgJIAEoCVINYmFua0FjY291bnRO'
    'bxIqChFiYW5rX2FjY291bnRfdHlwZRgKIAEoCVIPYmFua0FjY291bnRUeXBlEicKD2FwcHJvdm'
    'VkX21ldGhvZBgLIAEoCVIOYXBwcm92ZWRNZXRob2QSLAoScGxhaWRfYWNjZXNzX3Rva2VuGAwg'
    'ASgJUhBwbGFpZEFjY2Vzc1Rva2VuEhYKBnN0YXR1cxgNIAEoCVIGc3RhdHVzEjkKCmNyZWF0ZW'
    'RfYXQYDiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQSHQoKY3Jl'
    'YXRlZF9ieRgPIAEoCVIJY3JlYXRlZEJ5EjIKC3N5c3RlbV9kYXRlGBAgASgLMhEuZ29vZ2xlLn'
    'R5cGUuRGF0ZVIKc3lzdGVtRGF0ZRImCg9iYW5rX2FkZHJlc3NfaWQYESABKA1SDWJhbmtBZGRy'
    'ZXNzSWQSMAoUYmFua19pZGVudGlmaWVyX2NvZGUYEiABKAlSEmJhbmtJZGVudGlmaWVyQ29kZR'
    'IiCg1nbF9hY2NvdW50X2lkGBMgASgNUgtnbEFjY291bnRJZBIiCg1nbF9hY2NvdW50X25vGBQg'
    'ASgJUgtnbEFjY291bnRObxI7Cgttb2RpZmllZF9hdBgVIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi'
    '5UaW1lc3RhbXBSCm1vZGlmaWVkQXQSHwoLbW9kaWZpZWRfYnkYFiABKAlSCm1vZGlmaWVkQnkS'
    'GwoJbmlja19uYW1lGBcgASgJUghuaWNrTmFtZRIQCgNhY2gYGCABKAhSA2FjaBISCgR3aXJlGB'
    'kgASgIUgR3aXJlEhQKBWNoZWNrGBogASgIUgVjaGVjaw==');

@$core.Deprecated('Use createAccountResponseDescriptor instead')
const CreateAccountResponse$json = {
  '1': 'CreateAccountResponse',
  '2': [
    {'1': 'bank_account', '3': 1, '4': 1, '5': 11, '6': '.bankpb.Account', '10': 'bankAccount'},
  ],
};

/// Descriptor for `CreateAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createAccountResponseDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVBY2NvdW50UmVzcG9uc2USMgoMYmFua19hY2NvdW50GAEgASgLMg8uYmFua3BiLk'
    'FjY291bnRSC2JhbmtBY2NvdW50');

@$core.Deprecated('Use updateAccountResponseDescriptor instead')
const UpdateAccountResponse$json = {
  '1': 'UpdateAccountResponse',
  '2': [
    {'1': 'bank_account', '3': 1, '4': 1, '5': 11, '6': '.bankpb.Account', '10': 'bankAccount'},
  ],
};

/// Descriptor for `UpdateAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateAccountResponseDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVBY2NvdW50UmVzcG9uc2USMgoMYmFua19hY2NvdW50GAEgASgLMg8uYmFua3BiLk'
    'FjY291bnRSC2JhbmtBY2NvdW50');

@$core.Deprecated('Use readAccountRequestDescriptor instead')
const ReadAccountRequest$json = {
  '1': 'ReadAccountRequest',
  '2': [
    {'1': 'bank_id', '3': 1, '4': 1, '5': 13, '10': 'bankId'},
  ],
};

/// Descriptor for `ReadAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readAccountRequestDescriptor = $convert.base64Decode(
    'ChJSZWFkQWNjb3VudFJlcXVlc3QSFwoHYmFua19pZBgBIAEoDVIGYmFua0lk');

@$core.Deprecated('Use readAccountResponseDescriptor instead')
const ReadAccountResponse$json = {
  '1': 'ReadAccountResponse',
  '2': [
    {'1': 'bank_account', '3': 1, '4': 1, '5': 11, '6': '.bankpb.Account', '10': 'bankAccount'},
  ],
};

/// Descriptor for `ReadAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readAccountResponseDescriptor = $convert.base64Decode(
    'ChNSZWFkQWNjb3VudFJlc3BvbnNlEjIKDGJhbmtfYWNjb3VudBgBIAEoCzIPLmJhbmtwYi5BY2'
    'NvdW50UgtiYW5rQWNjb3VudA==');

@$core.Deprecated('Use listAccountRequestDescriptor instead')
const ListAccountRequest$json = {
  '1': 'ListAccountRequest',
  '2': [
    {'1': 'correspondent', '3': 1, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'master_account_no', '3': 2, '4': 1, '5': 9, '10': 'masterAccountNo'},
    {'1': 'account_no', '3': 3, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'bank_owner_name', '3': 4, '4': 1, '5': 9, '10': 'bankOwnerName'},
    {'1': 'bank_name', '3': 5, '4': 1, '5': 9, '10': 'bankName'},
    {'1': 'ach_routing_no', '3': 6, '4': 1, '5': 9, '10': 'achRoutingNo'},
    {'1': 'bank_account_no', '3': 7, '4': 1, '5': 9, '10': 'bankAccountNo'},
    {'1': 'status', '3': 8, '4': 1, '5': 9, '10': 'status'},
    {'1': 'from_system_date', '3': 9, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'fromSystemDate'},
    {'1': 'to_system_date', '3': 10, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'toSystemDate'},
    {'1': 'usr_id', '3': 11, '4': 1, '5': 13, '10': 'usrId'},
    {'1': 'nick_name', '3': 12, '4': 1, '5': 9, '10': 'nickName'},
    {'1': 'pagination', '3': 13, '4': 1, '5': 11, '6': '.utilspb.Pagination', '10': 'pagination'},
  ],
};

/// Descriptor for `ListAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAccountRequestDescriptor = $convert.base64Decode(
    'ChJMaXN0QWNjb3VudFJlcXVlc3QSJAoNY29ycmVzcG9uZGVudBgBIAEoCVINY29ycmVzcG9uZG'
    'VudBIqChFtYXN0ZXJfYWNjb3VudF9ubxgCIAEoCVIPbWFzdGVyQWNjb3VudE5vEh0KCmFjY291'
    'bnRfbm8YAyABKAlSCWFjY291bnRObxImCg9iYW5rX293bmVyX25hbWUYBCABKAlSDWJhbmtPd2'
    '5lck5hbWUSGwoJYmFua19uYW1lGAUgASgJUghiYW5rTmFtZRIkCg5hY2hfcm91dGluZ19ubxgG'
    'IAEoCVIMYWNoUm91dGluZ05vEiYKD2JhbmtfYWNjb3VudF9ubxgHIAEoCVINYmFua0FjY291bn'
    'RObxIWCgZzdGF0dXMYCCABKAlSBnN0YXR1cxI7ChBmcm9tX3N5c3RlbV9kYXRlGAkgASgLMhEu'
    'Z29vZ2xlLnR5cGUuRGF0ZVIOZnJvbVN5c3RlbURhdGUSNwoOdG9fc3lzdGVtX2RhdGUYCiABKA'
    'syES5nb29nbGUudHlwZS5EYXRlUgx0b1N5c3RlbURhdGUSFQoGdXNyX2lkGAsgASgNUgV1c3JJ'
    'ZBIbCgluaWNrX25hbWUYDCABKAlSCG5pY2tOYW1lEjMKCnBhZ2luYXRpb24YDSABKAsyEy51dG'
    'lsc3BiLlBhZ2luYXRpb25SCnBhZ2luYXRpb24=');

@$core.Deprecated('Use listAccountSummaryDescriptor instead')
const ListAccountSummary$json = {
  '1': 'ListAccountSummary',
  '2': [
    {'1': 'total_rows', '3': 1, '4': 1, '5': 13, '10': 'totalRows'},
  ],
};

/// Descriptor for `ListAccountSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAccountSummaryDescriptor = $convert.base64Decode(
    'ChJMaXN0QWNjb3VudFN1bW1hcnkSHQoKdG90YWxfcm93cxgBIAEoDVIJdG90YWxSb3dz');

@$core.Deprecated('Use listAccountResponseDescriptor instead')
const ListAccountResponse$json = {
  '1': 'ListAccountResponse',
  '2': [
    {'1': 'bank_accounts', '3': 1, '4': 3, '5': 11, '6': '.bankpb.Account', '10': 'bankAccounts'},
    {'1': 'summary', '3': 2, '4': 1, '5': 11, '6': '.bankpb.ListAccountSummary', '10': 'summary'},
  ],
};

/// Descriptor for `ListAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAccountResponseDescriptor = $convert.base64Decode(
    'ChNMaXN0QWNjb3VudFJlc3BvbnNlEjQKDWJhbmtfYWNjb3VudHMYASADKAsyDy5iYW5rcGIuQW'
    'Njb3VudFIMYmFua0FjY291bnRzEjQKB3N1bW1hcnkYAiABKAsyGi5iYW5rcGIuTGlzdEFjY291'
    'bnRTdW1tYXJ5UgdzdW1tYXJ5');

@$core.Deprecated('Use listAccountAuditRequestDescriptor instead')
const ListAccountAuditRequest$json = {
  '1': 'ListAccountAuditRequest',
  '2': [
    {'1': 'bank_id', '3': 1, '4': 1, '5': 13, '10': 'bankId'},
  ],
};

/// Descriptor for `ListAccountAuditRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAccountAuditRequestDescriptor = $convert.base64Decode(
    'ChdMaXN0QWNjb3VudEF1ZGl0UmVxdWVzdBIXCgdiYW5rX2lkGAEgASgNUgZiYW5rSWQ=');

@$core.Deprecated('Use listAccountAuditResponseDescriptor instead')
const ListAccountAuditResponse$json = {
  '1': 'ListAccountAuditResponse',
  '2': [
    {'1': 'account', '3': 1, '4': 3, '5': 11, '6': '.bankpb.Account', '10': 'account'},
  ],
};

/// Descriptor for `ListAccountAuditResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAccountAuditResponseDescriptor = $convert.base64Decode(
    'ChhMaXN0QWNjb3VudEF1ZGl0UmVzcG9uc2USKQoHYWNjb3VudBgBIAMoCzIPLmJhbmtwYi5BY2'
    'NvdW50UgdhY2NvdW50');

@$core.Deprecated('Use listGlBankRequestDescriptor instead')
const ListGlBankRequest$json = {
  '1': 'ListGlBankRequest',
};

/// Descriptor for `ListGlBankRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listGlBankRequestDescriptor = $convert.base64Decode(
    'ChFMaXN0R2xCYW5rUmVxdWVzdA==');

@$core.Deprecated('Use readDefaultGlBankRequestDescriptor instead')
const ReadDefaultGlBankRequest$json = {
  '1': 'ReadDefaultGlBankRequest',
};

/// Descriptor for `ReadDefaultGlBankRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readDefaultGlBankRequestDescriptor = $convert.base64Decode(
    'ChhSZWFkRGVmYXVsdEdsQmFua1JlcXVlc3Q=');

@$core.Deprecated('Use glBankDescriptor instead')
const GlBank$json = {
  '1': 'GlBank',
  '2': [
    {'1': 'account_id', '3': 1, '4': 1, '5': 13, '10': 'accountId'},
    {'1': 'account_no', '3': 2, '4': 1, '5': 9, '10': 'accountNo'},
  ],
};

/// Descriptor for `GlBank`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List glBankDescriptor = $convert.base64Decode(
    'CgZHbEJhbmsSHQoKYWNjb3VudF9pZBgBIAEoDVIJYWNjb3VudElkEh0KCmFjY291bnRfbm8YAi'
    'ABKAlSCWFjY291bnRObw==');

@$core.Deprecated('Use listGlBankResponseDescriptor instead')
const ListGlBankResponse$json = {
  '1': 'ListGlBankResponse',
  '2': [
    {'1': 'gl_banks', '3': 1, '4': 3, '5': 11, '6': '.bankpb.GlBank', '10': 'glBanks'},
  ],
};

/// Descriptor for `ListGlBankResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listGlBankResponseDescriptor = $convert.base64Decode(
    'ChJMaXN0R2xCYW5rUmVzcG9uc2USKQoIZ2xfYmFua3MYASADKAsyDi5iYW5rcGIuR2xCYW5rUg'
    'dnbEJhbmtz');

@$core.Deprecated('Use listBankAccountRequestDescriptor instead')
const ListBankAccountRequest$json = {
  '1': 'ListBankAccountRequest',
  '2': [
    {'1': 'account_no', '3': 1, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'correspondent', '3': 2, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'status', '3': 3, '4': 1, '5': 9, '10': 'status'},
    {'1': 'user_id', '3': 4, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `ListBankAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBankAccountRequestDescriptor = $convert.base64Decode(
    'ChZMaXN0QmFua0FjY291bnRSZXF1ZXN0Eh0KCmFjY291bnRfbm8YASABKAlSCWFjY291bnRObx'
    'IkCg1jb3JyZXNwb25kZW50GAIgASgJUg1jb3JyZXNwb25kZW50EhYKBnN0YXR1cxgDIAEoCVIG'
    'c3RhdHVzEhcKB3VzZXJfaWQYBCABKAVSBnVzZXJJZA==');

@$core.Deprecated('Use deleteAccountRequestDescriptor instead')
const DeleteAccountRequest$json = {
  '1': 'DeleteAccountRequest',
  '2': [
    {'1': 'bank_id', '3': 1, '4': 1, '5': 13, '10': 'bankId'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `DeleteAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteAccountRequestDescriptor = $convert.base64Decode(
    'ChREZWxldGVBY2NvdW50UmVxdWVzdBIXCgdiYW5rX2lkGAEgASgNUgZiYW5rSWQSFgoGc3RhdH'
    'VzGAIgASgJUgZzdGF0dXM=');

@$core.Deprecated('Use deleteAccountResponseDescriptor instead')
const DeleteAccountResponse$json = {
  '1': 'DeleteAccountResponse',
  '2': [
    {'1': 'bank_account', '3': 1, '4': 1, '5': 11, '6': '.bankpb.Account', '10': 'bankAccount'},
  ],
};

/// Descriptor for `DeleteAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteAccountResponseDescriptor = $convert.base64Decode(
    'ChVEZWxldGVBY2NvdW50UmVzcG9uc2USMgoMYmFua19hY2NvdW50GAEgASgLMg8uYmFua3BiLk'
    'FjY291bnRSC2JhbmtBY2NvdW50');

