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
    {'1': 'request_id', '3': 1, '4': 1, '5': 13, '8': {}, '10': 'requestId'},
    {'1': 'system_date', '3': 2, '4': 1, '5': 11, '6': '.google.type.Date', '8': {}, '10': 'systemDate'},
    {'1': 'process_date', '3': 3, '4': 1, '5': 11, '6': '.google.type.Date', '8': {}, '10': 'processDate'},
    {'1': 'account_id', '3': 4, '4': 1, '5': 13, '8': {}, '10': 'accountId'},
    {'1': 'correspondent', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'correspondent'},
    {'1': 'branch', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'branch'},
    {'1': 'account_no', '3': 7, '4': 1, '5': 9, '8': {}, '10': 'accountNo'},
    {'1': 'master_account_no', '3': 8, '4': 1, '5': 9, '8': {}, '10': 'masterAccountNo'},
    {'1': 'rep', '3': 9, '4': 1, '5': 9, '8': {}, '10': 'rep'},
    {'1': 'broker', '3': 10, '4': 1, '5': 9, '8': {}, '10': 'broker'},
    {'1': 'request_type', '3': 11, '4': 1, '5': 9, '8': {}, '10': 'requestType'},
    {'1': 'transfer_type', '3': 12, '4': 1, '5': 9, '8': {}, '10': 'transferType'},
    {'1': 'amt', '3': 13, '4': 1, '5': 9, '8': {}, '10': 'amt'},
    {'1': 'fee', '3': 14, '4': 1, '5': 9, '8': {}, '10': 'fee'},
    {'1': 'fed_no', '3': 15, '4': 1, '5': 9, '8': {}, '10': 'fedNo'},
    {'1': 'external_id', '3': 16, '4': 1, '5': 9, '8': {}, '10': 'externalId'},
    {'1': 'bank_id', '3': 17, '4': 1, '5': 13, '8': {}, '10': 'bankId'},
    {'1': 'bank_name', '3': 18, '4': 1, '5': 9, '8': {}, '10': 'bankName'},
    {'1': 'bank_account_no', '3': 19, '4': 1, '5': 9, '8': {}, '10': 'bankAccountNo'},
    {'1': 'bank_routing_no', '3': 20, '4': 1, '5': 9, '8': {}, '10': 'bankRoutingNo'},
    {'1': 'is_international', '3': 21, '4': 1, '5': 8, '8': {}, '10': 'isInternational'},
    {'1': 'bank_note', '3': 22, '4': 1, '5': 9, '8': {}, '10': 'bankNote'},
    {'1': 'internal_note', '3': 23, '4': 1, '5': 9, '8': {}, '10': 'internalNote'},
    {'1': 'status', '3': 24, '4': 1, '5': 9, '8': {}, '10': 'status'},
    {'1': 'created_by', '3': 25, '4': 1, '5': 9, '8': {}, '10': 'createdBy'},
    {'1': 'created_at', '3': 26, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'createdAt'},
    {'1': 'modified_at', '3': 27, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'modifiedAt'},
    {'1': 'modified_by', '3': 28, '4': 1, '5': 9, '8': {}, '10': 'modifiedBy'},
    {'1': 'waive_fee', '3': 29, '4': 1, '5': 8, '8': {}, '10': 'waiveFee'},
    {'1': 'error_msg', '3': 30, '4': 1, '5': 9, '8': {}, '10': 'errorMsg'},
  ],
};

/// Descriptor for `Request`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List requestDescriptor = $convert.base64Decode(
    'CgdSZXF1ZXN0EmYKCnJlcXVlc3RfaWQYASABKA1CR5JBRDI/QmFuayByZXF1ZXN0IG51bWVyaW'
    'MgdW5pcXVlIGlkZW50aWZpZXIgZ2VuZXJhdGVkIGJ5IHRoZSBzeXN0ZW0uSgEyUglyZXF1ZXN0'
    'SWQSgAEKC3N5c3RlbV9kYXRlGAIgASgLMhEuZ29vZ2xlLnR5cGUuRGF0ZUJMkkFJMkdEYXRlIH'
    'NldCBpbiB0aGUgc3lzdGVtLiBUaGlzIGlzIG5vdCBhIGNhbGVuZGFyIGRhdGUuwqBBcyBvZiBz'
    'eXN0ZW0gZGF0ZVIKc3lzdGVtRGF0ZRKmAQoMcHJvY2Vzc19kYXRlGAMgASgLMhEuZ29vZ2xlLn'
    'R5cGUuRGF0ZUJwkkFtMmtEYXRlIHdoZW4gdGhlIHJlY29yZHMgaGFzIGJlZW4gcHJvY2Vzcy4g'
    'VGhpcyBkYXRlIGlzIGJhc2VkIG9uIHRoZSBzZXJ2ZXIgY2FsZW5kYXIgZGF0ZSBub3QgdGhlIH'
    'N5c3RlbSBkYXRlLlILcHJvY2Vzc0RhdGUSSwoKYWNjb3VudF9pZBgEIAEoDUIskkEpMiJBY2Nv'
    'dW50IG51bWVyaWMgdW5pcXVlIGlkZW50aWZpZXIuSgM3MDZSCWFjY291bnRJZBLRAQoNY29ycm'
    'VzcG9uZGVudBgFIAEoCUKqAZJBpgEylgFUaGUgbmFtZSBnaXZlbiB0byBhIGJhbmssIGJyb2tl'
    'ciwgZGVhbGVyLCBvciBmaW5hbmNpYWwgaW5zdGl0dXRpb24gdGhhdCBhY3RzIG9uIGJlaGFsZi'
    'BvZiBhbm90aGVyIGZpbmFuY2lhbCBpbnN0aXR1dGlvbi4gRm91ciBBbHBoYSBudW1lcmljIGNo'
    'YXJhY3Rlci5KBiJTQVNTIngEgAEEUg1jb3JyZXNwb25kZW50EtABCgZicmFuY2gYBiABKAlCtw'
    'GSQbMBMqwBQSBicmFuY2ggb2ZmaWNlIGlzIGEgbG9jYXRpb24sIG90aGVyIHRoYW4gdGhlIG1h'
    'aW4gb2ZmaWNlLCB3aGVyZSBhIGJ1c2luZXNzIGlzIGNvbmR1Y3RlZC4gTW9zdCBicmFuY2ggb2'
    'ZmaWNlcyBjb25zaXN0IG9mIHNtYWxsZXIgZGl2aXNpb25zIG9mIGRpZmZlcmVudCBhc3BlY3Rz'
    'IG9mIHRoZSBmaXJtLkoCIiJSBmJyYW5jaBJhCgphY2NvdW50X25vGAcgASgJQkKSQT8yLFRoZS'
    'BhbHBoYW51bWVyaWMgaWRlbnRpZmllciBvZiB0aGUgYWNjb3VudC4gSg8iVEVTVEFDQ09VTlRO'
    'TyJSCWFjY291bnRObxKkAQoRbWFzdGVyX2FjY291bnRfbm8YCCABKAlCeJJBdTJiTWFzdGVyIG'
    '9yIHJvbGwtdXAgYWNjb3VudC4gQWxwaGFudW1lcmljIG1hc3RlciBhY2NvdW50IG51bWJlciB3'
    'aGljaCBjYW4gYmUgdXNlZCBhY3Jvc3MgdGhlIHN5c3RlbS5KDyJURVNUQUNDT1VOVE5PIlIPbW'
    'FzdGVyQWNjb3VudE5vEtQCCgNyZXAYCSABKAlCwQKSQb0CMrYCQSByZWdpc3RlcmVkIHJlcHJl'
    'c2VudGF0aXZlIChSUikgaXMgYSBwZXJzb24gd2hvIHdvcmtzIGZvciBhIGNsaWVudC1mYWNpbm'
    'cgZmluYW5jaWFsIGZpcm0gc3VjaCBhcyBhIGJyb2tlcmFnZSBjb21wYW55IGFuZCBzZXJ2ZXMg'
    'YXMgYSByZXByZXNlbnRhdGl2ZSBmb3IgY2xpZW50cyB3aG8gYXJlIHRyYWRpbmcgaW52ZXN0bW'
    'VudCBwcm9kdWN0cyBhbmQgc2VjdXJpdGllcy4gUmVnaXN0ZXJlZCByZXByZXNlbnRhdGl2ZXMg'
    'bWF5IGJlIGVtcGxveWVkIGFzIGJyb2tlcnMsIGZpbmFuY2lhbCBhZHZpc29ycywgb3IgcG9ydG'
    'ZvbGlvIG1hbmFnZXJzLkoCIiJSA3JlcBL/AQoGYnJva2VyGAogASgJQuYBkkHiATLWAUEgYnJv'
    'a2VyIGlzIGFuIGluZGl2aWR1YWwgb3IgZmlybSB0aGF0IGNoYXJnZXMgYSBmZWUgb3IgY29tbW'
    'lzc2lvbiBmb3IgZXhlY3V0aW5nIGJ1eSBhbmQgc2VsbCBvcmRlcnMgc3VibWl0dGVkIGJ5IGFu'
    'IGludmVzdG9yLiBDaGVjayAvdjEvc3lzdGVtY29kZS9saXN0IEFQSSBmb3IgdmFsaWQgdmFsdW'
    'VzICh0eXBlID0gJ0Jyb2tlcicpLCB1c2UgdGhlICdjb2RlJyB2YWx1ZS7SAQZicm9rZXJSBmJy'
    'b2tlchLMAQoMcmVxdWVzdF90eXBlGAsgASgJQqgBkkGkATKaAVNwZWNpZmllcyB0aGUgdHlwZS'
    'BvZiBmdW5kIHRyYW5zZmVyIHJlcXVlc3QuIENoZWNrIC92MS9zeXN0ZW1jb2RlL2xpc3QgQVBJ'
    'IGZvciB2YWxpZCB2YWx1ZXMgKHR5cGUgPSAnVHlwZScsIHN1YlR5cGUgPSAnUmVxdWVzdCBUeX'
    'BlJykgZm9yIHBvc3NpYmxlIHZhbHVlcy5KBSJBQ0giUgtyZXF1ZXN0VHlwZRLUAQoNdHJhbnNm'
    'ZXJfdHlwZRgMIAEoCUKuAZJBqgEynAFJbmRpY2F0ZXMgdGhlIGRpcmVjdGlvbiBvZiB0aGUgZn'
    'VuZCBtb3ZlbWVudC4gQ2hlY2sgL3YxL3N5c3RlbWNvZGUvbGlzdCBBUEkgZm9yIHZhbGlkIHZh'
    'bHVlcyAodHlwZSA9ICdUeXBlJywgc3ViVHlwZSA9ICdUcmFuc2ZlciBUeXBlJykgZm9yIHBvc3'
    'NpYmxlIHZhbHVlcy5KCSJEZXBvc2l0IlIMdHJhbnNmZXJUeXBlEloKA2FtdBgNIAEoCUJIkkFF'
    'Mj9TcGVjaWZpZXMgdGhlIG1vbmV0YXJ5IGFtb3VudCBpbnZvbHZlZCBpbiB0aGUgdHJhbnNmZX'
    'IgcmVxdWVzdC5KAjEwUgNhbXQSXgoDZmVlGA4gASgJQkySQUkyQ1NwZWNpZmllcyB0aGUgdHJh'
    'bnNhY3Rpb24gZmVlIGFzc29jaWF0ZWQgd2l0aCB0aGUgdHJhbnNmZXIgcmVxdWVzdC5KAjEwUg'
    'NmZWUSmgMKBmZlZF9ubxgPIAEoCUKCA5JB/gIy7gJGZWRlcmFsIFJlZmVyZW5jZSBOdW1iZXIg'
    'KGEgbmluZS1kaWdpdCBjb2RlKSBtZWFucywgZm9yIGFueSB3aXJlIHRyYW5zZmVyLCB0aGUgcm'
    'VmZXJlbmNlIG51bWJlciByZWxhdGluZyB0byBzdWNoIHRyYW5zZmVyIGZvciBwdXJwb3NlcyBv'
    'ZiB0aGUgZnVuZHMgdHJhbnNmZXIgc3lzdGVtIHVzZWQgdG8gdHJhbnNmZXIgYmFsYW5jZXMgZm'
    '9yIGltbWVkaWF0ZWx5IGF2YWlsYWJsZSBjcmVkaXQgYW1vbmcgdGhlIG1lbWJlciBiYW5rcyBv'
    'ZiB0aGUgVS5TLiBGZWRlcmFsIFJlc2VydmUgU3lzdGVtLiAoQmFua3MgdXNlIHJvdXRpbmcgbn'
    'VtYmVycyB0byBkaXJlY3QgdGhlIGV4Y2hhbmdlIG9mIGZ1bmRzIHRvIGFuZCBmcm9tIG9uZSBh'
    'bm90aGVyLilKCyI5NTgzNzQ2MjEiUgVmZWRObxJ8CgtleHRlcm5hbF9pZBgQIAEoCUJbkkFYMk'
    'dBbiBpZGVudGlmaWVyIHRoYXQgaXMgcmVsYXRlZCB0byB0aGUgYWNjb3VudCBob2xkZXIgb3V0'
    'c2lkZSB0aGUgc3lzdGVtLkoNIkV4dGVybmFsMTIzIlIKZXh0ZXJuYWxJZBJSCgdiYW5rX2lkGB'
    'EgASgNQjmSQTYyMUEgdW5pcXVlIG51bWVyaWMgaWRlbnRpZmllciBmb3IgdGhlIGJhbmsgYWNj'
    'b3VudC5KATFSBmJhbmtJZBKFAQoJYmFua19uYW1lGBIgASgJQmiSQWUyVFRoZSByZWdpc3Rlcm'
    'VkIGFuZCBsZWdhbCBuYW1lIG9mIHRoZSBmaW5hbmNpYWwgaW5zdGl0dXRpb24gb3IgYmFuayBi'
    'YXNlZCBvbiBCYW5rIElELkoNIldlbGxzIEZhcmdvIlIIYmFua05hbWUSxwEKD2JhbmtfYWNjb3'
    'VudF9ubxgTIAEoCUKeAZJBmgEygwFJdCBpcyB1c3VhbGx5IGJldHdlZW4gZWlnaHQgdG8gMTIg'
    'ZGlnaXRzIGluIGxlbmd0aCB3aGljaCBpcyB0aGUgcHJpbWFyeSBpZGVudGlmaWVyIG9mIG93bm'
    'Vyc2hpcCBvciBhIGJhbmsgYWNjb3VudCBiYXNlZCBvbiBCYW5rIElELkoSIjExMTEyMjIyMzMz'
    'MzExMTEiUg1iYW5rQWNjb3VudE5vEm4KD2Jhbmtfcm91dGluZ19ubxgUIAEoCUJGkkFDMi1BQ0'
    'gvV2lyZSBSb3V0aW5nIE51bWJlciBiYXNlZCBvbiB0aGUgQmFuayBJRC5KEiIxMTExMjIyMjMz'
    'MzMxMTExIlINYmFua1JvdXRpbmdObxJ4ChBpc19pbnRlcm5hdGlvbmFsGBUgASgIQk2SQUoySE'
    'FuIGluZGljYXRvciBpZiB0aGUgYmFuayBpcyBpbnRlcm5hdGlvbmFsIG9yIGxvY2FsIGJhc2Vk'
    'IG9uIHRoZSBCYW5rIElELlIPaXNJbnRlcm5hdGlvbmFsEqIBCgliYW5rX25vdGUYFiABKAlChA'
    'GSQYABMmRBbnkgY29tbWVudHMsIGVycm9yIG1lc3NhZ2Ugb3Igbm90ZXMgY29taW5nIGZyb20g'
    'dGhlIGJhbmsgcGVydGFpbmluZyB0byB0aGUgQUNIIG9yIFdpcmUgdHJhbnNhY3Rpb24uShgiSW'
    '52YWxpZCBBY2NvdW50IE51bWJlciJSCGJhbmtOb3RlEvIBCg1pbnRlcm5hbF9ub3RlGBcgASgJ'
    'QswBkkHIATLBAUNvbnRhaW5zIGludGVybmFsIHJlbWFya3Mgb3IgYW5ub3RhdGlvbnMgcmVsYX'
    'RlZCB0byB0aGUgcmVjb3JkLiBUaGlzIGZpZWxkIGlzIGludGVuZGVkIGZvciBiYWNrLW9mZmlj'
    'ZSB1c2UgYW5kIG1heSBpbmNsdWRlIG9wZXJhdGlvbmFsIGNvbW1lbnRzLCBwcm9jZXNzaW5nIG'
    'luc3RydWN0aW9ucywgb3IgYXVkaXQtcmVsYXRlZCBub3Rlcy5KAiIiUgxpbnRlcm5hbE5vdGUS'
    'VAoGc3RhdHVzGBggASgJQjySQTkyLEluZGljYXRlcyB0aGUgc3RhdGUgb2YgdGhlIHRyYW5zZm'
    'VyIHJlcXVlc3QuSgkiUGVuZGluZyJSBnN0YXR1cxJSCgpjcmVhdGVkX2J5GBkgASgJQjOSQTAy'
    'IFRoZSB1c2VyIHdobyBjcmVhdGVkIHRoZSByZWNvcmQuQAFKCiJKb2huIERvZSJSCWNyZWF0ZW'
    'RCeRJuCgpjcmVhdGVkX2F0GBogASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIzkkEw'
    'MixTeXN0ZW0gZGF0ZSB0aW1lIHdoZW4gdGhlIHJlY29yZCB3YXMgY3JlYXRlZEABUgljcmVhdG'
    'VkQXQScQoLbW9kaWZpZWRfYXQYGyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQjSS'
    'QTEyLVN5c3RlbSBkYXRlIHRpbWUgd2hlbiB0aGUgcmVjb3JkIHdhcyBtb2RpZmllZEABUgptb2'
    'RpZmllZEF0EmAKC21vZGlmaWVkX2J5GBwgASgJQj+SQTwyLFRoZSB1c2VyIHdobyBjb21taXRl'
    'ZCBjaGFuZ2VzIHRvIHRoZSByZWNvcmQuQAFKCiJKb2huIERvZSJSCm1vZGlmaWVkQnkS3wEKCX'
    'dhaXZlX2ZlZRgdIAEoCELBAZJBvQEyugFJbmRpY2F0ZXMgd2hldGhlciBhcHBsaWNhYmxlIGZl'
    'ZXMgc2hvdWxkIGJlIHdhaXZlZCBmb3IgdGhlIHRyYW5zYWN0aW9uLiBXaGVuIHNldCB0byB0cn'
    'VlLCB0aGUgc3lzdGVtIHdpbGwgYnlwYXNzIHN0YW5kYXJkIGZlZSBjYWxjdWxhdGlvbnMgYW5k'
    'IGV4Y2x1ZGUgY2hhcmdlcyB0aGF0IHdvdWxkIG90aGVyd2lzZSBhcHBseS5SCHdhaXZlRmVlEu'
    '4BCgllcnJvcl9tc2cYHiABKAlC0AGSQcwBMntSZXF1ZXN0IHZhbGlkYXRpb24gZXJyb3IgbWVz'
    'c2FnZS4gVGhpcyBmaWVsZCBpcyB1c2VkIHRvIHN0b3JlIHRoZSBlcnJvciBtZXNzYWdlIHdoZW'
    '4gdGhlIHRyYW5zZmVyIHJlcXVlc3QgdmFsaWRhdGlvbiBmYWlscy5AAUpLIkVycm9yIENvZGU6'
    'IDE1IC0gQ2Fubm90IHVwZGF0ZSBTdGF0dXMgZnJvbSBUcmFuc2ZlciBBcHByb3ZlZCB0byBDYW'
    '5jZWxlZDsiUghlcnJvck1zZw==');

@$core.Deprecated('Use createRequestDescriptor instead')
const CreateRequest$json = {
  '1': 'CreateRequest',
  '2': [
    {'1': 'bank_id', '3': 1, '4': 1, '5': 13, '8': {}, '10': 'bankId'},
    {'1': 'account_id', '3': 2, '4': 1, '5': 13, '8': {}, '10': 'accountId'},
    {'1': 'correspondent', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'correspondent'},
    {'1': 'account_no', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'accountNo'},
    {'1': 'request_type', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'requestType'},
    {'1': 'transfer_type', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'transferType'},
    {'1': 'amt', '3': 7, '4': 1, '5': 9, '8': {}, '10': 'amt'},
    {'1': 'fee', '3': 8, '4': 1, '5': 9, '8': {}, '10': 'fee'},
    {'1': 'status', '3': 9, '4': 1, '5': 9, '8': {}, '10': 'status'},
    {'1': 'fed_no', '3': 10, '4': 1, '5': 9, '8': {}, '10': 'fedNo'},
    {'1': 'external_id', '3': 11, '4': 1, '5': 9, '8': {}, '10': 'externalId'},
  ],
};

/// Descriptor for `CreateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRequestDescriptor = $convert.base64Decode(
    'Cg1DcmVhdGVSZXF1ZXN0EqYBCgdiYW5rX2lkGAEgASgNQowBkkGIATJ5QSB1bmlxdWUgbnVtZX'
    'JpYyBpZGVudGlmaWVyIGZvciB0aGUgYmFuayBhY2NvdW50LiBUbyBvYnRhaW4gYSB2YWxpZCBC'
    'YW5rIElELCB1c2UgdGhlICdHRVQgL3YxL2JhbmthY2NvdW50L2xpc3QnIGVuZHBvaW50LkoBMd'
    'IBB2JhbmtfaWRSBmJhbmtJZBKNAQoKYWNjb3VudF9pZBgCIAEoDUJukkFrMldBY2NvdW50IG51'
    'bWVyaWMgdW5pcXVlIGlkZW50aWZpZXIuIFJlcXVpcmVkIGlmIENvcnJlc3BvbmRlbnQgYW5kIE'
    'FjY291bnQgTm8gaXMgbm90IHNldC5KAzcwNtIBCmFjY291bnRfaWRSCWFjY291bnRJZBKEAgoN'
    'Y29ycmVzcG9uZGVudBgDIAEoCULdAZJB2QEyuQFUaGUgbmFtZSBnaXZlbiB0byBhIGJhbmssIG'
    'Jyb2tlciwgZGVhbGVyLCBvciBmaW5hbmNpYWwgaW5zdGl0dXRpb24gdGhhdCBhY3RzIG9uIGJl'
    'aGFsZiBvZiBhbm90aGVyIGZpbmFuY2lhbCBpbnN0aXR1dGlvbi4gRm91ciBBbHBoYSBudW1lcm'
    'ljIGNoYXJhY3Rlci4gUmVxdWlyZWQgaWYgQWNjb3VudCBJRCBpcyBub3Qgc2V0LkoGIlNBU1Mi'
    'eASAAQTSAQ1jb3JyZXNwb25kZW50Ug1jb3JyZXNwb25kZW50EpABCgphY2NvdW50X25vGAQgAS'
    'gJQnGSQW4yTlRoZSBhbHBoYW51bWVyaWMgaWRlbnRpZmllciBvZiB0aGUgYWNjb3VudC4gUmVx'
    'dWlyZWQgaWYgQWNjb3VudCBJRCBpcyBub3Qgc2V0LkoPIlRFU1RBQ0NPVU5UTk8i0gEKYWNjb3'
    'VudF9ub1IJYWNjb3VudE5vEt0BCgxyZXF1ZXN0X3R5cGUYBSABKAlCuQGSQbUBMpwBU3BlY2lm'
    'aWVzIHRoZSB0eXBlIG9mIGZ1bmQgdHJhbnNmZXIgcmVxdWVzdC4gQ2hlY2sgL3YxL3N5c3RlbW'
    'NvZGUvbGlzdCBBUEkgZm9yIHZhbGlkIHZhbHVlcyAodHlwZSA9ICdUeXBlJywgc3ViVHlwZSA9'
    'ICdSZXF1ZXN0IFR5cGUnKSwgdXNlIHRoZSAnY29kZScgdmFsdWUuSgUiQUNIItIBDHJlcXVlc3'
    'RfdHlwZVILcmVxdWVzdFR5cGUS5gEKDXRyYW5zZmVyX3R5cGUYBiABKAlCwAGSQbwBMp4BSW5k'
    'aWNhdGVzIHRoZSBkaXJlY3Rpb24gb2YgdGhlIGZ1bmQgbW92ZW1lbnQuIENoZWNrIC92MS9zeX'
    'N0ZW1jb2RlL2xpc3QgQVBJIGZvciB2YWxpZCB2YWx1ZXMgKHR5cGUgPSAnVHlwZScsIHN1YlR5'
    'cGUgPSAnVHJhbnNmZXIgVHlwZScpLCB1c2UgdGhlICdjb2RlJyB2YWx1ZS5KCSJEZXBvc2l0It'
    'IBDXRyYW5zZmVyX3R5cGVSDHRyYW5zZmVyVHlwZRLcAQoDYW10GAcgASgJQskBkkHFATK4AVNw'
    'ZWNpZmllcyB0aGUgbW9uZXRhcnkgYW1vdW50IGludm9sdmVkIGluIHRoZSB0cmFuc2ZlciByZX'
    'F1ZXN0LiBUaGlzIHZhbHVlIHNob3VsZCBiZSBhIHBvc2l0aXZlIG51bWJlciBmb3JtYXR0ZWQg'
    'YXMgYSBzdHJpbmcsIHJlcHJlc2VudGluZyB0aGUgdG90YWwgZnVuZHMgdG8gYmUgZGVwb3NpdG'
    'VkIG9yIHdpdGhkcmF3bi5KAjEw0gEDYW10UgNhbXQS3QEKA2ZlZRgIIAEoCULKAZJBxgEyvwFT'
    'cGVjaWZpZXMgdGhlIHRyYW5zYWN0aW9uIGZlZSBhc3NvY2lhdGVkIHdpdGggdGhlIHRyYW5zZm'
    'VyIHJlcXVlc3QuIFRoaXMgdmFsdWUgc2hvdWxkIGJlIGEgbm9uLW5lZ2F0aXZlIG51bWVyaWMg'
    'c3RyaW5nLCByZXByZXNlbnRpbmcgdGhlIGNvc3QgY2hhcmdlZCBmb3IgcHJvY2Vzc2luZyB0aG'
    'UgZGVwb3NpdCBvciB3aXRoZHJhd2FsLkoCMTBSA2ZlZRKGAgoGc3RhdHVzGAkgASgJQu0BkkHp'
    'ATLSAVJlcHJlc2VudHMgdGhlIGN1cnJlbnQgc3RhdGUgb2YgdGhlIHRyYW5zZmVyIHJlcXVlc3'
    'QuIEFjY2VwdGVkIHZhbHVlcyBhcmU6ICdQZW5kaW5nJywgJ1RyYW5zZmVyIEFwcHJvdmVkJywg'
    'YW5kICdCcm9rZXIgQXBwcm92ZWQnLiBOb3RlOiBPbmx5IHJlcXVlc3RzIHdpdGggYSBzdGF0dX'
    'Mgb2YgJ1BlbmRpbmcnIGNhbiBiZSBtb2RpZmllZCBhZnRlciBzdWJtaXNzaW9uLkoJIlBlbmRp'
    'bmci0gEGc3RhdHVzUgZzdGF0dXMSmgMKBmZlZF9ubxgKIAEoCUKCA5JB/gIy7gJGZWRlcmFsIF'
    'JlZmVyZW5jZSBOdW1iZXIgKGEgbmluZS1kaWdpdCBjb2RlKSBtZWFucywgZm9yIGFueSB3aXJl'
    'IHRyYW5zZmVyLCB0aGUgcmVmZXJlbmNlIG51bWJlciByZWxhdGluZyB0byBzdWNoIHRyYW5zZm'
    'VyIGZvciBwdXJwb3NlcyBvZiB0aGUgZnVuZHMgdHJhbnNmZXIgc3lzdGVtIHVzZWQgdG8gdHJh'
    'bnNmZXIgYmFsYW5jZXMgZm9yIGltbWVkaWF0ZWx5IGF2YWlsYWJsZSBjcmVkaXQgYW1vbmcgdG'
    'hlIG1lbWJlciBiYW5rcyBvZiB0aGUgVS5TLiBGZWRlcmFsIFJlc2VydmUgU3lzdGVtLiAoQmFu'
    'a3MgdXNlIHJvdXRpbmcgbnVtYmVycyB0byBkaXJlY3QgdGhlIGV4Y2hhbmdlIG9mIGZ1bmRzIH'
    'RvIGFuZCBmcm9tIG9uZSBhbm90aGVyLilKCyI5NTgzNzQ2MjEiUgVmZWRObxJ8CgtleHRlcm5h'
    'bF9pZBgLIAEoCUJbkkFYMkdBbiBpZGVudGlmaWVyIHRoYXQgaXMgcmVsYXRlZCB0byB0aGUgYW'
    'Njb3VudCBob2xkZXIgb3V0c2lkZSB0aGUgc3lzdGVtLkoNIkV4dGVybmFsMTIzIlIKZXh0ZXJu'
    'YWxJZA==');

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
    {'1': 'request_id', '3': 1, '4': 1, '5': 13, '8': {}, '10': 'requestId'},
    {'1': 'amt', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'amt'},
    {'1': 'fee', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'fee'},
    {'1': 'status', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'status'},
    {'1': 'fed_no', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'fedNo'},
    {'1': 'external_id', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'externalId'},
  ],
};

/// Descriptor for `UpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateRequestDescriptor = $convert.base64Decode(
    'Cg1VcGRhdGVSZXF1ZXN0EnQKCnJlcXVlc3RfaWQYASABKA1CVZJBUjJAQmFuayByZXF1ZXN0IG'
    '51bWVyaWMgdW5pcXVlIGlkZW50aWZpZXIgZ2VuZXJhdGVkIGJ5IHRoZSBzeXN0ZW0uIEoBMtIB'
    'CnJlcXVlc3RfaWRSCXJlcXVlc3RJZBLcAQoDYW10GAIgASgJQskBkkHFATK4AVNwZWNpZmllcy'
    'B0aGUgbW9uZXRhcnkgYW1vdW50IGludm9sdmVkIGluIHRoZSB0cmFuc2ZlciByZXF1ZXN0LiBU'
    'aGlzIHZhbHVlIHNob3VsZCBiZSBhIHBvc2l0aXZlIG51bWJlciBmb3JtYXR0ZWQgYXMgYSBzdH'
    'JpbmcsIHJlcHJlc2VudGluZyB0aGUgdG90YWwgZnVuZHMgdG8gYmUgZGVwb3NpdGVkIG9yIHdp'
    'dGhkcmF3bi5KAjEw0gEDYW10UgNhbXQS3gEKA2ZlZRgDIAEoCULLAZJBxwEyvwFTcGVjaWZpZX'
    'MgdGhlIHRyYW5zYWN0aW9uIGZlZSBhc3NvY2lhdGVkIHdpdGggdGhlIHRyYW5zZmVyIHJlcXVl'
    'c3QuIFRoaXMgdmFsdWUgc2hvdWxkIGJlIGEgbm9uLW5lZ2F0aXZlIG51bWVyaWMgc3RyaW5nLC'
    'ByZXByZXNlbnRpbmcgdGhlIGNvc3QgY2hhcmdlZCBmb3IgcHJvY2Vzc2luZyB0aGUgZGVwb3Np'
    'dCBvciB3aXRoZHJhd2FsLkoDMS41UgNmZWUSjQYKBnN0YXR1cxgEIAEoCUL0BZJB8AUy2QVSZX'
    'ByZXNlbnRzIHRoZSBjdXJyZW50IHN0YXRlIG9mIHRoZSB0cmFuc2ZlciByZXF1ZXN0LiBWYWxp'
    'ZCBzdGF0dXMgdmFsdWVzIGNhbiBiZSByZXRyaWV2ZWQgdmlhIHRoZSAvdjEvc3lzdGVtY29kZS'
    '9saXN0IEFQSSB1c2luZyBwYXJhbWV0ZXJzOiB0eXBlID0gJ1N0YXR1cycgYW5kIHN1YlR5cGUg'
    'PSAnQmFuayBSZXF1ZXN0Jy4gVXNlIHRoZSAnY29kZScgZmllbGQgZnJvbSB0aGUgcmVzcG9uc2'
    'UuIEVhY2ggc3RhdHVzIGlzIGFzc29jaWF0ZWQgd2l0aCBhIG51bWVyaWMgJ25vdGUnIHZhbHVl'
    'LiBTdGF0dXMgdHJhbnNpdGlvbnMgYXJlIHJlc3RyaWN0ZWQgYmFzZWQgb24gdGhpcyB2YWx1ZT'
    'ogWW91IG1heSBvbmx5IHVwZGF0ZSB0byBhIHN0YXR1cyB3aXRoIHRoZSBuZXh0IHNlcXVlbnRp'
    'YWwgbm90ZSB2YWx1ZSwgb3IgdG8gYSBzdGF0dXMgd2l0aCBub3RlIHZhbHVlIDAgKGUuZy4sIC'
    'dDYW5jZWxlZCcpLiBGb3IgaW5zdGFuY2UsIGlmIHRoZSBjdXJyZW50IHN0YXR1cyBpcyAnUGVu'
    'ZGluZycgKG5vdGUgPSAxKSwgaXQgY2FuIG9ubHkgYmUgY2hhbmdlZCB0byBhIHN0YXR1cyB3aX'
    'RoIG5vdGUgPSAyIG9yIDEuIE9ubHkgc3RhdHVzICdQZW5kaW5nJywgJ0NhbmNlbGVkJywgJ1Ry'
    'YW5zZmVyIEFwcHJvdmVkJywgYW5kICdCcm9rZXIgQXBwcm92ZWQnIGFyZSBhbGxvd2VkLiBOb3'
    'RlOiBPbmx5IHJlcXVlc3RzIHdpdGggYSBzdGF0dXMgb2YgJ1BlbmRpbmcnIGNhbiBiZSBtb2Rp'
    'ZmllZC5KCSJQZW5kaW5nItIBBnN0YXR1c1IGc3RhdHVzEpoDCgZmZWRfbm8YBSABKAlCggOSQf'
    '4CMu4CRmVkZXJhbCBSZWZlcmVuY2UgTnVtYmVyIChhIG5pbmUtZGlnaXQgY29kZSkgbWVhbnMs'
    'IGZvciBhbnkgd2lyZSB0cmFuc2ZlciwgdGhlIHJlZmVyZW5jZSBudW1iZXIgcmVsYXRpbmcgdG'
    '8gc3VjaCB0cmFuc2ZlciBmb3IgcHVycG9zZXMgb2YgdGhlIGZ1bmRzIHRyYW5zZmVyIHN5c3Rl'
    'bSB1c2VkIHRvIHRyYW5zZmVyIGJhbGFuY2VzIGZvciBpbW1lZGlhdGVseSBhdmFpbGFibGUgY3'
    'JlZGl0IGFtb25nIHRoZSBtZW1iZXIgYmFua3Mgb2YgdGhlIFUuUy4gRmVkZXJhbCBSZXNlcnZl'
    'IFN5c3RlbS4gKEJhbmtzIHVzZSByb3V0aW5nIG51bWJlcnMgdG8gZGlyZWN0IHRoZSBleGNoYW'
    '5nZSBvZiBmdW5kcyB0byBhbmQgZnJvbSBvbmUgYW5vdGhlci4pSgsiOTU4Mzc0NjIxIlIFZmVk'
    'Tm8SfAoLZXh0ZXJuYWxfaWQYBiABKAlCW5JBWDJHQW4gaWRlbnRpZmllciB0aGF0IGlzIHJlbG'
    'F0ZWQgdG8gdGhlIGFjY291bnQgaG9sZGVyIG91dHNpZGUgdGhlIHN5c3RlbS5KDSJFeHRlcm5h'
    'bDEyMyJSCmV4dGVybmFsSWQ=');

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
    {'1': 'request_id', '3': 1, '4': 1, '5': 13, '8': {}, '10': 'requestId'},
  ],
};

/// Descriptor for `ReadRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readRequestDescriptor = $convert.base64Decode(
    'CgtSZWFkUmVxdWVzdBJ0CgpyZXF1ZXN0X2lkGAEgASgNQlWSQVIyQEJhbmsgcmVxdWVzdCBudW'
    '1lcmljIHVuaXF1ZSBpZGVudGlmaWVyIGdlbmVyYXRlZCBieSB0aGUgc3lzdGVtLiBKATLSAQpy'
    'ZXF1ZXN0X2lkUglyZXF1ZXN0SWQ=');

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
    {'1': 'request_id', '3': 1, '4': 1, '5': 13, '8': {}, '10': 'requestId'},
    {'1': 'is_open', '3': 2, '4': 1, '5': 8, '8': {}, '10': 'isOpen'},
    {'1': 'date_type', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'dateType'},
    {'1': 'from_date', '3': 4, '4': 1, '5': 11, '6': '.google.type.Date', '8': {}, '10': 'fromDate'},
    {'1': 'to_date', '3': 5, '4': 1, '5': 11, '6': '.google.type.Date', '8': {}, '10': 'toDate'},
    {'1': 'branch', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'branch'},
    {'1': 'rep', '3': 7, '4': 1, '5': 9, '8': {}, '10': 'rep'},
    {'1': 'master_account_no', '3': 8, '4': 1, '5': 9, '8': {}, '10': 'masterAccountNo'},
    {'1': 'correspondent', '3': 9, '4': 1, '5': 9, '8': {}, '10': 'correspondent'},
    {'1': 'account_no', '3': 10, '4': 1, '5': 9, '8': {}, '10': 'accountNo'},
    {'1': 'transfer_type', '3': 11, '4': 1, '5': 9, '8': {}, '10': 'transferType'},
    {'1': 'request_type', '3': 12, '4': 1, '5': 9, '8': {}, '10': 'requestType'},
    {'1': 'status', '3': 13, '4': 1, '5': 9, '8': {}, '10': 'status'},
    {'1': 'external_id', '3': 14, '4': 1, '5': 9, '8': {}, '10': 'externalId'},
    {'1': 'sign', '3': 15, '4': 1, '5': 9, '8': {}, '10': 'sign'},
    {'1': 'amount', '3': 16, '4': 1, '5': 9, '8': {}, '10': 'amount'},
    {'1': 'pagination', '3': 17, '4': 1, '5': 11, '6': '.utilspb.Pagination', '10': 'pagination'},
  ],
};

/// Descriptor for `ListRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRequestDescriptor = $convert.base64Decode(
    'CgtMaXN0UmVxdWVzdBKDAgoKcmVxdWVzdF9pZBgBIAEoDULjAZJB3wEy2QFCYW5rIHJlcXVlc3'
    'QgbnVtZXJpYyB1bmlxdWUgaWRlbnRpZmllciBnZW5lcmF0ZWQgYnkgdGhlIHN5c3RlbS4gV2hl'
    'biBhIG5vbi16ZXJvIFJlcXVlc3QgSUQgaXMgcHJvdmlkZWQsIGFsbCBvdGhlciBmaWx0ZXJzIH'
    'dpbGwgYmUgZGlzcmVnYXJkZWQuIFRoZSBxdWVyeSB3aWxsIHJldHVybiBvbmx5IHRoZSB0cmFu'
    'c2ZlciByZXF1ZXN0IG1hdGNoaW5nIHRoZSBzcGVjaWZpZWQgSUQuSgEyUglyZXF1ZXN0SWQSjQ'
    'IKB2lzX29wZW4YAiABKAhC8wGSQe8BMuwBSWYgc2V0IHRvIHRydWUsIGZpbHRlcnMgdHJhbnNm'
    'ZXIgcmVxdWVzdHMgd2hvc2Ugc3RhdHVzIGlzIG5vdCBvbmUgb2YgdGhlIGZvbGxvd2luZzogJ1'
    'NlbnQnLCAnRGVuaWVkJywgJ0NhbmNlbGVkJywgb3IgJ0JhbmsgUmVqZWN0ZWQnLiBUaGlzIGlu'
    'Y2x1ZGVzIHJlcXVlc3RzIHRoYXQgYXJlIHN0aWxsIG9wZW4gYW5kIG1heSBiZSBlbGlnaWJsZS'
    'Bmb3IgZnVydGhlciBwcm9jZXNzaW5nIG9yIG1vZGlmaWNhdGlvbi5SBmlzT3BlbhKuAgoJZGF0'
    'ZV90eXBlGAMgASgJQpACkkGMAjL6AUZpbHRlciBiYXNlZCBvbiB0eXBlIG9mIGRhdGVzLiBUaG'
    'UgZGVmYXVsdCB2YWx1ZSBpcyBTeXN0ZW0gRGF0ZSBDaGVjayAvdjEvc3lzdGVtY29kZS9saXN0'
    'IEFQSSBmb3IgdmFsaWQgdmFsdWVzICh0eXBlID0gJ0RhdGUgVHlwZSBBQ0gnKSwgdXNlIHRoZS'
    'AnY29kZScgdmFsdWUuIFRoaXMgZmlsdGVyIHdpbGwgYmUgaWdub3JlZCBpZiAnSXMgT3Blbicg'
    'ZmlsdGVyIGlzIHNldCB0byB0cnVlIG9yICdSZXF1ZXN0IElkJyBpcyBub3QgemVyby5KDSJTeX'
    'N0ZW0gRGF0ZSJSCGRhdGVUeXBlEr4BCglmcm9tX2RhdGUYBCABKAsyES5nb29nbGUudHlwZS5E'
    'YXRlQo0BkkGJATJ7U3RhcnQgZGF0ZSBvZiB0aGUgZmlsdGVyIHJhbmdlLiBUaGlzIGZpbHRlci'
    'B3aWxsIGJlIGlnbm9yZWQgaWYgJ0lzIE9wZW4nIGZpbHRlciBpcyBzZXQgdG8gdHJ1ZSBvciAn'
    'UmVxdWVzdCBJZCcgaXMgbm90IHplcm8u0gEJZnJvbV9kYXRlUghmcm9tRGF0ZRK2AQoHdG9fZG'
    'F0ZRgFIAEoCzIRLmdvb2dsZS50eXBlLkRhdGVCiQGSQYUBMnlFbmQgZGF0ZSBvZiB0aGUgZmls'
    'dGVyIHJhbmdlLiBUaGlzIGZpbHRlciB3aWxsIGJlIGlnbm9yZWQgaWYgJ0lzIE9wZW4nIGZpbH'
    'RlciBpcyBzZXQgdG8gdHJ1ZSBvciAnUmVxdWVzdCBJZCcgaXMgbm90IHplcm8u0gEHdG9fZGF0'
    'ZVIGdG9EYXRlEtABCgZicmFuY2gYBiABKAlCtwGSQbMBMqwBQSBicmFuY2ggb2ZmaWNlIGlzIG'
    'EgbG9jYXRpb24sIG90aGVyIHRoYW4gdGhlIG1haW4gb2ZmaWNlLCB3aGVyZSBhIGJ1c2luZXNz'
    'IGlzIGNvbmR1Y3RlZC4gTW9zdCBicmFuY2ggb2ZmaWNlcyBjb25zaXN0IG9mIHNtYWxsZXIgZG'
    'l2aXNpb25zIG9mIGRpZmZlcmVudCBhc3BlY3RzIG9mIHRoZSBmaXJtLkoCIiJSBmJyYW5jaBLU'
    'AgoDcmVwGAcgASgJQsECkkG9AjK2AkEgcmVnaXN0ZXJlZCByZXByZXNlbnRhdGl2ZSAoUlIpIG'
    'lzIGEgcGVyc29uIHdobyB3b3JrcyBmb3IgYSBjbGllbnQtZmFjaW5nIGZpbmFuY2lhbCBmaXJt'
    'IHN1Y2ggYXMgYSBicm9rZXJhZ2UgY29tcGFueSBhbmQgc2VydmVzIGFzIGEgcmVwcmVzZW50YX'
    'RpdmUgZm9yIGNsaWVudHMgd2hvIGFyZSB0cmFkaW5nIGludmVzdG1lbnQgcHJvZHVjdHMgYW5k'
    'IHNlY3VyaXRpZXMuIFJlZ2lzdGVyZWQgcmVwcmVzZW50YXRpdmVzIG1heSBiZSBlbXBsb3llZC'
    'BhcyBicm9rZXJzLCBmaW5hbmNpYWwgYWR2aXNvcnMsIG9yIHBvcnRmb2xpbyBtYW5hZ2Vycy5K'
    'AiIiUgNyZXASpAEKEW1hc3Rlcl9hY2NvdW50X25vGAggASgJQniSQXUyYk1hc3RlciBvciByb2'
    'xsLXVwIGFjY291bnQuIEFscGhhbnVtZXJpYyBtYXN0ZXIgYWNjb3VudCBudW1iZXIgd2hpY2gg'
    'Y2FuIGJlIHVzZWQgYWNyb3NzIHRoZSBzeXN0ZW0uSg8iVEVTVEFDQ09VTlROTyJSD21hc3Rlck'
    'FjY291bnRObxLRAQoNY29ycmVzcG9uZGVudBgJIAEoCUKqAZJBpgEylgFUaGUgbmFtZSBnaXZl'
    'biB0byBhIGJhbmssIGJyb2tlciwgZGVhbGVyLCBvciBmaW5hbmNpYWwgaW5zdGl0dXRpb24gdG'
    'hhdCBhY3RzIG9uIGJlaGFsZiBvZiBhbm90aGVyIGZpbmFuY2lhbCBpbnN0aXR1dGlvbi4gRm91'
    'ciBBbHBoYSBudW1lcmljIGNoYXJhY3Rlci5KBiJTQVNTIngEgAEEUg1jb3JyZXNwb25kZW50Em'
    'AKCmFjY291bnRfbm8YCiABKAlCQZJBPjIrVGhlIGFscGhhbnVtZXJpYyBpZGVudGlmaWVyIG9m'
    'IHRoZSBhY2NvdW50LkoPIlRFU1RBQ0NPVU5UTk8iUglhY2NvdW50Tm8S1AEKDXRyYW5zZmVyX3'
    'R5cGUYCyABKAlCrgGSQaoBMpwBSW5kaWNhdGVzIHRoZSBkaXJlY3Rpb24gb2YgdGhlIGZ1bmQg'
    'bW92ZW1lbnQuIENoZWNrIC92MS9zeXN0ZW1jb2RlL2xpc3QgQVBJIGZvciB2YWxpZCB2YWx1ZX'
    'MgKHR5cGUgPSAnVHlwZScsIHN1YlR5cGUgPSAnVHJhbnNmZXIgVHlwZScpIGZvciBwb3NzaWJs'
    'ZSB2YWx1ZXMuSgkiRGVwb3NpdCJSDHRyYW5zZmVyVHlwZRLMAQoMcmVxdWVzdF90eXBlGAwgAS'
    'gJQqgBkkGkATKaAVNwZWNpZmllcyB0aGUgdHlwZSBvZiBmdW5kIHRyYW5zZmVyIHJlcXVlc3Qu'
    'IENoZWNrIC92MS9zeXN0ZW1jb2RlL2xpc3QgQVBJIGZvciB2YWxpZCB2YWx1ZXMgKHR5cGUgPS'
    'AnVHlwZScsIHN1YlR5cGUgPSAnUmVxdWVzdCBUeXBlJykgZm9yIHBvc3NpYmxlIHZhbHVlcy5K'
    'BSJBQ0giUgtyZXF1ZXN0VHlwZRLQAQoGc3RhdHVzGA0gASgJQrcBkkGzATKlAVJlcHJlc2VudH'
    'MgdGhlIGN1cnJlbnQgc3RhdGUgb2YgdGhlIHRyYW5zZmVyIHJlcXVlc3QuIENoZWNrIC92MS9z'
    'eXN0ZW1jb2RlL2xpc3QgQVBJIGZvciB2YWxpZCB2YWx1ZXMgKHR5cGUgPSAnU3RhdHVzJywgc3'
    'ViVHlwZSA9ICdCYW5rIFJlcXVlc3QnKSBmb3IgcG9zc2libGUgdmFsdWVzLkoJIlBlbmRpbmci'
    'UgZzdGF0dXMSfAoLZXh0ZXJuYWxfaWQYDiABKAlCW5JBWDJHQW4gaWRlbnRpZmllciB0aGF0IG'
    'lzIHJlbGF0ZWQgdG8gdGhlIGFjY291bnQgaG9sZGVyIG91dHNpZGUgdGhlIHN5c3RlbS5KDSJF'
    'eHRlcm5hbDEyMyJSCmV4dGVybmFsSWQSrAIKBHNpZ24YDyABKAlClwKSQZMCMocCRGVmaW5lcy'
    'B0aGUgY29tcGFyaXNvbiBvcGVyYXRvciB1c2VkIHRvIGZpbHRlciB0cmFuc2ZlciBhbW91bnRz'
    'LiBUaGlzIGZpZWxkIGRldGVybWluZXMgaG93IHRoZSBzcGVjaWZpZWQgYW1vdW50IHdpbGwgYm'
    'UgbWF0Y2hlZCBhZ2FpbnN0IHRyYW5zZmVyIHJlY29yZHMuIENoZWNrIC92MS9zeXN0ZW1jb2Rl'
    'L2xpc3QgQVBJIGZvciB2YWxpZCB2YWx1ZXMgKHR5cGUgPSAnU2lnbicsIHN1YlR5cGUgPSAnUm'
    'VxdWVzdCBUeXBlJykgZm9yIHBvc3NpYmxlIHZhbHVlcy5KByJFcXVhbCJSBHNpZ24SlwEKBmFt'
    'b3VudBgQIAEoCUJ/kkF8MnZTcGVjaWZpZXMgdGhlIG1vbmV0YXJ5IGFtb3VudCBpbnZvbHZlZC'
    'BpbiB0aGUgdHJhbnNmZXIgcmVxdWVzdC4gVGhlIHZhbHVlIHdpbGwgYmUgaWdub3JlZCBpZiBh'
    'biBpbnZhbGlkICdzaWduJyBpcyBzZXQuSgIxMFIGYW1vdW50EjMKCnBhZ2luYXRpb24YESABKA'
    'syEy51dGlsc3BiLlBhZ2luYXRpb25SCnBhZ2luYXRpb24=');

@$core.Deprecated('Use listSummaryDescriptor instead')
const ListSummary$json = {
  '1': 'ListSummary',
  '2': [
    {'1': 'total_rows', '3': 1, '4': 1, '5': 13, '8': {}, '10': 'totalRows'},
    {'1': 'amt', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'amt'},
    {'1': 'fee', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'fee'},
  ],
};

/// Descriptor for `ListSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSummaryDescriptor = $convert.base64Decode(
    'CgtMaXN0U3VtbWFyeRJXCgp0b3RhbF9yb3dzGAEgASgNQjiSQTUyMFRvdGFsIG51bWJlciBvZi'
    'ByZWNvcmRzIHJldHVybmVkIGluIHRoZSBzdW1tYXJ5LkoBMVIJdG90YWxSb3dzEpQBCgNhbXQY'
    'AiABKAlCgQGSQX4yeEFnZ3JlZ2F0ZSBhbW91bnQgYWNyb3NzIGFsbCByZWNvcmRzLiBUaGlzIH'
    'ZhbHVlIHJlcHJlc2VudHMgdGhlIHRvdGFsIG1vbmV0YXJ5IHZhbHVlIGludm9sdmVkIGluIHRo'
    'ZSBsaXN0ZWQgdHJhbnNhY3Rpb25zLkoCMTBSA2FtdBKgAQoDZmVlGAMgASgJQo0BkkGJATKBAV'
    'RvdGFsIGZlZXMgYXNzb2NpYXRlZCB3aXRoIHRoZSBsaXN0ZWQgdHJhbnNhY3Rpb25zLiBUaGlz'
    'IG1heSBpbmNsdWRlIHNlcnZpY2UgY2hhcmdlcywgcHJvY2Vzc2luZyBmZWVzLCBvciBvdGhlci'
    'BhcHBsaWNhYmxlIGNvc3RzLkoDMS41UgNmZWU=');

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
    {'1': 'total_amt', '3': 2, '4': 1, '5': 9, '10': 'totalAmt'},
    {'1': 'withdrawable_amt', '3': 3, '4': 1, '5': 9, '10': 'withdrawableAmt'},
    {'1': 'charges', '3': 4, '4': 1, '5': 9, '10': 'charges'},
    {'1': 'pending_call_log', '3': 5, '4': 1, '5': 9, '10': 'pendingCallLog'},
  ],
};

/// Descriptor for `ReadMaximumWithdrawableResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readMaximumWithdrawableResponseDescriptor = $convert.base64Decode(
    'Ch9SZWFkTWF4aW11bVdpdGhkcmF3YWJsZVJlc3BvbnNlEh0KCmFjY291bnRfaWQYASABKA1SCW'
    'FjY291bnRJZBIbCgl0b3RhbF9hbXQYAiABKAlSCHRvdGFsQW10EikKEHdpdGhkcmF3YWJsZV9h'
    'bXQYAyABKAlSD3dpdGhkcmF3YWJsZUFtdBIYCgdjaGFyZ2VzGAQgASgJUgdjaGFyZ2VzEigKEH'
    'BlbmRpbmdfY2FsbF9sb2cYBSABKAlSDnBlbmRpbmdDYWxsTG9n');

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

