//
//  Generated code. Do not modify.
//  source: proto/bankpb/request.proto
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

@$core.Deprecated('Use requestDescriptor instead')
const Request$json = {
  '1': 'Request',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 13, '10': 'requestId'},
    {'1': 'system_date', '3': 2, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'systemDate'},
    {'1': 'account_id', '3': 5, '4': 1, '5': 13, '10': 'accountId'},
    {'1': 'correspondent', '3': 6, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'branch', '3': 7, '4': 1, '5': 9, '10': 'branch'},
    {'1': 'account_no', '3': 8, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'master_account_no', '3': 9, '4': 1, '5': 9, '10': 'masterAccountNo'},
    {'1': 'rep', '3': 10, '4': 1, '5': 9, '10': 'rep'},
    {'1': 'bank_id', '3': 11, '4': 1, '5': 13, '10': 'bankId'},
    {'1': 'bank_account_no', '3': 12, '4': 1, '5': 9, '10': 'bankAccountNo'},
    {'1': 'bank_routing_no', '3': 13, '4': 1, '5': 9, '10': 'bankRoutingNo'},
    {'1': 'bank_name', '3': 14, '4': 1, '5': 9, '10': 'bankName'},
    {'1': 'is_international', '3': 15, '4': 1, '5': 8, '10': 'isInternational'},
    {'1': 'request_type', '3': 16, '4': 1, '5': 9, '10': 'requestType'},
    {'1': 'transfer_type', '3': 17, '4': 1, '5': 9, '10': 'transferType'},
    {'1': 'amt', '3': 18, '4': 1, '5': 9, '10': 'amt'},
    {'1': 'fee', '3': 19, '4': 1, '5': 9, '10': 'fee'},
    {'1': 'fed_no', '3': 20, '4': 1, '5': 9, '10': 'fedNo'},
    {'1': 'external_id', '3': 21, '4': 1, '5': 9, '10': 'externalId'},
    {'1': 'bank', '3': 22, '4': 1, '5': 9, '10': 'bank'},
    {'1': 'bank_note', '3': 23, '4': 1, '5': 9, '10': 'bankNote'},
    {'1': 'internal_note', '3': 24, '4': 1, '5': 9, '10': 'internalNote'},
    {'1': 'status', '3': 25, '4': 1, '5': 9, '10': 'status'},
    {'1': 'created_by', '3': 26, '4': 1, '5': 9, '10': 'createdBy'},
    {'1': 'created_at', '3': 27, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'modified_at', '3': 28, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'modifiedAt'},
    {'1': 'modified_by', '3': 29, '4': 1, '5': 9, '10': 'modifiedBy'},
    {'1': 'send_to', '3': 30, '4': 1, '5': 9, '10': 'sendTo'},
    {'1': 'wallet_id', '3': 31, '4': 1, '5': 13, '10': 'walletId'},
    {'1': 'waive_fee', '3': 32, '4': 1, '5': 8, '10': 'waiveFee'},
    {'1': 'date_type', '3': 33, '4': 1, '5': 9, '10': 'dateType'},
    {'1': 'process_date', '3': 34, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'processDate'},
  ],
};

/// Descriptor for `Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestDescriptor = $convert.base64Decode(
    'CgdSZXF1ZXN0Eh0KCnJlcXVlc3RfaWQYASABKA1SCXJlcXVlc3RJZBIyCgtzeXN0ZW1fZGF0ZR'
    'gCIAEoCzIRLmdvb2dsZS50eXBlLkRhdGVSCnN5c3RlbURhdGUSHQoKYWNjb3VudF9pZBgFIAEo'
    'DVIJYWNjb3VudElkEiQKDWNvcnJlc3BvbmRlbnQYBiABKAlSDWNvcnJlc3BvbmRlbnQSFgoGYn'
    'JhbmNoGAcgASgJUgZicmFuY2gSHQoKYWNjb3VudF9ubxgIIAEoCVIJYWNjb3VudE5vEioKEW1h'
    'c3Rlcl9hY2NvdW50X25vGAkgASgJUg9tYXN0ZXJBY2NvdW50Tm8SEAoDcmVwGAogASgJUgNyZX'
    'ASFwoHYmFua19pZBgLIAEoDVIGYmFua0lkEiYKD2JhbmtfYWNjb3VudF9ubxgMIAEoCVINYmFu'
    'a0FjY291bnRObxImCg9iYW5rX3JvdXRpbmdfbm8YDSABKAlSDWJhbmtSb3V0aW5nTm8SGwoJYm'
    'Fua19uYW1lGA4gASgJUghiYW5rTmFtZRIpChBpc19pbnRlcm5hdGlvbmFsGA8gASgIUg9pc0lu'
    'dGVybmF0aW9uYWwSIQoMcmVxdWVzdF90eXBlGBAgASgJUgtyZXF1ZXN0VHlwZRIjCg10cmFuc2'
    'Zlcl90eXBlGBEgASgJUgx0cmFuc2ZlclR5cGUSEAoDYW10GBIgASgJUgNhbXQSEAoDZmVlGBMg'
    'ASgJUgNmZWUSFQoGZmVkX25vGBQgASgJUgVmZWRObxIfCgtleHRlcm5hbF9pZBgVIAEoCVIKZX'
    'h0ZXJuYWxJZBISCgRiYW5rGBYgASgJUgRiYW5rEhsKCWJhbmtfbm90ZRgXIAEoCVIIYmFua05v'
    'dGUSIwoNaW50ZXJuYWxfbm90ZRgYIAEoCVIMaW50ZXJuYWxOb3RlEhYKBnN0YXR1cxgZIAEoCV'
    'IGc3RhdHVzEh0KCmNyZWF0ZWRfYnkYGiABKAlSCWNyZWF0ZWRCeRI5CgpjcmVhdGVkX2F0GBsg'
    'ASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIJY3JlYXRlZEF0EjsKC21vZGlmaWVkX2'
    'F0GBwgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIKbW9kaWZpZWRBdBIfCgttb2Rp'
    'ZmllZF9ieRgdIAEoCVIKbW9kaWZpZWRCeRIXCgdzZW5kX3RvGB4gASgJUgZzZW5kVG8SGwoJd2'
    'FsbGV0X2lkGB8gASgNUgh3YWxsZXRJZBIbCgl3YWl2ZV9mZWUYICABKAhSCHdhaXZlRmVlEhsK'
    'CWRhdGVfdHlwZRghIAEoCVIIZGF0ZVR5cGUSNAoMcHJvY2Vzc19kYXRlGCIgASgLMhEuZ29vZ2'
    'xlLnR5cGUuRGF0ZVILcHJvY2Vzc0RhdGU=');

@$core.Deprecated('Use createRequestDescriptor instead')
const CreateRequest$json = {
  '1': 'CreateRequest',
  '2': [
    {'1': 'correspondent', '3': 1, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'account_no', '3': 2, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'bank_id', '3': 3, '4': 1, '5': 13, '10': 'bankId'},
    {'1': 'request_type', '3': 4, '4': 1, '5': 9, '10': 'requestType'},
    {'1': 'transfer_type', '3': 5, '4': 1, '5': 9, '10': 'transferType'},
    {'1': 'amt', '3': 6, '4': 1, '5': 9, '10': 'amt'},
    {'1': 'fee', '3': 7, '4': 1, '5': 9, '10': 'fee'},
    {'1': 'fed_no', '3': 8, '4': 1, '5': 9, '10': 'fedNo'},
    {'1': 'external_id', '3': 9, '4': 1, '5': 9, '10': 'externalId'},
    {'1': 'bank', '3': 10, '4': 1, '5': 9, '10': 'bank'},
    {'1': 'bank_note', '3': 11, '4': 1, '5': 9, '10': 'bankNote'},
    {'1': 'internal_note', '3': 12, '4': 1, '5': 9, '10': 'internalNote'},
    {'1': 'status', '3': 13, '4': 1, '5': 9, '10': 'status'},
    {'1': 'send_to', '3': 14, '4': 1, '5': 9, '10': 'sendTo'},
    {'1': 'wallet_id', '3': 31, '4': 1, '5': 13, '10': 'walletId'},
    {'1': 'request_id', '3': 32, '4': 1, '5': 13, '10': 'requestId'},
  ],
};

/// Descriptor for `CreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRequestDescriptor = $convert.base64Decode(
    'Cg1DcmVhdGVSZXF1ZXN0EiQKDWNvcnJlc3BvbmRlbnQYASABKAlSDWNvcnJlc3BvbmRlbnQSHQ'
    'oKYWNjb3VudF9ubxgCIAEoCVIJYWNjb3VudE5vEhcKB2JhbmtfaWQYAyABKA1SBmJhbmtJZBIh'
    'CgxyZXF1ZXN0X3R5cGUYBCABKAlSC3JlcXVlc3RUeXBlEiMKDXRyYW5zZmVyX3R5cGUYBSABKA'
    'lSDHRyYW5zZmVyVHlwZRIQCgNhbXQYBiABKAlSA2FtdBIQCgNmZWUYByABKAlSA2ZlZRIVCgZm'
    'ZWRfbm8YCCABKAlSBWZlZE5vEh8KC2V4dGVybmFsX2lkGAkgASgJUgpleHRlcm5hbElkEhIKBG'
    'JhbmsYCiABKAlSBGJhbmsSGwoJYmFua19ub3RlGAsgASgJUghiYW5rTm90ZRIjCg1pbnRlcm5h'
    'bF9ub3RlGAwgASgJUgxpbnRlcm5hbE5vdGUSFgoGc3RhdHVzGA0gASgJUgZzdGF0dXMSFwoHc2'
    'VuZF90bxgOIAEoCVIGc2VuZFRvEhsKCXdhbGxldF9pZBgfIAEoDVIId2FsbGV0SWQSHQoKcmVx'
    'dWVzdF9pZBggIAEoDVIJcmVxdWVzdElk');

@$core.Deprecated('Use createResponseDescriptor instead')
const CreateResponse$json = {
  '1': 'CreateResponse',
  '2': [
    {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.proto.Request', '10': 'request'},
  ],
};

/// Descriptor for `CreateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createResponseDescriptor = $convert.base64Decode(
    'Cg5DcmVhdGVSZXNwb25zZRIoCgdyZXF1ZXN0GAEgASgLMg4ucHJvdG8uUmVxdWVzdFIHcmVxdW'
    'VzdA==');

@$core.Deprecated('Use updateRequestDescriptor instead')
const UpdateRequest$json = {
  '1': 'UpdateRequest',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 13, '10': 'requestId'},
    {'1': 'external_id', '3': 2, '4': 1, '5': 9, '10': 'externalId'},
    {'1': 'fed_no', '3': 3, '4': 1, '5': 9, '10': 'fedNo'},
    {'1': 'internal_note', '3': 4, '4': 1, '5': 9, '10': 'internalNote'},
    {'1': 'status', '3': 5, '4': 1, '5': 9, '10': 'status'},
    {'1': 'fee', '3': 6, '4': 1, '5': 9, '10': 'fee'},
    {'1': 'amt', '3': 7, '4': 1, '5': 9, '10': 'amt'},
  ],
};

/// Descriptor for `UpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRequestDescriptor = $convert.base64Decode(
    'Cg1VcGRhdGVSZXF1ZXN0Eh0KCnJlcXVlc3RfaWQYASABKA1SCXJlcXVlc3RJZBIfCgtleHRlcm'
    '5hbF9pZBgCIAEoCVIKZXh0ZXJuYWxJZBIVCgZmZWRfbm8YAyABKAlSBWZlZE5vEiMKDWludGVy'
    'bmFsX25vdGUYBCABKAlSDGludGVybmFsTm90ZRIWCgZzdGF0dXMYBSABKAlSBnN0YXR1cxIQCg'
    'NmZWUYBiABKAlSA2ZlZRIQCgNhbXQYByABKAlSA2FtdA==');

@$core.Deprecated('Use updateResponseDescriptor instead')
const UpdateResponse$json = {
  '1': 'UpdateResponse',
  '2': [
    {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.proto.Request', '10': 'request'},
  ],
};

/// Descriptor for `UpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateResponseDescriptor = $convert.base64Decode(
    'Cg5VcGRhdGVSZXNwb25zZRIoCgdyZXF1ZXN0GAEgASgLMg4ucHJvdG8uUmVxdWVzdFIHcmVxdW'
    'VzdA==');

@$core.Deprecated('Use readRequestDescriptor instead')
const ReadRequest$json = {
  '1': 'ReadRequest',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 13, '10': 'requestId'},
  ],
};

/// Descriptor for `ReadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readRequestDescriptor = $convert.base64Decode(
    'CgtSZWFkUmVxdWVzdBIdCgpyZXF1ZXN0X2lkGAEgASgNUglyZXF1ZXN0SWQ=');

@$core.Deprecated('Use readResponseDescriptor instead')
const ReadResponse$json = {
  '1': 'ReadResponse',
  '2': [
    {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.proto.Request', '10': 'request'},
  ],
};

/// Descriptor for `ReadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readResponseDescriptor = $convert.base64Decode(
    'CgxSZWFkUmVzcG9uc2USKAoHcmVxdWVzdBgBIAEoCzIOLnByb3RvLlJlcXVlc3RSB3JlcXVlc3'
    'Q=');

@$core.Deprecated('Use listRequestDescriptor instead')
const ListRequest$json = {
  '1': 'ListRequest',
  '2': [
    {'1': 'correspondent', '3': 1, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'account_no', '3': 2, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'master_account_no', '3': 3, '4': 1, '5': 9, '10': 'masterAccountNo'},
    {'1': 'transfer_type', '3': 4, '4': 1, '5': 9, '10': 'transferType'},
    {'1': 'status', '3': 5, '4': 1, '5': 9, '10': 'status'},
    {'1': 'request_type', '3': 6, '4': 1, '5': 9, '10': 'requestType'},
    {'1': 'from_date', '3': 7, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'fromDate'},
    {'1': 'to_date', '3': 8, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'toDate'},
    {'1': 'branch', '3': 9, '4': 1, '5': 9, '10': 'branch'},
    {'1': 'rep', '3': 10, '4': 1, '5': 9, '10': 'rep'},
    {'1': 'external_id', '3': 11, '4': 1, '5': 9, '10': 'externalId'},
    {'1': 'request_id', '3': 12, '4': 1, '5': 13, '10': 'requestId'},
    {'1': 'sign', '3': 13, '4': 1, '5': 9, '10': 'sign'},
    {'1': 'amount', '3': 14, '4': 1, '5': 9, '10': 'amount'},
    {'1': 'is_open', '3': 15, '4': 1, '5': 8, '10': 'isOpen'},
    {'1': 'pagination', '3': 16, '4': 1, '5': 11, '6': '.utilspb.Pagination', '10': 'pagination'},
    {'1': 'date_type', '3': 17, '4': 1, '5': 9, '10': 'dateType'},
  ],
};

/// Descriptor for `ListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRequestDescriptor = $convert.base64Decode(
    'CgtMaXN0UmVxdWVzdBIkCg1jb3JyZXNwb25kZW50GAEgASgJUg1jb3JyZXNwb25kZW50Eh0KCm'
    'FjY291bnRfbm8YAiABKAlSCWFjY291bnRObxIqChFtYXN0ZXJfYWNjb3VudF9ubxgDIAEoCVIP'
    'bWFzdGVyQWNjb3VudE5vEiMKDXRyYW5zZmVyX3R5cGUYBCABKAlSDHRyYW5zZmVyVHlwZRIWCg'
    'ZzdGF0dXMYBSABKAlSBnN0YXR1cxIhCgxyZXF1ZXN0X3R5cGUYBiABKAlSC3JlcXVlc3RUeXBl'
    'Ei4KCWZyb21fZGF0ZRgHIAEoCzIRLmdvb2dsZS50eXBlLkRhdGVSCGZyb21EYXRlEioKB3RvX2'
    'RhdGUYCCABKAsyES5nb29nbGUudHlwZS5EYXRlUgZ0b0RhdGUSFgoGYnJhbmNoGAkgASgJUgZi'
    'cmFuY2gSEAoDcmVwGAogASgJUgNyZXASHwoLZXh0ZXJuYWxfaWQYCyABKAlSCmV4dGVybmFsSW'
    'QSHQoKcmVxdWVzdF9pZBgMIAEoDVIJcmVxdWVzdElkEhIKBHNpZ24YDSABKAlSBHNpZ24SFgoG'
    'YW1vdW50GA4gASgJUgZhbW91bnQSFwoHaXNfb3BlbhgPIAEoCFIGaXNPcGVuEjMKCnBhZ2luYX'
    'Rpb24YECABKAsyEy51dGlsc3BiLlBhZ2luYXRpb25SCnBhZ2luYXRpb24SGwoJZGF0ZV90eXBl'
    'GBEgASgJUghkYXRlVHlwZQ==');

@$core.Deprecated('Use listSummaryDescriptor instead')
const ListSummary$json = {
  '1': 'ListSummary',
  '2': [
    {'1': 'total_rows', '3': 1, '4': 1, '5': 13, '10': 'totalRows'},
    {'1': 'amt', '3': 2, '4': 1, '5': 9, '10': 'amt'},
    {'1': 'fee', '3': 3, '4': 1, '5': 9, '10': 'fee'},
  ],
};

/// Descriptor for `ListSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSummaryDescriptor = $convert.base64Decode(
    'CgtMaXN0U3VtbWFyeRIdCgp0b3RhbF9yb3dzGAEgASgNUgl0b3RhbFJvd3MSEAoDYW10GAIgAS'
    'gJUgNhbXQSEAoDZmVlGAMgASgJUgNmZWU=');

@$core.Deprecated('Use listResponseDescriptor instead')
const ListResponse$json = {
  '1': 'ListResponse',
  '2': [
    {'1': 'requests', '3': 1, '4': 3, '5': 11, '6': '.proto.Request', '10': 'requests'},
    {'1': 'summary', '3': 2, '4': 1, '5': 11, '6': '.proto.ListSummary', '10': 'summary'},
  ],
};

/// Descriptor for `ListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listResponseDescriptor = $convert.base64Decode(
    'CgxMaXN0UmVzcG9uc2USKgoIcmVxdWVzdHMYASADKAsyDi5wcm90by5SZXF1ZXN0UghyZXF1ZX'
    'N0cxIsCgdzdW1tYXJ5GAIgASgLMhIucHJvdG8uTGlzdFN1bW1hcnlSB3N1bW1hcnk=');

@$core.Deprecated('Use listRequestAuditRequestDescriptor instead')
const ListRequestAuditRequest$json = {
  '1': 'ListRequestAuditRequest',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 13, '10': 'requestId'},
  ],
};

/// Descriptor for `ListRequestAuditRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRequestAuditRequestDescriptor = $convert.base64Decode(
    'ChdMaXN0UmVxdWVzdEF1ZGl0UmVxdWVzdBIdCgpyZXF1ZXN0X2lkGAEgASgNUglyZXF1ZXN0SW'
    'Q=');

@$core.Deprecated('Use listRequestAuditResponseDescriptor instead')
const ListRequestAuditResponse$json = {
  '1': 'ListRequestAuditResponse',
  '2': [
    {'1': 'request', '3': 1, '4': 3, '5': 11, '6': '.proto.Request', '10': 'request'},
  ],
};

/// Descriptor for `ListRequestAuditResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRequestAuditResponseDescriptor = $convert.base64Decode(
    'ChhMaXN0UmVxdWVzdEF1ZGl0UmVzcG9uc2USKAoHcmVxdWVzdBgBIAMoCzIOLnByb3RvLlJlcX'
    'Vlc3RSB3JlcXVlc3Q=');

@$core.Deprecated('Use readMaximumWithdrawableRequestDescriptor instead')
const ReadMaximumWithdrawableRequest$json = {
  '1': 'ReadMaximumWithdrawableRequest',
  '2': [
    {'1': 'correspondent', '3': 1, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'account_no', '3': 2, '4': 1, '5': 9, '10': 'accountNo'},
  ],
};

/// Descriptor for `ReadMaximumWithdrawableRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readMaximumWithdrawableRequestDescriptor = $convert.base64Decode(
    'Ch5SZWFkTWF4aW11bVdpdGhkcmF3YWJsZVJlcXVlc3QSJAoNY29ycmVzcG9uZGVudBgBIAEoCV'
    'INY29ycmVzcG9uZGVudBIdCgphY2NvdW50X25vGAIgASgJUglhY2NvdW50Tm8=');

@$core.Deprecated('Use readMaximumWithdrawableResponseDescriptor instead')
const ReadMaximumWithdrawableResponse$json = {
  '1': 'ReadMaximumWithdrawableResponse',
  '2': [
    {'1': 'account_id', '3': 1, '4': 1, '5': 13, '10': 'accountId'},
    {'1': 'total_amount', '3': 2, '4': 1, '5': 9, '10': 'totalAmount'},
    {'1': 'withdrawable_amt', '3': 3, '4': 1, '5': 9, '10': 'withdrawableAmt'},
    {'1': 'charges', '3': 4, '4': 1, '5': 9, '10': 'charges'},
    {'1': 'pending_call_log', '3': 5, '4': 1, '5': 9, '10': 'pendingCallLog'},
  ],
};

/// Descriptor for `ReadMaximumWithdrawableResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readMaximumWithdrawableResponseDescriptor = $convert.base64Decode(
    'Ch9SZWFkTWF4aW11bVdpdGhkcmF3YWJsZVJlc3BvbnNlEh0KCmFjY291bnRfaWQYASABKA1SCW'
    'FjY291bnRJZBIhCgx0b3RhbF9hbW91bnQYAiABKAlSC3RvdGFsQW1vdW50EikKEHdpdGhkcmF3'
    'YWJsZV9hbXQYAyABKAlSD3dpdGhkcmF3YWJsZUFtdBIYCgdjaGFyZ2VzGAQgASgJUgdjaGFyZ2'
    'VzEigKEHBlbmRpbmdfY2FsbF9sb2cYBSABKAlSDnBlbmRpbmdDYWxsTG9n');

@$core.Deprecated('Use readSummaryRequestDescriptor instead')
const ReadSummaryRequest$json = {
  '1': 'ReadSummaryRequest',
  '2': [
    {'1': 'usr_id', '3': 1, '4': 1, '5': 13, '10': 'usrId'},
  ],
};

/// Descriptor for `ReadSummaryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readSummaryRequestDescriptor = $convert.base64Decode(
    'ChJSZWFkU3VtbWFyeVJlcXVlc3QSFQoGdXNyX2lkGAEgASgNUgV1c3JJZA==');

@$core.Deprecated('Use requestSummaryDescriptor instead')
const RequestSummary$json = {
  '1': 'RequestSummary',
  '2': [
    {'1': 'send_done', '3': 1, '4': 1, '5': 13, '10': 'sendDone'},
    {'1': 'send_pending', '3': 2, '4': 1, '5': 13, '10': 'sendPending'},
    {'1': 'redeem_done', '3': 3, '4': 1, '5': 13, '10': 'redeemDone'},
    {'1': 'redeem_pending', '3': 4, '4': 1, '5': 13, '10': 'redeemPending'},
    {'1': 'deposit_done', '3': 5, '4': 1, '5': 13, '10': 'depositDone'},
    {'1': 'deposit_pending', '3': 6, '4': 1, '5': 13, '10': 'depositPending'},
    {'1': 'send_failed', '3': 7, '4': 1, '5': 13, '10': 'sendFailed'},
    {'1': 'redeem_failed', '3': 8, '4': 1, '5': 13, '10': 'redeemFailed'},
    {'1': 'deposit_failed', '3': 9, '4': 1, '5': 13, '10': 'depositFailed'},
    {'1': 'wallet', '3': 10, '4': 1, '5': 13, '10': 'wallet'},
    {'1': 'account', '3': 11, '4': 1, '5': 13, '10': 'account'},
    {'1': 'beginning_balance', '3': 12, '4': 1, '5': 9, '10': 'beginningBalance'},
    {'1': 'available_balance', '3': 13, '4': 1, '5': 9, '10': 'availableBalance'},
    {'1': 'blockchain_balance', '3': 14, '4': 1, '5': 9, '10': 'blockchainBalance'},
  ],
};

/// Descriptor for `RequestSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestSummaryDescriptor = $convert.base64Decode(
    'Cg5SZXF1ZXN0U3VtbWFyeRIbCglzZW5kX2RvbmUYASABKA1SCHNlbmREb25lEiEKDHNlbmRfcG'
    'VuZGluZxgCIAEoDVILc2VuZFBlbmRpbmcSHwoLcmVkZWVtX2RvbmUYAyABKA1SCnJlZGVlbURv'
    'bmUSJQoOcmVkZWVtX3BlbmRpbmcYBCABKA1SDXJlZGVlbVBlbmRpbmcSIQoMZGVwb3NpdF9kb2'
    '5lGAUgASgNUgtkZXBvc2l0RG9uZRInCg9kZXBvc2l0X3BlbmRpbmcYBiABKA1SDmRlcG9zaXRQ'
    'ZW5kaW5nEh8KC3NlbmRfZmFpbGVkGAcgASgNUgpzZW5kRmFpbGVkEiMKDXJlZGVlbV9mYWlsZW'
    'QYCCABKA1SDHJlZGVlbUZhaWxlZBIlCg5kZXBvc2l0X2ZhaWxlZBgJIAEoDVINZGVwb3NpdEZh'
    'aWxlZBIWCgZ3YWxsZXQYCiABKA1SBndhbGxldBIYCgdhY2NvdW50GAsgASgNUgdhY2NvdW50Ei'
    'sKEWJlZ2lubmluZ19iYWxhbmNlGAwgASgJUhBiZWdpbm5pbmdCYWxhbmNlEisKEWF2YWlsYWJs'
    'ZV9iYWxhbmNlGA0gASgJUhBhdmFpbGFibGVCYWxhbmNlEi0KEmJsb2NrY2hhaW5fYmFsYW5jZR'
    'gOIAEoCVIRYmxvY2tjaGFpbkJhbGFuY2U=');

@$core.Deprecated('Use readSummaryResponseDescriptor instead')
const ReadSummaryResponse$json = {
  '1': 'ReadSummaryResponse',
  '2': [
    {'1': 'request_summary', '3': 1, '4': 1, '5': 11, '6': '.proto.RequestSummary', '10': 'requestSummary'},
  ],
};

/// Descriptor for `ReadSummaryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readSummaryResponseDescriptor = $convert.base64Decode(
    'ChNSZWFkU3VtbWFyeVJlc3BvbnNlEj4KD3JlcXVlc3Rfc3VtbWFyeRgBIAEoCzIVLnByb3RvLl'
    'JlcXVlc3RTdW1tYXJ5Ug5yZXF1ZXN0U3VtbWFyeQ==');

@$core.Deprecated('Use readCashBalanceResponseDescriptor instead')
const ReadCashBalanceResponse$json = {
  '1': 'ReadCashBalanceResponse',
  '2': [
    {'1': 'cash_balance', '3': 1, '4': 1, '5': 9, '10': 'cashBalance'},
  ],
};

/// Descriptor for `ReadCashBalanceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readCashBalanceResponseDescriptor = $convert.base64Decode(
    'ChdSZWFkQ2FzaEJhbGFuY2VSZXNwb25zZRIhCgxjYXNoX2JhbGFuY2UYASABKAlSC2Nhc2hCYW'
    'xhbmNl');

@$core.Deprecated('Use emptyRequestDescriptor instead')
const EmptyRequest$json = {
  '1': 'EmptyRequest',
};

/// Descriptor for `EmptyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyRequestDescriptor = $convert.base64Decode(
    'CgxFbXB0eVJlcXVlc3Q=');

@$core.Deprecated('Use getNewRequestIdRequestDescriptor instead')
const GetNewRequestIdRequest$json = {
  '1': 'GetNewRequestIdRequest',
};

/// Descriptor for `GetNewRequestIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNewRequestIdRequestDescriptor = $convert.base64Decode(
    'ChZHZXROZXdSZXF1ZXN0SWRSZXF1ZXN0');

@$core.Deprecated('Use getNewRequestIdResponseDescriptor instead')
const GetNewRequestIdResponse$json = {
  '1': 'GetNewRequestIdResponse',
  '2': [
    {'1': 'request_id', '3': 1, '4': 1, '5': 13, '10': 'requestId'},
  ],
};

/// Descriptor for `GetNewRequestIdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getNewRequestIdResponseDescriptor = $convert.base64Decode(
    'ChdHZXROZXdSZXF1ZXN0SWRSZXNwb25zZRIdCgpyZXF1ZXN0X2lkGAEgASgNUglyZXF1ZXN0SW'
    'Q=');

@$core.Deprecated('Use getFeeRequestDescriptor instead')
const GetFeeRequest$json = {
  '1': 'GetFeeRequest',
  '2': [
    {'1': 'correspondent', '3': 1, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'account_no', '3': 2, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'amt', '3': 3, '4': 1, '5': 9, '10': 'amt'},
    {'1': 'request_type', '3': 4, '4': 1, '5': 9, '10': 'requestType'},
    {'1': 'transfer_type', '3': 5, '4': 1, '5': 9, '10': 'transferType'},
    {'1': 'is_international', '3': 6, '4': 1, '5': 8, '10': 'isInternational'},
    {'1': 'broker', '3': 7, '4': 1, '5': 9, '10': 'broker'},
  ],
};

/// Descriptor for `GetFeeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFeeRequestDescriptor = $convert.base64Decode(
    'Cg1HZXRGZWVSZXF1ZXN0EiQKDWNvcnJlc3BvbmRlbnQYASABKAlSDWNvcnJlc3BvbmRlbnQSHQ'
    'oKYWNjb3VudF9ubxgCIAEoCVIJYWNjb3VudE5vEhAKA2FtdBgDIAEoCVIDYW10EiEKDHJlcXVl'
    'c3RfdHlwZRgEIAEoCVILcmVxdWVzdFR5cGUSIwoNdHJhbnNmZXJfdHlwZRgFIAEoCVIMdHJhbn'
    'NmZXJUeXBlEikKEGlzX2ludGVybmF0aW9uYWwYBiABKAhSD2lzSW50ZXJuYXRpb25hbBIWCgZi'
    'cm9rZXIYByABKAlSBmJyb2tlcg==');

@$core.Deprecated('Use getFeeResponseDescriptor instead')
const GetFeeResponse$json = {
  '1': 'GetFeeResponse',
  '2': [
    {'1': 'fee', '3': 1, '4': 1, '5': 9, '10': 'fee'},
  ],
};

/// Descriptor for `GetFeeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getFeeResponseDescriptor = $convert.base64Decode(
    'Cg5HZXRGZWVSZXNwb25zZRIQCgNmZWUYASABKAlSA2ZlZQ==');

