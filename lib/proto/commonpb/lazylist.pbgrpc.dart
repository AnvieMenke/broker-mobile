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
  static final _$accessibleCorrespondent = $grpc.ClientMethod<$0.AccessibleRequest, $0.AccessibleCorrespondentResponse>(
      '/commonpb.LazyListService/AccessibleCorrespondent',
      ($0.AccessibleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AccessibleCorrespondentResponse.fromBuffer(value));
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

  $grpc.ResponseFuture<$0.AccessibleCorrespondentResponse> accessibleCorrespondent($0.AccessibleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$accessibleCorrespondent, request, options: options);
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
    $addMethod($grpc.ServiceMethod<$0.AccessibleRequest, $0.AccessibleCorrespondentResponse>(
        'AccessibleCorrespondent',
        accessibleCorrespondent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AccessibleRequest.fromBuffer(value),
        ($0.AccessibleCorrespondentResponse value) => value.writeToBuffer()));
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

  $async.Future<$0.AccessibleCorrespondentResponse> accessibleCorrespondent_Pre($grpc.ServiceCall $call, $async.Future<$0.AccessibleRequest> $request) async {
    return accessibleCorrespondent($call, await $request);
  }

  $async.Future<$0.LazyRepAdvisorResponse> lazyRepAdvisor_Pre($grpc.ServiceCall $call, $async.Future<$0.LazyAccountRequest> $request) async {
    return lazyRepAdvisor($call, await $request);
  }

  $async.Future<$0.LazyAccountResponse> lazyAccount($grpc.ServiceCall call, $0.LazyAccountRequest request);
  $async.Future<$0.LazyLoadSecurityResponse> lazySecurity($grpc.ServiceCall call, $0.LazyLoadSecurityRequest request);
  $async.Future<$0.AccessibleCorrespondentResponse> accessibleCorrespondent($grpc.ServiceCall call, $0.AccessibleRequest request);
  $async.Future<$0.LazyRepAdvisorResponse> lazyRepAdvisor($grpc.ServiceCall call, $0.LazyAccountRequest request);
}
