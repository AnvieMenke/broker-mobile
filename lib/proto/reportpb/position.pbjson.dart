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
    {'1': 'date_type', '3': 1, '4': 1, '5': 9, '10': 'dateType'},
    {'1': 'date', '3': 2, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'date'},
    {'1': 'account_id', '3': 3, '4': 1, '5': 13, '10': 'accountId'},
    {'1': 'correspondent', '3': 4, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'account_no', '3': 5, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'sub_account_no', '3': 6, '4': 1, '5': 9, '10': 'subAccountNo'},
    {'1': 'account_name', '3': 7, '4': 1, '5': 9, '10': 'accountName'},
    {'1': 'master_account_no', '3': 8, '4': 1, '5': 9, '10': 'masterAccountNo'},
    {'1': 'branch', '3': 9, '4': 1, '5': 9, '10': 'branch'},
    {'1': 'rep', '3': 10, '4': 1, '5': 9, '10': 'rep'},
    {'1': 'margin_type', '3': 11, '4': 1, '5': 9, '10': 'marginType'},
    {'1': 'account_type', '3': 12, '4': 1, '5': 9, '10': 'accountType'},
    {'1': 'account_status', '3': 13, '4': 1, '5': 9, '10': 'accountStatus'},
    {'1': 'original_cusip', '3': 14, '4': 1, '5': 9, '10': 'originalCusip'},
    {'1': 'asset_type', '3': 15, '4': 1, '5': 9, '10': 'assetType'},
    {'1': 'symbol', '3': 16, '4': 1, '5': 9, '10': 'symbol'},
    {'1': 'symbol_description', '3': 17, '4': 1, '5': 9, '10': 'symbolDescription'},
    {'1': 'closing_price', '3': 18, '4': 1, '5': 9, '10': 'closingPrice'},
    {'1': 'closing_price_change', '3': 19, '4': 1, '5': 9, '10': 'closingPriceChange'},
    {'1': 'td_qty', '3': 20, '4': 1, '5': 9, '10': 'tdQty'},
    {'1': 'td_market_value', '3': 21, '4': 1, '5': 9, '10': 'tdMarketValue'},
    {'1': 'td_short_market_value', '3': 22, '4': 1, '5': 9, '10': 'tdShortMarketValue'},
    {'1': 'td_long_market_value', '3': 23, '4': 1, '5': 9, '10': 'tdLongMarketValue'},
    {'1': 'sd_qty', '3': 24, '4': 1, '5': 9, '10': 'sdQty'},
    {'1': 'sd_market_value', '3': 25, '4': 1, '5': 9, '10': 'sdMarketValue'},
    {'1': 'sd_short_market_value', '3': 26, '4': 1, '5': 9, '10': 'sdShortMarketValue'},
    {'1': 'sd_long_market_value', '3': 27, '4': 1, '5': 9, '10': 'sdLongMarketValue'},
    {'1': 'account_value_percent', '3': 28, '4': 1, '5': 9, '10': 'accountValuePercent'},
    {'1': 'avg_cost_price', '3': 29, '4': 1, '5': 9, '10': 'avgCostPrice'},
    {'1': 'cost_basis', '3': 30, '4': 1, '5': 9, '10': 'costBasis'},
    {'1': 'unrealized_pl_value', '3': 31, '4': 1, '5': 9, '10': 'unrealizedPlValue'},
    {'1': 'unrealized_pl_percent', '3': 32, '4': 1, '5': 9, '10': 'unrealizedPlPercent'},
    {'1': 'low_price', '3': 33, '4': 1, '5': 9, '10': 'lowPrice'},
    {'1': 'high_price', '3': 34, '4': 1, '5': 9, '10': 'highPrice'},
  ],
};

/// Descriptor for `Position`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List positionDescriptor = $convert.base64Decode(
    'CghQb3NpdGlvbhIbCglkYXRlX3R5cGUYASABKAlSCGRhdGVUeXBlEiUKBGRhdGUYAiABKAsyES'
    '5nb29nbGUudHlwZS5EYXRlUgRkYXRlEh0KCmFjY291bnRfaWQYAyABKA1SCWFjY291bnRJZBIk'
    'Cg1jb3JyZXNwb25kZW50GAQgASgJUg1jb3JyZXNwb25kZW50Eh0KCmFjY291bnRfbm8YBSABKA'
    'lSCWFjY291bnRObxIkCg5zdWJfYWNjb3VudF9ubxgGIAEoCVIMc3ViQWNjb3VudE5vEiEKDGFj'
    'Y291bnRfbmFtZRgHIAEoCVILYWNjb3VudE5hbWUSKgoRbWFzdGVyX2FjY291bnRfbm8YCCABKA'
    'lSD21hc3RlckFjY291bnRObxIWCgZicmFuY2gYCSABKAlSBmJyYW5jaBIQCgNyZXAYCiABKAlS'
    'A3JlcBIfCgttYXJnaW5fdHlwZRgLIAEoCVIKbWFyZ2luVHlwZRIhCgxhY2NvdW50X3R5cGUYDC'
    'ABKAlSC2FjY291bnRUeXBlEiUKDmFjY291bnRfc3RhdHVzGA0gASgJUg1hY2NvdW50U3RhdHVz'
    'EiUKDm9yaWdpbmFsX2N1c2lwGA4gASgJUg1vcmlnaW5hbEN1c2lwEh0KCmFzc2V0X3R5cGUYDy'
    'ABKAlSCWFzc2V0VHlwZRIWCgZzeW1ib2wYECABKAlSBnN5bWJvbBItChJzeW1ib2xfZGVzY3Jp'
    'cHRpb24YESABKAlSEXN5bWJvbERlc2NyaXB0aW9uEiMKDWNsb3NpbmdfcHJpY2UYEiABKAlSDG'
    'Nsb3NpbmdQcmljZRIwChRjbG9zaW5nX3ByaWNlX2NoYW5nZRgTIAEoCVISY2xvc2luZ1ByaWNl'
    'Q2hhbmdlEhUKBnRkX3F0eRgUIAEoCVIFdGRRdHkSJgoPdGRfbWFya2V0X3ZhbHVlGBUgASgJUg'
    '10ZE1hcmtldFZhbHVlEjEKFXRkX3Nob3J0X21hcmtldF92YWx1ZRgWIAEoCVISdGRTaG9ydE1h'
    'cmtldFZhbHVlEi8KFHRkX2xvbmdfbWFya2V0X3ZhbHVlGBcgASgJUhF0ZExvbmdNYXJrZXRWYW'
    'x1ZRIVCgZzZF9xdHkYGCABKAlSBXNkUXR5EiYKD3NkX21hcmtldF92YWx1ZRgZIAEoCVINc2RN'
    'YXJrZXRWYWx1ZRIxChVzZF9zaG9ydF9tYXJrZXRfdmFsdWUYGiABKAlSEnNkU2hvcnRNYXJrZX'
    'RWYWx1ZRIvChRzZF9sb25nX21hcmtldF92YWx1ZRgbIAEoCVIRc2RMb25nTWFya2V0VmFsdWUS'
    'MgoVYWNjb3VudF92YWx1ZV9wZXJjZW50GBwgASgJUhNhY2NvdW50VmFsdWVQZXJjZW50EiQKDm'
    'F2Z19jb3N0X3ByaWNlGB0gASgJUgxhdmdDb3N0UHJpY2USHQoKY29zdF9iYXNpcxgeIAEoCVIJ'
    'Y29zdEJhc2lzEi4KE3VucmVhbGl6ZWRfcGxfdmFsdWUYHyABKAlSEXVucmVhbGl6ZWRQbFZhbH'
    'VlEjIKFXVucmVhbGl6ZWRfcGxfcGVyY2VudBggIAEoCVITdW5yZWFsaXplZFBsUGVyY2VudBIb'
    'Cglsb3dfcHJpY2UYISABKAlSCGxvd1ByaWNlEh0KCmhpZ2hfcHJpY2UYIiABKAlSCWhpZ2hQcm'
    'ljZQ==');

@$core.Deprecated('Use listPositionRequestDescriptor instead')
const ListPositionRequest$json = {
  '1': 'ListPositionRequest',
  '2': [
    {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.utilspb.Pagination', '10': 'pagination'},
    {'1': 'date_type', '3': 2, '4': 1, '5': 9, '10': 'dateType'},
    {'1': 'from_date', '3': 3, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'fromDate'},
    {'1': 'to_date', '3': 4, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'toDate'},
    {'1': 'correspondent', '3': 5, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'account_no', '3': 6, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'account_name', '3': 7, '4': 1, '5': 9, '10': 'accountName'},
    {'1': 'master_account_no', '3': 8, '4': 1, '5': 9, '10': 'masterAccountNo'},
    {'1': 'branch', '3': 9, '4': 1, '5': 9, '10': 'branch'},
    {'1': 'rep', '3': 10, '4': 1, '5': 9, '10': 'rep'},
    {'1': 'asset_type', '3': 11, '4': 1, '5': 9, '10': 'assetType'},
    {'1': 'symbol', '3': 12, '4': 1, '5': 9, '10': 'symbol'},
    {'1': 'roll_up', '3': 13, '4': 1, '5': 9, '10': 'rollUp'},
    {'1': 'include_cash', '3': 14, '4': 1, '5': 8, '10': 'includeCash'},
  ],
};

/// Descriptor for `ListPositionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPositionRequestDescriptor = $convert.base64Decode(
    'ChNMaXN0UG9zaXRpb25SZXF1ZXN0EjMKCnBhZ2luYXRpb24YASABKAsyEy51dGlsc3BiLlBhZ2'
    'luYXRpb25SCnBhZ2luYXRpb24SGwoJZGF0ZV90eXBlGAIgASgJUghkYXRlVHlwZRIuCglmcm9t'
    'X2RhdGUYAyABKAsyES5nb29nbGUudHlwZS5EYXRlUghmcm9tRGF0ZRIqCgd0b19kYXRlGAQgAS'
    'gLMhEuZ29vZ2xlLnR5cGUuRGF0ZVIGdG9EYXRlEiQKDWNvcnJlc3BvbmRlbnQYBSABKAlSDWNv'
    'cnJlc3BvbmRlbnQSHQoKYWNjb3VudF9ubxgGIAEoCVIJYWNjb3VudE5vEiEKDGFjY291bnRfbm'
    'FtZRgHIAEoCVILYWNjb3VudE5hbWUSKgoRbWFzdGVyX2FjY291bnRfbm8YCCABKAlSD21hc3Rl'
    'ckFjY291bnRObxIWCgZicmFuY2gYCSABKAlSBmJyYW5jaBIQCgNyZXAYCiABKAlSA3JlcBIdCg'
    'phc3NldF90eXBlGAsgASgJUglhc3NldFR5cGUSFgoGc3ltYm9sGAwgASgJUgZzeW1ib2wSFwoH'
    'cm9sbF91cBgNIAEoCVIGcm9sbFVwEiEKDGluY2x1ZGVfY2FzaBgOIAEoCFILaW5jbHVkZUNhc2'
    'g=');

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
    {'1': 'cost_basis', '3': 2, '4': 1, '5': 9, '10': 'costBasis'},
    {'1': 'sd_qty', '3': 3, '4': 1, '5': 9, '10': 'sdQty'},
    {'1': 'sd_market_value', '3': 4, '4': 1, '5': 9, '10': 'sdMarketValue'},
    {'1': 'sd_short_market_value', '3': 5, '4': 1, '5': 9, '10': 'sdShortMarketValue'},
    {'1': 'sd_long_market_value', '3': 6, '4': 1, '5': 9, '10': 'sdLongMarketValue'},
    {'1': 'td_qty', '3': 7, '4': 1, '5': 9, '10': 'tdQty'},
    {'1': 'td_market_value', '3': 8, '4': 1, '5': 9, '10': 'tdMarketValue'},
    {'1': 'td_short_market_value', '3': 9, '4': 1, '5': 9, '10': 'tdShortMarketValue'},
    {'1': 'td_long_market_value', '3': 10, '4': 1, '5': 9, '10': 'tdLongMarketValue'},
  ],
};

/// Descriptor for `ListPositionSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPositionSummaryDescriptor = $convert.base64Decode(
    'ChNMaXN0UG9zaXRpb25TdW1tYXJ5Eh0KCnRvdGFsX3Jvd3MYASABKA1SCXRvdGFsUm93cxIdCg'
    'pjb3N0X2Jhc2lzGAIgASgJUgljb3N0QmFzaXMSFQoGc2RfcXR5GAMgASgJUgVzZFF0eRImCg9z'
    'ZF9tYXJrZXRfdmFsdWUYBCABKAlSDXNkTWFya2V0VmFsdWUSMQoVc2Rfc2hvcnRfbWFya2V0X3'
    'ZhbHVlGAUgASgJUhJzZFNob3J0TWFya2V0VmFsdWUSLwoUc2RfbG9uZ19tYXJrZXRfdmFsdWUY'
    'BiABKAlSEXNkTG9uZ01hcmtldFZhbHVlEhUKBnRkX3F0eRgHIAEoCVIFdGRRdHkSJgoPdGRfbW'
    'Fya2V0X3ZhbHVlGAggASgJUg10ZE1hcmtldFZhbHVlEjEKFXRkX3Nob3J0X21hcmtldF92YWx1'
    'ZRgJIAEoCVISdGRTaG9ydE1hcmtldFZhbHVlEi8KFHRkX2xvbmdfbWFya2V0X3ZhbHVlGAogAS'
    'gJUhF0ZExvbmdNYXJrZXRWYWx1ZQ==');

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

