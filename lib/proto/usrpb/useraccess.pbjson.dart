//
//  Generated code. Do not modify.
//  source: proto/usrpb/useraccess.proto
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

@$core.Deprecated('Use userAccessDescriptor instead')
const UserAccess$json = {
  '1': 'UserAccess',
  '2': [
    {'1': 'page_id', '3': 1, '4': 1, '5': 13, '10': 'pageId'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 13, '10': 'userId'},
    {'1': 'menu', '3': 3, '4': 1, '5': 9, '10': 'menu'},
    {'1': 'sub_menu', '3': 4, '4': 1, '5': 9, '10': 'subMenu'},
    {'1': 'page_name', '3': 5, '4': 1, '5': 9, '10': 'pageName'},
    {'1': 'access', '3': 6, '4': 1, '5': 9, '10': 'access'},
    {'1': 'user_guide_id', '3': 7, '4': 1, '5': 13, '10': 'userGuideId'},
    {'1': 'role_id', '3': 8, '4': 1, '5': 13, '10': 'roleId'},
  ],
};

/// Descriptor for `UserAccess`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAccessDescriptor = $convert.base64Decode(
    'CgpVc2VyQWNjZXNzEhcKB3BhZ2VfaWQYASABKA1SBnBhZ2VJZBIXCgd1c2VyX2lkGAIgASgNUg'
    'Z1c2VySWQSEgoEbWVudRgDIAEoCVIEbWVudRIZCghzdWJfbWVudRgEIAEoCVIHc3ViTWVudRIb'
    'CglwYWdlX25hbWUYBSABKAlSCHBhZ2VOYW1lEhYKBmFjY2VzcxgGIAEoCVIGYWNjZXNzEiIKDX'
    'VzZXJfZ3VpZGVfaWQYByABKA1SC3VzZXJHdWlkZUlkEhcKB3JvbGVfaWQYCCABKA1SBnJvbGVJ'
    'ZA==');

@$core.Deprecated('Use listUserAccessRequestDescriptor instead')
const ListUserAccessRequest$json = {
  '1': 'ListUserAccessRequest',
  '2': [
    {'1': 'user_id', '3': 1, '4': 1, '5': 13, '10': 'userId'},
    {'1': 'menu', '3': 2, '4': 1, '5': 9, '10': 'menu'},
    {'1': 'sub_menu', '3': 3, '4': 1, '5': 9, '10': 'subMenu'},
    {'1': 'page_name', '3': 4, '4': 1, '5': 9, '10': 'pageName'},
    {'1': 'access', '3': 5, '4': 1, '5': 9, '10': 'access'},
    {'1': 'role_id', '3': 6, '4': 1, '5': 13, '10': 'roleId'},
  ],
};

/// Descriptor for `ListUserAccessRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listUserAccessRequestDescriptor = $convert.base64Decode(
    'ChVMaXN0VXNlckFjY2Vzc1JlcXVlc3QSFwoHdXNlcl9pZBgBIAEoDVIGdXNlcklkEhIKBG1lbn'
    'UYAiABKAlSBG1lbnUSGQoIc3ViX21lbnUYAyABKAlSB3N1Yk1lbnUSGwoJcGFnZV9uYW1lGAQg'
    'ASgJUghwYWdlTmFtZRIWCgZhY2Nlc3MYBSABKAlSBmFjY2VzcxIXCgdyb2xlX2lkGAYgASgNUg'
    'Zyb2xlSWQ=');

@$core.Deprecated('Use listUserAccessResponseDescriptor instead')
const ListUserAccessResponse$json = {
  '1': 'ListUserAccessResponse',
  '2': [
    {'1': 'user_accesses', '3': 1, '4': 3, '5': 11, '6': '.usrpb.UserAccess', '10': 'userAccesses'},
  ],
};

/// Descriptor for `ListUserAccessResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listUserAccessResponseDescriptor = $convert.base64Decode(
    'ChZMaXN0VXNlckFjY2Vzc1Jlc3BvbnNlEjYKDXVzZXJfYWNjZXNzZXMYASADKAsyES51c3JwYi'
    '5Vc2VyQWNjZXNzUgx1c2VyQWNjZXNzZXM=');

