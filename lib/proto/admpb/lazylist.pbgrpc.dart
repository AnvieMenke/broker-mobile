//
//  Generated code. Do not modify.
//  source: proto/commonpb/lazylist.proto
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

import 'lazylist.pb.dart' as $0;

export 'lazylist.pb.dart';

@$pb.GrpcServiceName('commonpb.LazyListService')
class LazyListServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$lazyAccount = $grpc.ClientMethod<$0.LazyAccountRequest, $0.LazyAccountResponse>(
      '/commonpb.LazyListService/LazyAccount',
      ($0.LazyAccountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LazyAccountResponse.fromBuffer(value));
  static final _$lazySecurity = $grpc.ClientMethod<$0.LazyLoadSecurityRequest, $0.LazyLoadSecurityResponse>(
      '/commonpb.LazyListService/LazySecurity',
      ($0.LazyLoadSecurityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LazyLoadSecurityResponse.fromBuffer(value));
  static final _$lazyLoadCusip = $grpc.ClientMethod<$0.LazyLoadRequest, $0.LazyCusipResponse>(
      '/commonpb.LazyListService/LazyLoadCusip',
      ($0.LazyLoadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LazyCusipResponse.fromBuffer(value));
  static final _$lazyAdministratorEmail = $grpc.ClientMethod<$0.LazyAccountRequest, $0.LazyAdministratorEmailResponse>(
      '/commonpb.LazyListService/LazyAdministratorEmail',
      ($0.LazyAccountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LazyAdministratorEmailResponse.fromBuffer(value));
  static final _$lazyAccountNo = $grpc.ClientMethod<$0.LazyAccountNoRequest, $0.LazyAccountResponse>(
      '/commonpb.LazyListService/LazyAccountNo',
      ($0.LazyAccountNoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LazyAccountResponse.fromBuffer(value));
  static final _$accessibleCorrespondent = $grpc.ClientMethod<$0.AccessibleRequest, $0.AccessibleCorrespondentResponse>(
      '/commonpb.LazyListService/AccessibleCorrespondent',
      ($0.AccessibleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AccessibleCorrespondentResponse.fromBuffer(value));
  static final _$accessibleAccountNo = $grpc.ClientMethod<$0.AccessibleRequest, $0.AccessibleAccountNoResponse>(
      '/commonpb.LazyListService/AccessibleAccountNo',
      ($0.AccessibleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AccessibleAccountNoResponse.fromBuffer(value));
  static final _$accessibleMasterAccountNo = $grpc.ClientMethod<$0.AccessibleRequest, $0.AccessibleMasterAccountNoResponse>(
      '/commonpb.LazyListService/AccessibleMasterAccountNo',
      ($0.AccessibleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AccessibleMasterAccountNoResponse.fromBuffer(value));
  static final _$accessibleAccountName = $grpc.ClientMethod<$0.AccessibleRequest, $0.AccessibleAccountNameResponse>(
      '/commonpb.LazyListService/AccessibleAccountName',
      ($0.AccessibleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AccessibleAccountNameResponse.fromBuffer(value));
  static final _$accessibleRep = $grpc.ClientMethod<$0.AccessibleRequest, $0.AccessibleRepResponse>(
      '/commonpb.LazyListService/AccessibleRep',
      ($0.AccessibleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AccessibleRepResponse.fromBuffer(value));
  static final _$accessibleBranch = $grpc.ClientMethod<$0.AccessibleRequest, $0.AccessibleBranchResponse>(
      '/commonpb.LazyListService/AccessibleBranch',
      ($0.AccessibleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AccessibleBranchResponse.fromBuffer(value));
  static final _$lazyRepAdvisor = $grpc.ClientMethod<$0.LazyAccountRequest, $0.LazyRepAdvisorResponse>(
      '/commonpb.LazyListService/LazyRepAdvisor',
      ($0.LazyAccountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LazyRepAdvisorResponse.fromBuffer(value));

  LazyListServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.LazyAccountResponse> lazyAccount($0.LazyAccountRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$lazyAccount, request, options: options);
  }

  $grpc.ResponseFuture<$0.LazyLoadSecurityResponse> lazySecurity($0.LazyLoadSecurityRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$lazySecurity, request, options: options);
  }

  $grpc.ResponseFuture<$0.LazyCusipResponse> lazyLoadCusip($0.LazyLoadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$lazyLoadCusip, request, options: options);
  }

  $grpc.ResponseFuture<$0.LazyAdministratorEmailResponse> lazyAdministratorEmail($0.LazyAccountRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$lazyAdministratorEmail, request, options: options);
  }

  $grpc.ResponseFuture<$0.LazyAccountResponse> lazyAccountNo($0.LazyAccountNoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$lazyAccountNo, request, options: options);
  }

  $grpc.ResponseFuture<$0.AccessibleCorrespondentResponse> accessibleCorrespondent($0.AccessibleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$accessibleCorrespondent, request, options: options);
  }

  $grpc.ResponseFuture<$0.AccessibleAccountNoResponse> accessibleAccountNo($0.AccessibleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$accessibleAccountNo, request, options: options);
  }

  $grpc.ResponseFuture<$0.AccessibleMasterAccountNoResponse> accessibleMasterAccountNo($0.AccessibleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$accessibleMasterAccountNo, request, options: options);
  }

  $grpc.ResponseFuture<$0.AccessibleAccountNameResponse> accessibleAccountName($0.AccessibleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$accessibleAccountName, request, options: options);
  }

  $grpc.ResponseFuture<$0.AccessibleRepResponse> accessibleRep($0.AccessibleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$accessibleRep, request, options: options);
  }

  $grpc.ResponseFuture<$0.AccessibleBranchResponse> accessibleBranch($0.AccessibleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$accessibleBranch, request, options: options);
  }

  $grpc.ResponseFuture<$0.LazyRepAdvisorResponse> lazyRepAdvisor($0.LazyAccountRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$lazyRepAdvisor, request, options: options);
  }
}

@$pb.GrpcServiceName('commonpb.LazyListService')
abstract class LazyListServiceBase extends $grpc.Service {
  $core.String get $name => 'commonpb.LazyListService';

  LazyListServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LazyAccountRequest, $0.LazyAccountResponse>(
        'LazyAccount',
        lazyAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LazyAccountRequest.fromBuffer(value),
        ($0.LazyAccountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LazyLoadSecurityRequest, $0.LazyLoadSecurityResponse>(
        'LazySecurity',
        lazySecurity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LazyLoadSecurityRequest.fromBuffer(value),
        ($0.LazyLoadSecurityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LazyLoadRequest, $0.LazyCusipResponse>(
        'LazyLoadCusip',
        lazyLoadCusip_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LazyLoadRequest.fromBuffer(value),
        ($0.LazyCusipResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LazyAccountRequest, $0.LazyAdministratorEmailResponse>(
        'LazyAdministratorEmail',
        lazyAdministratorEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LazyAccountRequest.fromBuffer(value),
        ($0.LazyAdministratorEmailResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LazyAccountNoRequest, $0.LazyAccountResponse>(
        'LazyAccountNo',
        lazyAccountNo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LazyAccountNoRequest.fromBuffer(value),
        ($0.LazyAccountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccessibleRequest, $0.AccessibleCorrespondentResponse>(
        'AccessibleCorrespondent',
        accessibleCorrespondent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AccessibleRequest.fromBuffer(value),
        ($0.AccessibleCorrespondentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccessibleRequest, $0.AccessibleAccountNoResponse>(
        'AccessibleAccountNo',
        accessibleAccountNo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AccessibleRequest.fromBuffer(value),
        ($0.AccessibleAccountNoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccessibleRequest, $0.AccessibleMasterAccountNoResponse>(
        'AccessibleMasterAccountNo',
        accessibleMasterAccountNo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AccessibleRequest.fromBuffer(value),
        ($0.AccessibleMasterAccountNoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccessibleRequest, $0.AccessibleAccountNameResponse>(
        'AccessibleAccountName',
        accessibleAccountName_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AccessibleRequest.fromBuffer(value),
        ($0.AccessibleAccountNameResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccessibleRequest, $0.AccessibleRepResponse>(
        'AccessibleRep',
        accessibleRep_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AccessibleRequest.fromBuffer(value),
        ($0.AccessibleRepResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccessibleRequest, $0.AccessibleBranchResponse>(
        'AccessibleBranch',
        accessibleBranch_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AccessibleRequest.fromBuffer(value),
        ($0.AccessibleBranchResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LazyAccountRequest, $0.LazyRepAdvisorResponse>(
        'LazyRepAdvisor',
        lazyRepAdvisor_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LazyAccountRequest.fromBuffer(value),
        ($0.LazyRepAdvisorResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.LazyAccountResponse> lazyAccount_Pre($grpc.ServiceCall $call, $async.Future<$0.LazyAccountRequest> $request) async {
    return lazyAccount($call, await $request);
  }

  $async.Future<$0.LazyLoadSecurityResponse> lazySecurity_Pre($grpc.ServiceCall $call, $async.Future<$0.LazyLoadSecurityRequest> $request) async {
    return lazySecurity($call, await $request);
  }

  $async.Future<$0.LazyCusipResponse> lazyLoadCusip_Pre($grpc.ServiceCall $call, $async.Future<$0.LazyLoadRequest> $request) async {
    return lazyLoadCusip($call, await $request);
  }

  $async.Future<$0.LazyAdministratorEmailResponse> lazyAdministratorEmail_Pre($grpc.ServiceCall $call, $async.Future<$0.LazyAccountRequest> $request) async {
    return lazyAdministratorEmail($call, await $request);
  }

  $async.Future<$0.LazyAccountResponse> lazyAccountNo_Pre($grpc.ServiceCall $call, $async.Future<$0.LazyAccountNoRequest> $request) async {
    return lazyAccountNo($call, await $request);
  }

  $async.Future<$0.AccessibleCorrespondentResponse> accessibleCorrespondent_Pre($grpc.ServiceCall $call, $async.Future<$0.AccessibleRequest> $request) async {
    return accessibleCorrespondent($call, await $request);
  }

  $async.Future<$0.AccessibleAccountNoResponse> accessibleAccountNo_Pre($grpc.ServiceCall $call, $async.Future<$0.AccessibleRequest> $request) async {
    return accessibleAccountNo($call, await $request);
  }

  $async.Future<$0.AccessibleMasterAccountNoResponse> accessibleMasterAccountNo_Pre($grpc.ServiceCall $call, $async.Future<$0.AccessibleRequest> $request) async {
    return accessibleMasterAccountNo($call, await $request);
  }

  $async.Future<$0.AccessibleAccountNameResponse> accessibleAccountName_Pre($grpc.ServiceCall $call, $async.Future<$0.AccessibleRequest> $request) async {
    return accessibleAccountName($call, await $request);
  }

  $async.Future<$0.AccessibleRepResponse> accessibleRep_Pre($grpc.ServiceCall $call, $async.Future<$0.AccessibleRequest> $request) async {
    return accessibleRep($call, await $request);
  }

  $async.Future<$0.AccessibleBranchResponse> accessibleBranch_Pre($grpc.ServiceCall $call, $async.Future<$0.AccessibleRequest> $request) async {
    return accessibleBranch($call, await $request);
  }

  $async.Future<$0.LazyRepAdvisorResponse> lazyRepAdvisor_Pre($grpc.ServiceCall $call, $async.Future<$0.LazyAccountRequest> $request) async {
    return lazyRepAdvisor($call, await $request);
  }

  $async.Future<$0.LazyAccountResponse> lazyAccount($grpc.ServiceCall call, $0.LazyAccountRequest request);
  $async.Future<$0.LazyLoadSecurityResponse> lazySecurity($grpc.ServiceCall call, $0.LazyLoadSecurityRequest request);
  $async.Future<$0.LazyCusipResponse> lazyLoadCusip($grpc.ServiceCall call, $0.LazyLoadRequest request);
  $async.Future<$0.LazyAdministratorEmailResponse> lazyAdministratorEmail($grpc.ServiceCall call, $0.LazyAccountRequest request);
  $async.Future<$0.LazyAccountResponse> lazyAccountNo($grpc.ServiceCall call, $0.LazyAccountNoRequest request);
  $async.Future<$0.AccessibleCorrespondentResponse> accessibleCorrespondent($grpc.ServiceCall call, $0.AccessibleRequest request);
  $async.Future<$0.AccessibleAccountNoResponse> accessibleAccountNo($grpc.ServiceCall call, $0.AccessibleRequest request);
  $async.Future<$0.AccessibleMasterAccountNoResponse> accessibleMasterAccountNo($grpc.ServiceCall call, $0.AccessibleRequest request);
  $async.Future<$0.AccessibleAccountNameResponse> accessibleAccountName($grpc.ServiceCall call, $0.AccessibleRequest request);
  $async.Future<$0.AccessibleRepResponse> accessibleRep($grpc.ServiceCall call, $0.AccessibleRequest request);
  $async.Future<$0.AccessibleBranchResponse> accessibleBranch($grpc.ServiceCall call, $0.AccessibleRequest request);
  $async.Future<$0.LazyRepAdvisorResponse> lazyRepAdvisor($grpc.ServiceCall call, $0.LazyAccountRequest request);
}
