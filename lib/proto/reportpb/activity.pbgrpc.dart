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

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'activity.pb.dart' as $0;

export 'activity.pb.dart';

@$pb.GrpcServiceName('reportpb.ActivityService')
class ActivityServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$listActivity = $grpc.ClientMethod<$0.ListActivityRequest, $0.ListActivityResponse>(
      '/reportpb.ActivityService/ListActivity',
      ($0.ListActivityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListActivityResponse.fromBuffer(value));
  static final _$listActivities = $grpc.ClientMethod<$0.ListActivityRequest, $0.ListActivitiesResponse>(
      '/reportpb.ActivityService/ListActivities',
      ($0.ListActivityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListActivitiesResponse.fromBuffer(value));
  static final _$getActivitySummary = $grpc.ClientMethod<$0.ListActivityRequest, $0.ListActivitySummary>(
      '/reportpb.ActivityService/GetActivitySummary',
      ($0.ListActivityRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListActivitySummary.fromBuffer(value));
  static final _$listActivityReportDetails = $grpc.ClientMethod<$0.ListActivityReportDetailsRequest, $0.ActivityReportDetails>(
      '/reportpb.ActivityService/ListActivityReportDetails',
      ($0.ListActivityReportDetailsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ActivityReportDetails.fromBuffer(value));

  ActivityServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.ListActivityResponse> listActivity($0.ListActivityRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listActivity, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListActivitiesResponse> listActivities($0.ListActivityRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listActivities, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListActivitySummary> getActivitySummary($0.ListActivityRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getActivitySummary, request, options: options);
  }

  $grpc.ResponseFuture<$0.ActivityReportDetails> listActivityReportDetails($0.ListActivityReportDetailsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listActivityReportDetails, request, options: options);
  }
}

@$pb.GrpcServiceName('reportpb.ActivityService')
abstract class ActivityServiceBase extends $grpc.Service {
  $core.String get $name => 'reportpb.ActivityService';

  ActivityServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListActivityRequest, $0.ListActivityResponse>(
        'ListActivity',
        listActivity_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListActivityRequest.fromBuffer(value),
        ($0.ListActivityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListActivityRequest, $0.ListActivitiesResponse>(
        'ListActivities',
        listActivities_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListActivityRequest.fromBuffer(value),
        ($0.ListActivitiesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListActivityRequest, $0.ListActivitySummary>(
        'GetActivitySummary',
        getActivitySummary_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListActivityRequest.fromBuffer(value),
        ($0.ListActivitySummary value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListActivityReportDetailsRequest, $0.ActivityReportDetails>(
        'ListActivityReportDetails',
        listActivityReportDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListActivityReportDetailsRequest.fromBuffer(value),
        ($0.ActivityReportDetails value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListActivityResponse> listActivity_Pre($grpc.ServiceCall $call, $async.Future<$0.ListActivityRequest> $request) async {
    return listActivity($call, await $request);
  }

  $async.Future<$0.ListActivitiesResponse> listActivities_Pre($grpc.ServiceCall $call, $async.Future<$0.ListActivityRequest> $request) async {
    return listActivities($call, await $request);
  }

  $async.Future<$0.ListActivitySummary> getActivitySummary_Pre($grpc.ServiceCall $call, $async.Future<$0.ListActivityRequest> $request) async {
    return getActivitySummary($call, await $request);
  }

  $async.Future<$0.ActivityReportDetails> listActivityReportDetails_Pre($grpc.ServiceCall $call, $async.Future<$0.ListActivityReportDetailsRequest> $request) async {
    return listActivityReportDetails($call, await $request);
  }

  $async.Future<$0.ListActivityResponse> listActivity($grpc.ServiceCall call, $0.ListActivityRequest request);
  $async.Future<$0.ListActivitiesResponse> listActivities($grpc.ServiceCall call, $0.ListActivityRequest request);
  $async.Future<$0.ListActivitySummary> getActivitySummary($grpc.ServiceCall call, $0.ListActivityRequest request);
  $async.Future<$0.ActivityReportDetails> listActivityReportDetails($grpc.ServiceCall call, $0.ListActivityReportDetailsRequest request);
}
