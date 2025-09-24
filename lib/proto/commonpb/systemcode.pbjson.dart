//
//  Generated code. Do not modify.
//  source: proto/commonpb/systemcode.proto
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
    {'1': 'code', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'code'},
    {'1': 'description', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'description'},
    {'1': 'sub_type', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'subType'},
    {'1': 'note', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'note'},
  ],
};

/// Descriptor for `SystemCode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List systemCodeDescriptor = $convert.base64Decode(
    'CgpTeXN0ZW1Db2RlEiMKBGNvZGUYASABKAlCD5JBDEoIIkFjdGl2ZSJ4ZFIEY29kZRIxCgtkZX'
    'NjcmlwdGlvbhgCIAEoCUIPkkEMSggiQWN0aXZlInhkUgtkZXNjcmlwdGlvbhIuCghzdWJfdHlw'
    'ZRgDIAEoCUITkkEQSgwiVXNlciBTZXR1cCJ4ZFIHc3ViVHlwZRIdCgRub3RlGAQgASgJQgmSQQ'
    'ZKAiIieGRSBG5vdGU=');

@$core.Deprecated('Use lazySystemCodeRequestDescriptor instead')
const LazySystemCodeRequest$json = {
  '1': 'LazySystemCodeRequest',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'type'},
    {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    {'1': 'limit', '3': 3, '4': 1, '5': 5, '10': 'limit'},
    {'1': 'sub_type', '3': 4, '4': 1, '5': 9, '10': 'subType'},
    {'1': 'note', '3': 5, '4': 1, '5': 9, '10': 'note'},
  ],
};

/// Descriptor for `LazySystemCodeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lazySystemCodeRequestDescriptor = $convert.base64Decode(
    'ChVMYXp5U3lzdGVtQ29kZVJlcXVlc3QSNwoEdHlwZRgBIAEoCUIjkkEgShciSW52ZXN0bWVudC'
    'BPYmplY3RpdmVzItIBBHR5cGVSBHR5cGUSEgoEY29kZRgCIAEoCVIEY29kZRIUCgVsaW1pdBgD'
    'IAEoBVIFbGltaXQSGQoIc3ViX3R5cGUYBCABKAlSB3N1YlR5cGUSEgoEbm90ZRgFIAEoCVIEbm'
    '90ZQ==');

@$core.Deprecated('Use listSystemCodeRequestDescriptor instead')
const ListSystemCodeRequest$json = {
  '1': 'ListSystemCodeRequest',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'type'},
    {'1': 'sub_type', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'subType'},
    {'1': 'order_by', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'orderBy'},
  ],
};

/// Descriptor for `ListSystemCodeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSystemCodeRequestDescriptor = $convert.base64Decode(
    'ChVMaXN0U3lzdGVtQ29kZVJlcXVlc3QSKgoEdHlwZRgBIAEoCUIWkkETSggiU3RhdHVzInhk0g'
    'EEdHlwZVIEdHlwZRIvCghzdWJfdHlwZRgCIAEoCUIUkkERSgwiVXNlciBTZXR1cCJ4rAJSB3N1'
    'YlR5cGUSHgoIb3JkZXJfYnkYAyABKAlCA+BBA1IHb3JkZXJCeQ==');

@$core.Deprecated('Use systemCodeResponseDescriptor instead')
const SystemCodeResponse$json = {
  '1': 'SystemCodeResponse',
  '2': [
    {'1': 'system_code', '3': 1, '4': 3, '5': 11, '6': '.commonpb.SystemCode', '10': 'systemCode'},
  ],
};

/// Descriptor for `SystemCodeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List systemCodeResponseDescriptor = $convert.base64Decode(
    'ChJTeXN0ZW1Db2RlUmVzcG9uc2USNQoLc3lzdGVtX2NvZGUYASADKAsyFC5jb21tb25wYi5TeX'
    'N0ZW1Db2RlUgpzeXN0ZW1Db2Rl');

