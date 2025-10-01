//
//  Generated code. Do not modify.
//  source: proto/reportpb/position.proto
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

@$core.Deprecated('Use positionDescriptor instead')
const Position$json = {
  '1': 'Position',
  '2': [
    {'1': 'account_id', '3': 1, '4': 1, '5': 13, '10': 'accountId'},
    {'1': 'correspondent', '3': 2, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'branch', '3': 3, '4': 1, '5': 9, '10': 'branch'},
    {'1': 'account_no', '3': 4, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'account_name', '3': 5, '4': 1, '5': 9, '10': 'accountName'},
    {'1': 'master_account_no', '3': 6, '4': 1, '5': 9, '10': 'masterAccountNo'},
    {'1': 'rep', '3': 7, '4': 1, '5': 9, '10': 'rep'},
    {'1': 'sub_account_no', '3': 8, '4': 1, '5': 9, '10': 'subAccountNo'},
    {'1': 'broker', '3': 9, '4': 1, '5': 9, '10': 'broker'},
    {'1': 'margin_type', '3': 10, '4': 1, '5': 9, '10': 'marginType'},
    {'1': 'type', '3': 11, '4': 1, '5': 9, '10': 'type'},
    {'1': 'original_cusip', '3': 12, '4': 1, '5': 9, '10': 'originalCusip'},
    {'1': 'symbol', '3': 13, '4': 1, '5': 9, '10': 'symbol'},
    {'1': 'cusip', '3': 14, '4': 1, '5': 9, '10': 'cusip'},
    {'1': 'symbol_description', '3': 15, '4': 1, '5': 9, '10': 'symbolDescription'},
    {'1': 'asset_type', '3': 16, '4': 1, '5': 9, '10': 'assetType'},
    {'1': 'closing_price', '3': 17, '4': 1, '5': 9, '10': 'closingPrice'},
    {'1': 'qty', '3': 18, '4': 1, '5': 9, '10': 'qty'},
    {'1': 'market_value', '3': 19, '4': 1, '5': 9, '10': 'marketValue'},
    {'1': 'cost_basis', '3': 20, '4': 1, '5': 9, '10': 'costBasis'},
    {'1': 'date_type', '3': 21, '4': 1, '5': 9, '10': 'dateType'},
    {'1': 'date', '3': 22, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'date'},
    {'1': 'account_status', '3': 23, '4': 1, '5': 9, '10': 'accountStatus'},
    {'1': 'td_market_value', '3': 24, '4': 1, '5': 9, '10': 'tdMarketValue'},
    {'1': 'td_qty', '3': 25, '4': 1, '5': 9, '10': 'tdQty'},
  ],
};

/// Descriptor for `Position`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List positionDescriptor = $convert.base64Decode(
    'CghQb3NpdGlvbhIdCgphY2NvdW50X2lkGAEgASgNUglhY2NvdW50SWQSJAoNY29ycmVzcG9uZG'
    'VudBgCIAEoCVINY29ycmVzcG9uZGVudBIWCgZicmFuY2gYAyABKAlSBmJyYW5jaBIdCgphY2Nv'
    'dW50X25vGAQgASgJUglhY2NvdW50Tm8SIQoMYWNjb3VudF9uYW1lGAUgASgJUgthY2NvdW50Tm'
    'FtZRIqChFtYXN0ZXJfYWNjb3VudF9ubxgGIAEoCVIPbWFzdGVyQWNjb3VudE5vEhAKA3JlcBgH'
    'IAEoCVIDcmVwEiQKDnN1Yl9hY2NvdW50X25vGAggASgJUgxzdWJBY2NvdW50Tm8SFgoGYnJva2'
    'VyGAkgASgJUgZicm9rZXISHwoLbWFyZ2luX3R5cGUYCiABKAlSCm1hcmdpblR5cGUSEgoEdHlw'
    'ZRgLIAEoCVIEdHlwZRIlCg5vcmlnaW5hbF9jdXNpcBgMIAEoCVINb3JpZ2luYWxDdXNpcBIWCg'
    'ZzeW1ib2wYDSABKAlSBnN5bWJvbBIUCgVjdXNpcBgOIAEoCVIFY3VzaXASLQoSc3ltYm9sX2Rl'
    'c2NyaXB0aW9uGA8gASgJUhFzeW1ib2xEZXNjcmlwdGlvbhIdCgphc3NldF90eXBlGBAgASgJUg'
    'lhc3NldFR5cGUSIwoNY2xvc2luZ19wcmljZRgRIAEoCVIMY2xvc2luZ1ByaWNlEhAKA3F0eRgS'
    'IAEoCVIDcXR5EiEKDG1hcmtldF92YWx1ZRgTIAEoCVILbWFya2V0VmFsdWUSHQoKY29zdF9iYX'
    'NpcxgUIAEoCVIJY29zdEJhc2lzEhsKCWRhdGVfdHlwZRgVIAEoCVIIZGF0ZVR5cGUSJQoEZGF0'
    'ZRgWIAEoCzIRLmdvb2dsZS50eXBlLkRhdGVSBGRhdGUSJQoOYWNjb3VudF9zdGF0dXMYFyABKA'
    'lSDWFjY291bnRTdGF0dXMSJgoPdGRfbWFya2V0X3ZhbHVlGBggASgJUg10ZE1hcmtldFZhbHVl'
    'EhUKBnRkX3F0eRgZIAEoCVIFdGRRdHk=');

@$core.Deprecated('Use listPositionRequestDescriptor instead')
const ListPositionRequest$json = {
  '1': 'ListPositionRequest',
  '2': [
    {'1': 'correspondent', '3': 1, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'account_no', '3': 2, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'account_name', '3': 3, '4': 1, '5': 9, '10': 'accountName'},
    {'1': 'master_account_no', '3': 4, '4': 1, '5': 9, '10': 'masterAccountNo'},
    {'1': 'unpriced_security', '3': 5, '4': 1, '5': 8, '10': 'unpricedSecurity'},
    {'1': 'broker', '3': 6, '4': 1, '5': 9, '10': 'broker'},
    {'1': 'type', '3': 7, '4': 1, '5': 9, '10': 'type'},
    {'1': 'symbol', '3': 8, '4': 1, '5': 9, '10': 'symbol'},
    {'1': 'cusip', '3': 9, '4': 1, '5': 9, '10': 'cusip'},
    {'1': 'from_date', '3': 10, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'fromDate'},
    {'1': 'to_date', '3': 11, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'toDate'},
    {'1': 'branch', '3': 12, '4': 1, '5': 9, '10': 'branch'},
    {'1': 'rep', '3': 13, '4': 1, '5': 9, '10': 'rep'},
    {'1': 'usr_id', '3': 14, '4': 1, '5': 13, '10': 'usrId'},
    {'1': 'pagination', '3': 15, '4': 1, '5': 11, '6': '.utilspb.Pagination', '10': 'pagination'},
    {'1': 'date_type', '3': 16, '4': 1, '5': 9, '10': 'dateType'},
    {'1': 'asset_type', '3': 17, '4': 1, '5': 9, '10': 'assetType'},
    {'1': 'roll_up', '3': 18, '4': 1, '5': 9, '10': 'rollUp'},
  ],
};

/// Descriptor for `ListPositionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPositionRequestDescriptor = $convert.base64Decode(
    'ChNMaXN0UG9zaXRpb25SZXF1ZXN0EiQKDWNvcnJlc3BvbmRlbnQYASABKAlSDWNvcnJlc3Bvbm'
    'RlbnQSHQoKYWNjb3VudF9ubxgCIAEoCVIJYWNjb3VudE5vEiEKDGFjY291bnRfbmFtZRgDIAEo'
    'CVILYWNjb3VudE5hbWUSKgoRbWFzdGVyX2FjY291bnRfbm8YBCABKAlSD21hc3RlckFjY291bn'
    'RObxIrChF1bnByaWNlZF9zZWN1cml0eRgFIAEoCFIQdW5wcmljZWRTZWN1cml0eRIWCgZicm9r'
    'ZXIYBiABKAlSBmJyb2tlchISCgR0eXBlGAcgASgJUgR0eXBlEhYKBnN5bWJvbBgIIAEoCVIGc3'
    'ltYm9sEhQKBWN1c2lwGAkgASgJUgVjdXNpcBIuCglmcm9tX2RhdGUYCiABKAsyES5nb29nbGUu'
    'dHlwZS5EYXRlUghmcm9tRGF0ZRIqCgd0b19kYXRlGAsgASgLMhEuZ29vZ2xlLnR5cGUuRGF0ZV'
    'IGdG9EYXRlEhYKBmJyYW5jaBgMIAEoCVIGYnJhbmNoEhAKA3JlcBgNIAEoCVIDcmVwEhUKBnVz'
    'cl9pZBgOIAEoDVIFdXNySWQSMwoKcGFnaW5hdGlvbhgPIAEoCzITLnV0aWxzcGIuUGFnaW5hdG'
    'lvblIKcGFnaW5hdGlvbhIbCglkYXRlX3R5cGUYECABKAlSCGRhdGVUeXBlEh0KCmFzc2V0X3R5'
    'cGUYESABKAlSCWFzc2V0VHlwZRIXCgdyb2xsX3VwGBIgASgJUgZyb2xsVXA=');

@$core.Deprecated('Use listPositionResponseDescriptor instead')
const ListPositionResponse$json = {
  '1': 'ListPositionResponse',
  '2': [
    {'1': 'positions', '3': 1, '4': 3, '5': 11, '6': '.reportpb.Position', '10': 'positions'},
    {'1': 'summary', '3': 2, '4': 1, '5': 11, '6': '.reportpb.ListPositionSummary', '10': 'summary'},
  ],
};

/// Descriptor for `ListPositionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPositionResponseDescriptor = $convert.base64Decode(
    'ChRMaXN0UG9zaXRpb25SZXNwb25zZRIwCglwb3NpdGlvbnMYASADKAsyEi5yZXBvcnRwYi5Qb3'
    'NpdGlvblIJcG9zaXRpb25zEjcKB3N1bW1hcnkYAiABKAsyHS5yZXBvcnRwYi5MaXN0UG9zaXRp'
    'b25TdW1tYXJ5UgdzdW1tYXJ5');

@$core.Deprecated('Use listPositionSummaryDescriptor instead')
const ListPositionSummary$json = {
  '1': 'ListPositionSummary',
  '2': [
    {'1': 'total_rows', '3': 1, '4': 1, '5': 13, '10': 'totalRows'},
    {'1': 'cash_balance', '3': 2, '4': 1, '5': 9, '10': 'cashBalance'},
    {'1': 'long_market_value', '3': 3, '4': 1, '5': 9, '10': 'longMarketValue'},
    {'1': 'short_market_value', '3': 4, '4': 1, '5': 9, '10': 'shortMarketValue'},
    {'1': 'equity', '3': 5, '4': 1, '5': 9, '10': 'equity'},
    {'1': 'adjusted_balance', '3': 6, '4': 1, '5': 9, '10': 'adjustedBalance'},
    {'1': 'td_qty', '3': 7, '4': 1, '5': 9, '10': 'tdQty'},
    {'1': 'closing_price', '3': 8, '4': 1, '5': 9, '10': 'closingPrice'},
    {'1': 'td_market_value', '3': 9, '4': 1, '5': 9, '10': 'tdMarketValue'},
    {'1': 'cost_basis', '3': 10, '4': 1, '5': 9, '10': 'costBasis'},
  ],
};

/// Descriptor for `ListPositionSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPositionSummaryDescriptor = $convert.base64Decode(
    'ChNMaXN0UG9zaXRpb25TdW1tYXJ5Eh0KCnRvdGFsX3Jvd3MYASABKA1SCXRvdGFsUm93cxIhCg'
    'xjYXNoX2JhbGFuY2UYAiABKAlSC2Nhc2hCYWxhbmNlEioKEWxvbmdfbWFya2V0X3ZhbHVlGAMg'
    'ASgJUg9sb25nTWFya2V0VmFsdWUSLAoSc2hvcnRfbWFya2V0X3ZhbHVlGAQgASgJUhBzaG9ydE'
    '1hcmtldFZhbHVlEhYKBmVxdWl0eRgFIAEoCVIGZXF1aXR5EikKEGFkanVzdGVkX2JhbGFuY2UY'
    'BiABKAlSD2FkanVzdGVkQmFsYW5jZRIVCgZ0ZF9xdHkYByABKAlSBXRkUXR5EiMKDWNsb3Npbm'
    'dfcHJpY2UYCCABKAlSDGNsb3NpbmdQcmljZRImCg90ZF9tYXJrZXRfdmFsdWUYCSABKAlSDXRk'
    'TWFya2V0VmFsdWUSHQoKY29zdF9iYXNpcxgKIAEoCVIJY29zdEJhc2lz');

@$core.Deprecated('Use positionAccountAllocationDescriptor instead')
const PositionAccountAllocation$json = {
  '1': 'PositionAccountAllocation',
  '2': [
    {'1': 'percentage', '3': 1, '4': 1, '5': 9, '10': 'percentage'},
    {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `PositionAccountAllocation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List positionAccountAllocationDescriptor = $convert.base64Decode(
    'ChlQb3NpdGlvbkFjY291bnRBbGxvY2F0aW9uEh4KCnBlcmNlbnRhZ2UYASABKAlSCnBlcmNlbn'
    'RhZ2USEgoEY29kZRgCIAEoCVIEY29kZRIgCgtkZXNjcmlwdGlvbhgDIAEoCVILZGVzY3JpcHRp'
    'b24=');

@$core.Deprecated('Use getPositionAccountAllocationRequestDescriptor instead')
const GetPositionAccountAllocationRequest$json = {
  '1': 'GetPositionAccountAllocationRequest',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
  ],
};

/// Descriptor for `GetPositionAccountAllocationRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPositionAccountAllocationRequestDescriptor = $convert.base64Decode(
    'CiNHZXRQb3NpdGlvbkFjY291bnRBbGxvY2F0aW9uUmVxdWVzdBISCgR0eXBlGAEgASgJUgR0eX'
    'Bl');

@$core.Deprecated('Use getPositionAccountAllocationResponseDescriptor instead')
const GetPositionAccountAllocationResponse$json = {
  '1': 'GetPositionAccountAllocationResponse',
  '2': [
    {'1': 'position_account_allocations', '3': 1, '4': 3, '5': 11, '6': '.reportpb.PositionAccountAllocation', '10': 'positionAccountAllocations'},
  ],
};

/// Descriptor for `GetPositionAccountAllocationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPositionAccountAllocationResponseDescriptor = $convert.base64Decode(
    'CiRHZXRQb3NpdGlvbkFjY291bnRBbGxvY2F0aW9uUmVzcG9uc2USZQoccG9zaXRpb25fYWNjb3'
    'VudF9hbGxvY2F0aW9ucxgBIAMoCzIjLnJlcG9ydHBiLlBvc2l0aW9uQWNjb3VudEFsbG9jYXRp'
    'b25SGnBvc2l0aW9uQWNjb3VudEFsbG9jYXRpb25z');

