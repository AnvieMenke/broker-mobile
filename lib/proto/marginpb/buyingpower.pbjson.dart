//
//  Generated code. Do not modify.
//  source: proto/marginpb/buyingpower.proto
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

@$core.Deprecated('Use buyingPowerDescriptor instead')
const BuyingPower$json = {
  '1': 'BuyingPower',
  '2': [
    {'1': 'trade_date', '3': 1, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'tradeDate'},
    {'1': 'correspondent', '3': 2, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'master_account_no', '3': 3, '4': 1, '5': 9, '10': 'masterAccountNo'},
    {'1': 'account_name', '3': 4, '4': 1, '5': 9, '10': 'accountName'},
    {'1': 'buying_power', '3': 5, '4': 1, '5': 9, '10': 'buyingPower'},
    {'1': 'buying_power_used', '3': 6, '4': 1, '5': 9, '10': 'buyingPowerUsed'},
    {'1': 'buying_power_percent', '3': 7, '4': 1, '5': 9, '10': 'buyingPowerPercent'},
    {'1': 'account_id', '3': 8, '4': 1, '5': 13, '10': 'accountId'},
    {'1': 'margin_equity', '3': 9, '4': 1, '5': 9, '10': 'marginEquity'},
    {'1': 'exchange_req', '3': 10, '4': 1, '5': 9, '10': 'exchangeReq'},
    {'1': 'multiplier', '3': 11, '4': 1, '5': 9, '10': 'multiplier'},
    {'1': 'percent_deduction', '3': 12, '4': 1, '5': 9, '10': 'percentDeduction'},
    {'1': 'opening_buying_power', '3': 13, '4': 1, '5': 9, '10': 'openingBuyingPower'},
    {'1': 'deposit', '3': 14, '4': 1, '5': 9, '10': 'deposit'},
    {'1': 'buying_power_call', '3': 15, '4': 1, '5': 9, '10': 'buyingPowerCall'},
    {'1': 'oms', '3': 16, '4': 1, '5': 8, '10': 'oms'},
    {'1': 'client', '3': 17, '4': 1, '5': 8, '10': 'client'},
    {'1': 'trns_id', '3': 18, '4': 1, '5': 13, '10': 'trnsId'},
    {'1': 'house_req', '3': 19, '4': 1, '5': 9, '10': 'houseReq'},
    {'1': 'margin_type', '3': 20, '4': 1, '5': 9, '10': 'marginType'},
    {'1': 'cash_balance', '3': 21, '4': 1, '5': 9, '10': 'cashBalance'},
    {'1': 'sma', '3': 22, '4': 1, '5': 9, '10': 'sma'},
    {'1': 'house_excess', '3': 23, '4': 1, '5': 9, '10': 'houseExcess'},
    {'1': 'exchange_excess', '3': 24, '4': 1, '5': 9, '10': 'exchangeExcess'},
    {'1': 'note', '3': 25, '4': 1, '5': 9, '10': 'note'},
    {'1': 'pagination', '3': 26, '4': 1, '5': 11, '6': '.utilspb.Pagination', '10': 'pagination'},
  ],
};

/// Descriptor for `BuyingPower`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List buyingPowerDescriptor = $convert.base64Decode(
    'CgtCdXlpbmdQb3dlchIwCgp0cmFkZV9kYXRlGAEgASgLMhEuZ29vZ2xlLnR5cGUuRGF0ZVIJdH'
    'JhZGVEYXRlEiQKDWNvcnJlc3BvbmRlbnQYAiABKAlSDWNvcnJlc3BvbmRlbnQSKgoRbWFzdGVy'
    'X2FjY291bnRfbm8YAyABKAlSD21hc3RlckFjY291bnRObxIhCgxhY2NvdW50X25hbWUYBCABKA'
    'lSC2FjY291bnROYW1lEiEKDGJ1eWluZ19wb3dlchgFIAEoCVILYnV5aW5nUG93ZXISKgoRYnV5'
    'aW5nX3Bvd2VyX3VzZWQYBiABKAlSD2J1eWluZ1Bvd2VyVXNlZBIwChRidXlpbmdfcG93ZXJfcG'
    'VyY2VudBgHIAEoCVISYnV5aW5nUG93ZXJQZXJjZW50Eh0KCmFjY291bnRfaWQYCCABKA1SCWFj'
    'Y291bnRJZBIjCg1tYXJnaW5fZXF1aXR5GAkgASgJUgxtYXJnaW5FcXVpdHkSIQoMZXhjaGFuZ2'
    'VfcmVxGAogASgJUgtleGNoYW5nZVJlcRIeCgptdWx0aXBsaWVyGAsgASgJUgptdWx0aXBsaWVy'
    'EisKEXBlcmNlbnRfZGVkdWN0aW9uGAwgASgJUhBwZXJjZW50RGVkdWN0aW9uEjAKFG9wZW5pbm'
    'dfYnV5aW5nX3Bvd2VyGA0gASgJUhJvcGVuaW5nQnV5aW5nUG93ZXISGAoHZGVwb3NpdBgOIAEo'
    'CVIHZGVwb3NpdBIqChFidXlpbmdfcG93ZXJfY2FsbBgPIAEoCVIPYnV5aW5nUG93ZXJDYWxsEh'
    'AKA29tcxgQIAEoCFIDb21zEhYKBmNsaWVudBgRIAEoCFIGY2xpZW50EhcKB3RybnNfaWQYEiAB'
    'KA1SBnRybnNJZBIbCglob3VzZV9yZXEYEyABKAlSCGhvdXNlUmVxEh8KC21hcmdpbl90eXBlGB'
    'QgASgJUgptYXJnaW5UeXBlEiEKDGNhc2hfYmFsYW5jZRgVIAEoCVILY2FzaEJhbGFuY2USEAoD'
    'c21hGBYgASgJUgNzbWESIQoMaG91c2VfZXhjZXNzGBcgASgJUgtob3VzZUV4Y2VzcxInCg9leG'
    'NoYW5nZV9leGNlc3MYGCABKAlSDmV4Y2hhbmdlRXhjZXNzEhIKBG5vdGUYGSABKAlSBG5vdGUS'
    'MwoKcGFnaW5hdGlvbhgaIAEoCzITLnV0aWxzcGIuUGFnaW5hdGlvblIKcGFnaW5hdGlvbg==');

@$core.Deprecated('Use listBuyingPowerRequestDescriptor instead')
const ListBuyingPowerRequest$json = {
  '1': 'ListBuyingPowerRequest',
  '2': [
    {'1': 'from_date', '3': 1, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'fromDate'},
    {'1': 'to_date', '3': 2, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'toDate'},
    {'1': 'correspondent', '3': 3, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'master_account_no', '3': 4, '4': 1, '5': 9, '10': 'masterAccountNo'},
    {'1': 'account_name', '3': 5, '4': 1, '5': 9, '10': 'accountName'},
    {'1': 'margin_type', '3': 6, '4': 1, '5': 9, '10': 'marginType'},
    {'1': 'hide_zero', '3': 7, '4': 1, '5': 8, '10': 'hideZero'},
    {'1': 'pagination', '3': 8, '4': 1, '5': 11, '6': '.utilspb.Pagination', '10': 'pagination'},
  ],
};

/// Descriptor for `ListBuyingPowerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBuyingPowerRequestDescriptor = $convert.base64Decode(
    'ChZMaXN0QnV5aW5nUG93ZXJSZXF1ZXN0Ei4KCWZyb21fZGF0ZRgBIAEoCzIRLmdvb2dsZS50eX'
    'BlLkRhdGVSCGZyb21EYXRlEioKB3RvX2RhdGUYAiABKAsyES5nb29nbGUudHlwZS5EYXRlUgZ0'
    'b0RhdGUSJAoNY29ycmVzcG9uZGVudBgDIAEoCVINY29ycmVzcG9uZGVudBIqChFtYXN0ZXJfYW'
    'Njb3VudF9ubxgEIAEoCVIPbWFzdGVyQWNjb3VudE5vEiEKDGFjY291bnRfbmFtZRgFIAEoCVIL'
    'YWNjb3VudE5hbWUSHwoLbWFyZ2luX3R5cGUYBiABKAlSCm1hcmdpblR5cGUSGwoJaGlkZV96ZX'
    'JvGAcgASgIUghoaWRlWmVybxIzCgpwYWdpbmF0aW9uGAggASgLMhMudXRpbHNwYi5QYWdpbmF0'
    'aW9uUgpwYWdpbmF0aW9u');

@$core.Deprecated('Use listBuyingPowerSummaryDescriptor instead')
const ListBuyingPowerSummary$json = {
  '1': 'ListBuyingPowerSummary',
  '2': [
    {'1': 'total_rows', '3': 1, '4': 1, '5': 13, '10': 'totalRows'},
  ],
};

/// Descriptor for `ListBuyingPowerSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBuyingPowerSummaryDescriptor = $convert.base64Decode(
    'ChZMaXN0QnV5aW5nUG93ZXJTdW1tYXJ5Eh0KCnRvdGFsX3Jvd3MYASABKA1SCXRvdGFsUm93cw'
    '==');

@$core.Deprecated('Use listBuyingPowerResponseDescriptor instead')
const ListBuyingPowerResponse$json = {
  '1': 'ListBuyingPowerResponse',
  '2': [
    {'1': 'buying_powers', '3': 1, '4': 3, '5': 11, '6': '.marginpb.BuyingPower', '10': 'buyingPowers'},
    {'1': 'summary', '3': 2, '4': 1, '5': 11, '6': '.marginpb.ListBuyingPowerSummary', '10': 'summary'},
  ],
};

/// Descriptor for `ListBuyingPowerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBuyingPowerResponseDescriptor = $convert.base64Decode(
    'ChdMaXN0QnV5aW5nUG93ZXJSZXNwb25zZRI6Cg1idXlpbmdfcG93ZXJzGAEgAygLMhUubWFyZ2'
    'lucGIuQnV5aW5nUG93ZXJSDGJ1eWluZ1Bvd2VycxI6CgdzdW1tYXJ5GAIgASgLMiAubWFyZ2lu'
    'cGIuTGlzdEJ1eWluZ1Bvd2VyU3VtbWFyeVIHc3VtbWFyeQ==');

