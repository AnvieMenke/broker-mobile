//
//  Generated code. Do not modify.
//  source: proto/authpb/auth.proto
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

@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = {
  '1': 'LoginRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'email'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'password'},
    {'1': 'client_id', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'clientId'},
    {'1': 'authentication_mode', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'authenticationMode'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode(
    'CgxMb2dpblJlcXVlc3QSOgoFZW1haWwYASABKAlCJOBBApJBHkocIml0c3VwcG9ydEBzb2Z0d2'
    'FyZWFsZ28uY29tIlIFZW1haWwSNAoIcGFzc3dvcmQYAiABKAlCGOBBApJBEkoQInNlY3JldHBh'
    'c3N3b3JkIlIIcGFzc3dvcmQSPgoJY2xpZW50X2lkGAMgASgJQiHgQQKSQRtKGSJjbGllbnQuc2'
    '9mdHdhcmVhbGdvLmNvbSJSCGNsaWVudElkEjQKE2F1dGhlbnRpY2F0aW9uX21vZGUYBCABKAlC'
    'A+BBA1ISYXV0aGVudGljYXRpb25Nb2Rl');

@$core.Deprecated('Use loginWebRequestDescriptor instead')
const LoginWebRequest$json = {
  '1': 'LoginWebRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    {'1': 'authentication_mode', '3': 3, '4': 1, '5': 9, '10': 'authenticationMode'},
    {'1': 'client_id', '3': 4, '4': 1, '5': 9, '10': 'clientId'},
  ],
};

/// Descriptor for `LoginWebRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginWebRequestDescriptor = $convert.base64Decode(
    'Cg9Mb2dpbldlYlJlcXVlc3QSFAoFZW1haWwYASABKAlSBWVtYWlsEhoKCHBhc3N3b3JkGAIgAS'
    'gJUghwYXNzd29yZBIvChNhdXRoZW50aWNhdGlvbl9tb2RlGAMgASgJUhJhdXRoZW50aWNhdGlv'
    'bk1vZGUSGwoJY2xpZW50X2lkGAQgASgJUghjbGllbnRJZA==');

@$core.Deprecated('Use loginWebResponseDescriptor instead')
const LoginWebResponse$json = {
  '1': 'LoginWebResponse',
  '2': [
    {'1': 'session_key', '3': 1, '4': 1, '5': 9, '10': 'sessionKey'},
  ],
};

/// Descriptor for `LoginWebResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginWebResponseDescriptor = $convert.base64Decode(
    'ChBMb2dpbldlYlJlc3BvbnNlEh8KC3Nlc3Npb25fa2V5GAEgASgJUgpzZXNzaW9uS2V5');

@$core.Deprecated('Use loginUserRequestDescriptor instead')
const LoginUserRequest$json = {
  '1': 'LoginUserRequest',
  '2': [
    {'1': 'i_token', '3': 1, '4': 1, '5': 9, '10': 'iToken'},
    {'1': 'i_user', '3': 2, '4': 1, '5': 13, '10': 'iUser'},
    {'1': 'client_id', '3': 3, '4': 1, '5': 9, '10': 'clientId'},
  ],
};

/// Descriptor for `LoginUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginUserRequestDescriptor = $convert.base64Decode(
    'ChBMb2dpblVzZXJSZXF1ZXN0EhcKB2lfdG9rZW4YASABKAlSBmlUb2tlbhIVCgZpX3VzZXIYAi'
    'ABKA1SBWlVc2VyEhsKCWNsaWVudF9pZBgDIAEoCVIIY2xpZW50SWQ=');

@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = {
  '1': 'LoginResponse',
  '2': [
    {'1': 'access_token', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    {'1': 'refresh_token', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
    {'1': 'user_accesses', '3': 3, '4': 3, '5': 11, '6': '.usrpb.UserAccess', '10': 'userAccesses'},
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode(
    'Cg1Mb2dpblJlc3BvbnNlEiEKDGFjY2Vzc190b2tlbhgBIAEoCVILYWNjZXNzVG9rZW4SIwoNcm'
    'VmcmVzaF90b2tlbhgCIAEoCVIMcmVmcmVzaFRva2VuEjYKDXVzZXJfYWNjZXNzZXMYAyADKAsy'
    'ES51c3JwYi5Vc2VyQWNjZXNzUgx1c2VyQWNjZXNzZXM=');

@$core.Deprecated('Use refreshTokenRequestDescriptor instead')
const RefreshTokenRequest$json = {
  '1': 'RefreshTokenRequest',
  '2': [
    {'1': 'refresh_token', '3': 1, '4': 1, '5': 9, '10': 'refreshToken'},
    {'1': 'client_id', '3': 2, '4': 1, '5': 9, '10': 'clientId'},
  ],
};

/// Descriptor for `RefreshTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshTokenRequestDescriptor = $convert.base64Decode(
    'ChNSZWZyZXNoVG9rZW5SZXF1ZXN0EiMKDXJlZnJlc2hfdG9rZW4YASABKAlSDHJlZnJlc2hUb2'
    'tlbhIbCgljbGllbnRfaWQYAiABKAlSCGNsaWVudElk');

@$core.Deprecated('Use validateCodeRequestDescriptor instead')
const ValidateCodeRequest$json = {
  '1': 'ValidateCodeRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    {'1': 'code', '3': 3, '4': 1, '5': 9, '10': 'code'},
    {'1': 'authentication_mode', '3': 4, '4': 1, '5': 9, '10': 'authenticationMode'},
    {'1': 'session_key', '3': 5, '4': 1, '5': 9, '10': 'sessionKey'},
    {'1': 'client_id', '3': 6, '4': 1, '5': 9, '10': 'clientId'},
  ],
};

/// Descriptor for `ValidateCodeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateCodeRequestDescriptor = $convert.base64Decode(
    'ChNWYWxpZGF0ZUNvZGVSZXF1ZXN0EhQKBWVtYWlsGAEgASgJUgVlbWFpbBIaCghwYXNzd29yZB'
    'gCIAEoCVIIcGFzc3dvcmQSEgoEY29kZRgDIAEoCVIEY29kZRIvChNhdXRoZW50aWNhdGlvbl9t'
    'b2RlGAQgASgJUhJhdXRoZW50aWNhdGlvbk1vZGUSHwoLc2Vzc2lvbl9rZXkYBSABKAlSCnNlc3'
    'Npb25LZXkSGwoJY2xpZW50X2lkGAYgASgJUghjbGllbnRJZA==');

@$core.Deprecated('Use validateCodeResponseDescriptor instead')
const ValidateCodeResponse$json = {
  '1': 'ValidateCodeResponse',
  '2': [
    {'1': 'access_token', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    {'1': 'refresh_token', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
    {'1': 'user_accesses', '3': 3, '4': 3, '5': 11, '6': '.usrpb.UserAccess', '10': 'userAccesses'},
  ],
};

/// Descriptor for `ValidateCodeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateCodeResponseDescriptor = $convert.base64Decode(
    'ChRWYWxpZGF0ZUNvZGVSZXNwb25zZRIhCgxhY2Nlc3NfdG9rZW4YASABKAlSC2FjY2Vzc1Rva2'
    'VuEiMKDXJlZnJlc2hfdG9rZW4YAiABKAlSDHJlZnJlc2hUb2tlbhI2Cg11c2VyX2FjY2Vzc2Vz'
    'GAMgAygLMhEudXNycGIuVXNlckFjY2Vzc1IMdXNlckFjY2Vzc2Vz');

@$core.Deprecated('Use refreshAccessRequestDescriptor instead')
const RefreshAccessRequest$json = {
  '1': 'RefreshAccessRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `RefreshAccessRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshAccessRequestDescriptor = $convert.base64Decode(
    'ChRSZWZyZXNoQWNjZXNzUmVxdWVzdBIUCgVlbWFpbBgBIAEoCVIFZW1haWw=');

@$core.Deprecated('Use refreshAccessResponseDescriptor instead')
const RefreshAccessResponse$json = {
  '1': 'RefreshAccessResponse',
  '2': [
    {'1': 'user_accesses', '3': 1, '4': 3, '5': 11, '6': '.usrpb.UserAccess', '10': 'userAccesses'},
  ],
};

/// Descriptor for `RefreshAccessResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshAccessResponseDescriptor = $convert.base64Decode(
    'ChVSZWZyZXNoQWNjZXNzUmVzcG9uc2USNgoNdXNlcl9hY2Nlc3NlcxgBIAMoCzIRLnVzcnBiLl'
    'VzZXJBY2Nlc3NSDHVzZXJBY2Nlc3Nlcw==');

@$core.Deprecated('Use accountEmailAuthRequestDescriptor instead')
const AccountEmailAuthRequest$json = {
  '1': 'AccountEmailAuthRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    {'1': 'account_id', '3': 2, '4': 1, '5': 13, '10': 'accountId'},
  ],
};

/// Descriptor for `AccountEmailAuthRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountEmailAuthRequestDescriptor = $convert.base64Decode(
    'ChdBY2NvdW50RW1haWxBdXRoUmVxdWVzdBIUCgVlbWFpbBgBIAEoCVIFZW1haWwSHQoKYWNjb3'
    'VudF9pZBgCIAEoDVIJYWNjb3VudElk');

@$core.Deprecated('Use accountEmailAuthResponseDescriptor instead')
const AccountEmailAuthResponse$json = {
  '1': 'AccountEmailAuthResponse',
  '2': [
    {'1': 'external_auth_id', '3': 1, '4': 1, '5': 9, '10': 'externalAuthId'},
  ],
};

/// Descriptor for `AccountEmailAuthResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountEmailAuthResponseDescriptor = $convert.base64Decode(
    'ChhBY2NvdW50RW1haWxBdXRoUmVzcG9uc2USKAoQZXh0ZXJuYWxfYXV0aF9pZBgBIAEoCVIOZX'
    'h0ZXJuYWxBdXRoSWQ=');

@$core.Deprecated('Use emailAuthCodeRequestDescriptor instead')
const EmailAuthCodeRequest$json = {
  '1': 'EmailAuthCodeRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
  ],
};

/// Descriptor for `EmailAuthCodeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emailAuthCodeRequestDescriptor = $convert.base64Decode(
    'ChRFbWFpbEF1dGhDb2RlUmVxdWVzdBIUCgVlbWFpbBgBIAEoCVIFZW1haWw=');

@$core.Deprecated('Use emailAuthCodeResponseDescriptor instead')
const EmailAuthCodeResponse$json = {
  '1': 'EmailAuthCodeResponse',
  '2': [
    {'1': 'external_auth_id', '3': 1, '4': 1, '5': 9, '10': 'externalAuthId'},
  ],
};

/// Descriptor for `EmailAuthCodeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emailAuthCodeResponseDescriptor = $convert.base64Decode(
    'ChVFbWFpbEF1dGhDb2RlUmVzcG9uc2USKAoQZXh0ZXJuYWxfYXV0aF9pZBgBIAEoCVIOZXh0ZX'
    'JuYWxBdXRoSWQ=');

