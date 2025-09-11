//
//  Generated code. Do not modify.
//  source: proto/admpb/systemcode.proto
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

@$core.Deprecated('Use systemCodeDescriptor instead')
const SystemCode$json = {
  '1': 'SystemCode',
  '2': [
    {'1': 'system_code_id', '3': 1, '4': 1, '5': 13, '10': 'systemCodeId'},
    {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    {'1': 'code', '3': 3, '4': 1, '5': 9, '10': 'code'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'note', '3': 5, '4': 1, '5': 9, '10': 'note'},
    {'1': 'sub_type', '3': 6, '4': 1, '5': 9, '10': 'subType'},
  ],
};

/// Descriptor for `SystemCode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List systemCodeDescriptor = $convert.base64Decode(
    'CgpTeXN0ZW1Db2RlEiQKDnN5c3RlbV9jb2RlX2lkGAEgASgNUgxzeXN0ZW1Db2RlSWQSEgoEdH'
    'lwZRgCIAEoCVIEdHlwZRISCgRjb2RlGAMgASgJUgRjb2RlEiAKC2Rlc2NyaXB0aW9uGAQgASgJ'
    'UgtkZXNjcmlwdGlvbhISCgRub3RlGAUgASgJUgRub3RlEhkKCHN1Yl90eXBlGAYgASgJUgdzdW'
    'JUeXBl');

@$core.Deprecated('Use createSystemCodeResponseDescriptor instead')
const CreateSystemCodeResponse$json = {
  '1': 'CreateSystemCodeResponse',
  '2': [
    {'1': 'system_code', '3': 1, '4': 1, '5': 11, '6': '.admpb.SystemCode', '10': 'systemCode'},
  ],
};

/// Descriptor for `CreateSystemCodeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSystemCodeResponseDescriptor = $convert.base64Decode(
    'ChhDcmVhdGVTeXN0ZW1Db2RlUmVzcG9uc2USMgoLc3lzdGVtX2NvZGUYASABKAsyES5hZG1wYi'
    '5TeXN0ZW1Db2RlUgpzeXN0ZW1Db2Rl');

@$core.Deprecated('Use readSystemCodeResponseDescriptor instead')
const ReadSystemCodeResponse$json = {
  '1': 'ReadSystemCodeResponse',
  '2': [
    {'1': 'system_code', '3': 1, '4': 1, '5': 11, '6': '.admpb.SystemCode', '10': 'systemCode'},
  ],
};

/// Descriptor for `ReadSystemCodeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readSystemCodeResponseDescriptor = $convert.base64Decode(
    'ChZSZWFkU3lzdGVtQ29kZVJlc3BvbnNlEjIKC3N5c3RlbV9jb2RlGAEgASgLMhEuYWRtcGIuU3'
    'lzdGVtQ29kZVIKc3lzdGVtQ29kZQ==');

@$core.Deprecated('Use updateSystemCodeResponseDescriptor instead')
const UpdateSystemCodeResponse$json = {
  '1': 'UpdateSystemCodeResponse',
  '2': [
    {'1': 'system_code', '3': 1, '4': 1, '5': 11, '6': '.admpb.SystemCode', '10': 'systemCode'},
  ],
};

/// Descriptor for `UpdateSystemCodeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateSystemCodeResponseDescriptor = $convert.base64Decode(
    'ChhVcGRhdGVTeXN0ZW1Db2RlUmVzcG9uc2USMgoLc3lzdGVtX2NvZGUYASABKAsyES5hZG1wYi'
    '5TeXN0ZW1Db2RlUgpzeXN0ZW1Db2Rl');

@$core.Deprecated('Use deleteSystemCodeRequestDescriptor instead')
const DeleteSystemCodeRequest$json = {
  '1': 'DeleteSystemCodeRequest',
  '2': [
    {'1': 'system_code_id', '3': 1, '4': 1, '5': 13, '10': 'systemCodeId'},
  ],
};

/// Descriptor for `DeleteSystemCodeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSystemCodeRequestDescriptor = $convert.base64Decode(
    'ChdEZWxldGVTeXN0ZW1Db2RlUmVxdWVzdBIkCg5zeXN0ZW1fY29kZV9pZBgBIAEoDVIMc3lzdG'
    'VtQ29kZUlk');

@$core.Deprecated('Use deleteSystemCodeResponseDescriptor instead')
const DeleteSystemCodeResponse$json = {
  '1': 'DeleteSystemCodeResponse',
  '2': [
    {'1': 'system_code_id', '3': 1, '4': 1, '5': 13, '10': 'systemCodeId'},
  ],
};

/// Descriptor for `DeleteSystemCodeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSystemCodeResponseDescriptor = $convert.base64Decode(
    'ChhEZWxldGVTeXN0ZW1Db2RlUmVzcG9uc2USJAoOc3lzdGVtX2NvZGVfaWQYASABKA1SDHN5c3'
    'RlbUNvZGVJZA==');

@$core.Deprecated('Use listSystemCodeResponseDescriptor instead')
const ListSystemCodeResponse$json = {
  '1': 'ListSystemCodeResponse',
  '2': [
    {'1': 'system_codes', '3': 1, '4': 3, '5': 11, '6': '.admpb.SystemCode', '10': 'systemCodes'},
  ],
};

/// Descriptor for `ListSystemCodeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSystemCodeResponseDescriptor = $convert.base64Decode(
    'ChZMaXN0U3lzdGVtQ29kZVJlc3BvbnNlEjQKDHN5c3RlbV9jb2RlcxgBIAMoCzIRLmFkbXBiLl'
    'N5c3RlbUNvZGVSC3N5c3RlbUNvZGVz');

