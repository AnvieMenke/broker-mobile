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
    {'1': 'correspondent', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'correspondent'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode(
    'CgxMb2dpblJlcXVlc3QSTgoFZW1haWwYASABKAlCOOBBApJBMjISVXNlciBlbWFpbCBhZGRyZX'
    'NzShwiaXRzdXBwb3J0QHNvZnR3YXJlYWxnby5jb20iUgVlbWFpbBJRCghwYXNzd29yZBgCIAEo'
    'CUI14EECkkEvMhtVc2VyIHBhc3N3b3JkIGluIHBsYWluIHRleHRKECJzZWNyZXRwYXNzd29yZC'
    'JSCHBhc3N3b3JkEnMKCWNsaWVudF9pZBgDIAEoCUJW4EECkkFQMjNBUEkga2V5IHByb3ZpZGVk'
    'IHRvIHRoZSBjbGllbnQgdG8gYWNjZXNzIHRoZSBzeXN0ZW1KGSJjbGllbnQuc29mdHdhcmVhbG'
    'dvLmNvbSJSCGNsaWVudElkEtEBCg1jb3JyZXNwb25kZW50GAQgASgJQqoBkkGmATKWAVRoZSBu'
    'YW1lIGdpdmVuIHRvIGEgYmFuaywgYnJva2VyLCBkZWFsZXIsIG9yIGZpbmFuY2lhbCBpbnN0aX'
    'R1dGlvbiB0aGF0IGFjdHMgb24gYmVoYWxmIG9mIGFub3RoZXIgZmluYW5jaWFsIGluc3RpdHV0'
    'aW9uLiBGb3VyIEFscGhhIG51bWVyaWMgY2hhcmFjdGVyLkoGIlNBU1MieASAAQRSDWNvcnJlc3'
    'BvbmRlbnQ=');

@$core.Deprecated('Use loginWebRequestDescriptor instead')
const LoginWebRequest$json = {
  '1': 'LoginWebRequest',
  '2': [
    {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    {'1': 'authentication_mode', '3': 3, '4': 1, '5': 9, '10': 'authenticationMode'},
    {'1': 'client_id', '3': 4, '4': 1, '5': 9, '10': 'clientId'},
    {'1': 'correspondent', '3': 5, '4': 1, '5': 9, '10': 'correspondent'},
  ],
};

/// Descriptor for `LoginWebRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginWebRequestDescriptor = $convert.base64Decode(
    'Cg9Mb2dpbldlYlJlcXVlc3QSFAoFZW1haWwYASABKAlSBWVtYWlsEhoKCHBhc3N3b3JkGAIgAS'
    'gJUghwYXNzd29yZBIvChNhdXRoZW50aWNhdGlvbl9tb2RlGAMgASgJUhJhdXRoZW50aWNhdGlv'
    'bk1vZGUSGwoJY2xpZW50X2lkGAQgASgJUghjbGllbnRJZBIkCg1jb3JyZXNwb25kZW50GAUgAS'
    'gJUg1jb3JyZXNwb25kZW50');

@$core.Deprecated('Use loginWebResponseDescriptor instead')
const LoginWebResponse$json = {
  '1': 'LoginWebResponse',
  '2': [
    {'1': 'session_key', '3': 1, '4': 1, '5': 9, '10': 'sessionKey'},
    {'1': 'correspondents', '3': 2, '4': 3, '5': 9, '10': 'correspondents'},
  ],
};

/// Descriptor for `LoginWebResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginWebResponseDescriptor = $convert.base64Decode(
    'ChBMb2dpbldlYlJlc3BvbnNlEh8KC3Nlc3Npb25fa2V5GAEgASgJUgpzZXNzaW9uS2V5EiYKDm'
    'NvcnJlc3BvbmRlbnRzGAIgAygJUg5jb3JyZXNwb25kZW50cw==');

@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = {
  '1': 'LoginResponse',
  '2': [
    {'1': 'access_token', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'accessToken'},
    {'1': 'refresh_token', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'refreshToken'},
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode(
    'Cg1Mb2dpblJlc3BvbnNlErUBCgxhY2Nlc3NfdG9rZW4YASABKAlCkQGSQY0BMhBKV1QgYWNjZX'
    'NzIHRva2VuSnkiZXlKaGJHY2lPaUpJVXpJMU5pSXNJblI1Y0NJNklrcFhWQ0o5LmV5SnpkV0lp'
    'T2lJeElpd2lhV0YwSWpveE5qZzNNak01TWpJeWZRLlNmbEt4d1JKU01lS0tGMlFUNGZ3cE1lSm'
    'YzNlBPazZ5SlZfYWRRc3N3NWMiUgthY2Nlc3NUb2tlbhK4AQoNcmVmcmVzaF90b2tlbhgCIAEo'
    'CUKSAZJBjgEyEUpXVCByZWZyZXNoIHRva2VuSnkiZXlKaGJHY2lPaUpJVXpJMU5pSXNJblI1Y0'
    'NJNklrcFhWQ0o5LmV5SnpkV0lpT2lJeElpd2lhV0YwSWpveE5qZzNNak01TWpJeWZRLjNfMXYw'
    'SGlqWU8zdHdrWEdqZVA3enlsbnBqWHVaeGt3dnJuZjJCaERyUVEiUgxyZWZyZXNoVG9rZW4=');

@$core.Deprecated('Use refreshTokenRequestDescriptor instead')
const RefreshTokenRequest$json = {
  '1': 'RefreshTokenRequest',
  '2': [
    {'1': 'refresh_token', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'refreshToken'},
    {'1': 'client_id', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'clientId'},
  ],
};

/// Descriptor for `RefreshTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List refreshTokenRequestDescriptor = $convert.base64Decode(
    'ChNSZWZyZXNoVG9rZW5SZXF1ZXN0Es8BCg1yZWZyZXNoX3Rva2VuGAEgASgJQqkB4EECkkGiAT'
    'IlSldUIHJlZnJlc2ggdG9rZW4gcmVjZWl2ZWQgZnJvbSBMb2dpbkp5ImV5SmhiR2NpT2lKSVV6'
    'STFOaUlzSW5SNWNDSTZJa3BYVkNKOS5leUp6ZFdJaU9pSXhJaXdpYVdGMElqb3hOamczTWpNNU'
    '1qSXlmUS4zXzF2MEhpallPM3R3a1hHamVQN3p5bG5walh1Wnhrd3ZybmYyQmhEclFRIlIMcmVm'
    'cmVzaFRva2VuEnMKCWNsaWVudF9pZBgCIAEoCUJW4EECkkFQMjNBUEkga2V5IHByb3ZpZGVkIH'
    'RvIHRoZSBjbGllbnQgdG8gYWNjZXNzIHRoZSBzeXN0ZW1KGSJjbGllbnQuc29mdHdhcmVhbGdv'
    'LmNvbSJSCGNsaWVudElk');

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
    {'1': 'correspondent', '3': 7, '4': 1, '5': 9, '10': 'correspondent'},
  ],
};

/// Descriptor for `ValidateCodeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateCodeRequestDescriptor = $convert.base64Decode(
    'ChNWYWxpZGF0ZUNvZGVSZXF1ZXN0EhQKBWVtYWlsGAEgASgJUgVlbWFpbBIaCghwYXNzd29yZB'
    'gCIAEoCVIIcGFzc3dvcmQSEgoEY29kZRgDIAEoCVIEY29kZRIvChNhdXRoZW50aWNhdGlvbl9t'
    'b2RlGAQgASgJUhJhdXRoZW50aWNhdGlvbk1vZGUSHwoLc2Vzc2lvbl9rZXkYBSABKAlSCnNlc3'
    'Npb25LZXkSGwoJY2xpZW50X2lkGAYgASgJUghjbGllbnRJZBIkCg1jb3JyZXNwb25kZW50GAcg'
    'ASgJUg1jb3JyZXNwb25kZW50');

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
    {'1': 'correspondent', '3': 2, '4': 1, '5': 9, '10': 'correspondent'},
  ],
};

/// Descriptor for `EmailAuthCodeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emailAuthCodeRequestDescriptor = $convert.base64Decode(
    'ChRFbWFpbEF1dGhDb2RlUmVxdWVzdBIUCgVlbWFpbBgBIAEoCVIFZW1haWwSJAoNY29ycmVzcG'
    '9uZGVudBgCIAEoCVINY29ycmVzcG9uZGVudA==');

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

@$core.Deprecated('Use impersonateRequestDescriptor instead')
const ImpersonateRequest$json = {
  '1': 'ImpersonateRequest',
  '2': [
    {'1': 'client_id', '3': 1, '4': 1, '5': 9, '10': 'clientId'},
    {'1': 'user_id', '3': 2, '4': 1, '5': 13, '10': 'userId'},
    {'1': 'token', '3': 3, '4': 1, '5': 9, '10': 'token'},
  ],
};

/// Descriptor for `ImpersonateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List impersonateRequestDescriptor = $convert.base64Decode(
    'ChJJbXBlcnNvbmF0ZVJlcXVlc3QSGwoJY2xpZW50X2lkGAEgASgJUghjbGllbnRJZBIXCgd1c2'
    'VyX2lkGAIgASgNUgZ1c2VySWQSFAoFdG9rZW4YAyABKAlSBXRva2Vu');

