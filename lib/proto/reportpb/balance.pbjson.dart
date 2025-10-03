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
    {'1': 'account_id', '3': 1, '4': 1, '5': 13, '10': 'accountId'},
    {'1': 'correspondent', '3': 2, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'account_no', '3': 3, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'sub_account_no', '3': 4, '4': 1, '5': 9, '10': 'subAccountNo'},
    {'1': 'account_name', '3': 5, '4': 1, '5': 9, '10': 'accountName'},
    {'1': 'master_account_no', '3': 6, '4': 1, '5': 9, '10': 'masterAccountNo'},
    {'1': 'broker', '3': 7, '4': 1, '5': 9, '10': 'broker'},
    {'1': 'type', '3': 8, '4': 1, '5': 9, '10': 'type'},
    {'1': 'date_type', '3': 9, '4': 1, '5': 9, '10': 'dateType'},
    {'1': 'date', '3': 11, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'date'},
    {'1': 'rep', '3': 12, '4': 1, '5': 9, '10': 'rep'},
    {'1': 'branch', '3': 13, '4': 1, '5': 9, '10': 'branch'},
    {'1': 'margin_type', '3': 14, '4': 1, '5': 9, '10': 'marginType'},
    {'1': 'account_status', '3': 20, '4': 1, '5': 9, '10': 'accountStatus'},
    {'1': 'td_cash_balance', '3': 21, '4': 1, '5': 9, '10': 'tdCashBalance'},
    {'1': 'td_short_market_value', '3': 22, '4': 1, '5': 9, '10': 'tdShortMarketValue'},
    {'1': 'td_long_market_value', '3': 23, '4': 1, '5': 9, '10': 'tdLongMarketValue'},
    {'1': 'td_equity', '3': 24, '4': 1, '5': 9, '10': 'tdEquity'},
    {'1': 'td_adjusted_balance', '3': 25, '4': 1, '5': 9, '10': 'tdAdjustedBalance'},
    {'1': 'sd_cash_balance', '3': 26, '4': 1, '5': 9, '10': 'sdCashBalance'},
    {'1': 'sd_short_market_value', '3': 27, '4': 1, '5': 9, '10': 'sdShortMarketValue'},
    {'1': 'sd_long_market_value', '3': 28, '4': 1, '5': 9, '10': 'sdLongMarketValue'},
    {'1': 'sd_equity', '3': 29, '4': 1, '5': 9, '10': 'sdEquity'},
    {'1': 'sd_adjusted_balance', '3': 30, '4': 1, '5': 9, '10': 'sdAdjustedBalance'},
    {'1': 'report_balance_id', '3': 31, '4': 1, '5': 13, '10': 'reportBalanceId'},
    {'1': 'digital_enhanced_market_value', '3': 32, '4': 1, '5': 9, '10': 'digitalEnhancedMarketValue'},
    {'1': 'sd_reg_fee', '3': 33, '4': 1, '5': 9, '10': 'sdRegFee'},
    {'1': 'sd_taf_fee', '3': 34, '4': 1, '5': 9, '10': 'sdTafFee'},
    {'1': 'sd_commission', '3': 35, '4': 1, '5': 9, '10': 'sdCommission'},
    {'1': 'sd_fees', '3': 36, '4': 1, '5': 9, '10': 'sdFees'},
    {'1': 'sd_haircut', '3': 37, '4': 1, '5': 9, '10': 'sdHaircut'},
    {'1': 'sd_money_market', '3': 38, '4': 1, '5': 9, '10': 'sdMoneyMarket'},
    {'1': 'participant_no', '3': 39, '4': 1, '5': 9, '10': 'participantNo'},
    {'1': 'td_money_market', '3': 40, '4': 1, '5': 9, '10': 'tdMoneyMarket'},
    {'1': 'td_debit_balance_age', '3': 41, '4': 1, '5': 9, '10': 'tdDebitBalanceAge'},
    {'1': 'sd_debit_balance_age', '3': 42, '4': 1, '5': 9, '10': 'sdDebitBalanceAge'},
    {'1': 'withdrawable_amt', '3': 43, '4': 1, '5': 9, '10': 'withdrawableAmt'},
    {'1': 'margin_req', '3': 44, '4': 1, '5': 9, '10': 'marginReq'},
    {'1': 'tradable_amt', '3': 45, '4': 1, '5': 9, '10': 'tradableAmt'},
    {'1': 'buying_power', '3': 46, '4': 1, '5': 9, '10': 'buyingPower'},
    {'1': 'digital_asset_market_value', '3': 47, '4': 1, '5': 9, '10': 'digitalAssetMarketValue'},
    {'1': 'equity_market_value', '3': 48, '4': 1, '5': 9, '10': 'equityMarketValue'},
    {'1': 'fixed_income_market_value', '3': 49, '4': 1, '5': 9, '10': 'fixedIncomeMarketValue'},
    {'1': 'mutual_fund_market_value', '3': 50, '4': 1, '5': 9, '10': 'mutualFundMarketValue'},
    {'1': 'option_market_value', '3': 51, '4': 1, '5': 9, '10': 'optionMarketValue'},
  ],
};

/// Descriptor for `Balance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List balanceDescriptor = $convert.base64Decode(
    'CgdCYWxhbmNlEh0KCmFjY291bnRfaWQYASABKA1SCWFjY291bnRJZBIkCg1jb3JyZXNwb25kZW'
    '50GAIgASgJUg1jb3JyZXNwb25kZW50Eh0KCmFjY291bnRfbm8YAyABKAlSCWFjY291bnRObxIk'
    'Cg5zdWJfYWNjb3VudF9ubxgEIAEoCVIMc3ViQWNjb3VudE5vEiEKDGFjY291bnRfbmFtZRgFIA'
    'EoCVILYWNjb3VudE5hbWUSKgoRbWFzdGVyX2FjY291bnRfbm8YBiABKAlSD21hc3RlckFjY291'
    'bnRObxIWCgZicm9rZXIYByABKAlSBmJyb2tlchISCgR0eXBlGAggASgJUgR0eXBlEhsKCWRhdG'
    'VfdHlwZRgJIAEoCVIIZGF0ZVR5cGUSJQoEZGF0ZRgLIAEoCzIRLmdvb2dsZS50eXBlLkRhdGVS'
    'BGRhdGUSEAoDcmVwGAwgASgJUgNyZXASFgoGYnJhbmNoGA0gASgJUgZicmFuY2gSHwoLbWFyZ2'
    'luX3R5cGUYDiABKAlSCm1hcmdpblR5cGUSJQoOYWNjb3VudF9zdGF0dXMYFCABKAlSDWFjY291'
    'bnRTdGF0dXMSJgoPdGRfY2FzaF9iYWxhbmNlGBUgASgJUg10ZENhc2hCYWxhbmNlEjEKFXRkX3'
    'Nob3J0X21hcmtldF92YWx1ZRgWIAEoCVISdGRTaG9ydE1hcmtldFZhbHVlEi8KFHRkX2xvbmdf'
    'bWFya2V0X3ZhbHVlGBcgASgJUhF0ZExvbmdNYXJrZXRWYWx1ZRIbCgl0ZF9lcXVpdHkYGCABKA'
    'lSCHRkRXF1aXR5Ei4KE3RkX2FkanVzdGVkX2JhbGFuY2UYGSABKAlSEXRkQWRqdXN0ZWRCYWxh'
    'bmNlEiYKD3NkX2Nhc2hfYmFsYW5jZRgaIAEoCVINc2RDYXNoQmFsYW5jZRIxChVzZF9zaG9ydF'
    '9tYXJrZXRfdmFsdWUYGyABKAlSEnNkU2hvcnRNYXJrZXRWYWx1ZRIvChRzZF9sb25nX21hcmtl'
    'dF92YWx1ZRgcIAEoCVIRc2RMb25nTWFya2V0VmFsdWUSGwoJc2RfZXF1aXR5GB0gASgJUghzZE'
    'VxdWl0eRIuChNzZF9hZGp1c3RlZF9iYWxhbmNlGB4gASgJUhFzZEFkanVzdGVkQmFsYW5jZRIq'
    'ChFyZXBvcnRfYmFsYW5jZV9pZBgfIAEoDVIPcmVwb3J0QmFsYW5jZUlkEkEKHWRpZ2l0YWxfZW'
    '5oYW5jZWRfbWFya2V0X3ZhbHVlGCAgASgJUhpkaWdpdGFsRW5oYW5jZWRNYXJrZXRWYWx1ZRIc'
    'CgpzZF9yZWdfZmVlGCEgASgJUghzZFJlZ0ZlZRIcCgpzZF90YWZfZmVlGCIgASgJUghzZFRhZk'
    'ZlZRIjCg1zZF9jb21taXNzaW9uGCMgASgJUgxzZENvbW1pc3Npb24SFwoHc2RfZmVlcxgkIAEo'
    'CVIGc2RGZWVzEh0KCnNkX2hhaXJjdXQYJSABKAlSCXNkSGFpcmN1dBImCg9zZF9tb25leV9tYX'
    'JrZXQYJiABKAlSDXNkTW9uZXlNYXJrZXQSJQoOcGFydGljaXBhbnRfbm8YJyABKAlSDXBhcnRp'
    'Y2lwYW50Tm8SJgoPdGRfbW9uZXlfbWFya2V0GCggASgJUg10ZE1vbmV5TWFya2V0Ei8KFHRkX2'
    'RlYml0X2JhbGFuY2VfYWdlGCkgASgJUhF0ZERlYml0QmFsYW5jZUFnZRIvChRzZF9kZWJpdF9i'
    'YWxhbmNlX2FnZRgqIAEoCVIRc2REZWJpdEJhbGFuY2VBZ2USKQoQd2l0aGRyYXdhYmxlX2FtdB'
    'grIAEoCVIPd2l0aGRyYXdhYmxlQW10Eh0KCm1hcmdpbl9yZXEYLCABKAlSCW1hcmdpblJlcRIh'
    'Cgx0cmFkYWJsZV9hbXQYLSABKAlSC3RyYWRhYmxlQW10EiEKDGJ1eWluZ19wb3dlchguIAEoCV'
    'ILYnV5aW5nUG93ZXISOwoaZGlnaXRhbF9hc3NldF9tYXJrZXRfdmFsdWUYLyABKAlSF2RpZ2l0'
    'YWxBc3NldE1hcmtldFZhbHVlEi4KE2VxdWl0eV9tYXJrZXRfdmFsdWUYMCABKAlSEWVxdWl0eU'
    '1hcmtldFZhbHVlEjkKGWZpeGVkX2luY29tZV9tYXJrZXRfdmFsdWUYMSABKAlSFmZpeGVkSW5j'
    'b21lTWFya2V0VmFsdWUSNwoYbXV0dWFsX2Z1bmRfbWFya2V0X3ZhbHVlGDIgASgJUhVtdXR1YW'
    'xGdW5kTWFya2V0VmFsdWUSLgoTb3B0aW9uX21hcmtldF92YWx1ZRgzIAEoCVIRb3B0aW9uTWFy'
    'a2V0VmFsdWU=');

@$core.Deprecated('Use listBalanceRequestDescriptor instead')
const ListBalanceRequest$json = {
  '1': 'ListBalanceRequest',
  '2': [
    {'1': 'correspondent', '3': 1, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'account_no', '3': 2, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'account_name', '3': 3, '4': 1, '5': 9, '10': 'accountName'},
    {'1': 'master_account_no', '3': 4, '4': 1, '5': 9, '10': 'masterAccountNo'},
    {'1': 'branch', '3': 5, '4': 1, '5': 9, '10': 'branch'},
    {'1': 'rep', '3': 6, '4': 1, '5': 9, '10': 'rep'},
    {'1': 'from_date', '3': 7, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'fromDate'},
    {'1': 'to_date', '3': 8, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'toDate'},
    {'1': 'usr_id', '3': 9, '4': 1, '5': 13, '10': 'usrId'},
    {'1': 'pagination', '3': 10, '4': 1, '5': 11, '6': '.utilspb.Pagination', '10': 'pagination'},
    {'1': 'date_type', '3': 11, '4': 1, '5': 9, '10': 'dateType'},
    {'1': 'roll_up', '3': 12, '4': 1, '5': 9, '10': 'rollUp'},
  ],
};

/// Descriptor for `ListBalanceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBalanceRequestDescriptor = $convert.base64Decode(
    'ChJMaXN0QmFsYW5jZVJlcXVlc3QSJAoNY29ycmVzcG9uZGVudBgBIAEoCVINY29ycmVzcG9uZG'
    'VudBIdCgphY2NvdW50X25vGAIgASgJUglhY2NvdW50Tm8SIQoMYWNjb3VudF9uYW1lGAMgASgJ'
    'UgthY2NvdW50TmFtZRIqChFtYXN0ZXJfYWNjb3VudF9ubxgEIAEoCVIPbWFzdGVyQWNjb3VudE'
    '5vEhYKBmJyYW5jaBgFIAEoCVIGYnJhbmNoEhAKA3JlcBgGIAEoCVIDcmVwEi4KCWZyb21fZGF0'
    'ZRgHIAEoCzIRLmdvb2dsZS50eXBlLkRhdGVSCGZyb21EYXRlEioKB3RvX2RhdGUYCCABKAsyES'
    '5nb29nbGUudHlwZS5EYXRlUgZ0b0RhdGUSFQoGdXNyX2lkGAkgASgNUgV1c3JJZBIzCgpwYWdp'
    'bmF0aW9uGAogASgLMhMudXRpbHNwYi5QYWdpbmF0aW9uUgpwYWdpbmF0aW9uEhsKCWRhdGVfdH'
    'lwZRgLIAEoCVIIZGF0ZVR5cGUSFwoHcm9sbF91cBgMIAEoCVIGcm9sbFVw');

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
    {'1': 'sd_short_market_value', '3': 3, '4': 1, '5': 9, '10': 'sdShortMarketValue'},
    {'1': 'sd_long_market_value', '3': 4, '4': 1, '5': 9, '10': 'sdLongMarketValue'},
    {'1': 'sd_equity', '3': 5, '4': 1, '5': 9, '10': 'sdEquity'},
    {'1': 'sd_adjusted_balance', '3': 6, '4': 1, '5': 9, '10': 'sdAdjustedBalance'},
    {'1': 'sd_money_market', '3': 7, '4': 1, '5': 9, '10': 'sdMoneyMarket'},
    {'1': 'money_market', '3': 8, '4': 1, '5': 9, '10': 'moneyMarket'},
    {'1': 'td_cash_balance', '3': 9, '4': 1, '5': 9, '10': 'tdCashBalance'},
    {'1': 'td_money_market', '3': 10, '4': 1, '5': 9, '10': 'tdMoneyMarket'},
    {'1': 'td_short_market_value', '3': 11, '4': 1, '5': 9, '10': 'tdShortMarketValue'},
    {'1': 'td_long_market_value', '3': 12, '4': 1, '5': 9, '10': 'tdLongMarketValue'},
    {'1': 'td_equity', '3': 13, '4': 1, '5': 9, '10': 'tdEquity'},
    {'1': 'td_adjusted_balance', '3': 14, '4': 1, '5': 9, '10': 'tdAdjustedBalance'},
    {'1': 'td_debit_balance_age', '3': 15, '4': 1, '5': 9, '10': 'tdDebitBalanceAge'},
    {'1': 'sd_debit_balance_age', '3': 16, '4': 1, '5': 9, '10': 'sdDebitBalanceAge'},
    {'1': 'digital_asset_market_value', '3': 17, '4': 1, '5': 9, '10': 'digitalAssetMarketValue'},
    {'1': 'cash_market_value', '3': 18, '4': 1, '5': 9, '10': 'cashMarketValue'},
    {'1': 'cash_qty', '3': 19, '4': 1, '5': 9, '10': 'cashQty'},
    {'1': 'digital_enhanced_market_value', '3': 20, '4': 1, '5': 9, '10': 'digitalEnhancedMarketValue'},
  ],
};

/// Descriptor for `ListBalanceSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBalanceSummaryDescriptor = $convert.base64Decode(
    'ChJMaXN0QmFsYW5jZVN1bW1hcnkSHQoKdG90YWxfcm93cxgBIAEoDVIJdG90YWxSb3dzEiYKD3'
    'NkX2Nhc2hfYmFsYW5jZRgCIAEoCVINc2RDYXNoQmFsYW5jZRIxChVzZF9zaG9ydF9tYXJrZXRf'
    'dmFsdWUYAyABKAlSEnNkU2hvcnRNYXJrZXRWYWx1ZRIvChRzZF9sb25nX21hcmtldF92YWx1ZR'
    'gEIAEoCVIRc2RMb25nTWFya2V0VmFsdWUSGwoJc2RfZXF1aXR5GAUgASgJUghzZEVxdWl0eRIu'
    'ChNzZF9hZGp1c3RlZF9iYWxhbmNlGAYgASgJUhFzZEFkanVzdGVkQmFsYW5jZRImCg9zZF9tb2'
    '5leV9tYXJrZXQYByABKAlSDXNkTW9uZXlNYXJrZXQSIQoMbW9uZXlfbWFya2V0GAggASgJUgtt'
    'b25leU1hcmtldBImCg90ZF9jYXNoX2JhbGFuY2UYCSABKAlSDXRkQ2FzaEJhbGFuY2USJgoPdG'
    'RfbW9uZXlfbWFya2V0GAogASgJUg10ZE1vbmV5TWFya2V0EjEKFXRkX3Nob3J0X21hcmtldF92'
    'YWx1ZRgLIAEoCVISdGRTaG9ydE1hcmtldFZhbHVlEi8KFHRkX2xvbmdfbWFya2V0X3ZhbHVlGA'
    'wgASgJUhF0ZExvbmdNYXJrZXRWYWx1ZRIbCgl0ZF9lcXVpdHkYDSABKAlSCHRkRXF1aXR5Ei4K'
    'E3RkX2FkanVzdGVkX2JhbGFuY2UYDiABKAlSEXRkQWRqdXN0ZWRCYWxhbmNlEi8KFHRkX2RlYm'
    'l0X2JhbGFuY2VfYWdlGA8gASgJUhF0ZERlYml0QmFsYW5jZUFnZRIvChRzZF9kZWJpdF9iYWxh'
    'bmNlX2FnZRgQIAEoCVIRc2REZWJpdEJhbGFuY2VBZ2USOwoaZGlnaXRhbF9hc3NldF9tYXJrZX'
    'RfdmFsdWUYESABKAlSF2RpZ2l0YWxBc3NldE1hcmtldFZhbHVlEioKEWNhc2hfbWFya2V0X3Zh'
    'bHVlGBIgASgJUg9jYXNoTWFya2V0VmFsdWUSGQoIY2FzaF9xdHkYEyABKAlSB2Nhc2hRdHkSQQ'
    'odZGlnaXRhbF9lbmhhbmNlZF9tYXJrZXRfdmFsdWUYFCABKAlSGmRpZ2l0YWxFbmhhbmNlZE1h'
    'cmtldFZhbHVl');

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

