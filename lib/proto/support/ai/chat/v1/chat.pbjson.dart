//
//  Generated code. Do not modify.
//  source: support/ai/chat/v1/chat.proto
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

@$core.Deprecated('Use sendMessageRequestDescriptor instead')
const SendMessageRequest$json = {
  '1': 'SendMessageRequest',
  '2': [
    {'1': 'application', '3': 1, '4': 1, '5': 9, '10': 'application'},
    {'1': 'session_id', '3': 2, '4': 1, '5': 13, '10': 'sessionId'},
    {'1': 'user_id', '3': 3, '4': 1, '5': 13, '10': 'userId'},
    {'1': 'user_type', '3': 4, '4': 1, '5': 9, '10': 'userType'},
    {'1': 'role_id', '3': 5, '4': 1, '5': 13, '10': 'roleId'},
    {'1': 'content', '3': 6, '4': 1, '5': 9, '10': 'content'},
    {'1': 'mode', '3': 7, '4': 1, '5': 9, '10': 'mode'},
    {'1': 'page_component', '3': 8, '4': 1, '5': 9, '10': 'pageComponent'},
    {'1': 'include_system_details', '3': 9, '4': 1, '5': 8, '10': 'includeSystemDetails'},
  ],
};

/// Descriptor for `SendMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendMessageRequestDescriptor = $convert.base64Decode(
    'ChJTZW5kTWVzc2FnZVJlcXVlc3QSIAoLYXBwbGljYXRpb24YASABKAlSC2FwcGxpY2F0aW9uEh'
    '0KCnNlc3Npb25faWQYAiABKA1SCXNlc3Npb25JZBIXCgd1c2VyX2lkGAMgASgNUgZ1c2VySWQS'
    'GwoJdXNlcl90eXBlGAQgASgJUgh1c2VyVHlwZRIXCgdyb2xlX2lkGAUgASgNUgZyb2xlSWQSGA'
    'oHY29udGVudBgGIAEoCVIHY29udGVudBISCgRtb2RlGAcgASgJUgRtb2RlEiUKDnBhZ2VfY29t'
    'cG9uZW50GAggASgJUg1wYWdlQ29tcG9uZW50EjQKFmluY2x1ZGVfc3lzdGVtX2RldGFpbHMYCS'
    'ABKAhSFGluY2x1ZGVTeXN0ZW1EZXRhaWxz');

@$core.Deprecated('Use sendMessageResponseDescriptor instead')
const SendMessageResponse$json = {
  '1': 'SendMessageResponse',
  '2': [
    {'1': 'content', '3': 1, '4': 1, '5': 9, '10': 'content'},
    {'1': 'requirements', '3': 2, '4': 3, '5': 11, '6': '.support.ai.chat.v1.SendMessageResponse.RequirementsEntry', '10': 'requirements'},
    {'1': 'session_id', '3': 3, '4': 1, '5': 13, '10': 'sessionId'},
    {'1': 'sources', '3': 4, '4': 3, '5': 9, '10': 'sources'},
  ],
  '3': [SendMessageResponse_RequirementsEntry$json],
};

@$core.Deprecated('Use sendMessageResponseDescriptor instead')
const SendMessageResponse_RequirementsEntry$json = {
  '1': 'RequirementsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `SendMessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendMessageResponseDescriptor = $convert.base64Decode(
    'ChNTZW5kTWVzc2FnZVJlc3BvbnNlEhgKB2NvbnRlbnQYASABKAlSB2NvbnRlbnQSXQoMcmVxdW'
    'lyZW1lbnRzGAIgAygLMjkuc3VwcG9ydC5haS5jaGF0LnYxLlNlbmRNZXNzYWdlUmVzcG9uc2Uu'
    'UmVxdWlyZW1lbnRzRW50cnlSDHJlcXVpcmVtZW50cxIdCgpzZXNzaW9uX2lkGAMgASgNUglzZX'
    'NzaW9uSWQSGAoHc291cmNlcxgEIAMoCVIHc291cmNlcxo/ChFSZXF1aXJlbWVudHNFbnRyeRIQ'
    'CgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

