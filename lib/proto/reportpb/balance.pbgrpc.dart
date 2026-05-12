//
//  Generated code. Do not modify.
//  source: proto/reportpb/balance.proto
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

import 'balance.pb.dart' as $0;

export 'balance.pb.dart';

@$pb.GrpcServiceName('reportpb.BalanceService')
class BalanceServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$listBalance = $grpc.ClientMethod<$0.ListBalanceRequest, $0.ListBalanceResponse>(
      '/reportpb.BalanceService/ListBalance',
      ($0.ListBalanceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListBalanceResponse.fromBuffer(value));
  static final _$listDashboardBalance = $grpc.ClientMethod<$0.ListDashboardBalanceRequest, $0.ListDashboardBalanceResponse>(
      '/reportpb.BalanceService/ListDashboardBalance',
      ($0.ListDashboardBalanceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListDashboardBalanceResponse.fromBuffer(value));
  static final _$listBalanceSummaryReport = $grpc.ClientMethod<$0.ListBalanceRequest, $0.ListBalanceSummaryReportResponse>(
      '/reportpb.BalanceService/ListBalanceSummaryReport',
      ($0.ListBalanceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListBalanceSummaryReportResponse.fromBuffer(value));

  BalanceServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.ListBalanceResponse> listBalance($0.ListBalanceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listBalance, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListDashboardBalanceResponse> listDashboardBalance($0.ListDashboardBalanceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listDashboardBalance, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListBalanceSummaryReportResponse> listBalanceSummaryReport($0.ListBalanceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listBalanceSummaryReport, request, options: options);
  }
}

@$pb.GrpcServiceName('reportpb.BalanceService')
abstract class BalanceServiceBase extends $grpc.Service {
  $core.String get $name => 'reportpb.BalanceService';

  BalanceServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListBalanceRequest, $0.ListBalanceResponse>(
        'ListBalance',
        listBalance_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListBalanceRequest.fromBuffer(value),
        ($0.ListBalanceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListDashboardBalanceRequest, $0.ListDashboardBalanceResponse>(
        'ListDashboardBalance',
        listDashboardBalance_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListDashboardBalanceRequest.fromBuffer(value),
        ($0.ListDashboardBalanceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListBalanceRequest, $0.ListBalanceSummaryReportResponse>(
        'ListBalanceSummaryReport',
        listBalanceSummaryReport_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListBalanceRequest.fromBuffer(value),
        ($0.ListBalanceSummaryReportResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListBalanceResponse> listBalance_Pre($grpc.ServiceCall $call, $async.Future<$0.ListBalanceRequest> $request) async {
    return listBalance($call, await $request);
  }

  $async.Future<$0.ListDashboardBalanceResponse> listDashboardBalance_Pre($grpc.ServiceCall $call, $async.Future<$0.ListDashboardBalanceRequest> $request) async {
    return listDashboardBalance($call, await $request);
  }

  $async.Future<$0.ListBalanceSummaryReportResponse> listBalanceSummaryReport_Pre($grpc.ServiceCall $call, $async.Future<$0.ListBalanceRequest> $request) async {
    return listBalanceSummaryReport($call, await $request);
  }

  $async.Future<$0.ListBalanceResponse> listBalance($grpc.ServiceCall call, $0.ListBalanceRequest request);
  $async.Future<$0.ListDashboardBalanceResponse> listDashboardBalance($grpc.ServiceCall call, $0.ListDashboardBalanceRequest request);
  $async.Future<$0.ListBalanceSummaryReportResponse> listBalanceSummaryReport($grpc.ServiceCall call, $0.ListBalanceRequest request);
}
