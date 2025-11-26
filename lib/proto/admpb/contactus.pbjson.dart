//
//  Generated code. Do not modify.
//  source: proto/admpb/contactus.proto
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

@$core.Deprecated('Use contactUsDescriptor instead')
const ContactUs$json = {
  '1': 'ContactUs',
  '2': [
    {'1': 'contact_us_id', '3': 1, '4': 1, '5': 13, '10': 'contactUsId'},
    {'1': 'usr_id', '3': 2, '4': 1, '5': 13, '10': 'usrId'},
    {'1': 'subject', '3': 3, '4': 1, '5': 9, '10': 'subject'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'page_name', '3': 5, '4': 1, '5': 9, '10': 'pageName'},
    {'1': 'page_component', '3': 6, '4': 1, '5': 9, '10': 'pageComponent'},
    {'1': 'status', '3': 7, '4': 1, '5': 9, '10': 'status'},
    {'1': 'target_date', '3': 8, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'targetDate'},
    {'1': 'completion_date', '3': 9, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'completionDate'},
    {'1': 'type', '3': 10, '4': 1, '5': 9, '10': 'type'},
    {'1': 'priority_level', '3': 11, '4': 1, '5': 9, '10': 'priorityLevel'},
    {'1': 'cc', '3': 12, '4': 1, '5': 9, '10': 'cc'},
    {'1': 'created_at', '3': 13, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'created_by', '3': 14, '4': 1, '5': 9, '10': 'createdBy'},
    {'1': 'modified_at', '3': 15, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'modifiedAt'},
    {'1': 'modified_by', '3': 16, '4': 1, '5': 9, '10': 'modifiedBy'},
  ],
};

/// Descriptor for `ContactUs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List contactUsDescriptor = $convert.base64Decode(
    'CglDb250YWN0VXMSIgoNY29udGFjdF91c19pZBgBIAEoDVILY29udGFjdFVzSWQSFQoGdXNyX2'
    'lkGAIgASgNUgV1c3JJZBIYCgdzdWJqZWN0GAMgASgJUgdzdWJqZWN0EiAKC2Rlc2NyaXB0aW9u'
    'GAQgASgJUgtkZXNjcmlwdGlvbhIbCglwYWdlX25hbWUYBSABKAlSCHBhZ2VOYW1lEiUKDnBhZ2'
    'VfY29tcG9uZW50GAYgASgJUg1wYWdlQ29tcG9uZW50EhYKBnN0YXR1cxgHIAEoCVIGc3RhdHVz'
    'EjIKC3RhcmdldF9kYXRlGAggASgLMhEuZ29vZ2xlLnR5cGUuRGF0ZVIKdGFyZ2V0RGF0ZRI6Cg'
    '9jb21wbGV0aW9uX2RhdGUYCSABKAsyES5nb29nbGUudHlwZS5EYXRlUg5jb21wbGV0aW9uRGF0'
    'ZRISCgR0eXBlGAogASgJUgR0eXBlEiUKDnByaW9yaXR5X2xldmVsGAsgASgJUg1wcmlvcml0eU'
    'xldmVsEg4KAmNjGAwgASgJUgJjYxI5CgpjcmVhdGVkX2F0GA0gASgLMhouZ29vZ2xlLnByb3Rv'
    'YnVmLlRpbWVzdGFtcFIJY3JlYXRlZEF0Eh0KCmNyZWF0ZWRfYnkYDiABKAlSCWNyZWF0ZWRCeR'
    'I7Cgttb2RpZmllZF9hdBgPIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCm1vZGlm'
    'aWVkQXQSHwoLbW9kaWZpZWRfYnkYECABKAlSCm1vZGlmaWVkQnk=');

@$core.Deprecated('Use updateContactUsResponseDescriptor instead')
const UpdateContactUsResponse$json = {
  '1': 'UpdateContactUsResponse',
  '2': [
    {'1': 'contact_us', '3': 1, '4': 1, '5': 11, '6': '.admpb.ContactUs', '10': 'contactUs'},
  ],
};

/// Descriptor for `UpdateContactUsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateContactUsResponseDescriptor = $convert.base64Decode(
    'ChdVcGRhdGVDb250YWN0VXNSZXNwb25zZRIvCgpjb250YWN0X3VzGAEgASgLMhAuYWRtcGIuQ2'
    '9udGFjdFVzUgljb250YWN0VXM=');

@$core.Deprecated('Use listContactUsRequestDescriptor instead')
const ListContactUsRequest$json = {
  '1': 'ListContactUsRequest',
  '2': [
    {'1': 'usr_id', '3': 1, '4': 1, '5': 13, '10': 'usrId'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'subject', '3': 3, '4': 1, '5': 9, '10': 'subject'},
    {'1': 'from_date', '3': 4, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'fromDate'},
    {'1': 'to_date', '3': 5, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'toDate'},
    {'1': 'pagination', '3': 6, '4': 1, '5': 11, '6': '.utilspb.Pagination', '10': 'pagination'},
    {'1': 'contact_us_id', '3': 7, '4': 1, '5': 13, '10': 'contactUsId'},
  ],
};

/// Descriptor for `ListContactUsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listContactUsRequestDescriptor = $convert.base64Decode(
    'ChRMaXN0Q29udGFjdFVzUmVxdWVzdBIVCgZ1c3JfaWQYASABKA1SBXVzcklkEhYKBnN0YXR1cx'
    'gCIAEoCVIGc3RhdHVzEhgKB3N1YmplY3QYAyABKAlSB3N1YmplY3QSLgoJZnJvbV9kYXRlGAQg'
    'ASgLMhEuZ29vZ2xlLnR5cGUuRGF0ZVIIZnJvbURhdGUSKgoHdG9fZGF0ZRgFIAEoCzIRLmdvb2'
    'dsZS50eXBlLkRhdGVSBnRvRGF0ZRIzCgpwYWdpbmF0aW9uGAYgASgLMhMudXRpbHNwYi5QYWdp'
    'bmF0aW9uUgpwYWdpbmF0aW9uEiIKDWNvbnRhY3RfdXNfaWQYByABKA1SC2NvbnRhY3RVc0lk');

@$core.Deprecated('Use listContactUsResponseDescriptor instead')
const ListContactUsResponse$json = {
  '1': 'ListContactUsResponse',
  '2': [
    {'1': 'contact_us', '3': 1, '4': 3, '5': 11, '6': '.admpb.ContactUs', '10': 'contactUs'},
    {'1': 'summary', '3': 2, '4': 1, '5': 11, '6': '.admpb.ListContactUsSummary', '10': 'summary'},
  ],
};

/// Descriptor for `ListContactUsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listContactUsResponseDescriptor = $convert.base64Decode(
    'ChVMaXN0Q29udGFjdFVzUmVzcG9uc2USLwoKY29udGFjdF91cxgBIAMoCzIQLmFkbXBiLkNvbn'
    'RhY3RVc1IJY29udGFjdFVzEjUKB3N1bW1hcnkYAiABKAsyGy5hZG1wYi5MaXN0Q29udGFjdFVz'
    'U3VtbWFyeVIHc3VtbWFyeQ==');

@$core.Deprecated('Use listContactUsSummaryDescriptor instead')
const ListContactUsSummary$json = {
  '1': 'ListContactUsSummary',
  '2': [
    {'1': 'total_rows', '3': 1, '4': 1, '5': 13, '10': 'totalRows'},
  ],
};

/// Descriptor for `ListContactUsSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listContactUsSummaryDescriptor = $convert.base64Decode(
    'ChRMaXN0Q29udGFjdFVzU3VtbWFyeRIdCgp0b3RhbF9yb3dzGAEgASgNUgl0b3RhbFJvd3M=');

@$core.Deprecated('Use createContactUsResponseDescriptor instead')
const CreateContactUsResponse$json = {
  '1': 'CreateContactUsResponse',
  '2': [
    {'1': 'contact_us', '3': 1, '4': 1, '5': 11, '6': '.admpb.ContactUs', '10': 'contactUs'},
  ],
};

/// Descriptor for `CreateContactUsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createContactUsResponseDescriptor = $convert.base64Decode(
    'ChdDcmVhdGVDb250YWN0VXNSZXNwb25zZRIvCgpjb250YWN0X3VzGAEgASgLMhAuYWRtcGIuQ2'
    '9udGFjdFVzUgljb250YWN0VXM=');

