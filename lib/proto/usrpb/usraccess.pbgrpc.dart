//
//  Generated code. Do not modify.
//  source: proto/usrpb/usraccess.proto
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

import '../../google/protobuf/empty.pb.dart' as $0;
import 'usraccess.pb.dart' as $1;

export 'usraccess.pb.dart';

@$pb.GrpcServiceName('usrpb.UsrAccessService')
class UsrAccessServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$listRolePage = $grpc.ClientMethod<$0.Empty, $1.ListRolePageResponse>(
      '/usrpb.UsrAccessService/ListRolePage',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ListRolePageResponse.fromBuffer(value));
  static final _$listRoleAccessFunction = $grpc.ClientMethod<$1.ListRoleAccessFunctionRequest, $1.ListAccessFunctionResponse>(
      '/usrpb.UsrAccessService/ListRoleAccessFunction',
      ($1.ListRoleAccessFunctionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ListAccessFunctionResponse.fromBuffer(value));
  static final _$listAccessFunction = $grpc.ClientMethod<$1.ListAccessFunctionRequest, $1.ListAccessFunctionResponse>(
      '/usrpb.UsrAccessService/ListAccessFunction',
      ($1.ListAccessFunctionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ListAccessFunctionResponse.fromBuffer(value));
  static final _$updateAmountLimit = $grpc.ClientMethod<$1.UpdateAmountLimitRequest, $0.Empty>(
      '/usrpb.UsrAccessService/UpdateAmountLimit',
      ($1.UpdateAmountLimitRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$addAccessFunction = $grpc.ClientMethod<$1.AddRemoveAccessFunctionRequest, $0.Empty>(
      '/usrpb.UsrAccessService/AddAccessFunction',
      ($1.AddRemoveAccessFunctionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$removeAccessFunction = $grpc.ClientMethod<$1.AddRemoveAccessFunctionRequest, $0.Empty>(
      '/usrpb.UsrAccessService/RemoveAccessFunction',
      ($1.AddRemoveAccessFunctionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$listAccessPage = $grpc.ClientMethod<$1.ListAccessPageRequest, $1.ListAccessPageResponse>(
      '/usrpb.UsrAccessService/ListAccessPage',
      ($1.ListAccessPageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ListAccessPageResponse.fromBuffer(value));
  static final _$saveAccessPage = $grpc.ClientMethod<$1.SaveAccessPageRequest, $0.Empty>(
      '/usrpb.UsrAccessService/SaveAccessPage',
      ($1.SaveAccessPageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$updateAccountAccess = $grpc.ClientMethod<$0.Empty, $0.Empty>(
      '/usrpb.UsrAccessService/UpdateAccountAccess',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  UsrAccessServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$1.ListRolePageResponse> listRolePage($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRolePage, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListAccessFunctionResponse> listRoleAccessFunction($1.ListRoleAccessFunctionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRoleAccessFunction, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListAccessFunctionResponse> listAccessFunction($1.ListAccessFunctionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAccessFunction, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> updateAmountLimit($1.UpdateAmountLimitRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateAmountLimit, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> addAccessFunction($1.AddRemoveAccessFunctionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addAccessFunction, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> removeAccessFunction($1.AddRemoveAccessFunctionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeAccessFunction, request, options: options);
  }

  $grpc.ResponseFuture<$1.ListAccessPageResponse> listAccessPage($1.ListAccessPageRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAccessPage, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> saveAccessPage($1.SaveAccessPageRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$saveAccessPage, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> updateAccountAccess($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateAccountAccess, request, options: options);
  }
}

@$pb.GrpcServiceName('usrpb.UsrAccessService')
abstract class UsrAccessServiceBase extends $grpc.Service {
  $core.String get $name => 'usrpb.UsrAccessService';

  UsrAccessServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.ListRolePageResponse>(
        'ListRolePage',
        listRolePage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.ListRolePageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListRoleAccessFunctionRequest, $1.ListAccessFunctionResponse>(
        'ListRoleAccessFunction',
        listRoleAccessFunction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ListRoleAccessFunctionRequest.fromBuffer(value),
        ($1.ListAccessFunctionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListAccessFunctionRequest, $1.ListAccessFunctionResponse>(
        'ListAccessFunction',
        listAccessFunction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ListAccessFunctionRequest.fromBuffer(value),
        ($1.ListAccessFunctionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.UpdateAmountLimitRequest, $0.Empty>(
        'UpdateAmountLimit',
        updateAmountLimit_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.UpdateAmountLimitRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AddRemoveAccessFunctionRequest, $0.Empty>(
        'AddAccessFunction',
        addAccessFunction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AddRemoveAccessFunctionRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.AddRemoveAccessFunctionRequest, $0.Empty>(
        'RemoveAccessFunction',
        removeAccessFunction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.AddRemoveAccessFunctionRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ListAccessPageRequest, $1.ListAccessPageResponse>(
        'ListAccessPage',
        listAccessPage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ListAccessPageRequest.fromBuffer(value),
        ($1.ListAccessPageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SaveAccessPageRequest, $0.Empty>(
        'SaveAccessPage',
        saveAccessPage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SaveAccessPageRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Empty>(
        'UpdateAccountAccess',
        updateAccountAccess_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$1.ListRolePageResponse> listRolePage_Pre($grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return listRolePage($call, await $request);
  }

  $async.Future<$1.ListAccessFunctionResponse> listRoleAccessFunction_Pre($grpc.ServiceCall $call, $async.Future<$1.ListRoleAccessFunctionRequest> $request) async {
    return listRoleAccessFunction($call, await $request);
  }

  $async.Future<$1.ListAccessFunctionResponse> listAccessFunction_Pre($grpc.ServiceCall $call, $async.Future<$1.ListAccessFunctionRequest> $request) async {
    return listAccessFunction($call, await $request);
  }

  $async.Future<$0.Empty> updateAmountLimit_Pre($grpc.ServiceCall $call, $async.Future<$1.UpdateAmountLimitRequest> $request) async {
    return updateAmountLimit($call, await $request);
  }

  $async.Future<$0.Empty> addAccessFunction_Pre($grpc.ServiceCall $call, $async.Future<$1.AddRemoveAccessFunctionRequest> $request) async {
    return addAccessFunction($call, await $request);
  }

  $async.Future<$0.Empty> removeAccessFunction_Pre($grpc.ServiceCall $call, $async.Future<$1.AddRemoveAccessFunctionRequest> $request) async {
    return removeAccessFunction($call, await $request);
  }

  $async.Future<$1.ListAccessPageResponse> listAccessPage_Pre($grpc.ServiceCall $call, $async.Future<$1.ListAccessPageRequest> $request) async {
    return listAccessPage($call, await $request);
  }

  $async.Future<$0.Empty> saveAccessPage_Pre($grpc.ServiceCall $call, $async.Future<$1.SaveAccessPageRequest> $request) async {
    return saveAccessPage($call, await $request);
  }

  $async.Future<$0.Empty> updateAccountAccess_Pre($grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return updateAccountAccess($call, await $request);
  }

  $async.Future<$1.ListRolePageResponse> listRolePage($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.ListAccessFunctionResponse> listRoleAccessFunction($grpc.ServiceCall call, $1.ListRoleAccessFunctionRequest request);
  $async.Future<$1.ListAccessFunctionResponse> listAccessFunction($grpc.ServiceCall call, $1.ListAccessFunctionRequest request);
  $async.Future<$0.Empty> updateAmountLimit($grpc.ServiceCall call, $1.UpdateAmountLimitRequest request);
  $async.Future<$0.Empty> addAccessFunction($grpc.ServiceCall call, $1.AddRemoveAccessFunctionRequest request);
  $async.Future<$0.Empty> removeAccessFunction($grpc.ServiceCall call, $1.AddRemoveAccessFunctionRequest request);
  $async.Future<$1.ListAccessPageResponse> listAccessPage($grpc.ServiceCall call, $1.ListAccessPageRequest request);
  $async.Future<$0.Empty> saveAccessPage($grpc.ServiceCall call, $1.SaveAccessPageRequest request);
  $async.Future<$0.Empty> updateAccountAccess($grpc.ServiceCall call, $0.Empty request);
}
