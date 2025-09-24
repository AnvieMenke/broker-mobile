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

@$core.Deprecated('Use accountDescriptor instead')
const Account$json = {
  '1': 'Account',
  '2': [
    {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
    {'1': 'correspondent', '3': 2, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'account_no', '3': 3, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'master_account_no', '3': 4, '4': 1, '5': 9, '10': 'masterAccountNo'},
    {'1': 'type', '3': 5, '4': 1, '5': 9, '10': 'type'},
  ],
};

/// Descriptor for `Account`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountDescriptor = $convert.base64Decode(
    'CgdBY2NvdW50Eh0KCmFjY291bnRfaWQYASABKAlSCWFjY291bnRJZBIkCg1jb3JyZXNwb25kZW'
    '50GAIgASgJUg1jb3JyZXNwb25kZW50Eh0KCmFjY291bnRfbm8YAyABKAlSCWFjY291bnRObxIq'
    'ChFtYXN0ZXJfYWNjb3VudF9ubxgEIAEoCVIPbWFzdGVyQWNjb3VudE5vEhIKBHR5cGUYBSABKA'
    'lSBHR5cGU=');

@$core.Deprecated('Use listAccountResponseDescriptor instead')
const ListAccountResponse$json = {
  '1': 'ListAccountResponse',
  '2': [
    {'1': 'accounts', '3': 1, '4': 3, '5': 11, '6': '.commonpb.Account', '10': 'accounts'},
  ],
};

/// Descriptor for `ListAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAccountResponseDescriptor = $convert.base64Decode(
    'ChNMaXN0QWNjb3VudFJlc3BvbnNlEi0KCGFjY291bnRzGAEgAygLMhEuY29tbW9ucGIuQWNjb3'
    'VudFIIYWNjb3VudHM=');

@$core.Deprecated('Use listAccountRequestDescriptor instead')
const ListAccountRequest$json = {
  '1': 'ListAccountRequest',
};

/// Descriptor for `ListAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAccountRequestDescriptor = $convert.base64Decode(
    'ChJMaXN0QWNjb3VudFJlcXVlc3Q=');

@$core.Deprecated('Use securityDescriptor instead')
const Security$json = {
  '1': 'Security',
  '2': [
    {'1': 'security_id', '3': 1, '4': 1, '5': 9, '10': 'securityId'},
    {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
    {'1': 'symbol_description', '3': 3, '4': 1, '5': 9, '10': 'symbolDescription'},
  ],
};

/// Descriptor for `Security`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List securityDescriptor = $convert.base64Decode(
    'CghTZWN1cml0eRIfCgtzZWN1cml0eV9pZBgBIAEoCVIKc2VjdXJpdHlJZBIWCgZzeW1ib2wYAi'
    'ABKAlSBnN5bWJvbBItChJzeW1ib2xfZGVzY3JpcHRpb24YAyABKAlSEXN5bWJvbERlc2NyaXB0'
    'aW9u');

@$core.Deprecated('Use listSecurityRequestDescriptor instead')
const ListSecurityRequest$json = {
  '1': 'ListSecurityRequest',
};

/// Descriptor for `ListSecurityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSecurityRequestDescriptor = $convert.base64Decode(
    'ChNMaXN0U2VjdXJpdHlSZXF1ZXN0');

@$core.Deprecated('Use listSecurityResponseDescriptor instead')
const ListSecurityResponse$json = {
  '1': 'ListSecurityResponse',
  '2': [
    {'1': 'securities', '3': 1, '4': 3, '5': 11, '6': '.commonpb.Security', '10': 'securities'},
  ],
};

/// Descriptor for `ListSecurityResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSecurityResponseDescriptor = $convert.base64Decode(
    'ChRMaXN0U2VjdXJpdHlSZXNwb25zZRIyCgpzZWN1cml0aWVzGAEgAygLMhIuY29tbW9ucGIuU2'
    'VjdXJpdHlSCnNlY3VyaXRpZXM=');

@$core.Deprecated('Use readPrimaryOwnerRequestDescriptor instead')
const ReadPrimaryOwnerRequest$json = {
  '1': 'ReadPrimaryOwnerRequest',
  '2': [
    {'1': 'correspondent', '3': 1, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'account_no', '3': 2, '4': 1, '5': 9, '10': 'accountNo'},
  ],
};

/// Descriptor for `ReadPrimaryOwnerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readPrimaryOwnerRequestDescriptor = $convert.base64Decode(
    'ChdSZWFkUHJpbWFyeU93bmVyUmVxdWVzdBIkCg1jb3JyZXNwb25kZW50GAEgASgJUg1jb3JyZX'
    'Nwb25kZW50Eh0KCmFjY291bnRfbm8YAiABKAlSCWFjY291bnRObw==');

@$core.Deprecated('Use readPrimaryOwnerResponseDescriptor instead')
const ReadPrimaryOwnerResponse$json = {
  '1': 'ReadPrimaryOwnerResponse',
  '2': [
    {'1': 'first_name', '3': 1, '4': 1, '5': 9, '10': 'firstName'},
    {'1': 'last_name', '3': 2, '4': 1, '5': 9, '10': 'lastName'},
    {'1': 'full_name', '3': 3, '4': 1, '5': 9, '10': 'fullName'},
  ],
};

/// Descriptor for `ReadPrimaryOwnerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readPrimaryOwnerResponseDescriptor = $convert.base64Decode(
    'ChhSZWFkUHJpbWFyeU93bmVyUmVzcG9uc2USHQoKZmlyc3RfbmFtZRgBIAEoCVIJZmlyc3ROYW'
    '1lEhsKCWxhc3RfbmFtZRgCIAEoCVIIbGFzdE5hbWUSGwoJZnVsbF9uYW1lGAMgASgJUghmdWxs'
    'TmFtZQ==');

@$core.Deprecated('Use systemCodeTypeDescriptor instead')
const SystemCodeType$json = {
  '1': 'SystemCodeType',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
  ],
};

/// Descriptor for `SystemCodeType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List systemCodeTypeDescriptor = $convert.base64Decode(
    'Cg5TeXN0ZW1Db2RlVHlwZRISCgR0eXBlGAEgASgJUgR0eXBl');

@$core.Deprecated('Use systemNumberSubTypeDescriptor instead')
const SystemNumberSubType$json = {
  '1': 'SystemNumberSubType',
  '2': [
    {'1': 'sub_type', '3': 1, '4': 1, '5': 9, '10': 'subType'},
  ],
};

/// Descriptor for `SystemNumberSubType`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List systemNumberSubTypeDescriptor = $convert.base64Decode(
    'ChNTeXN0ZW1OdW1iZXJTdWJUeXBlEhkKCHN1Yl90eXBlGAEgASgJUgdzdWJUeXBl');

@$core.Deprecated('Use listSystemNumberSubTypeResponseDescriptor instead')
const ListSystemNumberSubTypeResponse$json = {
  '1': 'ListSystemNumberSubTypeResponse',
  '2': [
    {'1': 'sub_type', '3': 1, '4': 3, '5': 11, '6': '.commonpb.SystemNumberSubType', '10': 'subType'},
  ],
};

/// Descriptor for `ListSystemNumberSubTypeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSystemNumberSubTypeResponseDescriptor = $convert.base64Decode(
    'Ch9MaXN0U3lzdGVtTnVtYmVyU3ViVHlwZVJlc3BvbnNlEjgKCHN1Yl90eXBlGAEgAygLMh0uY2'
    '9tbW9ucGIuU3lzdGVtTnVtYmVyU3ViVHlwZVIHc3ViVHlwZQ==');

@$core.Deprecated('Use listSubAccountNoRequestDescriptor instead')
const ListSubAccountNoRequest$json = {
  '1': 'ListSubAccountNoRequest',
  '2': [
    {'1': 'account_no', '3': 1, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    {'1': 'limit', '3': 3, '4': 1, '5': 13, '10': 'limit'},
  ],
};

/// Descriptor for `ListSubAccountNoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSubAccountNoRequestDescriptor = $convert.base64Decode(
    'ChdMaXN0U3ViQWNjb3VudE5vUmVxdWVzdBIdCgphY2NvdW50X25vGAEgASgJUglhY2NvdW50Tm'
    '8SEAoDa2V5GAIgASgJUgNrZXkSFAoFbGltaXQYAyABKA1SBWxpbWl0');

@$core.Deprecated('Use houseAccountDescriptor instead')
const HouseAccount$json = {
  '1': 'HouseAccount',
  '2': [
    {'1': 'house_account', '3': 1, '4': 1, '5': 9, '10': 'houseAccount'},
  ],
};

/// Descriptor for `HouseAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List houseAccountDescriptor = $convert.base64Decode(
    'CgxIb3VzZUFjY291bnQSIwoNaG91c2VfYWNjb3VudBgBIAEoCVIMaG91c2VBY2NvdW50');

@$core.Deprecated('Use listHouseAccountResponseDescriptor instead')
const ListHouseAccountResponse$json = {
  '1': 'ListHouseAccountResponse',
  '2': [
    {'1': 'house_accounts', '3': 1, '4': 3, '5': 11, '6': '.commonpb.HouseAccount', '10': 'houseAccounts'},
  ],
};

/// Descriptor for `ListHouseAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listHouseAccountResponseDescriptor = $convert.base64Decode(
    'ChhMaXN0SG91c2VBY2NvdW50UmVzcG9uc2USPQoOaG91c2VfYWNjb3VudHMYASADKAsyFi5jb2'
    '1tb25wYi5Ib3VzZUFjY291bnRSDWhvdXNlQWNjb3VudHM=');

@$core.Deprecated('Use listEmptyRequestDescriptor instead')
const ListEmptyRequest$json = {
  '1': 'ListEmptyRequest',
};

/// Descriptor for `ListEmptyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listEmptyRequestDescriptor = $convert.base64Decode(
    'ChBMaXN0RW1wdHlSZXF1ZXN0');

@$core.Deprecated('Use listCusipRequestDescriptor instead')
const ListCusipRequest$json = {
  '1': 'ListCusipRequest',
  '2': [
    {'1': 'system_date', '3': 1, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'systemDate'},
    {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
  ],
};

/// Descriptor for `ListCusipRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCusipRequestDescriptor = $convert.base64Decode(
    'ChBMaXN0Q3VzaXBSZXF1ZXN0EjIKC3N5c3RlbV9kYXRlGAEgASgLMhEuZ29vZ2xlLnR5cGUuRG'
    'F0ZVIKc3lzdGVtRGF0ZRIWCgZzeW1ib2wYAiABKAlSBnN5bWJvbA==');

@$core.Deprecated('Use listCusipResponseDescriptor instead')
const ListCusipResponse$json = {
  '1': 'ListCusipResponse',
  '2': [
    {'1': 'cusip', '3': 1, '4': 1, '5': 9, '10': 'cusip'},
  ],
};

/// Descriptor for `ListCusipResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCusipResponseDescriptor = $convert.base64Decode(
    'ChFMaXN0Q3VzaXBSZXNwb25zZRIUCgVjdXNpcBgBIAEoCVIFY3VzaXA=');

@$core.Deprecated('Use brokerDescriptor instead')
const Broker$json = {
  '1': 'Broker',
  '2': [
    {'1': 'broker', '3': 1, '4': 1, '5': 9, '10': 'broker'},
    {'1': 'broker_no', '3': 2, '4': 1, '5': 9, '10': 'brokerNo'},
    {'1': 'id', '3': 3, '4': 1, '5': 13, '10': 'id'},
  ],
};

/// Descriptor for `Broker`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List brokerDescriptor = $convert.base64Decode(
    'CgZCcm9rZXISFgoGYnJva2VyGAEgASgJUgZicm9rZXISGwoJYnJva2VyX25vGAIgASgJUghicm'
    '9rZXJObxIOCgJpZBgDIAEoDVICaWQ=');

@$core.Deprecated('Use listBankNameRequestDescriptor instead')
const ListBankNameRequest$json = {
  '1': 'ListBankNameRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'limit', '3': 2, '4': 1, '5': 13, '10': 'limit'},
  ],
};

/// Descriptor for `ListBankNameRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBankNameRequestDescriptor = $convert.base64Decode(
    'ChNMaXN0QmFua05hbWVSZXF1ZXN0EhAKA2tleRgBIAEoCVIDa2V5EhQKBWxpbWl0GAIgASgNUg'
    'VsaW1pdA==');

@$core.Deprecated('Use listBankNameResponseDescriptor instead')
const ListBankNameResponse$json = {
  '1': 'ListBankNameResponse',
  '2': [
    {'1': 'bank_names', '3': 1, '4': 3, '5': 9, '10': 'bankNames'},
  ],
};

/// Descriptor for `ListBankNameResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBankNameResponseDescriptor = $convert.base64Decode(
    'ChRMaXN0QmFua05hbWVSZXNwb25zZRIdCgpiYW5rX25hbWVzGAEgAygJUgliYW5rTmFtZXM=');

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
  ],
};

/// Descriptor for `BankAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bankAccountDescriptor = $convert.base64Decode(
    'CgtCYW5rQWNjb3VudBIXCgdiYW5rX2lkGAEgASgJUgZiYW5rSWQSGwoJYmFua19uYW1lGAIgAS'
    'gJUghiYW5rTmFtZRIkCg5hY2hfcm91dGluZ19ubxgDIAEoCVIMYWNoUm91dGluZ05vEiYKD3dp'
    'cmVfcm91dGluZ19ubxgEIAEoCVINd2lyZVJvdXRpbmdObxImCg9iYW5rX2FjY291bnRfbm8YBS'
    'ABKAlSDWJhbmtBY2NvdW50Tm8SKgoRYmFua19hY2NvdW50X3R5cGUYBiABKAlSD2JhbmtBY2Nv'
    'dW50VHlwZRIpChBpc19pbnRlcm5hdGlvbmFsGAcgASgIUg9pc0ludGVybmF0aW9uYWwSEAoDYW'
    'NoGAggASgIUgNhY2gSEgoEd2lyZRgJIAEoCFIEd2lyZRIUCgVjaGVjaxgKIAEoCFIFY2hlY2s=');

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

@$core.Deprecated('Use listOriginalCusipRequestDescriptor instead')
const ListOriginalCusipRequest$json = {
  '1': 'ListOriginalCusipRequest',
  '2': [
    {'1': 'system_date', '3': 1, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'systemDate'},
    {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
  ],
};

/// Descriptor for `ListOriginalCusipRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listOriginalCusipRequestDescriptor = $convert.base64Decode(
    'ChhMaXN0T3JpZ2luYWxDdXNpcFJlcXVlc3QSMgoLc3lzdGVtX2RhdGUYASABKAsyES5nb29nbG'
    'UudHlwZS5EYXRlUgpzeXN0ZW1EYXRlEhYKBnN5bWJvbBgCIAEoCVIGc3ltYm9s');

@$core.Deprecated('Use listOriginalCusipResponseDescriptor instead')
const ListOriginalCusipResponse$json = {
  '1': 'ListOriginalCusipResponse',
  '2': [
    {'1': 'original_cusip', '3': 1, '4': 1, '5': 9, '10': 'originalCusip'},
  ],
};

/// Descriptor for `ListOriginalCusipResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listOriginalCusipResponseDescriptor = $convert.base64Decode(
    'ChlMaXN0T3JpZ2luYWxDdXNpcFJlc3BvbnNlEiUKDm9yaWdpbmFsX2N1c2lwGAEgASgJUg1vcm'
    'lnaW5hbEN1c2lw');

