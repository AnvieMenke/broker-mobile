//
//  Generated code. Do not modify.
//  source: proto/commonpb/list.proto
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

@$core.Deprecated('Use admEntryTypeDescriptor instead')
const AdmEntryType$json = {
  '1': 'AdmEntryType',
  '2': [
    {'1': 'entry_type', '3': 1, '4': 1, '5': 9, '10': 'entryType'},
    {'1': 'entry_type_description', '3': 2, '4': 1, '5': 9, '10': 'entryTypeDescription'},
    {'1': 'screen_type', '3': 3, '4': 1, '5': 9, '10': 'screenType'},
    {'1': 'correspondent', '3': 4, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'account_no', '3': 5, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'sub_account_no', '3': 6, '4': 1, '5': 9, '10': 'subAccountNo'},
    {'1': 'status', '3': 7, '4': 1, '5': 9, '10': 'status'},
    {'1': 'settlement_method', '3': 8, '4': 1, '5': 9, '10': 'settlementMethod'},
  ],
};

/// Descriptor for `AdmEntryType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List admEntryTypeDescriptor = $convert.base64Decode(
    'CgxBZG1FbnRyeVR5cGUSHQoKZW50cnlfdHlwZRgBIAEoCVIJZW50cnlUeXBlEjQKFmVudHJ5X3'
    'R5cGVfZGVzY3JpcHRpb24YAiABKAlSFGVudHJ5VHlwZURlc2NyaXB0aW9uEh8KC3NjcmVlbl90'
    'eXBlGAMgASgJUgpzY3JlZW5UeXBlEiQKDWNvcnJlc3BvbmRlbnQYBCABKAlSDWNvcnJlc3Bvbm'
    'RlbnQSHQoKYWNjb3VudF9ubxgFIAEoCVIJYWNjb3VudE5vEiQKDnN1Yl9hY2NvdW50X25vGAYg'
    'ASgJUgxzdWJBY2NvdW50Tm8SFgoGc3RhdHVzGAcgASgJUgZzdGF0dXMSKwoRc2V0dGxlbWVudF'
    '9tZXRob2QYCCABKAlSEHNldHRsZW1lbnRNZXRob2Q=');

@$core.Deprecated('Use listAdmEntryTypeRequestDescriptor instead')
const ListAdmEntryTypeRequest$json = {
  '1': 'ListAdmEntryTypeRequest',
  '2': [
    {'1': 'entry_type', '3': 1, '4': 1, '5': 9, '10': 'entryType'},
    {'1': 'screen_type', '3': 2, '4': 1, '5': 9, '10': 'screenType'},
    {'1': 'correspondent', '3': 3, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'account_no', '3': 4, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'status', '3': 6, '4': 1, '5': 9, '10': 'status'},
    {'1': 'note', '3': 7, '4': 1, '5': 9, '10': 'note'},
  ],
};

/// Descriptor for `ListAdmEntryTypeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAdmEntryTypeRequestDescriptor = $convert.base64Decode(
    'ChdMaXN0QWRtRW50cnlUeXBlUmVxdWVzdBIdCgplbnRyeV90eXBlGAEgASgJUgllbnRyeVR5cG'
    'USHwoLc2NyZWVuX3R5cGUYAiABKAlSCnNjcmVlblR5cGUSJAoNY29ycmVzcG9uZGVudBgDIAEo'
    'CVINY29ycmVzcG9uZGVudBIdCgphY2NvdW50X25vGAQgASgJUglhY2NvdW50Tm8SFgoGc3RhdH'
    'VzGAYgASgJUgZzdGF0dXMSEgoEbm90ZRgHIAEoCVIEbm90ZQ==');

@$core.Deprecated('Use listAdmEntryTypeResponseDescriptor instead')
const ListAdmEntryTypeResponse$json = {
  '1': 'ListAdmEntryTypeResponse',
  '2': [
    {'1': 'entry_types', '3': 1, '4': 3, '5': 11, '6': '.commonpb.AdmEntryType', '10': 'entryTypes'},
  ],
};

/// Descriptor for `ListAdmEntryTypeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAdmEntryTypeResponseDescriptor = $convert.base64Decode(
    'ChhMaXN0QWRtRW50cnlUeXBlUmVzcG9uc2USNwoLZW50cnlfdHlwZXMYASADKAsyFi5jb21tb2'
    '5wYi5BZG1FbnRyeVR5cGVSCmVudHJ5VHlwZXM=');

@$core.Deprecated('Use pageDescriptor instead')
const Page$json = {
  '1': 'Page',
  '2': [
    {'1': 'page_id', '3': 1, '4': 1, '5': 13, '10': 'pageId'},
    {'1': 'menu', '3': 2, '4': 1, '5': 9, '10': 'menu'},
    {'1': 'sub_menu', '3': 3, '4': 1, '5': 9, '10': 'subMenu'},
    {'1': 'page_name', '3': 4, '4': 1, '5': 9, '10': 'pageName'},
    {'1': 'component', '3': 5, '4': 1, '5': 9, '10': 'component'},
  ],
};

/// Descriptor for `Page`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pageDescriptor = $convert.base64Decode(
    'CgRQYWdlEhcKB3BhZ2VfaWQYASABKA1SBnBhZ2VJZBISCgRtZW51GAIgASgJUgRtZW51EhkKCH'
    'N1Yl9tZW51GAMgASgJUgdzdWJNZW51EhsKCXBhZ2VfbmFtZRgEIAEoCVIIcGFnZU5hbWUSHAoJ'
    'Y29tcG9uZW50GAUgASgJUgljb21wb25lbnQ=');

@$core.Deprecated('Use listPageRequestDescriptor instead')
const ListPageRequest$json = {
  '1': 'ListPageRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'limit', '3': 2, '4': 1, '5': 13, '10': 'limit'},
  ],
};

/// Descriptor for `ListPageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPageRequestDescriptor = $convert.base64Decode(
    'Cg9MaXN0UGFnZVJlcXVlc3QSEAoDa2V5GAEgASgJUgNrZXkSFAoFbGltaXQYAiABKA1SBWxpbW'
    'l0');

@$core.Deprecated('Use listPageResponseDescriptor instead')
const ListPageResponse$json = {
  '1': 'ListPageResponse',
  '2': [
    {'1': 'pages', '3': 1, '4': 3, '5': 11, '6': '.commonpb.Page', '10': 'pages'},
  ],
};

/// Descriptor for `ListPageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPageResponseDescriptor = $convert.base64Decode(
    'ChBMaXN0UGFnZVJlc3BvbnNlEiQKBXBhZ2VzGAEgAygLMg4uY29tbW9ucGIuUGFnZVIFcGFnZX'
    'M=');

@$core.Deprecated('Use bankAccountDescriptor instead')
const BankAccount$json = {
  '1': 'BankAccount',
  '2': [
    {'1': 'bank_id', '3': 1, '4': 1, '5': 9, '10': 'bankId'},
    {'1': 'bank_name', '3': 2, '4': 1, '5': 9, '10': 'bankName'},
    {'1': 'ach_routing_no', '3': 3, '4': 1, '5': 9, '10': 'achRoutingNo'},
    {'1': 'wire_routing_no', '3': 4, '4': 1, '5': 9, '10': 'wireRoutingNo'},
    {'1': 'bank_account_no', '3': 5, '4': 1, '5': 9, '10': 'bankAccountNo'},
    {'1': 'bank_account_type', '3': 6, '4': 1, '5': 9, '10': 'bankAccountType'},
    {'1': 'is_international', '3': 7, '4': 1, '5': 8, '10': 'isInternational'},
    {'1': 'ach', '3': 8, '4': 1, '5': 8, '10': 'ach'},
    {'1': 'wire', '3': 9, '4': 1, '5': 8, '10': 'wire'},
    {'1': 'check', '3': 10, '4': 1, '5': 8, '10': 'check'},
    {'1': 'status', '3': 11, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `BankAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bankAccountDescriptor = $convert.base64Decode(
    'CgtCYW5rQWNjb3VudBIXCgdiYW5rX2lkGAEgASgJUgZiYW5rSWQSGwoJYmFua19uYW1lGAIgAS'
    'gJUghiYW5rTmFtZRIkCg5hY2hfcm91dGluZ19ubxgDIAEoCVIMYWNoUm91dGluZ05vEiYKD3dp'
    'cmVfcm91dGluZ19ubxgEIAEoCVINd2lyZVJvdXRpbmdObxImCg9iYW5rX2FjY291bnRfbm8YBS'
    'ABKAlSDWJhbmtBY2NvdW50Tm8SKgoRYmFua19hY2NvdW50X3R5cGUYBiABKAlSD2JhbmtBY2Nv'
    'dW50VHlwZRIpChBpc19pbnRlcm5hdGlvbmFsGAcgASgIUg9pc0ludGVybmF0aW9uYWwSEAoDYW'
    'NoGAggASgIUgNhY2gSEgoEd2lyZRgJIAEoCFIEd2lyZRIUCgVjaGVjaxgKIAEoCFIFY2hlY2sS'
    'FgoGc3RhdHVzGAsgASgJUgZzdGF0dXM=');

@$core.Deprecated('Use listBankAccountResponseDescriptor instead')
const ListBankAccountResponse$json = {
  '1': 'ListBankAccountResponse',
  '2': [
    {'1': 'bank_accounts', '3': 1, '4': 3, '5': 11, '6': '.commonpb.BankAccount', '10': 'bankAccounts'},
  ],
};

/// Descriptor for `ListBankAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBankAccountResponseDescriptor = $convert.base64Decode(
    'ChdMaXN0QmFua0FjY291bnRSZXNwb25zZRI6Cg1iYW5rX2FjY291bnRzGAEgAygLMhUuY29tbW'
    '9ucGIuQmFua0FjY291bnRSDGJhbmtBY2NvdW50cw==');

@$core.Deprecated('Use listBankAccountRequestDescriptor instead')
const ListBankAccountRequest$json = {
  '1': 'ListBankAccountRequest',
  '2': [
    {'1': 'account_no', '3': 1, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'correspondent', '3': 2, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'status', '3': 3, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `ListBankAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBankAccountRequestDescriptor = $convert.base64Decode(
    'ChZMaXN0QmFua0FjY291bnRSZXF1ZXN0Eh0KCmFjY291bnRfbm8YASABKAlSCWFjY291bnRObx'
    'IkCg1jb3JyZXNwb25kZW50GAIgASgJUg1jb3JyZXNwb25kZW50EhYKBnN0YXR1cxgDIAEoCVIG'
    'c3RhdHVz');

