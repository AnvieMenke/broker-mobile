//
//  Generated code. Do not modify.
//  source: proto/marginpb/calllog.proto
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

import 'calllog.pb.dart' as $0;

export 'calllog.pb.dart';

@$pb.GrpcServiceName('marginpb.CallLogService')
class CallLogServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$listCallLog = $grpc.ClientMethod<$0.ListCallLogRequest, $0.ListCallLogResponse>(
      '/marginpb.CallLogService/ListCallLog',
      ($0.ListCallLogRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListCallLogResponse.fromBuffer(value));
  static final _$updateCallLog = $grpc.ClientMethod<$0.CallLog, $0.UpdateCallLogResponse>(
      '/marginpb.CallLogService/UpdateCallLog',
      ($0.CallLog value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateCallLogResponse.fromBuffer(value));
  static final _$callNotice = $grpc.ClientMethod<$0.CallNoticeRequest, $0.EmptyResponse>(
      '/marginpb.CallLogService/CallNotice',
      ($0.CallNoticeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EmptyResponse.fromBuffer(value));

  CallLogServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.ListCallLogResponse> listCallLog($0.ListCallLogRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listCallLog, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateCallLogResponse> updateCallLog($0.CallLog request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateCallLog, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyResponse> callNotice($0.CallNoticeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$callNotice, request, options: options);
  }
}

@$pb.GrpcServiceName('marginpb.CallLogService')
abstract class CallLogServiceBase extends $grpc.Service {
  $core.String get $name => 'marginpb.CallLogService';

  CallLogServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListCallLogRequest, $0.ListCallLogResponse>(
        'ListCallLog',
        listCallLog_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListCallLogRequest.fromBuffer(value),
        ($0.ListCallLogResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CallLog, $0.UpdateCallLogResponse>(
        'UpdateCallLog',
        updateCallLog_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CallLog.fromBuffer(value),
        ($0.UpdateCallLogResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CallNoticeRequest, $0.EmptyResponse>(
        'CallNotice',
        callNotice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CallNoticeRequest.fromBuffer(value),
        ($0.EmptyResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListCallLogResponse> listCallLog_Pre($grpc.ServiceCall $call, $async.Future<$0.ListCallLogRequest> $request) async {
    return listCallLog($call, await $request);
  }

  $async.Future<$0.UpdateCallLogResponse> updateCallLog_Pre($grpc.ServiceCall $call, $async.Future<$0.CallLog> $request) async {
    return updateCallLog($call, await $request);
  }

  $async.Future<$0.EmptyResponse> callNotice_Pre($grpc.ServiceCall $call, $async.Future<$0.CallNoticeRequest> $request) async {
    return callNotice($call, await $request);
  }

  $async.Future<$0.ListCallLogResponse> listCallLog($grpc.ServiceCall call, $0.ListCallLogRequest request);
  $async.Future<$0.UpdateCallLogResponse> updateCallLog($grpc.ServiceCall call, $0.CallLog request);
  $async.Future<$0.EmptyResponse> callNotice($grpc.ServiceCall call, $0.CallNoticeRequest request);
}
