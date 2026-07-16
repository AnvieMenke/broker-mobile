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

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'account.pb.dart' as $0;

export 'account.pb.dart';

@$pb.GrpcServiceName('bankpb.BankAccountService')
class BankAccountServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$createAccount = $grpc.ClientMethod<$0.Account, $0.CreateAccountResponse>(
      '/bankpb.BankAccountService/CreateAccount',
      ($0.Account value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateAccountResponse.fromBuffer(value));
  static final _$updateAccount = $grpc.ClientMethod<$0.Account, $0.UpdateAccountResponse>(
      '/bankpb.BankAccountService/UpdateAccount',
      ($0.Account value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateAccountResponse.fromBuffer(value));
  static final _$readAccount = $grpc.ClientMethod<$0.ReadAccountRequest, $0.ReadAccountResponse>(
      '/bankpb.BankAccountService/ReadAccount',
      ($0.ReadAccountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ReadAccountResponse.fromBuffer(value));
  static final _$listAccount = $grpc.ClientMethod<$0.ListAccountRequest, $0.ListAccountResponse>(
      '/bankpb.BankAccountService/ListAccount',
      ($0.ListAccountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListAccountResponse.fromBuffer(value));
  static final _$deleteAccount = $grpc.ClientMethod<$0.DeleteAccountRequest, $0.DeleteAccountResponse>(
      '/bankpb.BankAccountService/DeleteAccount',
      ($0.DeleteAccountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteAccountResponse.fromBuffer(value));
  static final _$getBankOwnerName = $grpc.ClientMethod<$0.GetBankOwnerNameRequest, $0.GetBankOwnerNameResponse>(
      '/bankpb.BankAccountService/GetBankOwnerName',
      ($0.GetBankOwnerNameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetBankOwnerNameResponse.fromBuffer(value));

  BankAccountServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.CreateAccountResponse> createAccount($0.Account request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createAccount, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateAccountResponse> updateAccount($0.Account request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateAccount, request, options: options);
  }

  $grpc.ResponseFuture<$0.ReadAccountResponse> readAccount($0.ReadAccountRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readAccount, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListAccountResponse> listAccount($0.ListAccountRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAccount, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteAccountResponse> deleteAccount($0.DeleteAccountRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteAccount, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetBankOwnerNameResponse> getBankOwnerName($0.GetBankOwnerNameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBankOwnerName, request, options: options);
  }
}

@$pb.GrpcServiceName('bankpb.BankAccountService')
abstract class BankAccountServiceBase extends $grpc.Service {
  $core.String get $name => 'bankpb.BankAccountService';

  BankAccountServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Account, $0.CreateAccountResponse>(
        'CreateAccount',
        createAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Account.fromBuffer(value),
        ($0.CreateAccountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Account, $0.UpdateAccountResponse>(
        'UpdateAccount',
        updateAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Account.fromBuffer(value),
        ($0.UpdateAccountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReadAccountRequest, $0.ReadAccountResponse>(
        'ReadAccount',
        readAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ReadAccountRequest.fromBuffer(value),
        ($0.ReadAccountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListAccountRequest, $0.ListAccountResponse>(
        'ListAccount',
        listAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListAccountRequest.fromBuffer(value),
        ($0.ListAccountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteAccountRequest, $0.DeleteAccountResponse>(
        'DeleteAccount',
        deleteAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteAccountRequest.fromBuffer(value),
        ($0.DeleteAccountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetBankOwnerNameRequest, $0.GetBankOwnerNameResponse>(
        'GetBankOwnerName',
        getBankOwnerName_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetBankOwnerNameRequest.fromBuffer(value),
        ($0.GetBankOwnerNameResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateAccountResponse> createAccount_Pre($grpc.ServiceCall $call, $async.Future<$0.Account> $request) async {
    return createAccount($call, await $request);
  }

  $async.Future<$0.UpdateAccountResponse> updateAccount_Pre($grpc.ServiceCall $call, $async.Future<$0.Account> $request) async {
    return updateAccount($call, await $request);
  }

  $async.Future<$0.ReadAccountResponse> readAccount_Pre($grpc.ServiceCall $call, $async.Future<$0.ReadAccountRequest> $request) async {
    return readAccount($call, await $request);
  }

  $async.Future<$0.ListAccountResponse> listAccount_Pre($grpc.ServiceCall $call, $async.Future<$0.ListAccountRequest> $request) async {
    return listAccount($call, await $request);
  }

  $async.Future<$0.DeleteAccountResponse> deleteAccount_Pre($grpc.ServiceCall $call, $async.Future<$0.DeleteAccountRequest> $request) async {
    return deleteAccount($call, await $request);
  }

  $async.Future<$0.GetBankOwnerNameResponse> getBankOwnerName_Pre($grpc.ServiceCall $call, $async.Future<$0.GetBankOwnerNameRequest> $request) async {
    return getBankOwnerName($call, await $request);
  }

  $async.Future<$0.CreateAccountResponse> createAccount($grpc.ServiceCall call, $0.Account request);
  $async.Future<$0.UpdateAccountResponse> updateAccount($grpc.ServiceCall call, $0.Account request);
  $async.Future<$0.ReadAccountResponse> readAccount($grpc.ServiceCall call, $0.ReadAccountRequest request);
  $async.Future<$0.ListAccountResponse> listAccount($grpc.ServiceCall call, $0.ListAccountRequest request);
  $async.Future<$0.DeleteAccountResponse> deleteAccount($grpc.ServiceCall call, $0.DeleteAccountRequest request);
  $async.Future<$0.GetBankOwnerNameResponse> getBankOwnerName($grpc.ServiceCall call, $0.GetBankOwnerNameRequest request);
}
