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
    'b2tlchK7AQoMcmVxdWVzdF90eXBlGAsgASgJQpcBkkGTATKJAVNwZWNpZmllcyB0aGUgdHlwZS'
    'BvZiBmdW5kIHRyYW5zZmVyIHJlcXVlc3QuIENoZWNrIC92MS9zeXN0ZW1jb2RlL2xpc3QgQVBJ'
    'ICh0eXBlID0gJ1R5cGUnLCBzdWJUeXBlID0gJ1JlcXVlc3QgVHlwZScpIGZvciBwb3NzaWJsZS'
    'B2YWx1ZXMuSgUiQUNIIlILcmVxdWVzdFR5cGUSwwEKDXRyYW5zZmVyX3R5cGUYDCABKAlCnQGS'
    'QZkBMosBSW5kaWNhdGVzIHRoZSBkaXJlY3Rpb24gb2YgdGhlIGZ1bmQgbW92ZW1lbnQuIENoZW'
    'NrIC92MS9zeXN0ZW1jb2RlL2xpc3QgQVBJICh0eXBlID0gJ1R5cGUnLCBzdWJUeXBlID0gJ1Ry'
    'YW5zZmVyIFR5cGUnKSBmb3IgcG9zc2libGUgdmFsdWVzLkoJIkRlcG9zaXQiUgx0cmFuc2Zlcl'
    'R5cGUSWgoDYW10GA0gASgJQkiSQUUyP1NwZWNpZmllcyB0aGUgbW9uZXRhcnkgYW1vdW50IGlu'
    'dm9sdmVkIGluIHRoZSB0cmFuc2ZlciByZXF1ZXN0LkoCMTBSA2FtdBJgCgNmZWUYDiABKAlCTp'
    'JBSzJDU3BlY2lmaWVzIHRoZSB0cmFuc2FjdGlvbiBmZWUgYXNzb2NpYXRlZCB3aXRoIHRoZSB0'
    'cmFuc2ZlciByZXF1ZXN0LkABSgIxMFIDZmVlEpoDCgZmZWRfbm8YDyABKAlCggOSQf4CMu4CRm'
    'VkZXJhbCBSZWZlcmVuY2UgTnVtYmVyIChhIG5pbmUtZGlnaXQgY29kZSkgbWVhbnMsIGZvciBh'
    'bnkgd2lyZSB0cmFuc2ZlciwgdGhlIHJlZmVyZW5jZSBudW1iZXIgcmVsYXRpbmcgdG8gc3VjaC'
    'B0cmFuc2ZlciBmb3IgcHVycG9zZXMgb2YgdGhlIGZ1bmRzIHRyYW5zZmVyIHN5c3RlbSB1c2Vk'
    'IHRvIHRyYW5zZmVyIGJhbGFuY2VzIGZvciBpbW1lZGlhdGVseSBhdmFpbGFibGUgY3JlZGl0IG'
    'Ftb25nIHRoZSBtZW1iZXIgYmFua3Mgb2YgdGhlIFUuUy4gRmVkZXJhbCBSZXNlcnZlIFN5c3Rl'
    'bS4gKEJhbmtzIHVzZSByb3V0aW5nIG51bWJlcnMgdG8gZGlyZWN0IHRoZSBleGNoYW5nZSBvZi'
    'BmdW5kcyB0byBhbmQgZnJvbSBvbmUgYW5vdGhlci4pSgsiOTU4Mzc0NjIxIlIFZmVkTm8SfAoL'
    'ZXh0ZXJuYWxfaWQYECABKAlCW5JBWDJHQW4gaWRlbnRpZmllciB0aGF0IGlzIHJlbGF0ZWQgdG'
    '8gdGhlIGFjY291bnQgaG9sZGVyIG91dHNpZGUgdGhlIHN5c3RlbS5KDSJFeHRlcm5hbDEyMyJS'
    'CmV4dGVybmFsSWQSUgoHYmFua19pZBgRIAEoDUI5kkE2MjFBIHVuaXF1ZSBudW1lcmljIGlkZW'
    '50aWZpZXIgZm9yIHRoZSBiYW5rIGFjY291bnQuSgExUgZiYW5rSWQShQEKCWJhbmtfbmFtZRgS'
    'IAEoCUJokkFlMlRUaGUgcmVnaXN0ZXJlZCBhbmQgbGVnYWwgbmFtZSBvZiB0aGUgZmluYW5jaW'
    'FsIGluc3RpdHV0aW9uIG9yIGJhbmsgYmFzZWQgb24gQmFuayBJRC5KDSJXZWxscyBGYXJnbyJS'
    'CGJhbmtOYW1lEscBCg9iYW5rX2FjY291bnRfbm8YEyABKAlCngGSQZoBMoMBSXQgaXMgdXN1YW'
    'xseSBiZXR3ZWVuIGVpZ2h0IHRvIDEyIGRpZ2l0cyBpbiBsZW5ndGggd2hpY2ggaXMgdGhlIHBy'
    'aW1hcnkgaWRlbnRpZmllciBvZiBvd25lcnNoaXAgb3IgYSBiYW5rIGFjY291bnQgYmFzZWQgb2'
    '4gQmFuayBJRC5KEiIxMTExMjIyMjMzMzMxMTExIlINYmFua0FjY291bnRObxJuCg9iYW5rX3Jv'
    'dXRpbmdfbm8YFCABKAlCRpJBQzItQUNIL1dpcmUgUm91dGluZyBOdW1iZXIgYmFzZWQgb24gdG'
    'hlIEJhbmsgSUQuShIiMTExMTIyMjIzMzMzMTExMSJSDWJhbmtSb3V0aW5nTm8SeAoQaXNfaW50'
    'ZXJuYXRpb25hbBgVIAEoCEJNkkFKMkhBbiBpbmRpY2F0b3IgaWYgdGhlIGJhbmsgaXMgaW50ZX'
    'JuYXRpb25hbCBvciBsb2NhbCBiYXNlZCBvbiB0aGUgQmFuayBJRC5SD2lzSW50ZXJuYXRpb25h'
    'bBKiAQoJYmFua19ub3RlGBYgASgJQoQBkkGAATJkQW55IGNvbW1lbnRzLCBlcnJvciBtZXNzYW'
    'dlIG9yIG5vdGVzIGNvbWluZyBmcm9tIHRoZSBiYW5rIHBlcnRhaW5pbmcgdG8gdGhlIEFDSCBv'
    'ciBXaXJlIHRyYW5zYWN0aW9uLkoYIkludmFsaWQgQWNjb3VudCBOdW1iZXIiUghiYW5rTm90ZR'
    'LyAQoNaW50ZXJuYWxfbm90ZRgXIAEoCULMAZJByAEywQFDb250YWlucyBpbnRlcm5hbCByZW1h'
    'cmtzIG9yIGFubm90YXRpb25zIHJlbGF0ZWQgdG8gdGhlIHJlY29yZC4gVGhpcyBmaWVsZCBpcy'
    'BpbnRlbmRlZCBmb3IgYmFjay1vZmZpY2UgdXNlIGFuZCBtYXkgaW5jbHVkZSBvcGVyYXRpb25h'
    'bCBjb21tZW50cywgcHJvY2Vzc2luZyBpbnN0cnVjdGlvbnMsIG9yIGF1ZGl0LXJlbGF0ZWQgbm'
    '90ZXMuSgIiIlIMaW50ZXJuYWxOb3RlElQKBnN0YXR1cxgYIAEoCUI8kkE5MixJbmRpY2F0ZXMg'
    'dGhlIHN0YXRlIG9mIHRoZSB0cmFuc2ZlciByZXF1ZXN0LkoJIlBlbmRpbmciUgZzdGF0dXMSUg'
    'oKY3JlYXRlZF9ieRgZIAEoCUIzkkEwMiBUaGUgdXNlciB3aG8gY3JlYXRlZCB0aGUgcmVjb3Jk'
    'LkABSgoiSm9obiBEb2UiUgljcmVhdGVkQnkSbgoKY3JlYXRlZF9hdBgaIAEoCzIaLmdvb2dsZS'
    '5wcm90b2J1Zi5UaW1lc3RhbXBCM5JBMDIsU3lzdGVtIGRhdGUgdGltZSB3aGVuIHRoZSByZWNv'
    'cmQgd2FzIGNyZWF0ZWRAAVIJY3JlYXRlZEF0EnEKC21vZGlmaWVkX2F0GBsgASgLMhouZ29vZ2'
    'xlLnByb3RvYnVmLlRpbWVzdGFtcEI0kkExMi1TeXN0ZW0gZGF0ZSB0aW1lIHdoZW4gdGhlIHJl'
    'Y29yZCB3YXMgbW9kaWZpZWRAAVIKbW9kaWZpZWRBdBJgCgttb2RpZmllZF9ieRgcIAEoCUI/kk'
    'E8MixUaGUgdXNlciB3aG8gY29tbWl0ZWQgY2hhbmdlcyB0byB0aGUgcmVjb3JkLkABSgoiSm9o'
    'biBEb2UiUgptb2RpZmllZEJ5Et8BCgl3YWl2ZV9mZWUYHSABKAhCwQGSQb0BMroBSW5kaWNhdG'
    'VzIHdoZXRoZXIgYXBwbGljYWJsZSBmZWVzIHNob3VsZCBiZSB3YWl2ZWQgZm9yIHRoZSB0cmFu'
    'c2FjdGlvbi4gV2hlbiBzZXQgdG8gdHJ1ZSwgdGhlIHN5c3RlbSB3aWxsIGJ5cGFzcyBzdGFuZG'
    'FyZCBmZWUgY2FsY3VsYXRpb25zIGFuZCBleGNsdWRlIGNoYXJnZXMgdGhhdCB3b3VsZCBvdGhl'
    'cndpc2UgYXBwbHkuUgh3YWl2ZUZlZRLuAQoJZXJyb3JfbXNnGB4gASgJQtABkkHMATJ7UmVxdW'
    'VzdCB2YWxpZGF0aW9uIGVycm9yIG1lc3NhZ2UuIFRoaXMgZmllbGQgaXMgdXNlZCB0byBzdG9y'
    'ZSB0aGUgZXJyb3IgbWVzc2FnZSB3aGVuIHRoZSB0cmFuc2ZlciByZXF1ZXN0IHZhbGlkYXRpb2'
    '4gZmFpbHMuQAFKSyJFcnJvciBDb2RlOiAxNSAtIENhbm5vdCB1cGRhdGUgU3RhdHVzIGZyb20g'
    'VHJhbnNmZXIgQXBwcm92ZWQgdG8gQ2FuY2VsZWQ7IlIIZXJyb3JNc2c=');

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
    {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.bankpb.Request', '10': 'request'},
  ],
};

/// Descriptor for `CreateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createResponseDescriptor = $convert.base64Decode(
    'Cg5DcmVhdGVSZXNwb25zZRIpCgdyZXF1ZXN0GAEgASgLMg8uYmFua3BiLlJlcXVlc3RSB3JlcX'
    'Vlc3Q=');

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
    {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.bankpb.Request', '10': 'request'},
  ],
};

/// Descriptor for `UpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateResponseDescriptor = $convert.base64Decode(
    'Cg5VcGRhdGVSZXNwb25zZRIpCgdyZXF1ZXN0GAEgASgLMg8uYmFua3BiLlJlcXVlc3RSB3JlcX'
    'Vlc3Q=');

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
    {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.bankpb.Request', '10': 'request'},
  ],
};

/// Descriptor for `ReadResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readResponseDescriptor = $convert.base64Decode(
    'CgxSZWFkUmVzcG9uc2USKQoHcmVxdWVzdBgBIAEoCzIPLmJhbmtwYi5SZXF1ZXN0UgdyZXF1ZX'
    'N0');

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
    'c2ZlciByZXF1ZXN0IG1hdGNoaW5nIHRoZSBzcGVjaWZpZWQgSUQuSgEyUglyZXF1ZXN0SWQSxA'
    'IKB2lzX29wZW4YAiABKAhCqgKSQaYCMqMCSWYgc2V0IHRvIHRydWUsIGZpbHRlcnMgdHJhbnNm'
    'ZXIgcmVxdWVzdHMgd2hvc2Ugc3RhdHVzIGlzIG5vdCBvbmUgb2YgdGhlIGZvbGxvd2luZzogJ1'
    'NlbnQnLCAnRGVuaWVkJywgJ0NhbmNlbGVkJywgb3IgJ0JhbmsgUmVqZWN0ZWQnLiBUaGlzIGlu'
    'Y2x1ZGVzIHJlcXVlc3RzIHRoYXQgYXJlIHN0aWxsIG9wZW4gYW5kIG1heSBiZSBlbGlnaWJsZS'
    'Bmb3IgZnVydGhlciBwcm9jZXNzaW5nIG9yIG1vZGlmaWNhdGlvbi4gSUYgc2V0IHRvIHRydWUs'
    'IGFsbCBvdGhlciBmaWx0ZXJzIHdpbGwgYmUgZGlzcmVnYXJkZWQuUgZpc09wZW4SrgIKCWRhdG'
    'VfdHlwZRgDIAEoCUKQApJBjAIy+gFGaWx0ZXIgYmFzZWQgb24gdHlwZSBvZiBkYXRlcy4gVGhl'
    'IGRlZmF1bHQgdmFsdWUgaXMgU3lzdGVtIERhdGUgQ2hlY2sgL3YxL3N5c3RlbWNvZGUvbGlzdC'
    'BBUEkgZm9yIHZhbGlkIHZhbHVlcyAodHlwZSA9ICdEYXRlIFR5cGUgQUNIJyksIHVzZSB0aGUg'
    'J2NvZGUnIHZhbHVlLiBUaGlzIGZpbHRlciB3aWxsIGJlIGlnbm9yZWQgaWYgJ0lzIE9wZW4nIG'
    'ZpbHRlciBpcyBzZXQgdG8gdHJ1ZSBvciAnUmVxdWVzdCBJZCcgaXMgbm90IHplcm8uSg0iU3lz'
    'dGVtIERhdGUiUghkYXRlVHlwZRK+AQoJZnJvbV9kYXRlGAQgASgLMhEuZ29vZ2xlLnR5cGUuRG'
    'F0ZUKNAZJBiQEye1N0YXJ0IGRhdGUgb2YgdGhlIGZpbHRlciByYW5nZS4gVGhpcyBmaWx0ZXIg'
    'd2lsbCBiZSBpZ25vcmVkIGlmICdJcyBPcGVuJyBmaWx0ZXIgaXMgc2V0IHRvIHRydWUgb3IgJ1'
    'JlcXVlc3QgSWQnIGlzIG5vdCB6ZXJvLtIBCWZyb21fZGF0ZVIIZnJvbURhdGUStgEKB3RvX2Rh'
    'dGUYBSABKAsyES5nb29nbGUudHlwZS5EYXRlQokBkkGFATJ5RW5kIGRhdGUgb2YgdGhlIGZpbH'
    'RlciByYW5nZS4gVGhpcyBmaWx0ZXIgd2lsbCBiZSBpZ25vcmVkIGlmICdJcyBPcGVuJyBmaWx0'
    'ZXIgaXMgc2V0IHRvIHRydWUgb3IgJ1JlcXVlc3QgSWQnIGlzIG5vdCB6ZXJvLtIBB3RvX2RhdG'
    'VSBnRvRGF0ZRLQAQoGYnJhbmNoGAYgASgJQrcBkkGzATKsAUEgYnJhbmNoIG9mZmljZSBpcyBh'
    'IGxvY2F0aW9uLCBvdGhlciB0aGFuIHRoZSBtYWluIG9mZmljZSwgd2hlcmUgYSBidXNpbmVzcy'
    'BpcyBjb25kdWN0ZWQuIE1vc3QgYnJhbmNoIG9mZmljZXMgY29uc2lzdCBvZiBzbWFsbGVyIGRp'
    'dmlzaW9ucyBvZiBkaWZmZXJlbnQgYXNwZWN0cyBvZiB0aGUgZmlybS5KAiIiUgZicmFuY2gS1A'
    'IKA3JlcBgHIAEoCULBApJBvQIytgJBIHJlZ2lzdGVyZWQgcmVwcmVzZW50YXRpdmUgKFJSKSBp'
    'cyBhIHBlcnNvbiB3aG8gd29ya3MgZm9yIGEgY2xpZW50LWZhY2luZyBmaW5hbmNpYWwgZmlybS'
    'BzdWNoIGFzIGEgYnJva2VyYWdlIGNvbXBhbnkgYW5kIHNlcnZlcyBhcyBhIHJlcHJlc2VudGF0'
    'aXZlIGZvciBjbGllbnRzIHdobyBhcmUgdHJhZGluZyBpbnZlc3RtZW50IHByb2R1Y3RzIGFuZC'
    'BzZWN1cml0aWVzLiBSZWdpc3RlcmVkIHJlcHJlc2VudGF0aXZlcyBtYXkgYmUgZW1wbG95ZWQg'
    'YXMgYnJva2VycywgZmluYW5jaWFsIGFkdmlzb3JzLCBvciBwb3J0Zm9saW8gbWFuYWdlcnMuSg'
    'IiIlIDcmVwEqQBChFtYXN0ZXJfYWNjb3VudF9ubxgIIAEoCUJ4kkF1MmJNYXN0ZXIgb3Igcm9s'
    'bC11cCBhY2NvdW50LiBBbHBoYW51bWVyaWMgbWFzdGVyIGFjY291bnQgbnVtYmVyIHdoaWNoIG'
    'NhbiBiZSB1c2VkIGFjcm9zcyB0aGUgc3lzdGVtLkoPIlRFU1RBQ0NPVU5UTk8iUg9tYXN0ZXJB'
    'Y2NvdW50Tm8S0QEKDWNvcnJlc3BvbmRlbnQYCSABKAlCqgGSQaYBMpYBVGhlIG5hbWUgZ2l2ZW'
    '4gdG8gYSBiYW5rLCBicm9rZXIsIGRlYWxlciwgb3IgZmluYW5jaWFsIGluc3RpdHV0aW9uIHRo'
    'YXQgYWN0cyBvbiBiZWhhbGYgb2YgYW5vdGhlciBmaW5hbmNpYWwgaW5zdGl0dXRpb24uIEZvdX'
    'IgQWxwaGEgbnVtZXJpYyBjaGFyYWN0ZXIuSgYiU0FTUyJ4BIABBFINY29ycmVzcG9uZGVudBJg'
    'CgphY2NvdW50X25vGAogASgJQkGSQT4yK1RoZSBhbHBoYW51bWVyaWMgaWRlbnRpZmllciBvZi'
    'B0aGUgYWNjb3VudC5KDyJURVNUQUNDT1VOVE5PIlIJYWNjb3VudE5vEsMBCg10cmFuc2Zlcl90'
    'eXBlGAsgASgJQp0BkkGZATKLAUluZGljYXRlcyB0aGUgZGlyZWN0aW9uIG9mIHRoZSBmdW5kIG'
    '1vdmVtZW50LiBDaGVjayAvdjEvc3lzdGVtY29kZS9saXN0IEFQSSAodHlwZSA9ICdUeXBlJywg'
    'c3ViVHlwZSA9ICdUcmFuc2ZlciBUeXBlJykgZm9yIHBvc3NpYmxlIHZhbHVlcy5KCSJEZXBvc2'
    'l0IlIMdHJhbnNmZXJUeXBlErsBCgxyZXF1ZXN0X3R5cGUYDCABKAlClwGSQZMBMokBU3BlY2lm'
    'aWVzIHRoZSB0eXBlIG9mIGZ1bmQgdHJhbnNmZXIgcmVxdWVzdC4gQ2hlY2sgL3YxL3N5c3RlbW'
    'NvZGUvbGlzdCBBUEkgKHR5cGUgPSAnVHlwZScsIHN1YlR5cGUgPSAnUmVxdWVzdCBUeXBlJykg'
    'Zm9yIHBvc3NpYmxlIHZhbHVlcy5KBSJBQ0giUgtyZXF1ZXN0VHlwZRK/AQoGc3RhdHVzGA0gAS'
    'gJQqYBkkGiATKUAVJlcHJlc2VudHMgdGhlIGN1cnJlbnQgc3RhdGUgb2YgdGhlIHRyYW5zZmVy'
    'IHJlcXVlc3QuIENoZWNrIC92MS9zeXN0ZW1jb2RlL2xpc3QgQVBJICh0eXBlID0gJ1N0YXR1cy'
    'csIHN1YlR5cGUgPSAnQmFuayBSZXF1ZXN0JykgZm9yIHBvc3NpYmxlIHZhbHVlcy5KCSJQZW5k'
    'aW5nIlIGc3RhdHVzEsQBCgtleHRlcm5hbF9pZBgOIAEoCUKiAZJBngEyjAFBbiBpZGVudGlmaW'
    'VyIHRoYXQgaXMgcmVsYXRlZCB0byB0aGUgYWNjb3VudCBob2xkZXIgb3V0c2lkZSB0aGUgc3lz'
    'dGVtLiBXaGVuIGV4dGVybmFsIElEIGlzIHByb3ZpZGVkLCBhbGwgb3RoZXIgZmlsdGVycyB3aW'
    'xsIGJlIGRpc3JlZ2FyZGVkLkoNIkV4dGVybmFsMTIzIlIKZXh0ZXJuYWxJZBKbAgoEc2lnbhgP'
    'IAEoCUKGApJBggIy9gFEZWZpbmVzIHRoZSBjb21wYXJpc29uIG9wZXJhdG9yIHVzZWQgdG8gZm'
    'lsdGVyIHRyYW5zZmVyIGFtb3VudHMuIFRoaXMgZmllbGQgZGV0ZXJtaW5lcyBob3cgdGhlIHNw'
    'ZWNpZmllZCBhbW91bnQgd2lsbCBiZSBtYXRjaGVkIGFnYWluc3QgdHJhbnNmZXIgcmVjb3Jkcy'
    '4gQ2hlY2sgL3YxL3N5c3RlbWNvZGUvbGlzdCBBUEkgKHR5cGUgPSAnU2lnbicsIHN1YlR5cGUg'
    'PSAnUmVxdWVzdCBUeXBlJykgZm9yIHBvc3NpYmxlIHZhbHVlcy5KByJFcXVhbCJSBHNpZ24Slw'
    'EKBmFtb3VudBgQIAEoCUJ/kkF8MnZTcGVjaWZpZXMgdGhlIG1vbmV0YXJ5IGFtb3VudCBpbnZv'
    'bHZlZCBpbiB0aGUgdHJhbnNmZXIgcmVxdWVzdC4gVGhlIHZhbHVlIHdpbGwgYmUgaWdub3JlZC'
    'BpZiBhbiBpbnZhbGlkICdzaWduJyBpcyBzZXQuSgIxMFIGYW1vdW50EjMKCnBhZ2luYXRpb24Y'
    'ESABKAsyEy51dGlsc3BiLlBhZ2luYXRpb25SCnBhZ2luYXRpb24=');

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
    {'1': 'requests', '3': 1, '4': 3, '5': 11, '6': '.bankpb.Request', '10': 'requests'},
    {'1': 'summary', '3': 2, '4': 1, '5': 11, '6': '.bankpb.ListSummary', '10': 'summary'},
  ],
};

/// Descriptor for `ListResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listResponseDescriptor = $convert.base64Decode(
    'CgxMaXN0UmVzcG9uc2USKwoIcmVxdWVzdHMYASADKAsyDy5iYW5rcGIuUmVxdWVzdFIIcmVxdW'
    'VzdHMSLQoHc3VtbWFyeRgCIAEoCzITLmJhbmtwYi5MaXN0U3VtbWFyeVIHc3VtbWFyeQ==');

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
    {'1': 'request', '3': 1, '4': 3, '5': 11, '6': '.bankpb.Request', '10': 'request'},
  ],
};

/// Descriptor for `ListRequestAuditResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listRequestAuditResponseDescriptor = $convert.base64Decode(
    'ChhMaXN0UmVxdWVzdEF1ZGl0UmVzcG9uc2USKQoHcmVxdWVzdBgBIAMoCzIPLmJhbmtwYi5SZX'
    'F1ZXN0UgdyZXF1ZXN0');

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

