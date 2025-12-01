//
//  Generated code. Do not modify.
//  source: proto/marginpb/calllog.proto
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

@$core.Deprecated('Use callLogDescriptor instead')
const CallLog$json = {
  '1': 'CallLog',
  '2': [
    {'1': 'requirement_log_id', '3': 1, '4': 1, '5': 13, '10': 'requirementLogId'},
    {'1': 'requirement_id', '3': 2, '4': 1, '5': 13, '10': 'requirementId'},
    {'1': 'trade_date', '3': 3, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'tradeDate'},
    {'1': 'from_date', '3': 4, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'fromDate'},
    {'1': 'to_date', '3': 5, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'toDate'},
    {'1': 'account_id', '3': 6, '4': 1, '5': 13, '10': 'accountId'},
    {'1': 'correspondent', '3': 7, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'master_account_no', '3': 8, '4': 1, '5': 9, '10': 'masterAccountNo'},
    {'1': 'account_name', '3': 9, '4': 1, '5': 9, '10': 'accountName'},
    {'1': 'call_type', '3': 10, '4': 1, '5': 9, '10': 'callType'},
    {'1': 'call_req', '3': 11, '4': 1, '5': 9, '10': 'callReq'},
    {'1': 'call_amt', '3': 12, '4': 1, '5': 9, '10': 'callAmt'},
    {'1': 'call_status', '3': 13, '4': 1, '5': 9, '10': 'callStatus'},
    {'1': 'call_status_reason', '3': 14, '4': 1, '5': 9, '10': 'callStatusReason'},
    {'1': 'modified_by', '3': 15, '4': 1, '5': 9, '10': 'modifiedBy'},
    {'1': 'modified_date', '3': 16, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'modifiedDate'},
    {'1': 'due_date', '3': 17, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'dueDate'},
    {'1': 'call_status_reason_count', '3': 18, '4': 1, '5': 5, '10': 'callStatusReasonCount'},
    {'1': 'notify', '3': 19, '4': 1, '5': 8, '10': 'notify'},
    {'1': 'notify_date', '3': 20, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'notifyDate'},
    {'1': 'margin_type', '3': 21, '4': 1, '5': 9, '10': 'marginType'},
    {'1': 'age', '3': 22, '4': 1, '5': 5, '10': 'age'},
  ],
};

/// Descriptor for `CallLog`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List callLogDescriptor = $convert.base64Decode(
    'CgdDYWxsTG9nEiwKEnJlcXVpcmVtZW50X2xvZ19pZBgBIAEoDVIQcmVxdWlyZW1lbnRMb2dJZB'
    'IlCg5yZXF1aXJlbWVudF9pZBgCIAEoDVINcmVxdWlyZW1lbnRJZBIwCgp0cmFkZV9kYXRlGAMg'
    'ASgLMhEuZ29vZ2xlLnR5cGUuRGF0ZVIJdHJhZGVEYXRlEi4KCWZyb21fZGF0ZRgEIAEoCzIRLm'
    'dvb2dsZS50eXBlLkRhdGVSCGZyb21EYXRlEioKB3RvX2RhdGUYBSABKAsyES5nb29nbGUudHlw'
    'ZS5EYXRlUgZ0b0RhdGUSHQoKYWNjb3VudF9pZBgGIAEoDVIJYWNjb3VudElkEiQKDWNvcnJlc3'
    'BvbmRlbnQYByABKAlSDWNvcnJlc3BvbmRlbnQSKgoRbWFzdGVyX2FjY291bnRfbm8YCCABKAlS'
    'D21hc3RlckFjY291bnRObxIhCgxhY2NvdW50X25hbWUYCSABKAlSC2FjY291bnROYW1lEhsKCW'
    'NhbGxfdHlwZRgKIAEoCVIIY2FsbFR5cGUSGQoIY2FsbF9yZXEYCyABKAlSB2NhbGxSZXESGQoI'
    'Y2FsbF9hbXQYDCABKAlSB2NhbGxBbXQSHwoLY2FsbF9zdGF0dXMYDSABKAlSCmNhbGxTdGF0dX'
    'MSLAoSY2FsbF9zdGF0dXNfcmVhc29uGA4gASgJUhBjYWxsU3RhdHVzUmVhc29uEh8KC21vZGlm'
    'aWVkX2J5GA8gASgJUgptb2RpZmllZEJ5Ej8KDW1vZGlmaWVkX2RhdGUYECABKAsyGi5nb29nbG'
    'UucHJvdG9idWYuVGltZXN0YW1wUgxtb2RpZmllZERhdGUSLAoIZHVlX2RhdGUYESABKAsyES5n'
    'b29nbGUudHlwZS5EYXRlUgdkdWVEYXRlEjcKGGNhbGxfc3RhdHVzX3JlYXNvbl9jb3VudBgSIA'
    'EoBVIVY2FsbFN0YXR1c1JlYXNvbkNvdW50EhYKBm5vdGlmeRgTIAEoCFIGbm90aWZ5EjsKC25v'
    'dGlmeV9kYXRlGBQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKbm90aWZ5RGF0ZR'
    'IfCgttYXJnaW5fdHlwZRgVIAEoCVIKbWFyZ2luVHlwZRIQCgNhZ2UYFiABKAVSA2FnZQ==');

@$core.Deprecated('Use listCallLogRequestDescriptor instead')
const ListCallLogRequest$json = {
  '1': 'ListCallLogRequest',
  '2': [
    {'1': 'from_date', '3': 1, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'fromDate'},
    {'1': 'to_date', '3': 2, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'toDate'},
    {'1': 'correspondent', '3': 3, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'master_account_no', '3': 4, '4': 1, '5': 9, '10': 'masterAccountNo'},
    {'1': 'account_name', '3': 5, '4': 1, '5': 9, '10': 'accountName'},
    {'1': 'call_type', '3': 6, '4': 1, '5': 9, '10': 'callType'},
    {'1': 'call_status', '3': 7, '4': 1, '5': 9, '10': 'callStatus'},
    {'1': 'call_status_reason', '3': 8, '4': 1, '5': 9, '10': 'callStatusReason'},
    {'1': 'is_open', '3': 9, '4': 1, '5': 8, '10': 'isOpen'},
    {'1': 'margin_type', '3': 10, '4': 1, '5': 9, '10': 'marginType'},
    {'1': 'pagination', '3': 11, '4': 1, '5': 11, '6': '.utilspb.Pagination', '10': 'pagination'},
  ],
};

/// Descriptor for `ListCallLogRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCallLogRequestDescriptor = $convert.base64Decode(
    'ChJMaXN0Q2FsbExvZ1JlcXVlc3QSLgoJZnJvbV9kYXRlGAEgASgLMhEuZ29vZ2xlLnR5cGUuRG'
    'F0ZVIIZnJvbURhdGUSKgoHdG9fZGF0ZRgCIAEoCzIRLmdvb2dsZS50eXBlLkRhdGVSBnRvRGF0'
    'ZRIkCg1jb3JyZXNwb25kZW50GAMgASgJUg1jb3JyZXNwb25kZW50EioKEW1hc3Rlcl9hY2NvdW'
    '50X25vGAQgASgJUg9tYXN0ZXJBY2NvdW50Tm8SIQoMYWNjb3VudF9uYW1lGAUgASgJUgthY2Nv'
    'dW50TmFtZRIbCgljYWxsX3R5cGUYBiABKAlSCGNhbGxUeXBlEh8KC2NhbGxfc3RhdHVzGAcgAS'
    'gJUgpjYWxsU3RhdHVzEiwKEmNhbGxfc3RhdHVzX3JlYXNvbhgIIAEoCVIQY2FsbFN0YXR1c1Jl'
    'YXNvbhIXCgdpc19vcGVuGAkgASgIUgZpc09wZW4SHwoLbWFyZ2luX3R5cGUYCiABKAlSCm1hcm'
    'dpblR5cGUSMwoKcGFnaW5hdGlvbhgLIAEoCzITLnV0aWxzcGIuUGFnaW5hdGlvblIKcGFnaW5h'
    'dGlvbg==');

@$core.Deprecated('Use listCallLogSummaryDescriptor instead')
const ListCallLogSummary$json = {
  '1': 'ListCallLogSummary',
  '2': [
    {'1': 'call_req', '3': 1, '4': 1, '5': 9, '10': 'callReq'},
    {'1': 'call_amt', '3': 2, '4': 1, '5': 9, '10': 'callAmt'},
    {'1': 'total_rows', '3': 3, '4': 1, '5': 13, '10': 'totalRows'},
  ],
};

/// Descriptor for `ListCallLogSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCallLogSummaryDescriptor = $convert.base64Decode(
    'ChJMaXN0Q2FsbExvZ1N1bW1hcnkSGQoIY2FsbF9yZXEYASABKAlSB2NhbGxSZXESGQoIY2FsbF'
    '9hbXQYAiABKAlSB2NhbGxBbXQSHQoKdG90YWxfcm93cxgDIAEoDVIJdG90YWxSb3dz');

@$core.Deprecated('Use listCallLogResponseDescriptor instead')
const ListCallLogResponse$json = {
  '1': 'ListCallLogResponse',
  '2': [
    {'1': 'call_logs', '3': 1, '4': 3, '5': 11, '6': '.marginpb.CallLog', '10': 'callLogs'},
    {'1': 'summary', '3': 2, '4': 1, '5': 11, '6': '.marginpb.ListCallLogSummary', '10': 'summary'},
  ],
};

/// Descriptor for `ListCallLogResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listCallLogResponseDescriptor = $convert.base64Decode(
    'ChNMaXN0Q2FsbExvZ1Jlc3BvbnNlEi4KCWNhbGxfbG9ncxgBIAMoCzIRLm1hcmdpbnBiLkNhbG'
    'xMb2dSCGNhbGxMb2dzEjYKB3N1bW1hcnkYAiABKAsyHC5tYXJnaW5wYi5MaXN0Q2FsbExvZ1N1'
    'bW1hcnlSB3N1bW1hcnk=');

