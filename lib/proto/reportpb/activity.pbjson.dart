//
//  Generated code. Do not modify.
//  source: proto/reportpb/activity.proto
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

@$core.Deprecated('Use activityDescriptor instead')
const Activity$json = {
  '1': 'Activity',
  '2': [
    {'1': 'correspondent', '3': 1, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'account_no', '3': 2, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'account_name', '3': 3, '4': 1, '5': 9, '10': 'accountName'},
    {'1': 'master_account_no', '3': 4, '4': 1, '5': 9, '10': 'masterAccountNo'},
    {'1': 'eff_settle_date', '3': 5, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'effSettleDate'},
    {'1': 'broker', '3': 6, '4': 1, '5': 9, '10': 'broker'},
    {'1': 'type', '3': 7, '4': 1, '5': 9, '10': 'type'},
    {'1': 'capacity', '3': 8, '4': 1, '5': 9, '10': 'capacity'},
    {'1': 'eff_trade_date', '3': 9, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'effTradeDate'},
    {'1': 'symbol', '3': 10, '4': 1, '5': 9, '10': 'symbol'},
    {'1': 'symbol_description', '3': 11, '4': 1, '5': 9, '10': 'symbolDescription'},
    {'1': 'cusip', '3': 12, '4': 1, '5': 9, '10': 'cusip'},
    {'1': 'asset_type', '3': 13, '4': 1, '5': 9, '10': 'assetType'},
    {'1': 'created_at', '3': 14, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'system_date', '3': 15, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'systemDate'},
    {'1': 'trade_date', '3': 16, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'tradeDate'},
    {'1': 'trade_at', '3': 17, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'tradeAt'},
    {'1': 'settle_date', '3': 18, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'settleDate'},
    {'1': 'entry_type', '3': 19, '4': 1, '5': 9, '10': 'entryType'},
    {'1': 'side', '3': 20, '4': 1, '5': 9, '10': 'side'},
    {'1': 'qty', '3': 21, '4': 1, '5': 9, '10': 'qty'},
    {'1': 'price', '3': 22, '4': 1, '5': 9, '10': 'price'},
    {'1': 'gross_amt', '3': 23, '4': 1, '5': 9, '10': 'grossAmt'},
    {'1': 'reg_fee', '3': 24, '4': 1, '5': 9, '10': 'regFee'},
    {'1': 'taf_fee', '3': 25, '4': 1, '5': 9, '10': 'tafFee'},
    {'1': 'fees', '3': 26, '4': 1, '5': 9, '10': 'fees'},
    {'1': 'net_amt', '3': 27, '4': 1, '5': 9, '10': 'netAmt'},
    {'1': 'description', '3': 28, '4': 1, '5': 9, '10': 'description'},
    {'1': 'batch_no', '3': 29, '4': 1, '5': 9, '10': 'batchNo'},
    {'1': 'status', '3': 31, '4': 1, '5': 9, '10': 'status'},
    {'1': 'created_by', '3': 32, '4': 1, '5': 9, '10': 'createdBy'},
    {'1': 'trns_id', '3': 33, '4': 1, '5': 13, '10': 'trnsId'},
    {'1': 'account_id', '3': 34, '4': 1, '5': 13, '10': 'accountId'},
    {'1': 'executing_venue', '3': 36, '4': 1, '5': 9, '10': 'executingVenue'},
    {'1': 'external_id', '3': 37, '4': 1, '5': 9, '10': 'externalId'},
    {'1': 'order_id', '3': 39, '4': 1, '5': 9, '10': 'orderId'},
    {'1': 'vendor', '3': 40, '4': 1, '5': 9, '10': 'vendor'},
    {'1': 'contra_account_no', '3': 41, '4': 1, '5': 9, '10': 'contraAccountNo'},
    {'1': 'commission', '3': 43, '4': 1, '5': 9, '10': 'commission'},
    {'1': 'contra_correspondent', '3': 44, '4': 1, '5': 9, '10': 'contraCorrespondent'},
    {'1': 'contra_account_id', '3': 45, '4': 1, '5': 13, '10': 'contraAccountId'},
    {'1': 'original_cusip', '3': 46, '4': 1, '5': 9, '10': 'originalCusip'},
    {'1': 'entry_type_description', '3': 47, '4': 1, '5': 9, '10': 'entryTypeDescription'},
    {'1': 'rep', '3': 48, '4': 1, '5': 9, '10': 'rep'},
    {'1': 'branch', '3': 49, '4': 1, '5': 9, '10': 'branch'},
    {'1': 'compress_type', '3': 50, '4': 1, '5': 9, '10': 'compressType'},
    {'1': 'compress_count', '3': 51, '4': 1, '5': 13, '10': 'compressCount'},
    {'1': 'compress_id', '3': 52, '4': 1, '5': 13, '10': 'compressId'},
    {'1': 'trader_id', '3': 53, '4': 1, '5': 9, '10': 'traderId'},
    {'1': 'reference_id', '3': 54, '4': 1, '5': 9, '10': 'referenceId'},
    {'1': 'other_fees', '3': 55, '4': 1, '5': 9, '10': 'otherFees'},
    {'1': 'other_fees_2', '3': 56, '4': 1, '5': 9, '10': 'otherFees2'},
    {'1': 'tax_withholding', '3': 57, '4': 1, '5': 9, '10': 'taxWithholding'},
    {'1': 'other_fee_values', '3': 58, '4': 3, '5': 9, '10': 'otherFeeValues'},
    {'1': 'margin_type', '3': 59, '4': 1, '5': 9, '10': 'marginType'},
    {'1': 'registered_advisor_capacity', '3': 60, '4': 1, '5': 9, '10': 'registeredAdvisorCapacity'},
    {'1': 'special_remarks', '3': 61, '4': 1, '5': 9, '10': 'specialRemarks'},
    {'1': 'misc_fee', '3': 62, '4': 1, '5': 9, '10': 'miscFee'},
    {'1': 'principal', '3': 63, '4': 1, '5': 9, '10': 'principal'},
    {'1': 'as_of_date', '3': 64, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'asOfDate'},
    {'1': 'sub_account_type', '3': 65, '4': 1, '5': 13, '10': 'subAccountType'},
    {'1': 'sub_account_no', '3': 66, '4': 1, '5': 9, '10': 'subAccountNo'},
    {'1': 'other_fees_list', '3': 67, '4': 1, '5': 9, '10': 'otherFeesList'},
    {'1': 'dvp_confirm_no', '3': 68, '4': 1, '5': 13, '10': 'dvpConfirmNo'},
    {'1': 'contra_sub_account_no', '3': 69, '4': 1, '5': 9, '10': 'contraSubAccountNo'},
    {'1': 'report_activity_id', '3': 70, '4': 1, '5': 13, '10': 'reportActivityId'},
    {'1': 'currency', '3': 71, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'is_solicited', '3': 72, '4': 1, '5': 8, '10': 'isSolicited'},
  ],
};

/// Descriptor for `Activity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activityDescriptor = $convert.base64Decode(
    'CghBY3Rpdml0eRIkCg1jb3JyZXNwb25kZW50GAEgASgJUg1jb3JyZXNwb25kZW50Eh0KCmFjY2'
    '91bnRfbm8YAiABKAlSCWFjY291bnRObxIhCgxhY2NvdW50X25hbWUYAyABKAlSC2FjY291bnRO'
    'YW1lEioKEW1hc3Rlcl9hY2NvdW50X25vGAQgASgJUg9tYXN0ZXJBY2NvdW50Tm8SOQoPZWZmX3'
    'NldHRsZV9kYXRlGAUgASgLMhEuZ29vZ2xlLnR5cGUuRGF0ZVINZWZmU2V0dGxlRGF0ZRIWCgZi'
    'cm9rZXIYBiABKAlSBmJyb2tlchISCgR0eXBlGAcgASgJUgR0eXBlEhoKCGNhcGFjaXR5GAggAS'
    'gJUghjYXBhY2l0eRI3Cg5lZmZfdHJhZGVfZGF0ZRgJIAEoCzIRLmdvb2dsZS50eXBlLkRhdGVS'
    'DGVmZlRyYWRlRGF0ZRIWCgZzeW1ib2wYCiABKAlSBnN5bWJvbBItChJzeW1ib2xfZGVzY3JpcH'
    'Rpb24YCyABKAlSEXN5bWJvbERlc2NyaXB0aW9uEhQKBWN1c2lwGAwgASgJUgVjdXNpcBIdCgph'
    'c3NldF90eXBlGA0gASgJUglhc3NldFR5cGUSOQoKY3JlYXRlZF9hdBgOIAEoCzIaLmdvb2dsZS'
    '5wcm90b2J1Zi5UaW1lc3RhbXBSCWNyZWF0ZWRBdBIyCgtzeXN0ZW1fZGF0ZRgPIAEoCzIRLmdv'
    'b2dsZS50eXBlLkRhdGVSCnN5c3RlbURhdGUSMAoKdHJhZGVfZGF0ZRgQIAEoCzIRLmdvb2dsZS'
    '50eXBlLkRhdGVSCXRyYWRlRGF0ZRI1Cgh0cmFkZV9hdBgRIAEoCzIaLmdvb2dsZS5wcm90b2J1'
    'Zi5UaW1lc3RhbXBSB3RyYWRlQXQSMgoLc2V0dGxlX2RhdGUYEiABKAsyES5nb29nbGUudHlwZS'
    '5EYXRlUgpzZXR0bGVEYXRlEh0KCmVudHJ5X3R5cGUYEyABKAlSCWVudHJ5VHlwZRISCgRzaWRl'
    'GBQgASgJUgRzaWRlEhAKA3F0eRgVIAEoCVIDcXR5EhQKBXByaWNlGBYgASgJUgVwcmljZRIbCg'
    'lncm9zc19hbXQYFyABKAlSCGdyb3NzQW10EhcKB3JlZ19mZWUYGCABKAlSBnJlZ0ZlZRIXCgd0'
    'YWZfZmVlGBkgASgJUgZ0YWZGZWUSEgoEZmVlcxgaIAEoCVIEZmVlcxIXCgduZXRfYW10GBsgAS'
    'gJUgZuZXRBbXQSIAoLZGVzY3JpcHRpb24YHCABKAlSC2Rlc2NyaXB0aW9uEhkKCGJhdGNoX25v'
    'GB0gASgJUgdiYXRjaE5vEhYKBnN0YXR1cxgfIAEoCVIGc3RhdHVzEh0KCmNyZWF0ZWRfYnkYIC'
    'ABKAlSCWNyZWF0ZWRCeRIXCgd0cm5zX2lkGCEgASgNUgZ0cm5zSWQSHQoKYWNjb3VudF9pZBgi'
    'IAEoDVIJYWNjb3VudElkEicKD2V4ZWN1dGluZ192ZW51ZRgkIAEoCVIOZXhlY3V0aW5nVmVudW'
    'USHwoLZXh0ZXJuYWxfaWQYJSABKAlSCmV4dGVybmFsSWQSGQoIb3JkZXJfaWQYJyABKAlSB29y'
    'ZGVySWQSFgoGdmVuZG9yGCggASgJUgZ2ZW5kb3ISKgoRY29udHJhX2FjY291bnRfbm8YKSABKA'
    'lSD2NvbnRyYUFjY291bnRObxIeCgpjb21taXNzaW9uGCsgASgJUgpjb21taXNzaW9uEjEKFGNv'
    'bnRyYV9jb3JyZXNwb25kZW50GCwgASgJUhNjb250cmFDb3JyZXNwb25kZW50EioKEWNvbnRyYV'
    '9hY2NvdW50X2lkGC0gASgNUg9jb250cmFBY2NvdW50SWQSJQoOb3JpZ2luYWxfY3VzaXAYLiAB'
    'KAlSDW9yaWdpbmFsQ3VzaXASNAoWZW50cnlfdHlwZV9kZXNjcmlwdGlvbhgvIAEoCVIUZW50cn'
    'lUeXBlRGVzY3JpcHRpb24SEAoDcmVwGDAgASgJUgNyZXASFgoGYnJhbmNoGDEgASgJUgZicmFu'
    'Y2gSIwoNY29tcHJlc3NfdHlwZRgyIAEoCVIMY29tcHJlc3NUeXBlEiUKDmNvbXByZXNzX2NvdW'
    '50GDMgASgNUg1jb21wcmVzc0NvdW50Eh8KC2NvbXByZXNzX2lkGDQgASgNUgpjb21wcmVzc0lk'
    'EhsKCXRyYWRlcl9pZBg1IAEoCVIIdHJhZGVySWQSIQoMcmVmZXJlbmNlX2lkGDYgASgJUgtyZW'
    'ZlcmVuY2VJZBIdCgpvdGhlcl9mZWVzGDcgASgJUglvdGhlckZlZXMSIAoMb3RoZXJfZmVlc18y'
    'GDggASgJUgpvdGhlckZlZXMyEicKD3RheF93aXRoaG9sZGluZxg5IAEoCVIOdGF4V2l0aGhvbG'
    'RpbmcSKAoQb3RoZXJfZmVlX3ZhbHVlcxg6IAMoCVIOb3RoZXJGZWVWYWx1ZXMSHwoLbWFyZ2lu'
    'X3R5cGUYOyABKAlSCm1hcmdpblR5cGUSPgobcmVnaXN0ZXJlZF9hZHZpc29yX2NhcGFjaXR5GD'
    'wgASgJUhlyZWdpc3RlcmVkQWR2aXNvckNhcGFjaXR5EicKD3NwZWNpYWxfcmVtYXJrcxg9IAEo'
    'CVIOc3BlY2lhbFJlbWFya3MSGQoIbWlzY19mZWUYPiABKAlSB21pc2NGZWUSHAoJcHJpbmNpcG'
    'FsGD8gASgJUglwcmluY2lwYWwSLwoKYXNfb2ZfZGF0ZRhAIAEoCzIRLmdvb2dsZS50eXBlLkRh'
    'dGVSCGFzT2ZEYXRlEigKEHN1Yl9hY2NvdW50X3R5cGUYQSABKA1SDnN1YkFjY291bnRUeXBlEi'
    'QKDnN1Yl9hY2NvdW50X25vGEIgASgJUgxzdWJBY2NvdW50Tm8SJgoPb3RoZXJfZmVlc19saXN0'
    'GEMgASgJUg1vdGhlckZlZXNMaXN0EiQKDmR2cF9jb25maXJtX25vGEQgASgNUgxkdnBDb25maX'
    'JtTm8SMQoVY29udHJhX3N1Yl9hY2NvdW50X25vGEUgASgJUhJjb250cmFTdWJBY2NvdW50Tm8S'
    'LAoScmVwb3J0X2FjdGl2aXR5X2lkGEYgASgNUhByZXBvcnRBY3Rpdml0eUlkEhoKCGN1cnJlbm'
    'N5GEcgASgJUghjdXJyZW5jeRIhCgxpc19zb2xpY2l0ZWQYSCABKAhSC2lzU29saWNpdGVk');

@$core.Deprecated('Use activityReportDetailsDescriptor instead')
const ActivityReportDetails$json = {
  '1': 'ActivityReportDetails',
  '2': [
    {'1': 'accrual', '3': 1, '4': 1, '5': 9, '10': 'accrual'},
    {'1': 'ats_identifier', '3': 2, '4': 1, '5': 9, '10': 'atsIdentifier'},
    {'1': 'classification', '3': 3, '4': 1, '5': 9, '10': 'classification'},
    {'1': 'comparison_indicator', '3': 4, '4': 1, '5': 8, '10': 'comparisonIndicator'},
    {'1': 'contra_type', '3': 5, '4': 1, '5': 9, '10': 'contraType'},
    {'1': 'coupon_rate', '3': 6, '4': 1, '5': 9, '10': 'couponRate'},
    {'1': 'created_by_api', '3': 7, '4': 1, '5': 9, '10': 'createdByApi'},
    {'1': 'cum_qty', '3': 8, '4': 1, '5': 9, '10': 'cumQty'},
    {'1': 'currency_fees', '3': 9, '4': 1, '5': 9, '10': 'currencyFees'},
    {'1': 'currency_gross_amt', '3': 10, '4': 1, '5': 9, '10': 'currencyGrossAmt'},
    {'1': 'delivered', '3': 11, '4': 1, '5': 8, '10': 'delivered'},
    {'1': 'discretion', '3': 12, '4': 1, '5': 9, '10': 'discretion'},
    {'1': 'entry_type_description', '3': 13, '4': 1, '5': 9, '10': 'entryTypeDescription'},
    {'1': 'euroclear_id', '3': 14, '4': 1, '5': 13, '10': 'euroclearId'},
    {'1': 'exec_id', '3': 15, '4': 1, '5': 9, '10': 'execId'},
    {'1': 'is_corp', '3': 16, '4': 1, '5': 8, '10': 'isCorp'},
    {'1': 'is_msrb', '3': 17, '4': 1, '5': 8, '10': 'isMsrb'},
    {'1': 'is_open_item', '3': 18, '4': 1, '5': 8, '10': 'isOpenItem'},
    {'1': 'is_solicited', '3': 19, '4': 1, '5': 8, '10': 'isSolicited'},
    {'1': 'leaves_qty', '3': 20, '4': 1, '5': 9, '10': 'leavesQty'},
    {'1': 'leg_id', '3': 21, '4': 1, '5': 9, '10': 'legId'},
    {'1': 'mark_amount', '3': 22, '4': 1, '5': 9, '10': 'markAmount'},
    {'1': 'mark_rate', '3': 23, '4': 1, '5': 9, '10': 'markRate'},
    {'1': 'new_issue', '3': 24, '4': 1, '5': 8, '10': 'newIssue'},
    {'1': 'no_remuneration', '3': 25, '4': 1, '5': 8, '10': 'noRemuneration'},
    {'1': 'order_type', '3': 26, '4': 1, '5': 9, '10': 'orderType'},
    {'1': 'org_term', '3': 27, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'orgTerm'},
    {'1': 'org_type', '3': 28, '4': 1, '5': 9, '10': 'orgType'},
    {'1': 'pmp', '3': 29, '4': 1, '5': 9, '10': 'pmp'},
    {'1': 'product', '3': 30, '4': 1, '5': 9, '10': 'product'},
    {'1': 's3', '3': 31, '4': 1, '5': 8, '10': 's3'},
    {'1': 'step_indicator', '3': 32, '4': 1, '5': 8, '10': 'stepIndicator'},
    {'1': 'tax_rate', '3': 33, '4': 1, '5': 9, '10': 'taxRate'},
    {'1': 'when_issue', '3': 34, '4': 1, '5': 8, '10': 'whenIssue'},
    {'1': 'ytc', '3': 35, '4': 1, '5': 9, '10': 'ytc'},
    {'1': 'ytm', '3': 36, '4': 1, '5': 9, '10': 'ytm'},
    {'1': 'system_date', '3': 37, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'systemDate'},
    {'1': 'batch_no', '3': 38, '4': 1, '5': 9, '10': 'batchNo'},
    {'1': 'report_activity_id', '3': 39, '4': 1, '5': 13, '10': 'reportActivityId'},
  ],
};

/// Descriptor for `ActivityReportDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List activityReportDetailsDescriptor = $convert.base64Decode(
    'ChVBY3Rpdml0eVJlcG9ydERldGFpbHMSGAoHYWNjcnVhbBgBIAEoCVIHYWNjcnVhbBIlCg5hdH'
    'NfaWRlbnRpZmllchgCIAEoCVINYXRzSWRlbnRpZmllchImCg5jbGFzc2lmaWNhdGlvbhgDIAEo'
    'CVIOY2xhc3NpZmljYXRpb24SMQoUY29tcGFyaXNvbl9pbmRpY2F0b3IYBCABKAhSE2NvbXBhcm'
    'lzb25JbmRpY2F0b3ISHwoLY29udHJhX3R5cGUYBSABKAlSCmNvbnRyYVR5cGUSHwoLY291cG9u'
    'X3JhdGUYBiABKAlSCmNvdXBvblJhdGUSJAoOY3JlYXRlZF9ieV9hcGkYByABKAlSDGNyZWF0ZW'
    'RCeUFwaRIXCgdjdW1fcXR5GAggASgJUgZjdW1RdHkSIwoNY3VycmVuY3lfZmVlcxgJIAEoCVIM'
    'Y3VycmVuY3lGZWVzEiwKEmN1cnJlbmN5X2dyb3NzX2FtdBgKIAEoCVIQY3VycmVuY3lHcm9zc0'
    'FtdBIcCglkZWxpdmVyZWQYCyABKAhSCWRlbGl2ZXJlZBIeCgpkaXNjcmV0aW9uGAwgASgJUgpk'
    'aXNjcmV0aW9uEjQKFmVudHJ5X3R5cGVfZGVzY3JpcHRpb24YDSABKAlSFGVudHJ5VHlwZURlc2'
    'NyaXB0aW9uEiEKDGV1cm9jbGVhcl9pZBgOIAEoDVILZXVyb2NsZWFySWQSFwoHZXhlY19pZBgP'
    'IAEoCVIGZXhlY0lkEhcKB2lzX2NvcnAYECABKAhSBmlzQ29ycBIXCgdpc19tc3JiGBEgASgIUg'
    'Zpc01zcmISIAoMaXNfb3Blbl9pdGVtGBIgASgIUgppc09wZW5JdGVtEiEKDGlzX3NvbGljaXRl'
    'ZBgTIAEoCFILaXNTb2xpY2l0ZWQSHQoKbGVhdmVzX3F0eRgUIAEoCVIJbGVhdmVzUXR5EhUKBm'
    'xlZ19pZBgVIAEoCVIFbGVnSWQSHwoLbWFya19hbW91bnQYFiABKAlSCm1hcmtBbW91bnQSGwoJ'
    'bWFya19yYXRlGBcgASgJUghtYXJrUmF0ZRIbCgluZXdfaXNzdWUYGCABKAhSCG5ld0lzc3VlEi'
    'cKD25vX3JlbXVuZXJhdGlvbhgZIAEoCFIObm9SZW11bmVyYXRpb24SHQoKb3JkZXJfdHlwZRga'
    'IAEoCVIJb3JkZXJUeXBlEiwKCG9yZ190ZXJtGBsgASgLMhEuZ29vZ2xlLnR5cGUuRGF0ZVIHb3'
    'JnVGVybRIZCghvcmdfdHlwZRgcIAEoCVIHb3JnVHlwZRIQCgNwbXAYHSABKAlSA3BtcBIYCgdw'
    'cm9kdWN0GB4gASgJUgdwcm9kdWN0Eg4KAnMzGB8gASgIUgJzMxIlCg5zdGVwX2luZGljYXRvch'
    'ggIAEoCFINc3RlcEluZGljYXRvchIZCgh0YXhfcmF0ZRghIAEoCVIHdGF4UmF0ZRIdCgp3aGVu'
    'X2lzc3VlGCIgASgIUgl3aGVuSXNzdWUSEAoDeXRjGCMgASgJUgN5dGMSEAoDeXRtGCQgASgJUg'
    'N5dG0SMgoLc3lzdGVtX2RhdGUYJSABKAsyES5nb29nbGUudHlwZS5EYXRlUgpzeXN0ZW1EYXRl'
    'EhkKCGJhdGNoX25vGCYgASgJUgdiYXRjaE5vEiwKEnJlcG9ydF9hY3Rpdml0eV9pZBgnIAEoDV'
    'IQcmVwb3J0QWN0aXZpdHlJZA==');

@$core.Deprecated('Use listActivityRequestDescriptor instead')
const ListActivityRequest$json = {
  '1': 'ListActivityRequest',
  '2': [
    {'1': 'account_no', '3': 1, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'master_account_no', '3': 2, '4': 1, '5': 9, '10': 'masterAccountNo'},
    {'1': 'symbol', '3': 3, '4': 1, '5': 9, '10': 'symbol'},
    {'1': 'status', '3': 4, '4': 1, '5': 9, '10': 'status'},
    {'1': 'from_date', '3': 5, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'fromDate'},
    {'1': 'to_date', '3': 6, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'toDate'},
    {'1': 'entry_type', '3': 7, '4': 1, '5': 9, '10': 'entryType'},
    {'1': 'branch', '3': 8, '4': 1, '5': 9, '10': 'branch'},
    {'1': 'rep', '3': 9, '4': 1, '5': 9, '10': 'rep'},
    {'1': 'side', '3': 10, '4': 1, '5': 9, '10': 'side'},
    {'1': 'account_name', '3': 11, '4': 1, '5': 9, '10': 'accountName'},
    {'1': 'usr_id', '3': 12, '4': 1, '5': 13, '10': 'usrId'},
    {'1': 'compress', '3': 13, '4': 1, '5': 8, '10': 'compress'},
    {'1': 'correspondent', '3': 14, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'date_type', '3': 15, '4': 1, '5': 9, '10': 'dateType'},
    {'1': 'compress_id', '3': 16, '4': 1, '5': 13, '10': 'compressId'},
    {'1': 'search_type', '3': 17, '4': 1, '5': 9, '10': 'searchType'},
    {'1': 'account_id', '3': 18, '4': 1, '5': 13, '10': 'accountId'},
    {'1': 'pagination', '3': 19, '4': 1, '5': 11, '6': '.utilspb.Pagination', '10': 'pagination'},
    {'1': 'breakdown_other_fees', '3': 20, '4': 1, '5': 8, '10': 'breakdownOtherFees'},
    {'1': 'description', '3': 21, '4': 1, '5': 9, '10': 'description'},
    {'1': 'sub_account_type', '3': 22, '4': 1, '5': 13, '10': 'subAccountType'},
    {'1': 'sub_account_no', '3': 23, '4': 1, '5': 9, '10': 'subAccountNo'},
    {'1': 'eff_trade_date', '3': 24, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'effTradeDate'},
    {'1': 'eff_settle_date', '3': 25, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'effSettleDate'},
    {'1': 'capacity', '3': 26, '4': 1, '5': 9, '10': 'capacity'},
    {'1': 'contra_sub_account_no', '3': 27, '4': 1, '5': 9, '10': 'contraSubAccountNo'},
    {'1': 'contra_account_id', '3': 28, '4': 1, '5': 13, '10': 'contraAccountId'},
    {'1': 'currency', '3': 29, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'trns_id', '3': 30, '4': 1, '5': 13, '10': 'trnsId'},
    {'1': 'transaction_side', '3': 31, '4': 1, '5': 9, '10': 'transactionSide'},
    {'1': 'broker', '3': 32, '4': 1, '5': 9, '10': 'broker'},
    {'1': 'asset_type', '3': 33, '4': 1, '5': 9, '10': 'assetType'},
  ],
};

/// Descriptor for `ListActivityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listActivityRequestDescriptor = $convert.base64Decode(
    'ChNMaXN0QWN0aXZpdHlSZXF1ZXN0Eh0KCmFjY291bnRfbm8YASABKAlSCWFjY291bnRObxIqCh'
    'FtYXN0ZXJfYWNjb3VudF9ubxgCIAEoCVIPbWFzdGVyQWNjb3VudE5vEhYKBnN5bWJvbBgDIAEo'
    'CVIGc3ltYm9sEhYKBnN0YXR1cxgEIAEoCVIGc3RhdHVzEi4KCWZyb21fZGF0ZRgFIAEoCzIRLm'
    'dvb2dsZS50eXBlLkRhdGVSCGZyb21EYXRlEioKB3RvX2RhdGUYBiABKAsyES5nb29nbGUudHlw'
    'ZS5EYXRlUgZ0b0RhdGUSHQoKZW50cnlfdHlwZRgHIAEoCVIJZW50cnlUeXBlEhYKBmJyYW5jaB'
    'gIIAEoCVIGYnJhbmNoEhAKA3JlcBgJIAEoCVIDcmVwEhIKBHNpZGUYCiABKAlSBHNpZGUSIQoM'
    'YWNjb3VudF9uYW1lGAsgASgJUgthY2NvdW50TmFtZRIVCgZ1c3JfaWQYDCABKA1SBXVzcklkEh'
    'oKCGNvbXByZXNzGA0gASgIUghjb21wcmVzcxIkCg1jb3JyZXNwb25kZW50GA4gASgJUg1jb3Jy'
    'ZXNwb25kZW50EhsKCWRhdGVfdHlwZRgPIAEoCVIIZGF0ZVR5cGUSHwoLY29tcHJlc3NfaWQYEC'
    'ABKA1SCmNvbXByZXNzSWQSHwoLc2VhcmNoX3R5cGUYESABKAlSCnNlYXJjaFR5cGUSHQoKYWNj'
    'b3VudF9pZBgSIAEoDVIJYWNjb3VudElkEjMKCnBhZ2luYXRpb24YEyABKAsyEy51dGlsc3BiLl'
    'BhZ2luYXRpb25SCnBhZ2luYXRpb24SMAoUYnJlYWtkb3duX290aGVyX2ZlZXMYFCABKAhSEmJy'
    'ZWFrZG93bk90aGVyRmVlcxIgCgtkZXNjcmlwdGlvbhgVIAEoCVILZGVzY3JpcHRpb24SKAoQc3'
    'ViX2FjY291bnRfdHlwZRgWIAEoDVIOc3ViQWNjb3VudFR5cGUSJAoOc3ViX2FjY291bnRfbm8Y'
    'FyABKAlSDHN1YkFjY291bnRObxI3Cg5lZmZfdHJhZGVfZGF0ZRgYIAEoCzIRLmdvb2dsZS50eX'
    'BlLkRhdGVSDGVmZlRyYWRlRGF0ZRI5Cg9lZmZfc2V0dGxlX2RhdGUYGSABKAsyES5nb29nbGUu'
    'dHlwZS5EYXRlUg1lZmZTZXR0bGVEYXRlEhoKCGNhcGFjaXR5GBogASgJUghjYXBhY2l0eRIxCh'
    'Vjb250cmFfc3ViX2FjY291bnRfbm8YGyABKAlSEmNvbnRyYVN1YkFjY291bnRObxIqChFjb250'
    'cmFfYWNjb3VudF9pZBgcIAEoDVIPY29udHJhQWNjb3VudElkEhoKCGN1cnJlbmN5GB0gASgJUg'
    'hjdXJyZW5jeRIXCgd0cm5zX2lkGB4gASgNUgZ0cm5zSWQSKQoQdHJhbnNhY3Rpb25fc2lkZRgf'
    'IAEoCVIPdHJhbnNhY3Rpb25TaWRlEhYKBmJyb2tlchggIAEoCVIGYnJva2VyEh0KCmFzc2V0X3'
    'R5cGUYISABKAlSCWFzc2V0VHlwZQ==');

@$core.Deprecated('Use pageViewActivityRequestDescriptor instead')
const PageViewActivityRequest$json = {
  '1': 'PageViewActivityRequest',
  '2': [
    {'1': 'pagination', '3': 1, '4': 1, '5': 11, '6': '.utilspb.Pagination', '10': 'pagination'},
    {'1': 'date_type', '3': 2, '4': 1, '5': 9, '10': 'dateType'},
    {'1': 'from_date', '3': 3, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'fromDate'},
    {'1': 'to_date', '3': 4, '4': 1, '5': 11, '6': '.google.type.Date', '10': 'toDate'},
    {'1': 'correspondent', '3': 5, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'account_no', '3': 6, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'master_account_no', '3': 7, '4': 1, '5': 9, '10': 'masterAccountNo'},
    {'1': 'branch', '3': 8, '4': 1, '5': 9, '10': 'branch'},
    {'1': 'rep', '3': 9, '4': 1, '5': 9, '10': 'rep'},
    {'1': 'contra_account_no', '3': 10, '4': 1, '5': 9, '10': 'contraAccountNo'},
    {'1': 'broker', '3': 11, '4': 1, '5': 9, '10': 'broker'},
    {'1': 'type', '3': 12, '4': 1, '5': 9, '10': 'type'},
    {'1': 'symbol', '3': 13, '4': 1, '5': 9, '10': 'symbol'},
    {'1': 'cusip', '3': 14, '4': 1, '5': 9, '10': 'cusip'},
    {'1': 'status', '3': 15, '4': 1, '5': 9, '10': 'status'},
    {'1': 'entry_type', '3': 16, '4': 1, '5': 9, '10': 'entryType'},
    {'1': 'side', '3': 17, '4': 1, '5': 9, '10': 'side'},
    {'1': 'asset_type', '3': 18, '4': 1, '5': 9, '10': 'assetType'},
    {'1': 'trns_id', '3': 19, '4': 1, '5': 13, '10': 'trnsId'},
    {'1': 'asOfTRNS', '3': 20, '4': 1, '5': 8, '10': 'asOfTRNS'},
    {'1': 'search_type', '3': 21, '4': 1, '5': 9, '10': 'searchType'},
    {'1': 'description', '3': 22, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `PageViewActivityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pageViewActivityRequestDescriptor = $convert.base64Decode(
    'ChdQYWdlVmlld0FjdGl2aXR5UmVxdWVzdBIzCgpwYWdpbmF0aW9uGAEgASgLMhMudXRpbHNwYi'
    '5QYWdpbmF0aW9uUgpwYWdpbmF0aW9uEhsKCWRhdGVfdHlwZRgCIAEoCVIIZGF0ZVR5cGUSLgoJ'
    'ZnJvbV9kYXRlGAMgASgLMhEuZ29vZ2xlLnR5cGUuRGF0ZVIIZnJvbURhdGUSKgoHdG9fZGF0ZR'
    'gEIAEoCzIRLmdvb2dsZS50eXBlLkRhdGVSBnRvRGF0ZRIkCg1jb3JyZXNwb25kZW50GAUgASgJ'
    'Ug1jb3JyZXNwb25kZW50Eh0KCmFjY291bnRfbm8YBiABKAlSCWFjY291bnRObxIqChFtYXN0ZX'
    'JfYWNjb3VudF9ubxgHIAEoCVIPbWFzdGVyQWNjb3VudE5vEhYKBmJyYW5jaBgIIAEoCVIGYnJh'
    'bmNoEhAKA3JlcBgJIAEoCVIDcmVwEioKEWNvbnRyYV9hY2NvdW50X25vGAogASgJUg9jb250cm'
    'FBY2NvdW50Tm8SFgoGYnJva2VyGAsgASgJUgZicm9rZXISEgoEdHlwZRgMIAEoCVIEdHlwZRIW'
    'CgZzeW1ib2wYDSABKAlSBnN5bWJvbBIUCgVjdXNpcBgOIAEoCVIFY3VzaXASFgoGc3RhdHVzGA'
    '8gASgJUgZzdGF0dXMSHQoKZW50cnlfdHlwZRgQIAEoCVIJZW50cnlUeXBlEhIKBHNpZGUYESAB'
    'KAlSBHNpZGUSHQoKYXNzZXRfdHlwZRgSIAEoCVIJYXNzZXRUeXBlEhcKB3RybnNfaWQYEyABKA'
    '1SBnRybnNJZBIaCghhc09mVFJOUxgUIAEoCFIIYXNPZlRSTlMSHwoLc2VhcmNoX3R5cGUYFSAB'
    'KAlSCnNlYXJjaFR5cGUSIAoLZGVzY3JpcHRpb24YFiABKAlSC2Rlc2NyaXB0aW9u');

@$core.Deprecated('Use listActivityReportDetailsRequestDescriptor instead')
const ListActivityReportDetailsRequest$json = {
  '1': 'ListActivityReportDetailsRequest',
  '2': [
    {'1': 'report_activity_id', '3': 1, '4': 1, '5': 13, '10': 'reportActivityId'},
    {'1': 'is_archived', '3': 2, '4': 1, '5': 8, '10': 'isArchived'},
  ],
};

/// Descriptor for `ListActivityReportDetailsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listActivityReportDetailsRequestDescriptor = $convert.base64Decode(
    'CiBMaXN0QWN0aXZpdHlSZXBvcnREZXRhaWxzUmVxdWVzdBIsChJyZXBvcnRfYWN0aXZpdHlfaW'
    'QYASABKA1SEHJlcG9ydEFjdGl2aXR5SWQSHwoLaXNfYXJjaGl2ZWQYAiABKAhSCmlzQXJjaGl2'
    'ZWQ=');

@$core.Deprecated('Use listActivityResponseDescriptor instead')
const ListActivityResponse$json = {
  '1': 'ListActivityResponse',
  '2': [
    {'1': 'activities', '3': 1, '4': 3, '5': 11, '6': '.reportpb.Activity', '10': 'activities'},
    {'1': 'summary', '3': 2, '4': 1, '5': 11, '6': '.reportpb.ListActivitySummary', '10': 'summary'},
    {'1': 'other_fee_types', '3': 3, '4': 3, '5': 9, '10': 'otherFeeTypes'},
  ],
};

/// Descriptor for `ListActivityResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listActivityResponseDescriptor = $convert.base64Decode(
    'ChRMaXN0QWN0aXZpdHlSZXNwb25zZRIyCgphY3Rpdml0aWVzGAEgAygLMhIucmVwb3J0cGIuQW'
    'N0aXZpdHlSCmFjdGl2aXRpZXMSNwoHc3VtbWFyeRgCIAEoCzIdLnJlcG9ydHBiLkxpc3RBY3Rp'
    'dml0eVN1bW1hcnlSB3N1bW1hcnkSJgoPb3RoZXJfZmVlX3R5cGVzGAMgAygJUg1vdGhlckZlZV'
    'R5cGVz');

@$core.Deprecated('Use listActivitySummaryDescriptor instead')
const ListActivitySummary$json = {
  '1': 'ListActivitySummary',
  '2': [
    {'1': 'total_rows', '3': 1, '4': 1, '5': 13, '10': 'totalRows'},
    {'1': 'qty', '3': 2, '4': 1, '5': 9, '10': 'qty'},
    {'1': 'price', '3': 3, '4': 1, '5': 9, '10': 'price'},
    {'1': 'gross_amt', '3': 4, '4': 1, '5': 9, '10': 'grossAmt'},
    {'1': 'reg_fee', '3': 5, '4': 1, '5': 9, '10': 'regFee'},
    {'1': 'taf_fee', '3': 6, '4': 1, '5': 9, '10': 'tafFee'},
    {'1': 'commission', '3': 7, '4': 1, '5': 9, '10': 'commission'},
    {'1': 'fees', '3': 8, '4': 1, '5': 9, '10': 'fees'},
    {'1': 'net_amt', '3': 9, '4': 1, '5': 9, '10': 'netAmt'},
    {'1': 'other_fees_2', '3': 10, '4': 1, '5': 9, '10': 'otherFees2'},
    {'1': 'tax_withholding', '3': 11, '4': 1, '5': 9, '10': 'taxWithholding'},
    {'1': 'other_fee_types', '3': 12, '4': 3, '5': 9, '10': 'otherFeeTypes'},
    {'1': 'other_fee_values', '3': 13, '4': 3, '5': 9, '10': 'otherFeeValues'},
  ],
};

/// Descriptor for `ListActivitySummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listActivitySummaryDescriptor = $convert.base64Decode(
    'ChNMaXN0QWN0aXZpdHlTdW1tYXJ5Eh0KCnRvdGFsX3Jvd3MYASABKA1SCXRvdGFsUm93cxIQCg'
    'NxdHkYAiABKAlSA3F0eRIUCgVwcmljZRgDIAEoCVIFcHJpY2USGwoJZ3Jvc3NfYW10GAQgASgJ'
    'Ughncm9zc0FtdBIXCgdyZWdfZmVlGAUgASgJUgZyZWdGZWUSFwoHdGFmX2ZlZRgGIAEoCVIGdG'
    'FmRmVlEh4KCmNvbW1pc3Npb24YByABKAlSCmNvbW1pc3Npb24SEgoEZmVlcxgIIAEoCVIEZmVl'
    'cxIXCgduZXRfYW10GAkgASgJUgZuZXRBbXQSIAoMb3RoZXJfZmVlc18yGAogASgJUgpvdGhlck'
    'ZlZXMyEicKD3RheF93aXRoaG9sZGluZxgLIAEoCVIOdGF4V2l0aGhvbGRpbmcSJgoPb3RoZXJf'
    'ZmVlX3R5cGVzGAwgAygJUg1vdGhlckZlZVR5cGVzEigKEG90aGVyX2ZlZV92YWx1ZXMYDSADKA'
    'lSDm90aGVyRmVlVmFsdWVz');

@$core.Deprecated('Use listActivitiesResponseDescriptor instead')
const ListActivitiesResponse$json = {
  '1': 'ListActivitiesResponse',
  '2': [
    {'1': 'activities', '3': 1, '4': 3, '5': 11, '6': '.reportpb.Activity', '10': 'activities'},
    {'1': 'other_fee_types', '3': 2, '4': 3, '5': 9, '10': 'otherFeeTypes'},
  ],
};

/// Descriptor for `ListActivitiesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listActivitiesResponseDescriptor = $convert.base64Decode(
    'ChZMaXN0QWN0aXZpdGllc1Jlc3BvbnNlEjIKCmFjdGl2aXRpZXMYASADKAsyEi5yZXBvcnRwYi'
    '5BY3Rpdml0eVIKYWN0aXZpdGllcxImCg9vdGhlcl9mZWVfdHlwZXMYAiADKAlSDW90aGVyRmVl'
    'VHlwZXM=');

