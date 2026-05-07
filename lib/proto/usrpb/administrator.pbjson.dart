//
//  Generated code. Do not modify.
//  source: proto/usrpb/administrator.proto
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

@$core.Deprecated('Use administratorDescriptor instead')
const Administrator$json = {
  '1': 'Administrator',
  '2': [
    {'1': 'usr_id', '3': 1, '4': 1, '5': 13, '8': {}, '10': 'usrId'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'email'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'password', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'password'},
    {'1': 'mobile_no', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'mobileNo'},
    {'1': 'user_type', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'userType'},
    {'1': 'status', '3': 7, '4': 1, '5': 9, '8': {}, '10': 'status'},
    {'1': 'authentication_mode', '3': 8, '4': 1, '5': 9, '8': {}, '10': 'authenticationMode'},
    {'1': 'account_id', '3': 9, '4': 1, '5': 13, '8': {}, '10': 'accountId'},
    {'1': 'correspondent', '3': 10, '4': 1, '5': 9, '8': {}, '10': 'correspondent'},
    {'1': 'account_no', '3': 11, '4': 1, '5': 9, '8': {}, '10': 'accountNo'},
    {'1': 'role_id', '3': 12, '4': 1, '5': 13, '8': {}, '10': 'roleId'},
    {'1': 'role_name', '3': 13, '4': 1, '5': 9, '8': {}, '10': 'roleName'},
    {'1': 'onboarding_percent', '3': 14, '4': 1, '5': 9, '8': {}, '10': 'onboardingPercent'},
    {'1': 'created_by', '3': 15, '4': 1, '5': 9, '8': {}, '10': 'createdBy'},
    {'1': 'modified_by', '3': 16, '4': 1, '5': 9, '8': {}, '10': 'modifiedBy'},
    {'1': 'created_at', '3': 17, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'createdAt'},
    {'1': 'modified_at', '3': 18, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'modifiedAt'},
    {'1': 'last_login', '3': 19, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'lastLogin'},
    {'1': 'language', '3': 20, '4': 1, '5': 9, '8': {}, '10': 'language'},
  ],
};

/// Descriptor for `Administrator`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List administratorDescriptor = $convert.base64Decode(
    'Cg1BZG1pbmlzdHJhdG9yEm4KBnVzcl9pZBgBIAEoDUJXkkFUMk9TeXN0ZW0gZ2VuZXJhdGVkIH'
    'ByaW1hcnkga2V5LiBSZXF1aXJlZCBpbiBlZGl0LiBWYWx1ZSBpcyBkaXNyZWdhcmRlZCBvbiBj'
    'cmVhdGUuSgExUgV1c3JJZBJcCgVlbWFpbBgCIAEoCUJGkkFDMh5VbmlxdWUgZW1haWwgcGVyIG'
    'NvcnJlc3BvbmRlbnRKFyJqb2huZG9lQHRlc3RlbWFpbC5jb20ieGTSAQVlbWFpbFIFZW1haWwS'
    'PgoEbmFtZRgDIAEoCUIqkkEnMhBVc2VyJ3MgZnVsbCBuYW1lSgoiSm9obiBEb2UieGTSAQRuYW'
    '1lUgRuYW1lEmoKCHBhc3N3b3JkGAQgASgJQk6SQUsyL1VzZXIncyBwYXNzd29yZC4gTXVzdCBi'
    'ZSBhdCBsZWFzdCA4IGNoYXJhY3RlcnMuSgoiVGVzdDEyMzQigAEI0gEIcGFzc3dvcmRSCHBhc3'
    'N3b3JkElMKCW1vYmlsZV9ubxgFIAEoCUI2kkEzMg5Db250YWN0IG51bWJlckoSIis2MyA5MTEg'
    'MTExIDExMTEieJYB0gEJbW9iaWxlX25vUghtb2JpbGVObxKUAQoJdXNlcl90eXBlGAYgASgJQn'
    'eSQXQyWkNoZWNrIC92MS9zeXN0ZW1jb2RlL2xpc3QgQVBJIGZvciB2YWxpZCB2YWx1ZXMgKHR5'
    'cGUgPSAnVXNlciBUeXBlJyksIHVzZSB0aGUgJ2NvZGUnIHZhbHVlLkoIIkNsaWVudCJ4MtIBCX'
    'VzZXJfdHlwZVIIdXNlclR5cGUSogEKBnN0YXR1cxgHIAEoCUKJAZJBhQEybkNoZWNrIC92MS9z'
    'eXN0ZW1jb2RlL2xpc3QgQVBJIGZvciB2YWxpZCB2YWx1ZXMgKHR5cGU6ICdTdGF0dXMnLCBzdW'
    'JUeXBlID0gJ1VzZXIgU2V0dXAnKSwgdXNlIHRoZSAnY29kZScgdmFsdWUuSggiQWN0aXZlIngU'
    '0gEGc3RhdHVzUgZzdGF0dXMSsAEKE2F1dGhlbnRpY2F0aW9uX21vZGUYCCABKAlCf5JBfDJZV2'
    'F5cyB0byBhdXRoZW50aWNhdGUgdXNlciBmb3IgbG9naW4sIGNvbW1hIHNlcGFyYXRlZCBzdHJp'
    'bmcsIHZhbGlkIHZhbHVlcyBhcmUgRW1haWwsVGV4dC5KByJFbWFpbCJ4MtIBE2F1dGhlbnRpY2'
    'F0aW9uX21vZGVSEmF1dGhlbnRpY2F0aW9uTW9kZRJ1CgphY2NvdW50X2lkGAkgASgNQlaSQVMy'
    'UUFjY291bnQgdW5pcXVlIGlkZW50aWZpZXIsIHJlcXVpcmVkIHdoZW4gY29ycmVzcG9uZGVudC'
    'BhbmQgYWNjb3VudCBubyBhcmUgbm90IHNldFIJYWNjb3VudElkEvYBCg1jb3JyZXNwb25kZW50'
    'GAogASgJQs8BkkHLATK7AVRoZSBuYW1lIGdpdmVuIHRvIGEgYmFuaywgYnJva2VyLCBkZWFsZX'
    'IsIG9yIGZpbmFuY2lhbCBpbnN0aXR1dGlvbiB0aGF0IGFjdHMgb24gYmVoYWxmIG9mIGFub3Ro'
    'ZXIgZmluYW5jaWFsIGluc3RpdHV0aW9uLiBGb3VyIEFscGhhIG51bWVyaWMgY2hhcmFjdGVyLi'
    'BSZXF1aXJlZCB3aGVuIGFjY291bnQgaWQgaXMgbm90IHNldC5KBiJTQVNTIngEgAEEUg1jb3Jy'
    'ZXNwb25kZW50Et0BCgphY2NvdW50X25vGAsgASgJQr0BkkG5ATKmAVRoZSBwcmltYXJ5IGlkZW'
    '50aWZpZXIgZm9yIG93bmVyc2hpcCBvZiBhbiBhY2NvdW50LCB3aGV0aGVyIGEgdmVuZG9yIGFj'
    'Y291bnQsIGEgY2hlY2tpbmcgb3IgYnJva2VyYWdlIGFjY291bnQsIG9yIGEgbG9hbiBhY2NvdW'
    '50LiBSZXF1aXJlZCB3aGVuIGFjY291bnQgaWQgaXMgbm90IHNldC5KDCJKT0hORE9FMDAxIngy'
    'UglhY2NvdW50Tm8SlAEKB3JvbGVfaWQYDCABKA1Ce5JBeDJ2VW5pcXVlIGlkZW50aWZpY2F0aW'
    '9uIG51bWJlciBvZiB0aGUgcm9sZSwgZGVmYXVsdHMgdG8gJ0RlZmF1bHQgQ2xpZW50JyByb2xl'
    'IGlkLiBTZWUgL3YxL3JvbGUvbGF6eV9saXN0IEFQSSBmb3Igb3B0aW9uc1IGcm9sZUlkElAKCX'
    'JvbGVfbmFtZRgNIAEoCUIzkkEwMhhSb2xlIG5hbWUgb2YgdGhlIHJvbGUgaWRAAUoQIkRlZmF1'
    'bHQgQ2xpZW50IngyUghyb2xlTmFtZRKlAQoSb25ib2FyZGluZ19wZXJjZW50GA4gASgJQnaSQX'
    'MyaFRoZSBwZXJjZW50YWdlIG9mIHRoZSBhY2NvdW50IG9uYm9hcmRpbmcgcHJvY2VzcyB3aGVu'
    'IHRoZSB1c2VyIGlzIGNyZWF0ZWQgdXNpbmcgcmVnaXN0cmF0aW9uL29uYm9hcmRpbmcuQAFKBS'
    'IxMDAiUhFvbmJvYXJkaW5nUGVyY2VudBJVCgpjcmVhdGVkX2J5GA8gASgJQjaSQTMyIFRoZSB1'
    'c2VyIHdobyBjcmVhdGVkIHRoZSByZWNvcmQuQAFKCiJKb2huIERvZSJ4lgFSCWNyZWF0ZWRCeR'
    'JjCgttb2RpZmllZF9ieRgQIAEoCUJCkkE/MixUaGUgdXNlciB3aG8gY29tbWl0ZWQgY2hhbmdl'
    'cyB0byB0aGUgcmVjb3JkLkABSgoiSm9obiBEb2UieJYBUgptb2RpZmllZEJ5Em4KCmNyZWF0ZW'
    'RfYXQYESABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQjOSQTAyLFN5c3RlbSBkYXRl'
    'IHRpbWUgd2hlbiB0aGUgcmVjb3JkIHdhcyBjcmVhdGVkQAFSCWNyZWF0ZWRBdBJxCgttb2RpZm'
    'llZF9hdBgSIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCNJJBMTItU3lzdGVtIGRh'
    'dGUgdGltZSB3aGVuIHRoZSByZWNvcmQgd2FzIG1vZGlmaWVkQAFSCm1vZGlmaWVkQXQSYgoKbG'
    'FzdF9sb2dpbhgTIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCJ5JBJDIgVGhlIGxh'
    'c3QgdGltZSB0aGUgdXNlciBsb2dnZWQgaW5AAVIJbGFzdExvZ2luEmoKCGxhbmd1YWdlGBQgAS'
    'gJQk6SQUsyPlRoZSBsYW5ndWFnZSBjb2RlIGZvciB0aGUgdXNlciwgZm9sbG93aW5nIElTTyA2'
    'MzktMSBzdGFuZGFyZHMuSgQiZW4ieAKAAQJSCGxhbmd1YWdl');

@$core.Deprecated('Use listAdministratorRequestDescriptor instead')
const ListAdministratorRequest$json = {
  '1': 'ListAdministratorRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'email'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'user_type', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'userType'},
    {'1': 'status', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'status'},
    {'1': 'role_id', '3': 5, '4': 1, '5': 13, '8': {}, '10': 'roleId'},
    {'1': 'is_pending_clients', '3': 6, '4': 1, '5': 8, '8': {}, '10': 'isPendingClients'},
    {'1': 'pagination', '3': 7, '4': 1, '5': 11, '6': '.utilspb.Pagination', '10': 'pagination'},
  ],
};

/// Descriptor for `ListAdministratorRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAdministratorRequestDescriptor = $convert.base64Decode(
    'ChhMaXN0QWRtaW5pc3RyYXRvclJlcXVlc3QSTwoFZW1haWwYASABKAlCOZJBNjIZZW1haWwgYW'
    'RkcmVzcyBvZiB0aGUgdXNlckoXImpvaG5kb2VAdGVzdGVtYWlsLmNvbSJ4ZFIFZW1haWwSNwoE'
    'bmFtZRgCIAEoCUIjkkEgMhBVc2VyJ3MgZnVsbCBuYW1lSgoiSm9obiBEb2UieGRSBG5hbWUSiA'
    'EKCXVzZXJfdHlwZRgDIAEoCUJrkkFoMlpDaGVjayAvdjEvc3lzdGVtY29kZS9saXN0IEFQSSBm'
    'b3IgdmFsaWQgdmFsdWVzICh0eXBlID0gJ1VzZXIgVHlwZScpLCB1c2UgdGhlICdjb2RlJyB2YW'
    'x1ZS5KCCJDbGllbnQieDJSCHVzZXJUeXBlEpcBCgZzdGF0dXMYBCABKAlCf5JBfDJuQ2hlY2sg'
    'L3YxL3N5c3RlbWNvZGUvbGlzdCBBUEkgZm9yIHZhbGlkIHZhbHVlcyAodHlwZTogJ1N0YXR1cy'
    'csIHN1YlR5cGUgPSAnVXNlciBTZXR1cCcpLCB1c2UgdGhlICdjb2RlJyB2YWx1ZS5KCCJBY3Rp'
    'dmUieBRSBnN0YXR1cxJNCgdyb2xlX2lkGAUgASgNQjSSQTEyL1VuaXF1ZSBpZGVudGlmaWNhdG'
    'lvbiBudW1iZXIgb2YgdGhlIHVzZXIncyByb2xlUgZyb2xlSWQSjQEKEmlzX3BlbmRpbmdfY2xp'
    'ZW50cxgGIAEoCEJfkkFcMlNTZXQgdG8gdHJ1ZSB0byBmaWx0ZXIgb25seSB1c2VycyB3aXRoIH'
    'N0YXR1cyAnRm9yIFJldmlldycsICdJbiBQcm9ncmVzcycsICdQZW5kaW5nJ0oFZmFsc2VSEGlz'
    'UGVuZGluZ0NsaWVudHMSMwoKcGFnaW5hdGlvbhgHIAEoCzITLnV0aWxzcGIuUGFnaW5hdGlvbl'
    'IKcGFnaW5hdGlvbg==');

@$core.Deprecated('Use listAdministratorResponseDescriptor instead')
const ListAdministratorResponse$json = {
  '1': 'ListAdministratorResponse',
  '2': [
    {'1': 'administrators', '3': 1, '4': 3, '5': 11, '6': '.usrpb.Administrator', '10': 'administrators'},
    {'1': 'summary', '3': 2, '4': 1, '5': 11, '6': '.usrpb.ListAdministratorSummary', '10': 'summary'},
  ],
};

/// Descriptor for `ListAdministratorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAdministratorResponseDescriptor = $convert.base64Decode(
    'ChlMaXN0QWRtaW5pc3RyYXRvclJlc3BvbnNlEjwKDmFkbWluaXN0cmF0b3JzGAEgAygLMhQudX'
    'NycGIuQWRtaW5pc3RyYXRvclIOYWRtaW5pc3RyYXRvcnMSOQoHc3VtbWFyeRgCIAEoCzIfLnVz'
    'cnBiLkxpc3RBZG1pbmlzdHJhdG9yU3VtbWFyeVIHc3VtbWFyeQ==');

@$core.Deprecated('Use listAdministratorSummaryDescriptor instead')
const ListAdministratorSummary$json = {
  '1': 'ListAdministratorSummary',
  '2': [
    {'1': 'total_rows', '3': 1, '4': 1, '5': 13, '8': {}, '10': 'totalRows'},
  ],
};

/// Descriptor for `ListAdministratorSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAdministratorSummaryDescriptor = $convert.base64Decode(
    'ChhMaXN0QWRtaW5pc3RyYXRvclN1bW1hcnkSPgoKdG90YWxfcm93cxgBIAEoDUIfkkEcMhdUb3'
    'RhbCBudW1iZXIgb2YgcmVjb3Jkc0oBMVIJdG90YWxSb3dz');

@$core.Deprecated('Use createAdministratorResponseDescriptor instead')
const CreateAdministratorResponse$json = {
  '1': 'CreateAdministratorResponse',
  '2': [
    {'1': 'administrator', '3': 1, '4': 1, '5': 11, '6': '.usrpb.Administrator', '10': 'administrator'},
  ],
};

/// Descriptor for `CreateAdministratorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createAdministratorResponseDescriptor = $convert.base64Decode(
    'ChtDcmVhdGVBZG1pbmlzdHJhdG9yUmVzcG9uc2USOgoNYWRtaW5pc3RyYXRvchgBIAEoCzIULn'
    'VzcnBiLkFkbWluaXN0cmF0b3JSDWFkbWluaXN0cmF0b3I=');

@$core.Deprecated('Use updateAdministratorResponseDescriptor instead')
const UpdateAdministratorResponse$json = {
  '1': 'UpdateAdministratorResponse',
  '2': [
    {'1': 'administrator', '3': 1, '4': 1, '5': 11, '6': '.usrpb.Administrator', '10': 'administrator'},
  ],
};

/// Descriptor for `UpdateAdministratorResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateAdministratorResponseDescriptor = $convert.base64Decode(
    'ChtVcGRhdGVBZG1pbmlzdHJhdG9yUmVzcG9uc2USOgoNYWRtaW5pc3RyYXRvchgBIAEoCzIULn'
    'VzcnBiLkFkbWluaXN0cmF0b3JSDWFkbWluaXN0cmF0b3I=');

@$core.Deprecated('Use updateUserSettingsRequestDescriptor instead')
const UpdateUserSettingsRequest$json = {
  '1': 'UpdateUserSettingsRequest',
  '2': [
    {'1': 'mobile_no', '3': 1, '4': 1, '5': 9, '10': 'mobileNo'},
    {'1': 'authentication_mode', '3': 2, '4': 1, '5': 9, '10': 'authenticationMode'},
  ],
};

/// Descriptor for `UpdateUserSettingsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserSettingsRequestDescriptor = $convert.base64Decode(
    'ChlVcGRhdGVVc2VyU2V0dGluZ3NSZXF1ZXN0EhsKCW1vYmlsZV9ubxgBIAEoCVIIbW9iaWxlTm'
    '8SLwoTYXV0aGVudGljYXRpb25fbW9kZRgCIAEoCVISYXV0aGVudGljYXRpb25Nb2Rl');

@$core.Deprecated('Use updateUserSettingsResponseDescriptor instead')
const UpdateUserSettingsResponse$json = {
  '1': 'UpdateUserSettingsResponse',
  '2': [
    {'1': 'success', '3': 1, '4': 1, '5': 9, '10': 'success'},
  ],
};

/// Descriptor for `UpdateUserSettingsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserSettingsResponseDescriptor = $convert.base64Decode(
    'ChpVcGRhdGVVc2VyU2V0dGluZ3NSZXNwb25zZRIYCgdzdWNjZXNzGAEgASgJUgdzdWNjZXNz');

@$core.Deprecated('Use changePasswordRequestDescriptor instead')
const ChangePasswordRequest$json = {
  '1': 'ChangePasswordRequest',
  '2': [
    {'1': 'old_password', '3': 1, '4': 1, '5': 9, '10': 'oldPassword'},
    {'1': 'new_password', '3': 2, '4': 1, '5': 9, '10': 'newPassword'},
  ],
};

/// Descriptor for `ChangePasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changePasswordRequestDescriptor = $convert.base64Decode(
    'ChVDaGFuZ2VQYXNzd29yZFJlcXVlc3QSIQoMb2xkX3Bhc3N3b3JkGAEgASgJUgtvbGRQYXNzd2'
    '9yZBIhCgxuZXdfcGFzc3dvcmQYAiABKAlSC25ld1Bhc3N3b3Jk');

@$core.Deprecated('Use changePasswordResponseDescriptor instead')
const ChangePasswordResponse$json = {
  '1': 'ChangePasswordResponse',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `ChangePasswordResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changePasswordResponseDescriptor = $convert.base64Decode(
    'ChZDaGFuZ2VQYXNzd29yZFJlc3BvbnNlEhYKBnN0YXR1cxgBIAEoCVIGc3RhdHVzEhAKA21zZx'
    'gCIAEoCVIDbXNn');

@$core.Deprecated('Use userAccountAccessDescriptor instead')
const UserAccountAccess$json = {
  '1': 'UserAccountAccess',
  '2': [
    {'1': 'correspondent', '3': 1, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'account_no', '3': 2, '4': 1, '5': 9, '10': 'accountNo'},
  ],
};

/// Descriptor for `UserAccountAccess`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userAccountAccessDescriptor = $convert.base64Decode(
    'ChFVc2VyQWNjb3VudEFjY2VzcxIkCg1jb3JyZXNwb25kZW50GAEgASgJUg1jb3JyZXNwb25kZW'
    '50Eh0KCmFjY291bnRfbm8YAiABKAlSCWFjY291bnRObw==');

@$core.Deprecated('Use emptyRequestDescriptor instead')
const EmptyRequest$json = {
  '1': 'EmptyRequest',
};

/// Descriptor for `EmptyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyRequestDescriptor = $convert.base64Decode(
    'CgxFbXB0eVJlcXVlc3Q=');

@$core.Deprecated('Use deleteAccessResponseDescriptor instead')
const DeleteAccessResponse$json = {
  '1': 'DeleteAccessResponse',
  '2': [
    {'1': 'access_id', '3': 1, '4': 1, '5': 13, '10': 'accessId'},
  ],
};

/// Descriptor for `DeleteAccessResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteAccessResponseDescriptor = $convert.base64Decode(
    'ChREZWxldGVBY2Nlc3NSZXNwb25zZRIbCglhY2Nlc3NfaWQYASABKA1SCGFjY2Vzc0lk');

@$core.Deprecated('Use forgotPasswordCheckEmailRequestDescriptor instead')
const ForgotPasswordCheckEmailRequest$json = {
  '1': 'ForgotPasswordCheckEmailRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    {'1': 'correspondent', '3': 2, '4': 1, '5': 9, '10': 'correspondent'},
  ],
};

/// Descriptor for `ForgotPasswordCheckEmailRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forgotPasswordCheckEmailRequestDescriptor = $convert.base64Decode(
    'Ch9Gb3Jnb3RQYXNzd29yZENoZWNrRW1haWxSZXF1ZXN0EhQKBWVtYWlsGAEgASgJUgVlbWFpbB'
    'IkCg1jb3JyZXNwb25kZW50GAIgASgJUg1jb3JyZXNwb25kZW50');

@$core.Deprecated('Use forgotPasswordCheckEmailResponseDescriptor instead')
const ForgotPasswordCheckEmailResponse$json = {
  '1': 'ForgotPasswordCheckEmailResponse',
  '2': [
    {'1': 'correspondents', '3': 1, '4': 3, '5': 9, '10': 'correspondents'},
  ],
};

/// Descriptor for `ForgotPasswordCheckEmailResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forgotPasswordCheckEmailResponseDescriptor = $convert.base64Decode(
    'CiBGb3Jnb3RQYXNzd29yZENoZWNrRW1haWxSZXNwb25zZRImCg5jb3JyZXNwb25kZW50cxgBIA'
    'MoCVIOY29ycmVzcG9uZGVudHM=');

@$core.Deprecated('Use forgotPasswordRequestDescriptor instead')
const ForgotPasswordRequest$json = {
  '1': 'ForgotPasswordRequest',
  '2': [
    {'1': 'external_auth_id', '3': 1, '4': 1, '5': 9, '10': 'externalAuthId'},
    {'1': 'code', '3': 2, '4': 1, '5': 13, '10': 'code'},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    {'1': 'new_password', '3': 4, '4': 1, '5': 9, '10': 'newPassword'},
    {'1': 'correspondent', '3': 5, '4': 1, '5': 9, '10': 'correspondent'},
  ],
};

/// Descriptor for `ForgotPasswordRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forgotPasswordRequestDescriptor = $convert.base64Decode(
    'ChVGb3Jnb3RQYXNzd29yZFJlcXVlc3QSKAoQZXh0ZXJuYWxfYXV0aF9pZBgBIAEoCVIOZXh0ZX'
    'JuYWxBdXRoSWQSEgoEY29kZRgCIAEoDVIEY29kZRIUCgVlbWFpbBgDIAEoCVIFZW1haWwSIQoM'
    'bmV3X3Bhc3N3b3JkGAQgASgJUgtuZXdQYXNzd29yZBIkCg1jb3JyZXNwb25kZW50GAUgASgJUg'
    '1jb3JyZXNwb25kZW50');

@$core.Deprecated('Use lazyUserDescriptor instead')
const LazyUser$json = {
  '1': 'LazyUser',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    {'1': 'user_id', '3': 3, '4': 1, '5': 13, '10': 'userId'},
  ],
};

/// Descriptor for `LazyUser`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lazyUserDescriptor = $convert.base64Decode(
    'CghMYXp5VXNlchISCgRuYW1lGAEgASgJUgRuYW1lEhQKBWVtYWlsGAIgASgJUgVlbWFpbBIXCg'
    'd1c2VyX2lkGAMgASgNUgZ1c2VySWQ=');

@$core.Deprecated('Use lazyUsersRequestDescriptor instead')
const LazyUsersRequest$json = {
  '1': 'LazyUsersRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `LazyUsersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lazyUsersRequestDescriptor = $convert.base64Decode(
    'ChBMYXp5VXNlcnNSZXF1ZXN0EhAKA2tleRgBIAEoCVIDa2V5');

@$core.Deprecated('Use lazyUsersResponseDescriptor instead')
const LazyUsersResponse$json = {
  '1': 'LazyUsersResponse',
  '2': [
    {'1': 'lazy_users', '3': 1, '4': 3, '5': 11, '6': '.usrpb.LazyUser', '10': 'lazyUsers'},
  ],
};

/// Descriptor for `LazyUsersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lazyUsersResponseDescriptor = $convert.base64Decode(
    'ChFMYXp5VXNlcnNSZXNwb25zZRIuCgpsYXp5X3VzZXJzGAEgAygLMg8udXNycGIuTGF6eVVzZX'
    'JSCWxhenlVc2Vycw==');

@$core.Deprecated('Use currentUserDetailsResponseDescriptor instead')
const CurrentUserDetailsResponse$json = {
  '1': 'CurrentUserDetailsResponse',
  '2': [
    {'1': 'usr_id', '3': 1, '4': 1, '5': 13, '10': 'usrId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    {'1': 'mobile_no', '3': 4, '4': 1, '5': 9, '10': 'mobileNo'},
    {'1': 'role_name', '3': 5, '4': 1, '5': 9, '10': 'roleName'},
    {'1': 'authentication_mode', '3': 6, '4': 1, '5': 9, '10': 'authenticationMode'},
    {'1': 'correspondent', '3': 7, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'has_mfa_keys', '3': 8, '4': 1, '5': 8, '10': 'hasMfaKeys'},
    {'1': 'role_id', '3': 9, '4': 1, '5': 13, '10': 'roleId'},
  ],
};

/// Descriptor for `CurrentUserDetailsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List currentUserDetailsResponseDescriptor = $convert.base64Decode(
    'ChpDdXJyZW50VXNlckRldGFpbHNSZXNwb25zZRIVCgZ1c3JfaWQYASABKA1SBXVzcklkEhIKBG'
    '5hbWUYAiABKAlSBG5hbWUSFAoFZW1haWwYAyABKAlSBWVtYWlsEhsKCW1vYmlsZV9ubxgEIAEo'
    'CVIIbW9iaWxlTm8SGwoJcm9sZV9uYW1lGAUgASgJUghyb2xlTmFtZRIvChNhdXRoZW50aWNhdG'
    'lvbl9tb2RlGAYgASgJUhJhdXRoZW50aWNhdGlvbk1vZGUSJAoNY29ycmVzcG9uZGVudBgHIAEo'
    'CVINY29ycmVzcG9uZGVudBIgCgxoYXNfbWZhX2tleXMYCCABKAhSCmhhc01mYUtleXMSFwoHcm'
    '9sZV9pZBgJIAEoDVIGcm9sZUlk');

@$core.Deprecated('Use getUserOtpAuthUrlResponseDescriptor instead')
const GetUserOtpAuthUrlResponse$json = {
  '1': 'GetUserOtpAuthUrlResponse',
  '2': [
    {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    {'1': 'has_authenticator', '3': 2, '4': 1, '5': 8, '10': 'hasAuthenticator'},
  ],
};

/// Descriptor for `GetUserOtpAuthUrlResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserOtpAuthUrlResponseDescriptor = $convert.base64Decode(
    'ChlHZXRVc2VyT3RwQXV0aFVybFJlc3BvbnNlEhAKA3VybBgBIAEoCVIDdXJsEisKEWhhc19hdX'
    'RoZW50aWNhdG9yGAIgASgIUhBoYXNBdXRoZW50aWNhdG9y');

@$core.Deprecated('Use updateUserOtpAuthRequestDescriptor instead')
const UpdateUserOtpAuthRequest$json = {
  '1': 'UpdateUserOtpAuthRequest',
  '2': [
    {'1': 'validation_code', '3': 1, '4': 1, '5': 9, '10': 'validationCode'},
  ],
};

/// Descriptor for `UpdateUserOtpAuthRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateUserOtpAuthRequestDescriptor = $convert.base64Decode(
    'ChhVcGRhdGVVc2VyT3RwQXV0aFJlcXVlc3QSJwoPdmFsaWRhdGlvbl9jb2RlGAEgASgJUg52YW'
    'xpZGF0aW9uQ29kZQ==');

@$core.Deprecated('Use updateLanguageRequestDescriptor instead')
const UpdateLanguageRequest$json = {
  '1': 'UpdateLanguageRequest',
  '2': [
    {'1': 'usr_id', '3': 1, '4': 1, '5': 13, '10': 'usrId'},
    {'1': 'language', '3': 2, '4': 1, '5': 9, '10': 'language'},
  ],
};

/// Descriptor for `UpdateLanguageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateLanguageRequestDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVMYW5ndWFnZVJlcXVlc3QSFQoGdXNyX2lkGAEgASgNUgV1c3JJZBIaCghsYW5ndW'
    'FnZRgCIAEoCVIIbGFuZ3VhZ2U=');

@$core.Deprecated('Use changeRoleRequestDescriptor instead')
const ChangeRoleRequest$json = {
  '1': 'ChangeRoleRequest',
  '2': [
    {'1': 'usr_id', '3': 1, '4': 1, '5': 13, '10': 'usrId'},
    {'1': 'role_id', '3': 2, '4': 1, '5': 13, '10': 'roleId'},
  ],
};

/// Descriptor for `ChangeRoleRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changeRoleRequestDescriptor = $convert.base64Decode(
    'ChFDaGFuZ2VSb2xlUmVxdWVzdBIVCgZ1c3JfaWQYASABKA1SBXVzcklkEhcKB3JvbGVfaWQYAi'
    'ABKA1SBnJvbGVJZA==');

@$core.Deprecated('Use lazyAdministratorEmailRequestDescriptor instead')
const LazyAdministratorEmailRequest$json = {
  '1': 'LazyAdministratorEmailRequest',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'limit', '3': 2, '4': 1, '5': 13, '10': 'limit'},
  ],
};

/// Descriptor for `LazyAdministratorEmailRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lazyAdministratorEmailRequestDescriptor = $convert.base64Decode(
    'Ch1MYXp5QWRtaW5pc3RyYXRvckVtYWlsUmVxdWVzdBIQCgNrZXkYASABKAlSA2tleRIUCgVsaW'
    '1pdBgCIAEoDVIFbGltaXQ=');

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

