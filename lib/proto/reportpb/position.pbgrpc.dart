//
//  Generated code. Do not modify.
//  source: proto/reportpb/position.proto
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

import 'position.pb.dart' as $0;

export 'position.pb.dart';

@$pb.GrpcServiceName('reportpb.PositionService')
class PositionServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$listPosition = $grpc.ClientMethod<$0.ListPositionRequest, $0.ListPositionResponse>(
      '/reportpb.PositionService/ListPosition',
      ($0.ListPositionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListPositionResponse.fromBuffer(value));
  static final _$getPositionAccountAllocation = $grpc.ClientMethod<$0.GetPositionAccountAllocationRequest, $0.GetPositionAccountAllocationResponse>(
      '/reportpb.PositionService/GetPositionAccountAllocation',
      ($0.GetPositionAccountAllocationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetPositionAccountAllocationResponse.fromBuffer(value));

  PositionServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.ListPositionResponse> listPosition($0.ListPositionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listPosition, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetPositionAccountAllocationResponse> getPositionAccountAllocation($0.GetPositionAccountAllocationRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPositionAccountAllocation, request, options: options);
  }
}

@$pb.GrpcServiceName('reportpb.PositionService')
abstract class PositionServiceBase extends $grpc.Service {
  $core.String get $name => 'reportpb.PositionService';

  PositionServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListPositionRequest, $0.ListPositionResponse>(
        'ListPosition',
        listPosition_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListPositionRequest.fromBuffer(value),
        ($0.ListPositionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetPositionAccountAllocationRequest, $0.GetPositionAccountAllocationResponse>(
        'GetPositionAccountAllocation',
        getPositionAccountAllocation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetPositionAccountAllocationRequest.fromBuffer(value),
        ($0.GetPositionAccountAllocationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListPositionResponse> listPosition_Pre($grpc.ServiceCall $call, $async.Future<$0.ListPositionRequest> $request) async {
    return listPosition($call, await $request);
  }

  $async.Future<$0.GetPositionAccountAllocationResponse> getPositionAccountAllocation_Pre($grpc.ServiceCall $call, $async.Future<$0.GetPositionAccountAllocationRequest> $request) async {
    return getPositionAccountAllocation($call, await $request);
  }

  $async.Future<$0.ListPositionResponse> listPosition($grpc.ServiceCall call, $0.ListPositionRequest request);
  $async.Future<$0.GetPositionAccountAllocationResponse> getPositionAccountAllocation($grpc.ServiceCall call, $0.GetPositionAccountAllocationRequest request);
}
