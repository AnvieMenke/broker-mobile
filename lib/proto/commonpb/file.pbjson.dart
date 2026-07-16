//
//  Generated code. Do not modify.
//  source: proto/commonpb/file.proto
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

@$core.Deprecated('Use fileDescriptor instead')
const File$json = {
  '1': 'File',
  '2': [
    {'1': 'mime_type', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'mimeType'},
    {'1': 'file_bytes', '3': 2, '4': 1, '5': 12, '8': {}, '10': 'fileBytes'},
    {'1': 'file_name', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'fileName'},
  ],
};

/// Descriptor for `File`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileDescriptor = $convert.base64Decode(
    'CgRGaWxlEkoKCW1pbWVfdHlwZRgBIAEoCUItkkEqMhVNSU1FIHR5cGUgb2YgdGhlIGZpbGVKES'
    'JhcHBsaWNhdGlvbi9wZGYiUghtaW1lVHlwZRK9AQoKZmlsZV9ieXRlcxgCIAEoDEKdAZJBmQEy'
    'JUZpbGUgY29udGVudCBpbiBieXRlcywgYmFzZTY0IGVuY29kZWRKcCJKVkJFUmkweExqY0tKZU'
    'xqejlNS09DQXdJRzlpYWdvOFBDOU9ZVzFsY3lBeU15QXdJRkl2VDNWMGJHbHVaWE1nTWpVZ01D'
    'QlNMMUJoWjJWeklEWTVJREFnVWk5VWVYQmxMME5oZEdGc2IyYy4uLiJSCWZpbGVCeXRlcxJRCg'
    'lmaWxlX25hbWUYAyABKAlCNJJBMTIfTmFtZSBvZiB0aGUgZmlsZSB3aXRoIGV4dGVuc2lvbkoO'
    'ImZpbGVuYW1lLnBkZiJSCGZpbGVOYW1l');

@$core.Deprecated('Use attachedFileDescriptor instead')
const AttachedFile$json = {
  '1': 'AttachedFile',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
    {'1': 'file_name', '3': 2, '4': 1, '5': 9, '10': 'fileName'},
    {'1': 'uploaded_by', '3': 3, '4': 1, '5': 9, '10': 'uploadedBy'},
    {'1': 'uploaded_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'uploadedAt'},
    {'1': 'tag', '3': 5, '4': 1, '5': 9, '10': 'tag'},
  ],
};

/// Descriptor for `AttachedFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attachedFileDescriptor = $convert.base64Decode(
    'CgxBdHRhY2hlZEZpbGUSDgoCaWQYASABKA1SAmlkEhsKCWZpbGVfbmFtZRgCIAEoCVIIZmlsZU'
    '5hbWUSHwoLdXBsb2FkZWRfYnkYAyABKAlSCnVwbG9hZGVkQnkSOwoLdXBsb2FkZWRfYXQYBCAB'
    'KAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgp1cGxvYWRlZEF0EhAKA3RhZxgFIAEoCV'
    'IDdGFn');

@$core.Deprecated('Use listFileRequestDescriptor instead')
const ListFileRequest$json = {
  '1': 'ListFileRequest',
  '2': [
    {'1': 'link_type', '3': 1, '4': 1, '5': 9, '10': 'linkType'},
    {'1': 'link_id', '3': 2, '4': 1, '5': 13, '10': 'linkId'},
    {'1': 'tag', '3': 3, '4': 1, '5': 9, '10': 'tag'},
  ],
};

/// Descriptor for `ListFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listFileRequestDescriptor = $convert.base64Decode(
    'Cg9MaXN0RmlsZVJlcXVlc3QSGwoJbGlua190eXBlGAEgASgJUghsaW5rVHlwZRIXCgdsaW5rX2'
    'lkGAIgASgNUgZsaW5rSWQSEAoDdGFnGAMgASgJUgN0YWc=');

@$core.Deprecated('Use listFileResponseDescriptor instead')
const ListFileResponse$json = {
  '1': 'ListFileResponse',
  '2': [
    {'1': 'attached_files', '3': 1, '4': 3, '5': 11, '6': '.commonpb.AttachedFile', '10': 'attachedFiles'},
  ],
};

/// Descriptor for `ListFileResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listFileResponseDescriptor = $convert.base64Decode(
    'ChBMaXN0RmlsZVJlc3BvbnNlEj0KDmF0dGFjaGVkX2ZpbGVzGAEgAygLMhYuY29tbW9ucGIuQX'
    'R0YWNoZWRGaWxlUg1hdHRhY2hlZEZpbGVz');

@$core.Deprecated('Use downloadFileRequestDescriptor instead')
const DownloadFileRequest$json = {
  '1': 'DownloadFileRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

/// Descriptor for `DownloadFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downloadFileRequestDescriptor = $convert.base64Decode(
    'ChNEb3dubG9hZEZpbGVSZXF1ZXN0Eg4KAmlkGAEgASgNUgJpZA==');

@$core.Deprecated('Use deleteFileRequestDescriptor instead')
const DeleteFileRequest$json = {
  '1': 'DeleteFileRequest',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 13, '10': 'id'},
  ],
};

/// Descriptor for `DeleteFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteFileRequestDescriptor = $convert.base64Decode(
    'ChFEZWxldGVGaWxlUmVxdWVzdBIOCgJpZBgBIAEoDVICaWQ=');

@$core.Deprecated('Use attachFileRequestDescriptor instead')
const AttachFileRequest$json = {
  '1': 'AttachFileRequest',
  '2': [
    {'1': 'link_id', '3': 1, '4': 1, '5': 13, '10': 'linkId'},
    {'1': 'link_type', '3': 2, '4': 1, '5': 9, '10': 'linkType'},
    {'1': 'file', '3': 3, '4': 1, '5': 11, '6': '.commonpb.File', '10': 'file'},
    {'1': 'tag', '3': 4, '4': 1, '5': 9, '10': 'tag'},
  ],
};

/// Descriptor for `AttachFileRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attachFileRequestDescriptor = $convert.base64Decode(
    'ChFBdHRhY2hGaWxlUmVxdWVzdBIXCgdsaW5rX2lkGAEgASgNUgZsaW5rSWQSGwoJbGlua190eX'
    'BlGAIgASgJUghsaW5rVHlwZRIiCgRmaWxlGAMgASgLMg4uY29tbW9ucGIuRmlsZVIEZmlsZRIQ'
    'CgN0YWcYBCABKAlSA3RhZw==');

