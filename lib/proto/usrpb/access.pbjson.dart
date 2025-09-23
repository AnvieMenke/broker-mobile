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

@$core.Deprecated('Use rolePageDescriptor instead')
const RolePage$json = {
  '1': 'RolePage',
  '2': [
    {'1': 'sub_menu', '3': 1, '4': 1, '5': 9, '10': 'subMenu'},
    {'1': 'component', '3': 2, '4': 1, '5': 9, '10': 'component'},
    {'1': 'page_name', '3': 3, '4': 1, '5': 9, '10': 'pageName'},
    {'1': 'access', '3': 4, '4': 1, '5': 9, '10': 'access'},
  ],
};

/// Descriptor for `RolePage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rolePageDescriptor = $convert.base64Decode(
    'CghSb2xlUGFnZRIZCghzdWJfbWVudRgBIAEoCVIHc3ViTWVudRIcCgljb21wb25lbnQYAiABKA'
    'lSCWNvbXBvbmVudBIbCglwYWdlX25hbWUYAyABKAlSCHBhZ2VOYW1lEhYKBmFjY2VzcxgEIAEo'
    'CVIGYWNjZXNz');

@$core.Deprecated('Use listRolePageResponseDescriptor instead')
const ListRolePageResponse$json = {
  '1': 'ListRolePageResponse',
  '2': [
    {'1': 'pages', '3': 1, '4': 3, '5': 11, '6': '.usrpb.RolePage', '10': 'pages'},
  ],
};

/// Descriptor for `ListRolePageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRolePageResponseDescriptor = $convert.base64Decode(
    'ChRMaXN0Um9sZVBhZ2VSZXNwb25zZRIlCgVwYWdlcxgBIAMoCzIPLnVzcnBiLlJvbGVQYWdlUg'
    'VwYWdlcw==');

@$core.Deprecated('Use accessPageDescriptor instead')
const AccessPage$json = {
  '1': 'AccessPage',
  '2': [
    {'1': 'sub_menu', '3': 1, '4': 1, '5': 9, '10': 'subMenu'},
    {'1': 'component', '3': 2, '4': 1, '5': 9, '10': 'component'},
    {'1': 'page_name', '3': 3, '4': 1, '5': 9, '10': 'pageName'},
    {'1': 'access', '3': 4, '4': 1, '5': 9, '10': 'access'},
    {'1': 'created_by', '3': 5, '4': 1, '5': 9, '10': 'createdBy'},
    {'1': 'created_at', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'modified_by', '3': 7, '4': 1, '5': 9, '10': 'modifiedBy'},
    {'1': 'modified_at', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'modifiedAt'},
    {'1': 'role_id', '3': 9, '4': 1, '5': 13, '10': 'roleId'},
  ],
};

/// Descriptor for `AccessPage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessPageDescriptor = $convert.base64Decode(
    'CgpBY2Nlc3NQYWdlEhkKCHN1Yl9tZW51GAEgASgJUgdzdWJNZW51EhwKCWNvbXBvbmVudBgCIA'
    'EoCVIJY29tcG9uZW50EhsKCXBhZ2VfbmFtZRgDIAEoCVIIcGFnZU5hbWUSFgoGYWNjZXNzGAQg'
    'ASgJUgZhY2Nlc3MSHQoKY3JlYXRlZF9ieRgFIAEoCVIJY3JlYXRlZEJ5EjkKCmNyZWF0ZWRfYX'
    'QYBiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgljcmVhdGVkQXQSHwoLbW9kaWZp'
    'ZWRfYnkYByABKAlSCm1vZGlmaWVkQnkSOwoLbW9kaWZpZWRfYXQYCCABKAsyGi5nb29nbGUucH'
    'JvdG9idWYuVGltZXN0YW1wUgptb2RpZmllZEF0EhcKB3JvbGVfaWQYCSABKA1SBnJvbGVJZA==');

@$core.Deprecated('Use saveAccessPageRequestDescriptor instead')
const SaveAccessPageRequest$json = {
  '1': 'SaveAccessPageRequest',
  '2': [
    {'1': 'components', '3': 1, '4': 3, '5': 9, '10': 'components'},
    {'1': 'access', '3': 2, '4': 1, '5': 9, '10': 'access'},
    {'1': 'role_id', '3': 3, '4': 1, '5': 13, '10': 'roleId'},
  ],
};

/// Descriptor for `SaveAccessPageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List saveAccessPageRequestDescriptor = $convert.base64Decode(
    'ChVTYXZlQWNjZXNzUGFnZVJlcXVlc3QSHgoKY29tcG9uZW50cxgBIAMoCVIKY29tcG9uZW50cx'
    'IWCgZhY2Nlc3MYAiABKAlSBmFjY2VzcxIXCgdyb2xlX2lkGAMgASgNUgZyb2xlSWQ=');

@$core.Deprecated('Use listAccessPageResponseDescriptor instead')
const ListAccessPageResponse$json = {
  '1': 'ListAccessPageResponse',
  '2': [
    {'1': 'pages', '3': 1, '4': 3, '5': 11, '6': '.usrpb.AccessPage', '10': 'pages'},
  ],
};

/// Descriptor for `ListAccessPageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAccessPageResponseDescriptor = $convert.base64Decode(
    'ChZMaXN0QWNjZXNzUGFnZVJlc3BvbnNlEicKBXBhZ2VzGAEgAygLMhEudXNycGIuQWNjZXNzUG'
    'FnZVIFcGFnZXM=');

@$core.Deprecated('Use listAccessPageRequestDescriptor instead')
const ListAccessPageRequest$json = {
  '1': 'ListAccessPageRequest',
  '2': [
    {'1': 'role_id', '3': 1, '4': 1, '5': 13, '10': 'roleId'},
    {'1': 'sub_menu', '3': 2, '4': 1, '5': 9, '10': 'subMenu'},
    {'1': 'component', '3': 3, '4': 1, '5': 9, '10': 'component'},
    {'1': 'access', '3': 4, '4': 1, '5': 9, '10': 'access'},
  ],
};

/// Descriptor for `ListAccessPageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAccessPageRequestDescriptor = $convert.base64Decode(
    'ChVMaXN0QWNjZXNzUGFnZVJlcXVlc3QSFwoHcm9sZV9pZBgBIAEoDVIGcm9sZUlkEhkKCHN1Yl'
    '9tZW51GAIgASgJUgdzdWJNZW51EhwKCWNvbXBvbmVudBgDIAEoCVIJY29tcG9uZW50EhYKBmFj'
    'Y2VzcxgEIAEoCVIGYWNjZXNz');

@$core.Deprecated('Use accessFunctionDescriptor instead')
const AccessFunction$json = {
  '1': 'AccessFunction',
  '2': [
    {'1': 'access_id', '3': 1, '4': 1, '5': 13, '10': 'accessId'},
    {'1': 'access', '3': 2, '4': 1, '5': 9, '10': 'access'},
    {'1': 'sub_access', '3': 3, '4': 1, '5': 9, '10': 'subAccess'},
    {'1': 'role_id', '3': 4, '4': 1, '5': 13, '10': 'roleId'},
    {'1': 'amount_limit', '3': 5, '4': 1, '5': 9, '10': 'amountLimit'},
    {'1': 'max_amount_limit', '3': 6, '4': 1, '5': 9, '10': 'maxAmountLimit'},
    {'1': 'created_by', '3': 7, '4': 1, '5': 9, '10': 'createdBy'},
    {'1': 'created_at', '3': 8, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
  ],
};

/// Descriptor for `AccessFunction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accessFunctionDescriptor = $convert.base64Decode(
    'Cg5BY2Nlc3NGdW5jdGlvbhIbCglhY2Nlc3NfaWQYASABKA1SCGFjY2Vzc0lkEhYKBmFjY2Vzcx'
    'gCIAEoCVIGYWNjZXNzEh0KCnN1Yl9hY2Nlc3MYAyABKAlSCXN1YkFjY2VzcxIXCgdyb2xlX2lk'
    'GAQgASgNUgZyb2xlSWQSIQoMYW1vdW50X2xpbWl0GAUgASgJUgthbW91bnRMaW1pdBIoChBtYX'
    'hfYW1vdW50X2xpbWl0GAYgASgJUg5tYXhBbW91bnRMaW1pdBIdCgpjcmVhdGVkX2J5GAcgASgJ'
    'UgljcmVhdGVkQnkSOQoKY3JlYXRlZF9hdBgIIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3'
    'RhbXBSCWNyZWF0ZWRBdA==');

@$core.Deprecated('Use listRoleAccessFunctionRequestDescriptor instead')
const ListRoleAccessFunctionRequest$json = {
  '1': 'ListRoleAccessFunctionRequest',
  '2': [
    {'1': 'access', '3': 1, '4': 1, '5': 9, '10': 'access'},
    {'1': 'sub_access', '3': 2, '4': 1, '5': 9, '10': 'subAccess'},
  ],
};

/// Descriptor for `ListRoleAccessFunctionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRoleAccessFunctionRequestDescriptor = $convert.base64Decode(
    'Ch1MaXN0Um9sZUFjY2Vzc0Z1bmN0aW9uUmVxdWVzdBIWCgZhY2Nlc3MYASABKAlSBmFjY2Vzcx'
    'IdCgpzdWJfYWNjZXNzGAIgASgJUglzdWJBY2Nlc3M=');

@$core.Deprecated('Use listAccessFunctionRequestDescriptor instead')
const ListAccessFunctionRequest$json = {
  '1': 'ListAccessFunctionRequest',
  '2': [
    {'1': 'search_type', '3': 1, '4': 1, '5': 9, '10': 'searchType'},
    {'1': 'role_id', '3': 2, '4': 1, '5': 13, '10': 'roleId'},
  ],
};

/// Descriptor for `ListAccessFunctionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAccessFunctionRequestDescriptor = $convert.base64Decode(
    'ChlMaXN0QWNjZXNzRnVuY3Rpb25SZXF1ZXN0Eh8KC3NlYXJjaF90eXBlGAEgASgJUgpzZWFyY2'
    'hUeXBlEhcKB3JvbGVfaWQYAiABKA1SBnJvbGVJZA==');

@$core.Deprecated('Use listAccessFunctionResponseDescriptor instead')
const ListAccessFunctionResponse$json = {
  '1': 'ListAccessFunctionResponse',
  '2': [
    {'1': 'accesses', '3': 1, '4': 3, '5': 11, '6': '.usrpb.AccessFunction', '10': 'accesses'},
  ],
};

/// Descriptor for `ListAccessFunctionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAccessFunctionResponseDescriptor = $convert.base64Decode(
    'ChpMaXN0QWNjZXNzRnVuY3Rpb25SZXNwb25zZRIxCghhY2Nlc3NlcxgBIAMoCzIVLnVzcnBiLk'
    'FjY2Vzc0Z1bmN0aW9uUghhY2Nlc3Nlcw==');

@$core.Deprecated('Use addRemoveAccessFunctionRequestDescriptor instead')
const AddRemoveAccessFunctionRequest$json = {
  '1': 'AddRemoveAccessFunctionRequest',
  '2': [
    {'1': 'role_id', '3': 1, '4': 1, '5': 13, '10': 'roleId'},
    {'1': 'access', '3': 2, '4': 1, '5': 9, '10': 'access'},
    {'1': 'sub_access', '3': 3, '4': 1, '5': 9, '10': 'subAccess'},
  ],
};

/// Descriptor for `AddRemoveAccessFunctionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addRemoveAccessFunctionRequestDescriptor = $convert.base64Decode(
    'Ch5BZGRSZW1vdmVBY2Nlc3NGdW5jdGlvblJlcXVlc3QSFwoHcm9sZV9pZBgBIAEoDVIGcm9sZU'
    'lkEhYKBmFjY2VzcxgCIAEoCVIGYWNjZXNzEh0KCnN1Yl9hY2Nlc3MYAyABKAlSCXN1YkFjY2Vz'
    'cw==');

