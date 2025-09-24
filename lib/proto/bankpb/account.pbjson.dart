//
//  Generated code. Do not modify.
//  source: proto/bankpb/account.proto
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

@$core.Deprecated('Use accountDescriptor instead')
const Account$json = {
  '1': 'Account',
  '2': [
    {'1': 'bank_id', '3': 1, '4': 1, '5': 13, '8': {}, '10': 'bankId'},
    {'1': 'account_id', '3': 2, '4': 1, '5': 13, '8': {}, '10': 'accountId'},
    {'1': 'correspondent', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'correspondent'},
    {'1': 'master_account_no', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'masterAccountNo'},
    {'1': 'account_no', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'accountNo'},
    {'1': 'bank_owner_name', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'bankOwnerName'},
    {'1': 'bank_name', '3': 7, '4': 1, '5': 9, '8': {}, '10': 'bankName'},
    {'1': 'ach_routing_no', '3': 8, '4': 1, '5': 9, '8': {}, '10': 'achRoutingNo'},
    {'1': 'wire_routing_no', '3': 9, '4': 1, '5': 9, '8': {}, '10': 'wireRoutingNo'},
    {'1': 'bank_account_no', '3': 10, '4': 1, '5': 9, '8': {}, '10': 'bankAccountNo'},
    {'1': 'bank_account_type', '3': 11, '4': 1, '5': 9, '8': {}, '10': 'bankAccountType'},
    {'1': 'approved_method', '3': 12, '4': 1, '5': 9, '8': {}, '10': 'approvedMethod'},
    {'1': 'plaid_access_token', '3': 13, '4': 1, '5': 9, '8': {}, '10': 'plaidAccessToken'},
    {'1': 'status', '3': 14, '4': 1, '5': 9, '8': {}, '10': 'status'},
    {'1': 'created_at', '3': 15, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'createdAt'},
    {'1': 'created_by', '3': 16, '4': 1, '5': 9, '8': {}, '10': 'createdBy'},
    {'1': 'modified_at', '3': 17, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '10': 'modifiedAt'},
    {'1': 'modified_by', '3': 18, '4': 1, '5': 9, '8': {}, '10': 'modifiedBy'},
    {'1': 'nick_name', '3': 19, '4': 1, '5': 9, '8': {}, '10': 'nickName'},
    {'1': 'ach', '3': 20, '4': 1, '5': 8, '8': {}, '10': 'ach'},
    {'1': 'wire', '3': 21, '4': 1, '5': 8, '8': {}, '10': 'wire'},
    {'1': 'check', '3': 22, '4': 1, '5': 8, '8': {}, '10': 'check'},
    {'1': 'is_international', '3': 23, '4': 1, '5': 8, '8': {}, '10': 'isInternational'},
    {'1': 'bank_identifier_code', '3': 24, '4': 1, '5': 9, '8': {}, '10': 'bankIdentifierCode'},
    {'1': 'bank_address_id', '3': 25, '4': 1, '5': 13, '8': {}, '10': 'bankAddressId'},
    {'1': 'error_message', '3': 26, '4': 1, '5': 9, '8': {}, '10': 'errorMessage'},
    {'1': 'internal_status', '3': 27, '4': 1, '5': 9, '8': {}, '10': 'internalStatus'},
  ],
};

/// Descriptor for `Account`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountDescriptor = $convert.base64Decode(
    'CgdBY2NvdW50EqABCgdiYW5rX2lkGAEgASgNQoYBkkGCATJzQmFuayBhY2NvdW50IG51bWVyaW'
    'MgdW5pcXVlIGlkZW50aWZpZXIgZ2VuZXJhdGVkIGJ5IHRoZSBzeXN0ZW0uIFJlcXVpcmVkIGlu'
    'IHVwZGF0ZS4gVmFsdWUgaXMgZGlzcmVnYXJkZWQgb24gY3JlYXRlLkoBMdIBB2JhbmtfaWRSBm'
    'JhbmtJZBLBAQoKYWNjb3VudF9pZBgCIAEoDUKhAZJBnQEyiAFBY2NvdW50IG51bWVyaWMgdW5p'
    'cXVlIGlkZW50aWZpZXIuIEZvciBjcmVhdGUgb25seSwgdmFsdWUgaXMgZGlzcmVnYXJkZWQgb2'
    '4gdXBkYXRlLiBSZXF1aXJlZCBpZiBDb3JyZXNwb25kZW50IGFuZCBBY2NvdW50IE5vIGlzIG5v'
    'dCBzZXQuSgM3MDbSAQphY2NvdW50X2lkUglhY2NvdW50SWQStQIKDWNvcnJlc3BvbmRlbnQYAy'
    'ABKAlCjgKSQYoCMuoBVGhlIG5hbWUgZ2l2ZW4gdG8gYSBiYW5rLCBicm9rZXIsIGRlYWxlciwg'
    'b3IgZmluYW5jaWFsIGluc3RpdHV0aW9uIHRoYXQgYWN0cyBvbiBiZWhhbGYgb2YgYW5vdGhlci'
    'BmaW5hbmNpYWwgaW5zdGl0dXRpb24uIEZvdXIgQWxwaGEgbnVtZXJpYyBjaGFyYWN0ZXIuIEZv'
    'ciBjcmVhdGUgb25seSwgdmFsdWUgaXMgZGlzcmVnYXJkZWQgb24gdXBkYXRlLiBSZXF1aXJlZC'
    'BpZiBBY2NvdW50IElEIGlzIG5vdCBzZXQuSgYiU0FTUyJ4BIABBNIBDWNvcnJlc3BvbmRlbnRS'
    'DWNvcnJlc3BvbmRlbnQSpgEKEW1hc3Rlcl9hY2NvdW50X25vGAQgASgJQnqSQXcyYk1hc3Rlci'
    'BvciByb2xsLXVwIGFjY291bnQuIEFscGhhbnVtZXJpYyBtYXN0ZXIgYWNjb3VudCBudW1iZXIg'
    'd2hpY2ggY2FuIGJlIHVzZWQgYWNyb3NzIHRoZSBzeXN0ZW0uQAFKDyJURVNUQUNDT1VOVE5PIl'
    'IPbWFzdGVyQWNjb3VudE5vEsMBCgphY2NvdW50X25vGAUgASgJQqMBkkGfATJ/VGhlIGFscGhh'
    'bnVtZXJpYyBpZGVudGlmaWVyIG9mIHRoZSBhY2NvdW50LiBGb3IgY3JlYXRlIG9ubHksIHZhbH'
    'VlIGlzIGRpc3JlZ2FyZGVkIG9uIHVwZGF0ZS4gUmVxdWlyZWQgaWYgQWNjb3VudCBJRCBpcyBu'
    'b3Qgc2V0LkoPIlRFU1RBQ0NPVU5UTk8i0gEKYWNjb3VudF9ub1IJYWNjb3VudE5vEvEBCg9iYW'
    '5rX293bmVyX25hbWUYBiABKAlCyAGSQcQBMrQBVGhlIGxlZ2FsIG9yIGF1dGhvcml6ZWQgbmFt'
    'ZSBvZiB0aGUgYmFuayBhY2NvdW50IG93bmVyIHdoZXRoZXIgaXQgaXMgYW4gaW5kaXZpZHVhbC'
    'wgam9pbnQsIGFjY291bnQsIG9yIGJ1c2luZXNzLiBUaGUgZGVmYXVsdCB2YWx1ZSB3aWxsIGJl'
    'IHRoZSBhY2NvdW50IHByaW1hcnkgb3duZXIgbmFtZSBpZiBleGlzdHMuSgsiRG9lLCBKb2huIl'
    'INYmFua093bmVyTmFtZRKAAQoJYmFua19uYW1lGAcgASgJQmOSQWAyQ1RoZSByZWdpc3RlcmVk'
    'IGFuZCBsZWdhbCBuYW1lIG9mIHRoZSBmaW5hbmNpYWwgaW5zdGl0dXRpb24gb3IgYmFuay5KDS'
    'JXZWxscyBGYXJnbyLSAQliYW5rX25hbWVSCGJhbmtOYW1lEoECCg5hY2hfcm91dGluZ19ubxgI'
    'IAEoCULaAZJB1gEytQFBIDktZGlnaXQsIHVuaXF1ZSBudW1lcmljIElEIGFzc2lnbmVkIHRvIG'
    'VhY2ggYmFua2luZyBpbnN0aXR1dGlvbiBpbiB0aGUgVVMgYW5kIGJhc2VkIG9uIHRoZSBsb2Nh'
    'dGlvbiBvZiB0aGUgYmFuayBpc3N1ZWQgZm9yIHRoZSBBQ0ggdHJhbnNhY3Rpb24gKHRvIHNlbm'
    'Qgb3IgcmVjZWl2ZSBhbiBBQ0ggcGF5bWVudCkuSgsiMDExNDAxNTMzItIBDmFjaF9yb3V0aW5n'
    'X25vUgxhY2hSb3V0aW5nTm8S2gEKD3dpcmVfcm91dGluZ19ubxgJIAEoCUKxAZJBrQEyiwFBIG'
    '5pbmUgKDkpIGRpZ2l0IGNvZGUgcGFydGljdWxhcmx5IGFzc2lnbmVkIHRvIGFuIGVsZWN0cm9u'
    'aWMgdHJhbnNmZXIgdHJhbnNhY3Rpb24gZnJvbSBvbmUgYmFuayB0byBhbm90aGVyLlJlcXVpcm'
    'VkIGlmIFdpcmUgaXMgc2V0IHRvIHRydWUuSgsiMDIxMDAwMDIxItIBD3dpcmVfcm91dGluZ19u'
    'b1INd2lyZVJvdXRpbmdObxLHAQoPYmFua19hY2NvdW50X25vGAogASgJQp4BkkGaATJySXQgaX'
    'MgdXN1YWxseSBiZXR3ZWVuIGVpZ2h0IHRvIDEyIGRpZ2l0cyBpbiBsZW5ndGggd2hpY2ggaXMg'
    'dGhlIHByaW1hcnkgaWRlbnRpZmllciBvZiBvd25lcnNoaXAgb3IgYSBiYW5rIGFjY291bnQuSh'
    'IiMTExMTIyMjIzMzMzMTExMSLSAQ9iYW5rX2FjY291bnRfbm9SDWJhbmtBY2NvdW50Tm8SogEK'
    'EWJhbmtfYWNjb3VudF90eXBlGAsgASgJQnaSQXMyUkluZGljYXRlcyB3aGF0IHR5cGUgb2YgYm'
    'FuayBhY2NvdW50LCBlaXRoZXIgU2F2aW5ncywgQ2hlY2tpbmcsIG9yIENhc2ggTWFuYWdlbWVu'
    'dC5KCSJTYXZpbmdzItIBEWJhbmtfYWNjb3VudF90eXBlUg9iYW5rQWNjb3VudFR5cGUSlAIKD2'
    'FwcHJvdmVkX21ldGhvZBgMIAEoCULqAZJB5gEyyAFBbiBpbmRpY2F0b3Igb2YgdGhlIHZhbGlk'
    'YXRpb24gb3IgYXBwcm92YWwgbWV0aG9kIG9mIGEgYmFuay4gSXQgY2FuIGVpdGhlciBiZSBhIE'
    '1pY3JvIERlcG9zaXQgb3IgUGxhaWQuIENoZWNrIC92MS9zeXN0ZW1jb2RlL2xpc3QgQVBJIGZv'
    'ciB2YWxpZCB2YWx1ZXMgKHR5cGUgPSAnQXBwcm92ZWQgTWV0aG9kJyksIHVzZSB0aGUgJ2NvZG'
    'UnIHZhbHVlLkoHIlBsYWlkItIBD2FwcHJvdmVkX21ldGhvZFIOYXBwcm92ZWRNZXRob2QSkQIK'
    'EnBsYWlkX2FjY2Vzc190b2tlbhgNIAEoCULiAZJB3gEyjwFBbiBpbmRpY2F0b3Igb2YgdGhlIH'
    'ZhbGlkYXRpb24gb3IgYXBwcm92YWwgbWV0aG9kIG9mIGEgYmFuay4gSXQgY2FuIGVpdGhlciBi'
    'ZSBhIE1pY3JvIERlcG9zaXQgb3IgUGxhaWQuIFJlcXVpcmVkIHdoZW4gQXBwcm92ZWQgTWV0aG'
    '9kIGlzIFBsYWlkLko1ImFjY2Vzcy1zYW5kYm94LTU4OWE0YWM5LTk3ZTMtNDBjOC1hMTY3LWMz'
    'YTQ3ZDViODliMiLSARJwbGFpZF9hY2Nlc3NfdG9rZW5SEHBsYWlkQWNjZXNzVG9rZW4SrQEKBn'
    'N0YXR1cxgOIAEoCUKUAZJBkAEycUNoZWNrIC92MS9zeXN0ZW1jb2RlL2xpc3QgQVBJIGZvciB2'
    'YWxpZCB2YWx1ZXMgKHR5cGUgPSAnU3RhdHVzJywgc3ViVHlwZSA9ICdCYW5rIEFjY291bnQnKS'
    'wgdXNlIHRoZSAnY29kZScgdmFsdWUuShIiUGVuZGluZyBBcHByb3ZhbCLSAQZzdGF0dXNSBnN0'
    'YXR1cxJuCgpjcmVhdGVkX2F0GA8gASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcEIzkk'
    'EwMixTeXN0ZW0gZGF0ZSB0aW1lIHdoZW4gdGhlIHJlY29yZCB3YXMgY3JlYXRlZEABUgljcmVh'
    'dGVkQXQSUgoKY3JlYXRlZF9ieRgQIAEoCUIzkkEwMiBUaGUgdXNlciB3aG8gY3JlYXRlZCB0aG'
    'UgcmVjb3JkLkABSgoiSm9obiBEb2UiUgljcmVhdGVkQnkScQoLbW9kaWZpZWRfYXQYESABKAsy'
    'Gi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wQjSSQTEyLVN5c3RlbSBkYXRlIHRpbWUgd2hlbi'
    'B0aGUgcmVjb3JkIHdhcyBtb2RpZmllZEABUgptb2RpZmllZEF0EmAKC21vZGlmaWVkX2J5GBIg'
    'ASgJQj+SQTwyLFRoZSB1c2VyIHdobyBjb21taXRlZCBjaGFuZ2VzIHRvIHRoZSByZWNvcmQuQA'
    'FKCiJKb2huIERvZSJSCm1vZGlmaWVkQnkSlwEKCW5pY2tfbmFtZRgTIAEoCUJ6kkF3Ml5BIHVz'
    'ZXItZGVmaW5lZCBuaWNrbmFtZSBmb3IgdGhlIGJhbmsgYWNjb3VudC4gT3B0aW9uYWwgYW5kIG'
    'ludGVuZGVkIGZvciBkaXNwbGF5IHB1cnBvc2VzIG9ubHkuShMiUGxhaWQgU2F2aW5nIDExMTEi'
    'eBRSCG5pY2tOYW1lEm8KA2FjaBgUIAEoCEJdkkFaMlZJbmRpY2F0ZXMgaWYgQUNIIGlzIGF2YW'
    'lsYWJsZSBhcyBhIHJlcXVlc3QgdHJhbnNmZXIgZm9yIHRoZSBiYW5rIGFjY291bnQuIEFsd2F5'
    'cyB0cnVlLkABUgNhY2gSVQoEd2lyZRgVIAEoCEJBkkE+MjxJbmRpY2F0ZSBpZiB0aGUgYmFuay'
    'BhY2NvdW50IGFsbG93cyBhIFdpcmUgUmVxdWVzdCBUcmFuc2Zlci5SBHdpcmUSWAoFY2hlY2sY'
    'FiABKAhCQpJBPzI9SW5kaWNhdGUgaWYgdGhlIGJhbmsgYWNjb3VudCBhbGxvd3MgYSBjaGVjay'
    'ByZXF1ZXN0IHRyYW5zZmVyLlIFY2hlY2sSYwoQaXNfaW50ZXJuYXRpb25hbBgXIAEoCEI4kkE1'
    'MjNBbiBpbmRpY2F0b3IgaWYgdGhlIGJhbmsgaXMgaW50ZXJuYXRpb25hbCBvciBsb2NhbC5SD2'
    'lzSW50ZXJuYXRpb25hbBLzAQoUYmFua19pZGVudGlmaWVyX2NvZGUYGCABKAlCwAGSQbwBMqoB'
    'QklDIGlzIGFuIGludGVybmF0aW9uYWxseSByZWNvZ25pemVkIGNvZGUgdXNlZCB0byBpZGVudG'
    'lmeSBiYW5rcyBhbmQgZmluYW5jaWFsIGluc3RpdHV0aW9ucyBkdXJpbmcgY3Jvc3MtYm9yZGVy'
    'IHRyYW5zYWN0aW9ucy4gUmVxdWlyZWQgaWYgSXMgSW50ZXJuYXRpb25hbCBpcyBzZXQgdG8gdH'
    'J1ZS5KDSJCT0ZBVVMzTlhYWCJSEmJhbmtJZGVudGlmaWVyQ29kZRJxCg9iYW5rX2FkZHJlc3Nf'
    'aWQYGSABKA1CSZJBRjJCTnVtZXJpYyB1bmlxdWUgaWRlbnRpZmllciBvZiBiYW5rJ3MgYWRkcm'
    'VzcywgZm9yIGludGVybmFsIHVzZSBvbmx5QAFSDWJhbmtBZGRyZXNzSWQS7gIKDWVycm9yX21l'
    'c3NhZ2UYGiABKAlCyAKSQcQCMpMCUHJvdmlkZXMgZXhwbGFuYXRpb24gb2YgYW55IGVycm9yIG'
    'VuY291bnRlcmVkIGR1cmluZyBwcm9jZXNzaW5nLiBUaGlzIGZpZWxkIGlzIHR5cGljYWxseSBw'
    'b3B1bGF0ZWQgd2hlbiBhIHJlcXVlc3QgZmFpbHMgdmFsaWRhdGlvbiwgZW5jb3VudGVycyBhIH'
    'N5c3RlbSBpc3N1ZSwgb3IgdmlvbGF0ZXMgYnVzaW5lc3MgcnVsZXMuIEl0IGlzIGludGVuZGVk'
    'IHRvIGFzc2lzdCBkZXZlbG9wZXJzIG9yIHN1cHBvcnQgdGVhbXMgaW4gZGlhZ25vc2luZyBhbm'
    'QgcmVzb2x2aW5nIGlzc3Vlcy5AAUoqIkVycm9yIENvZGU6IDEwIC0gQWNjb3VudCBObyBpcyBy'
    'ZXF1aXJlZDsiUgxlcnJvck1lc3NhZ2USzQEKD2ludGVybmFsX3N0YXR1cxgbIAEoCUKjAZJBnw'
    'EyjAFSZXByZXNlbnRzIHRoZSBpbnRlcm5hbCBwcm9jZXNzaW5nIHN0YXRlIG9mIHRoZSByZWNv'
    'cmQuIFRoaXMgZmllbGQgaXMgdHlwaWNhbGx5IHBvcHVsYXRlZCB3aGVuIGFuIGVycm9yIG9jY3'
    'VycyBhbmQgZXJyb3JfbWVzc2FnZSBpcyBwcmVzZW50LkABSgwiRm9yIFJldmlldyJSDmludGVy'
    'bmFsU3RhdHVz');

@$core.Deprecated('Use createAccountResponseDescriptor instead')
const CreateAccountResponse$json = {
  '1': 'CreateAccountResponse',
  '2': [
    {'1': 'bank_account', '3': 1, '4': 1, '5': 11, '6': '.bankpb.Account', '10': 'bankAccount'},
  ],
};

/// Descriptor for `CreateAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createAccountResponseDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVBY2NvdW50UmVzcG9uc2USMgoMYmFua19hY2NvdW50GAEgASgLMg8uYmFua3BiLk'
    'FjY291bnRSC2JhbmtBY2NvdW50');

@$core.Deprecated('Use updateAccountResponseDescriptor instead')
const UpdateAccountResponse$json = {
  '1': 'UpdateAccountResponse',
  '2': [
    {'1': 'bank_account', '3': 1, '4': 1, '5': 11, '6': '.bankpb.Account', '10': 'bankAccount'},
  ],
};

/// Descriptor for `UpdateAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateAccountResponseDescriptor = $convert.base64Decode(
    'ChVVcGRhdGVBY2NvdW50UmVzcG9uc2USMgoMYmFua19hY2NvdW50GAEgASgLMg8uYmFua3BiLk'
    'FjY291bnRSC2JhbmtBY2NvdW50');

@$core.Deprecated('Use readAccountRequestDescriptor instead')
const ReadAccountRequest$json = {
  '1': 'ReadAccountRequest',
  '2': [
    {'1': 'bank_id', '3': 1, '4': 1, '5': 13, '8': {}, '10': 'bankId'},
  ],
};

/// Descriptor for `ReadAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readAccountRequestDescriptor = $convert.base64Decode(
    'ChJSZWFkQWNjb3VudFJlcXVlc3QSawoHYmFua19pZBgBIAEoDUJSkkFPMkBCYW5rIGFjY291bn'
    'QgbnVtZXJpYyB1bmlxdWUgaWRlbnRpZmllciBnZW5lcmF0ZWQgYnkgdGhlIHN5c3RlbS4gSgEx'
    '0gEHYmFua19pZFIGYmFua0lk');

@$core.Deprecated('Use readAccountResponseDescriptor instead')
const ReadAccountResponse$json = {
  '1': 'ReadAccountResponse',
  '2': [
    {'1': 'bank_account', '3': 1, '4': 1, '5': 11, '6': '.bankpb.Account', '10': 'bankAccount'},
  ],
};

/// Descriptor for `ReadAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readAccountResponseDescriptor = $convert.base64Decode(
    'ChNSZWFkQWNjb3VudFJlc3BvbnNlEjIKDGJhbmtfYWNjb3VudBgBIAEoCzIPLmJhbmtwYi5BY2'
    'NvdW50UgtiYW5rQWNjb3VudA==');

@$core.Deprecated('Use listAccountRequestDescriptor instead')
const ListAccountRequest$json = {
  '1': 'ListAccountRequest',
  '2': [
    {'1': 'correspondent', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'correspondent'},
    {'1': 'master_account_no', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'masterAccountNo'},
    {'1': 'account_no', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'accountNo'},
    {'1': 'bank_owner_name', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'bankOwnerName'},
    {'1': 'bank_name', '3': 5, '4': 1, '5': 9, '8': {}, '10': 'bankName'},
    {'1': 'ach_routing_no', '3': 6, '4': 1, '5': 9, '8': {}, '10': 'achRoutingNo'},
    {'1': 'bank_account_no', '3': 7, '4': 1, '5': 9, '8': {}, '10': 'bankAccountNo'},
    {'1': 'status', '3': 8, '4': 1, '5': 9, '8': {}, '10': 'status'},
    {'1': 'nick_name', '3': 9, '4': 1, '5': 9, '8': {}, '10': 'nickName'},
    {'1': 'pagination', '3': 10, '4': 1, '5': 11, '6': '.utilspb.Pagination', '10': 'pagination'},
  ],
};

/// Descriptor for `ListAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAccountRequestDescriptor = $convert.base64Decode(
    'ChJMaXN0QWNjb3VudFJlcXVlc3QSpQIKDWNvcnJlc3BvbmRlbnQYASABKAlC/gGSQfoBMuoBVG'
    'hlIG5hbWUgZ2l2ZW4gdG8gYSBiYW5rLCBicm9rZXIsIGRlYWxlciwgb3IgZmluYW5jaWFsIGlu'
    'c3RpdHV0aW9uIHRoYXQgYWN0cyBvbiBiZWhhbGYgb2YgYW5vdGhlciBmaW5hbmNpYWwgaW5zdG'
    'l0dXRpb24uIEZvdXIgQWxwaGEgbnVtZXJpYyBjaGFyYWN0ZXIuIEZvciBjcmVhdGUgb25seSwg'
    'dmFsdWUgaXMgZGlzcmVnYXJkZWQgb24gdXBkYXRlLiBSZXF1aXJlZCBpZiBBY2NvdW50IElEIG'
    'lzIG5vdCBzZXQuSgYiU0FTUyJ4BIABBFINY29ycmVzcG9uZGVudBKTAQoRbWFzdGVyX2FjY291'
    'bnRfbm8YAiABKAlCZ5JBZDJiTWFzdGVyIG9yIHJvbGwtdXAgYWNjb3VudC4gQWxwaGFudW1lcm'
    'ljIG1hc3RlciBhY2NvdW50IG51bWJlciB3aGljaCBjYW4gYmUgdXNlZCBhY3Jvc3MgdGhlIHN5'
    'c3RlbS5SD21hc3RlckFjY291bnRObxJgCgphY2NvdW50X25vGAMgASgJQkGSQT4yK1RoZSBhbH'
    'BoYW51bWVyaWMgaWRlbnRpZmllciBvZiB0aGUgYWNjb3VudC5KDyJURVNUQUNDT1VOVE5PIlIJ'
    'YWNjb3VudE5vEq0BCg9iYW5rX293bmVyX25hbWUYBCABKAlChAGSQYABMnFUaGUgbGVnYWwgb3'
    'IgYXV0aG9yaXplZCBuYW1lIG9mIHRoZSBiYW5rIGFjY291bnQgb3duZXIgd2hldGhlciBpdCBp'
    'cyBhbiBpbmRpdmlkdWFsLCBqb2ludCwgYWNjb3VudCwgb3IgYnVzaW5lc3MuIEoLIkRvZSwgSm'
    '9obiJSDWJhbmtPd25lck5hbWUSdAoJYmFua19uYW1lGAUgASgJQleSQVQyQ1RoZSByZWdpc3Rl'
    'cmVkIGFuZCBsZWdhbCBuYW1lIG9mIHRoZSBmaW5hbmNpYWwgaW5zdGl0dXRpb24gb3IgYmFuay'
    '5KDSJXZWxscyBGYXJnbyJSCGJhbmtOYW1lEvABCg5hY2hfcm91dGluZ19ubxgGIAEoCULJAZJB'
    'xQEytQFBIDktZGlnaXQsIHVuaXF1ZSBudW1lcmljIElEIGFzc2lnbmVkIHRvIGVhY2ggYmFua2'
    'luZyBpbnN0aXR1dGlvbiBpbiB0aGUgVVMgYW5kIGJhc2VkIG9uIHRoZSBsb2NhdGlvbiBvZiB0'
    'aGUgYmFuayBpc3N1ZWQgZm9yIHRoZSBBQ0ggdHJhbnNhY3Rpb24gKHRvIHNlbmQgb3IgcmVjZW'
    'l2ZSBhbiBBQ0ggcGF5bWVudCkuSgsiMDExNDAxNTMzIlIMYWNoUm91dGluZ05vErUBCg9iYW5r'
    'X2FjY291bnRfbm8YByABKAlCjAGSQYgBMnJJdCBpcyB1c3VhbGx5IGJldHdlZW4gZWlnaHQgdG'
    '8gMTIgZGlnaXRzIGluIGxlbmd0aCB3aGljaCBpcyB0aGUgcHJpbWFyeSBpZGVudGlmaWVyIG9m'
    'IG93bmVyc2hpcCBvciBhIGJhbmsgYWNjb3VudC5KEiIxMTExMjIyMjMzMzMxMTExIlINYmFua0'
    'FjY291bnRObxKkAQoGc3RhdHVzGAggASgJQosBkkGHATJxQ2hlY2sgL3YxL3N5c3RlbWNvZGUv'
    'bGlzdCBBUEkgZm9yIHZhbGlkIHZhbHVlcyAodHlwZSA9ICdTdGF0dXMnLCBzdWJUeXBlID0gJ0'
    'JhbmsgQWNjb3VudCcpLCB1c2UgdGhlICdjb2RlJyB2YWx1ZS5KEiJQZW5kaW5nIEFwcHJvdmFs'
    'IlIGc3RhdHVzEpcBCgluaWNrX25hbWUYCSABKAlCepJBdzJeQSB1c2VyLWRlZmluZWQgbmlja2'
    '5hbWUgZm9yIHRoZSBiYW5rIGFjY291bnQuIE9wdGlvbmFsIGFuZCBpbnRlbmRlZCBmb3IgZGlz'
    'cGxheSBwdXJwb3NlcyBvbmx5LkoTIlBsYWlkIFNhdmluZyAxMTExIngUUghuaWNrTmFtZRIzCg'
    'pwYWdpbmF0aW9uGAogASgLMhMudXRpbHNwYi5QYWdpbmF0aW9uUgpwYWdpbmF0aW9u');

@$core.Deprecated('Use listAccountSummaryDescriptor instead')
const ListAccountSummary$json = {
  '1': 'ListAccountSummary',
  '2': [
    {'1': 'total_rows', '3': 1, '4': 1, '5': 13, '8': {}, '10': 'totalRows'},
  ],
};

/// Descriptor for `ListAccountSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAccountSummaryDescriptor = $convert.base64Decode(
    'ChJMaXN0QWNjb3VudFN1bW1hcnkSPgoKdG90YWxfcm93cxgBIAEoDUIfkkEcMhdUb3RhbCBudW'
    '1iZXIgb2YgcmVjb3Jkc0oBMVIJdG90YWxSb3dz');

@$core.Deprecated('Use listAccountResponseDescriptor instead')
const ListAccountResponse$json = {
  '1': 'ListAccountResponse',
  '2': [
    {'1': 'bank_accounts', '3': 1, '4': 3, '5': 11, '6': '.bankpb.Account', '10': 'bankAccounts'},
    {'1': 'summary', '3': 2, '4': 1, '5': 11, '6': '.bankpb.ListAccountSummary', '10': 'summary'},
  ],
};

/// Descriptor for `ListAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAccountResponseDescriptor = $convert.base64Decode(
    'ChNMaXN0QWNjb3VudFJlc3BvbnNlEjQKDWJhbmtfYWNjb3VudHMYASADKAsyDy5iYW5rcGIuQW'
    'Njb3VudFIMYmFua0FjY291bnRzEjQKB3N1bW1hcnkYAiABKAsyGi5iYW5rcGIuTGlzdEFjY291'
    'bnRTdW1tYXJ5UgdzdW1tYXJ5');

@$core.Deprecated('Use listAccountAuditRequestDescriptor instead')
const ListAccountAuditRequest$json = {
  '1': 'ListAccountAuditRequest',
  '2': [
    {'1': 'bank_id', '3': 1, '4': 1, '5': 13, '10': 'bankId'},
  ],
};

/// Descriptor for `ListAccountAuditRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAccountAuditRequestDescriptor = $convert.base64Decode(
    'ChdMaXN0QWNjb3VudEF1ZGl0UmVxdWVzdBIXCgdiYW5rX2lkGAEgASgNUgZiYW5rSWQ=');

@$core.Deprecated('Use listAccountAuditResponseDescriptor instead')
const ListAccountAuditResponse$json = {
  '1': 'ListAccountAuditResponse',
  '2': [
    {'1': 'account', '3': 1, '4': 3, '5': 11, '6': '.bankpb.Account', '10': 'account'},
  ],
};

/// Descriptor for `ListAccountAuditResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listAccountAuditResponseDescriptor = $convert.base64Decode(
    'ChhMaXN0QWNjb3VudEF1ZGl0UmVzcG9uc2USKQoHYWNjb3VudBgBIAMoCzIPLmJhbmtwYi5BY2'
    'NvdW50UgdhY2NvdW50');

@$core.Deprecated('Use listBankAccountRequestDescriptor instead')
const ListBankAccountRequest$json = {
  '1': 'ListBankAccountRequest',
  '2': [
    {'1': 'account_no', '3': 1, '4': 1, '5': 9, '10': 'accountNo'},
    {'1': 'correspondent', '3': 2, '4': 1, '5': 9, '10': 'correspondent'},
    {'1': 'status', '3': 3, '4': 1, '5': 9, '10': 'status'},
    {'1': 'user_id', '3': 4, '4': 1, '5': 5, '10': 'userId'},
  ],
};

/// Descriptor for `ListBankAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listBankAccountRequestDescriptor = $convert.base64Decode(
    'ChZMaXN0QmFua0FjY291bnRSZXF1ZXN0Eh0KCmFjY291bnRfbm8YASABKAlSCWFjY291bnRObx'
    'IkCg1jb3JyZXNwb25kZW50GAIgASgJUg1jb3JyZXNwb25kZW50EhYKBnN0YXR1cxgDIAEoCVIG'
    'c3RhdHVzEhcKB3VzZXJfaWQYBCABKAVSBnVzZXJJZA==');

@$core.Deprecated('Use deleteAccountRequestDescriptor instead')
const DeleteAccountRequest$json = {
  '1': 'DeleteAccountRequest',
  '2': [
    {'1': 'bank_id', '3': 1, '4': 1, '5': 13, '8': {}, '10': 'bankId'},
  ],
};

/// Descriptor for `DeleteAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteAccountRequestDescriptor = $convert.base64Decode(
    'ChREZWxldGVBY2NvdW50UmVxdWVzdBJrCgdiYW5rX2lkGAEgASgNQlKSQU8yQEJhbmsgYWNjb3'
    'VudCBudW1lcmljIHVuaXF1ZSBpZGVudGlmaWVyIGdlbmVyYXRlZCBieSB0aGUgc3lzdGVtLiBK'
    'ATHSAQdiYW5rX2lkUgZiYW5rSWQ=');

@$core.Deprecated('Use deleteAccountResponseDescriptor instead')
const DeleteAccountResponse$json = {
  '1': 'DeleteAccountResponse',
  '2': [
    {'1': 'bank_account', '3': 1, '4': 1, '5': 11, '6': '.bankpb.Account', '10': 'bankAccount'},
  ],
};

/// Descriptor for `DeleteAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteAccountResponseDescriptor = $convert.base64Decode(
    'ChVEZWxldGVBY2NvdW50UmVzcG9uc2USMgoMYmFua19hY2NvdW50GAEgASgLMg8uYmFua3BiLk'
    'FjY291bnRSC2JhbmtBY2NvdW50');

