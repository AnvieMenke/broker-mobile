//
//  Generated code. Do not modify.
//  source: proto/commonpb/list.proto
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

import 'list.pb.dart' as $0;

export 'list.pb.dart';

@$pb.GrpcServiceName('commonpb.ListService')
class ListServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$readPrimaryOwner = $grpc.ClientMethod<$0.ReadPrimaryOwnerRequest, $0.ReadPrimaryOwnerResponse>(
      '/commonpb.ListService/ReadPrimaryOwner',
      ($0.ReadPrimaryOwnerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ReadPrimaryOwnerResponse.fromBuffer(value));
  static final _$listBankAccount = $grpc.ClientMethod<$0.ListBankAccountRequest, $0.ListBankAccountResponse>(
      '/commonpb.ListService/ListBankAccount',
      ($0.ListBankAccountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListBankAccountResponse.fromBuffer(value));
  static final _$listOriginalCusip = $grpc.ClientMethod<$0.ListOriginalCusipRequest, $0.ListOriginalCusipResponse>(
      '/commonpb.ListService/ListOriginalCusip',
      ($0.ListOriginalCusipRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListOriginalCusipResponse.fromBuffer(value));
  static final _$listBankName = $grpc.ClientMethod<$0.ListBankNameRequest, $0.ListBankNameResponse>(
      '/commonpb.ListService/ListBankName',
      ($0.ListBankNameRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListBankNameResponse.fromBuffer(value));
  static final _$listAdmEntryType = $grpc.ClientMethod<$0.ListAdmEntryTypeRequest, $0.ListAdmEntryTypeResponse>(
      '/commonpb.ListService/ListAdmEntryType',
      ($0.ListAdmEntryTypeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListAdmEntryTypeResponse.fromBuffer(value));
  static final _$listPage = $grpc.ClientMethod<$0.ListPageRequest, $0.ListPageResponse>(
      '/commonpb.ListService/ListPage',
      ($0.ListPageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListPageResponse.fromBuffer(value));
  static final _$listMenu = $grpc.ClientMethod<$0.ListPageRequest, $0.ListPageResponse>(
      '/commonpb.ListService/ListMenu',
      ($0.ListPageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListPageResponse.fromBuffer(value));
  static final _$listSubMenu = $grpc.ClientMethod<$0.ListPageRequest, $0.ListPageResponse>(
      '/commonpb.ListService/ListSubMenu',
      ($0.ListPageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListPageResponse.fromBuffer(value));

  ListServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.ReadPrimaryOwnerResponse> readPrimaryOwner($0.ReadPrimaryOwnerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readPrimaryOwner, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListBankAccountResponse> listBankAccount($0.ListBankAccountRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listBankAccount, request, options: options);
  }

  /// rpc ListSecurity(ListSecurityRequest) returns (ListSecurityResponse);
  /// rpc ListHouseAccount(ListEmptyRequest) returns (ListHouseAccountResponse);
  /// rpc ListCusip(ListCusipRequest) returns (ListCusipResponse);
  $grpc.ResponseFuture<$0.ListOriginalCusipResponse> listOriginalCusip($0.ListOriginalCusipRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listOriginalCusip, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListBankNameResponse> listBankName($0.ListBankNameRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listBankName, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListAdmEntryTypeResponse> listAdmEntryType($0.ListAdmEntryTypeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAdmEntryType, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListPageResponse> listPage($0.ListPageRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPage, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListPageResponse> listMenu($0.ListPageRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listMenu, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListPageResponse> listSubMenu($0.ListPageRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSubMenu, request, options: options);
  }
}

@$pb.GrpcServiceName('commonpb.ListService')
abstract class ListServiceBase extends $grpc.Service {
  $core.String get $name => 'commonpb.ListService';

  ListServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ReadPrimaryOwnerRequest, $0.ReadPrimaryOwnerResponse>(
        'ReadPrimaryOwner',
        readPrimaryOwner_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ReadPrimaryOwnerRequest.fromBuffer(value),
        ($0.ReadPrimaryOwnerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListBankAccountRequest, $0.ListBankAccountResponse>(
        'ListBankAccount',
        listBankAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListBankAccountRequest.fromBuffer(value),
        ($0.ListBankAccountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListOriginalCusipRequest, $0.ListOriginalCusipResponse>(
        'ListOriginalCusip',
        listOriginalCusip_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListOriginalCusipRequest.fromBuffer(value),
        ($0.ListOriginalCusipResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListBankNameRequest, $0.ListBankNameResponse>(
        'ListBankName',
        listBankName_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListBankNameRequest.fromBuffer(value),
        ($0.ListBankNameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListAdmEntryTypeRequest, $0.ListAdmEntryTypeResponse>(
        'ListAdmEntryType',
        listAdmEntryType_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListAdmEntryTypeRequest.fromBuffer(value),
        ($0.ListAdmEntryTypeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListPageRequest, $0.ListPageResponse>(
        'ListPage',
        listPage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListPageRequest.fromBuffer(value),
        ($0.ListPageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListPageRequest, $0.ListPageResponse>(
        'ListMenu',
        listMenu_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListPageRequest.fromBuffer(value),
        ($0.ListPageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListPageRequest, $0.ListPageResponse>(
        'ListSubMenu',
        listSubMenu_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListPageRequest.fromBuffer(value),
        ($0.ListPageResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ReadPrimaryOwnerResponse> readPrimaryOwner_Pre($grpc.ServiceCall $call, $async.Future<$0.ReadPrimaryOwnerRequest> $request) async {
    return readPrimaryOwner($call, await $request);
  }

  $async.Future<$0.ListBankAccountResponse> listBankAccount_Pre($grpc.ServiceCall $call, $async.Future<$0.ListBankAccountRequest> $request) async {
    return listBankAccount($call, await $request);
  }

  $async.Future<$0.ListOriginalCusipResponse> listOriginalCusip_Pre($grpc.ServiceCall $call, $async.Future<$0.ListOriginalCusipRequest> $request) async {
    return listOriginalCusip($call, await $request);
  }

  $async.Future<$0.ListBankNameResponse> listBankName_Pre($grpc.ServiceCall $call, $async.Future<$0.ListBankNameRequest> $request) async {
    return listBankName($call, await $request);
  }

  $async.Future<$0.ListAdmEntryTypeResponse> listAdmEntryType_Pre($grpc.ServiceCall $call, $async.Future<$0.ListAdmEntryTypeRequest> $request) async {
    return listAdmEntryType($call, await $request);
  }

  $async.Future<$0.ListPageResponse> listPage_Pre($grpc.ServiceCall $call, $async.Future<$0.ListPageRequest> $request) async {
    return listPage($call, await $request);
  }

  $async.Future<$0.ListPageResponse> listMenu_Pre($grpc.ServiceCall $call, $async.Future<$0.ListPageRequest> $request) async {
    return listMenu($call, await $request);
  }

  $async.Future<$0.ListPageResponse> listSubMenu_Pre($grpc.ServiceCall $call, $async.Future<$0.ListPageRequest> $request) async {
    return listSubMenu($call, await $request);
  }

  $async.Future<$0.ReadPrimaryOwnerResponse> readPrimaryOwner($grpc.ServiceCall call, $0.ReadPrimaryOwnerRequest request);
  $async.Future<$0.ListBankAccountResponse> listBankAccount($grpc.ServiceCall call, $0.ListBankAccountRequest request);
  $async.Future<$0.ListOriginalCusipResponse> listOriginalCusip($grpc.ServiceCall call, $0.ListOriginalCusipRequest request);
  $async.Future<$0.ListBankNameResponse> listBankName($grpc.ServiceCall call, $0.ListBankNameRequest request);
  $async.Future<$0.ListAdmEntryTypeResponse> listAdmEntryType($grpc.ServiceCall call, $0.ListAdmEntryTypeRequest request);
  $async.Future<$0.ListPageResponse> listPage($grpc.ServiceCall call, $0.ListPageRequest request);
  $async.Future<$0.ListPageResponse> listMenu($grpc.ServiceCall call, $0.ListPageRequest request);
  $async.Future<$0.ListPageResponse> listSubMenu($grpc.ServiceCall call, $0.ListPageRequest request);
}
