//
//  Generated code. Do not modify.
//  source: proto/reportpb/balance.proto
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

@$core.Deprecated('Use balanceDescriptor instead')
const Balance$json = {
  '1': 'Balance',
  '2': [
    {'1': 'report_balance_id', '3': 1, '4': 1, '5': 13, '10': 'reportBalanceId'},
    {'1': 'date_type', '3': 2, '4': 1, '5': 9, '10': 'dateType'},
    {'1': 'date', '3': 3, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'date'},
    {'1': 'account_id', '3': 4, '4': 1, '5': 13, '10': 'accountId'},
    {'1': 'correspondent', '3': 5, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'branch', '3': 6, '4': 1, '5': 9, '10': 'branch'},
    {'1': 'account_no', '3': 7, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'sub_account_no', '3': 8, '4': 1, '5': 9, '10': 'subAccountNo'},
    {'1': 'account_name', '3': 9, '4': 1, '5': 9, '10': 'accountName'},
    {'1': 'master_account_no', '3': 10, '4': 1, '5': 9, '10': 'masterAccountNo'},
    {'1': 'rep', '3': 11, '4': 1, '5': 9, '10': 'rep'},
    {'1': 'margin_type', '3': 12, '4': 1, '5': 9, '10': 'marginType'},
    {'1': 'account_status', '3': 13, '4': 1, '5': 9, '10': 'accountStatus'},
    {'1': 'account_type', '3': 14, '4': 1, '5': 9, '10': 'accountType'},
    {'1': 'td_cash_balance', '3': 15, '4': 1, '5': 9, '10': 'tdCashBalance'},
    {'1': 'td_market_value', '3': 16, '4': 1, '5': 9, '10': 'tdMarketValue'},
    {'1': 'td_short_market_value', '3': 17, '4': 1, '5': 9, '10': 'tdShortMarketValue'},
    {'1': 'td_long_market_value', '3': 18, '4': 1, '5': 9, '10': 'tdLongMarketValue'},
    {'1': 'td_equity', '3': 19, '4': 1, '5': 9, '10': 'tdEquity'},
    {'1': 'td_adjusted_balance', '3': 20, '4': 1, '5': 9, '10': 'tdAdjustedBalance'},
    {'1': 'sd_cash_balance', '3': 21, '4': 1, '5': 9, '10': 'sdCashBalance'},
    {'1': 'sd_market_value', '3': 22, '4': 1, '5': 9, '10': 'sdMarketValue'},
    {'1': 'sd_short_market_value', '3': 23, '4': 1, '5': 9, '10': 'sdShortMarketValue'},
    {'1': 'sd_long_market_value', '3': 24, '4': 1, '5': 9, '10': 'sdLongMarketValue'},
    {'1': 'sd_equity', '3': 25, '4': 1, '5': 9, '10': 'sdEquity'},
    {'1': 'sd_adjusted_balance', '3': 26, '4': 1, '5': 9, '10': 'sdAdjustedBalance'},
    {'1': 'account_value_percent', '3': 27, '4': 1, '5': 9, '10': 'accountValuePercent'},
    {'1': 'position_cost', '3': 28, '4': 1, '5': 9, '10': 'positionCost'},
    {'1': 'unrealized_pl_value', '3': 29, '4': 1, '5': 9, '10': 'unrealizedPlValue'},
    {'1': 'unrealized_pl_percent', '3': 30, '4': 1, '5': 9, '10': 'unrealizedPlPercent'},
    {'1': 'ytd_pl_value', '3': 31, '4': 1, '5': 9, '10': 'ytdPlValue'},
    {'1': 'ytd_pl_percent', '3': 32, '4': 1, '5': 9, '10': 'ytdPlPercent'},
  ],
};

/// Descriptor for `Balance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List balanceDescriptor = $convert.base64Decode(
    'CgdCYWxhbmNlEioKEXJlcG9ydF9iYWxhbmNlX2lkGAEgASgNUg9yZXBvcnRCYWxhbmNlSWQSGw'
    'oJZGF0ZV90eXBlGAIgASgJUghkYXRlVHlwZRIlCgRkYXRlGAMgASgLMhEuZ29vZ2xlLnR5cGUu'
    'RGF0ZVIEZGF0ZRIdCgphY2NvdW50X2lkGAQgASgNUglhY2NvdW50SWQSJAoNY29ycmVzcG9uZG'
    'VudBgFIAEoCVINY29ycmVzcG9uZGVudBIWCgZicmFuY2gYBiABKAlSBmJyYW5jaBIdCgphY2Nv'
    'dW50X25vGAcgASgJUglhY2NvdW50Tm8SJAoOc3ViX2FjY291bnRfbm8YCCABKAlSDHN1YkFjY2'
    '91bnRObxIhCgxhY2NvdW50X25hbWUYCSABKAlSC2FjY291bnROYW1lEioKEW1hc3Rlcl9hY2Nv'
    'dW50X25vGAogASgJUg9tYXN0ZXJBY2NvdW50Tm8SEAoDcmVwGAsgASgJUgNyZXASHwoLbWFyZ2'
    'luX3R5cGUYDCABKAlSCm1hcmdpblR5cGUSJQoOYWNjb3VudF9zdGF0dXMYDSABKAlSDWFjY291'
    'bnRTdGF0dXMSIQoMYWNjb3VudF90eXBlGA4gASgJUgthY2NvdW50VHlwZRImCg90ZF9jYXNoX2'
    'JhbGFuY2UYDyABKAlSDXRkQ2FzaEJhbGFuY2USJgoPdGRfbWFya2V0X3ZhbHVlGBAgASgJUg10'
    'ZE1hcmtldFZhbHVlEjEKFXRkX3Nob3J0X21hcmtldF92YWx1ZRgRIAEoCVISdGRTaG9ydE1hcm'
    'tldFZhbHVlEi8KFHRkX2xvbmdfbWFya2V0X3ZhbHVlGBIgASgJUhF0ZExvbmdNYXJrZXRWYWx1'
    'ZRIbCgl0ZF9lcXVpdHkYEyABKAlSCHRkRXF1aXR5Ei4KE3RkX2FkanVzdGVkX2JhbGFuY2UYFC'
    'ABKAlSEXRkQWRqdXN0ZWRCYWxhbmNlEiYKD3NkX2Nhc2hfYmFsYW5jZRgVIAEoCVINc2RDYXNo'
    'QmFsYW5jZRImCg9zZF9tYXJrZXRfdmFsdWUYFiABKAlSDXNkTWFya2V0VmFsdWUSMQoVc2Rfc2'
    'hvcnRfbWFya2V0X3ZhbHVlGBcgASgJUhJzZFNob3J0TWFya2V0VmFsdWUSLwoUc2RfbG9uZ19t'
    'YXJrZXRfdmFsdWUYGCABKAlSEXNkTG9uZ01hcmtldFZhbHVlEhsKCXNkX2VxdWl0eRgZIAEoCV'
    'IIc2RFcXVpdHkSLgoTc2RfYWRqdXN0ZWRfYmFsYW5jZRgaIAEoCVIRc2RBZGp1c3RlZEJhbGFu'
    'Y2USMgoVYWNjb3VudF92YWx1ZV9wZXJjZW50GBsgASgJUhNhY2NvdW50VmFsdWVQZXJjZW50Ei'
    'MKDXBvc2l0aW9uX2Nvc3QYHCABKAlSDHBvc2l0aW9uQ29zdBIuChN1bnJlYWxpemVkX3BsX3Zh'
    'bHVlGB0gASgJUhF1bnJlYWxpemVkUGxWYWx1ZRIyChV1bnJlYWxpemVkX3BsX3BlcmNlbnQYHi'
    'ABKAlSE3VucmVhbGl6ZWRQbFBlcmNlbnQSIAoMeXRkX3BsX3ZhbHVlGB8gASgJUgp5dGRQbFZh'
    'bHVlEiQKDnl0ZF9wbF9wZXJjZW50GCAgASgJUgx5dGRQbFBlcmNlbnQ=');

@$core.Deprecated('Use listBalanceRequestDescriptor instead')
const ListBalanceRequest$json = {
  '1': 'ListBalanceRequest',
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
    {'1': 'roll_up', '3': 11, '4': 1, '5': 9, '10': 'rollUp'},
    {'1': 'hide_zero', '3': 12, '4': 1, '5': 8, '10': 'hideZero'},
  ],
};

/// Descriptor for `ListBalanceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBalanceRequestDescriptor = $convert.base64Decode(
    'ChJMaXN0QmFsYW5jZVJlcXVlc3QSMwoKcGFnaW5hdGlvbhgBIAEoCzITLnV0aWxzcGIuUGFnaW'
    '5hdGlvblIKcGFnaW5hdGlvbhIbCglkYXRlX3R5cGUYAiABKAlSCGRhdGVUeXBlEi4KCWZyb21f'
    'ZGF0ZRgDIAEoCzIRLmdvb2dsZS50eXBlLkRhdGVSCGZyb21EYXRlEioKB3RvX2RhdGUYBCABKA'
    'syES5nb29nbGUudHlwZS5EYXRlUgZ0b0RhdGUSJAoNY29ycmVzcG9uZGVudBgFIAEoCVINY29y'
    'cmVzcG9uZGVudBIdCgphY2NvdW50X25vGAYgASgJUglhY2NvdW50Tm8SIQoMYWNjb3VudF9uYW'
    '1lGAcgASgJUgthY2NvdW50TmFtZRIqChFtYXN0ZXJfYWNjb3VudF9ubxgIIAEoCVIPbWFzdGVy'
    'QWNjb3VudE5vEhYKBmJyYW5jaBgJIAEoCVIGYnJhbmNoEhAKA3JlcBgKIAEoCVIDcmVwEhcKB3'
    'JvbGxfdXAYCyABKAlSBnJvbGxVcBIbCgloaWRlX3plcm8YDCABKAhSCGhpZGVaZXJv');

@$core.Deprecated('Use listBalanceResponseDescriptor instead')
const ListBalanceResponse$json = {
  '1': 'ListBalanceResponse',
  '2': [
    {'1': 'balances', '3': 1, '4': 3, '5': 11, '6': '.reportpb.Balance', '10': 'balances'},
    {'1': 'summary', '3': 2, '4': 1, '5': 11, '6': '.reportpb.ListBalanceSummary', '10': 'summary'},
  ],
};

/// Descriptor for `ListBalanceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBalanceResponseDescriptor = $convert.base64Decode(
    'ChNMaXN0QmFsYW5jZVJlc3BvbnNlEi0KCGJhbGFuY2VzGAEgAygLMhEucmVwb3J0cGIuQmFsYW'
    '5jZVIIYmFsYW5jZXMSNgoHc3VtbWFyeRgCIAEoCzIcLnJlcG9ydHBiLkxpc3RCYWxhbmNlU3Vt'
    'bWFyeVIHc3VtbWFyeQ==');

@$core.Deprecated('Use listBalanceSummaryDescriptor instead')
const ListBalanceSummary$json = {
  '1': 'ListBalanceSummary',
  '2': [
    {'1': 'total_rows', '3': 1, '4': 1, '5': 13, '10': 'totalRows'},
    {'1': 'sd_cash_balance', '3': 2, '4': 1, '5': 9, '10': 'sdCashBalance'},
    {'1': 'sd_market_value', '3': 3, '4': 1, '5': 9, '10': 'sdMarketValue'},
    {'1': 'sd_short_market_value', '3': 4, '4': 1, '5': 9, '10': 'sdShortMarketValue'},
    {'1': 'sd_long_market_value', '3': 5, '4': 1, '5': 9, '10': 'sdLongMarketValue'},
    {'1': 'sd_equity', '3': 6, '4': 1, '5': 9, '10': 'sdEquity'},
    {'1': 'sd_adjusted_balance', '3': 7, '4': 1, '5': 9, '10': 'sdAdjustedBalance'},
    {'1': 'td_cash_balance', '3': 8, '4': 1, '5': 9, '10': 'tdCashBalance'},
    {'1': 'td_market_value', '3': 9, '4': 1, '5': 9, '10': 'tdMarketValue'},
    {'1': 'td_short_market_value', '3': 10, '4': 1, '5': 9, '10': 'tdShortMarketValue'},
    {'1': 'td_long_market_value', '3': 11, '4': 1, '5': 9, '10': 'tdLongMarketValue'},
    {'1': 'td_equity', '3': 12, '4': 1, '5': 9, '10': 'tdEquity'},
    {'1': 'td_adjusted_balance', '3': 13, '4': 1, '5': 9, '10': 'tdAdjustedBalance'},
    {'1': 'position_cost', '3': 14, '4': 1, '5': 9, '10': 'positionCost'},
    {'1': 'unrealized_pl_value', '3': 15, '4': 1, '5': 9, '10': 'unrealizedPlValue'},
    {'1': 'unrealized_pl_percent', '3': 16, '4': 1, '5': 9, '10': 'unrealizedPlPercent'},
    {'1': 'ytd_pl_value', '3': 17, '4': 1, '5': 9, '10': 'ytdPlValue'},
    {'1': 'ytd_pl_percent', '3': 18, '4': 1, '5': 9, '10': 'ytdPlPercent'},
    {'1': 'account_value_percent', '3': 19, '4': 1, '5': 9, '10': 'accountValuePercent'},
  ],
};

/// Descriptor for `ListBalanceSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBalanceSummaryDescriptor = $convert.base64Decode(
    'ChJMaXN0QmFsYW5jZVN1bW1hcnkSHQoKdG90YWxfcm93cxgBIAEoDVIJdG90YWxSb3dzEiYKD3'
    'NkX2Nhc2hfYmFsYW5jZRgCIAEoCVINc2RDYXNoQmFsYW5jZRImCg9zZF9tYXJrZXRfdmFsdWUY'
    'AyABKAlSDXNkTWFya2V0VmFsdWUSMQoVc2Rfc2hvcnRfbWFya2V0X3ZhbHVlGAQgASgJUhJzZF'
    'Nob3J0TWFya2V0VmFsdWUSLwoUc2RfbG9uZ19tYXJrZXRfdmFsdWUYBSABKAlSEXNkTG9uZ01h'
    'cmtldFZhbHVlEhsKCXNkX2VxdWl0eRgGIAEoCVIIc2RFcXVpdHkSLgoTc2RfYWRqdXN0ZWRfYm'
    'FsYW5jZRgHIAEoCVIRc2RBZGp1c3RlZEJhbGFuY2USJgoPdGRfY2FzaF9iYWxhbmNlGAggASgJ'
    'Ug10ZENhc2hCYWxhbmNlEiYKD3RkX21hcmtldF92YWx1ZRgJIAEoCVINdGRNYXJrZXRWYWx1ZR'
    'IxChV0ZF9zaG9ydF9tYXJrZXRfdmFsdWUYCiABKAlSEnRkU2hvcnRNYXJrZXRWYWx1ZRIvChR0'
    'ZF9sb25nX21hcmtldF92YWx1ZRgLIAEoCVIRdGRMb25nTWFya2V0VmFsdWUSGwoJdGRfZXF1aX'
    'R5GAwgASgJUgh0ZEVxdWl0eRIuChN0ZF9hZGp1c3RlZF9iYWxhbmNlGA0gASgJUhF0ZEFkanVz'
    'dGVkQmFsYW5jZRIjCg1wb3NpdGlvbl9jb3N0GA4gASgJUgxwb3NpdGlvbkNvc3QSLgoTdW5yZW'
    'FsaXplZF9wbF92YWx1ZRgPIAEoCVIRdW5yZWFsaXplZFBsVmFsdWUSMgoVdW5yZWFsaXplZF9w'
    'bF9wZXJjZW50GBAgASgJUhN1bnJlYWxpemVkUGxQZXJjZW50EiAKDHl0ZF9wbF92YWx1ZRgRIA'
    'EoCVIKeXRkUGxWYWx1ZRIkCg55dGRfcGxfcGVyY2VudBgSIAEoCVIMeXRkUGxQZXJjZW50EjIK'
    'FWFjY291bnRfdmFsdWVfcGVyY2VudBgTIAEoCVITYWNjb3VudFZhbHVlUGVyY2VudA==');

@$core.Deprecated('Use dashboardBalanceDescriptor instead')
const DashboardBalance$json = {
  '1': 'DashboardBalance',
  '2': [
    {'1': 'date', '3': 1, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'date'},
    {'1': 'td_cash_balance', '3': 2, '4': 1, '5': 9, '10': 'tdCashBalance'},
  ],
};

/// Descriptor for `DashboardBalance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dashboardBalanceDescriptor = $convert.base64Decode(
    'ChBEYXNoYm9hcmRCYWxhbmNlEiUKBGRhdGUYASABKAsyES5nb29nbGUudHlwZS5EYXRlUgRkYX'
    'RlEiYKD3RkX2Nhc2hfYmFsYW5jZRgCIAEoCVINdGRDYXNoQmFsYW5jZQ==');

@$core.Deprecated('Use listDashboardBalanceRequestDescriptor instead')
const ListDashboardBalanceRequest$json = {
  '1': 'ListDashboardBalanceRequest',
  '2': [
    {'1': 'period_type', '3': 1, '4': 1, '5': 9, '10': 'periodType'},
    {'1': 'period_range', '3': 2, '4': 1, '5': 13, '10': 'periodRange'},
  ],
};

/// Descriptor for `ListDashboardBalanceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDashboardBalanceRequestDescriptor = $convert.base64Decode(
    'ChtMaXN0RGFzaGJvYXJkQmFsYW5jZVJlcXVlc3QSHwoLcGVyaW9kX3R5cGUYASABKAlSCnBlcm'
    'lvZFR5cGUSIQoMcGVyaW9kX3JhbmdlGAIgASgNUgtwZXJpb2RSYW5nZQ==');

@$core.Deprecated('Use listDashboardBalanceResponseDescriptor instead')
const ListDashboardBalanceResponse$json = {
  '1': 'ListDashboardBalanceResponse',
  '2': [
    {'1': 'dashboard_balances', '3': 1, '4': 3, '5': 11, '6': '.reportpb.DashboardBalance', '10': 'dashboardBalances'},
  ],
};

/// Descriptor for `ListDashboardBalanceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listDashboardBalanceResponseDescriptor = $convert.base64Decode(
    'ChxMaXN0RGFzaGJvYXJkQmFsYW5jZVJlc3BvbnNlEkkKEmRhc2hib2FyZF9iYWxhbmNlcxgBIA'
    'MoCzIaLnJlcG9ydHBiLkRhc2hib2FyZEJhbGFuY2VSEWRhc2hib2FyZEJhbGFuY2Vz');

