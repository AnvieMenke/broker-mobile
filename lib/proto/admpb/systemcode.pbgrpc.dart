//
//  Generated code. Do not modify.
//  source: proto/admpb/systemcode.proto
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

import 'systemcode.pb.dart' as $0;

export 'systemcode.pb.dart';

@$pb.GrpcServiceName('admpb.SystemCodeService')
class SystemCodeServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$createSystemCode = $grpc.ClientMethod<$0.SystemCode, $0.CreateSystemCodeResponse>(
      '/admpb.SystemCodeService/CreateSystemCode',
      ($0.SystemCode value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateSystemCodeResponse.fromBuffer(value));
  static final _$updateSystemCode = $grpc.ClientMethod<$0.SystemCode, $0.UpdateSystemCodeResponse>(
      '/admpb.SystemCodeService/UpdateSystemCode',
      ($0.SystemCode value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateSystemCodeResponse.fromBuffer(value));
  static final _$readSystemCode = $grpc.ClientMethod<$0.SystemCode, $0.ReadSystemCodeResponse>(
      '/admpb.SystemCodeService/ReadSystemCode',
      ($0.SystemCode value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ReadSystemCodeResponse.fromBuffer(value));
  static final _$deleteSystemCode = $grpc.ClientMethod<$0.DeleteSystemCodeRequest, $0.DeleteSystemCodeResponse>(
      '/admpb.SystemCodeService/DeleteSystemCode',
      ($0.DeleteSystemCodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DeleteSystemCodeResponse.fromBuffer(value));
  static final _$listSystemCode = $grpc.ClientMethod<$0.SystemCode, $0.ListSystemCodeResponse>(
      '/admpb.SystemCodeService/ListSystemCode',
      ($0.SystemCode value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListSystemCodeResponse.fromBuffer(value));

  SystemCodeServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.CreateSystemCodeResponse> createSystemCode($0.SystemCode request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createSystemCode, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateSystemCodeResponse> updateSystemCode($0.SystemCode request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateSystemCode, request, options: options);
  }

  $grpc.ResponseFuture<$0.ReadSystemCodeResponse> readSystemCode($0.SystemCode request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readSystemCode, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteSystemCodeResponse> deleteSystemCode($0.DeleteSystemCodeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteSystemCode, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListSystemCodeResponse> listSystemCode($0.SystemCode request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSystemCode, request, options: options);
  }
}

@$pb.GrpcServiceName('admpb.SystemCodeService')
abstract class SystemCodeServiceBase extends $grpc.Service {
  $core.String get $name => 'admpb.SystemCodeService';

  SystemCodeServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SystemCode, $0.CreateSystemCodeResponse>(
        'CreateSystemCode',
        createSystemCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SystemCode.fromBuffer(value),
        ($0.CreateSystemCodeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SystemCode, $0.UpdateSystemCodeResponse>(
        'UpdateSystemCode',
        updateSystemCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SystemCode.fromBuffer(value),
        ($0.UpdateSystemCodeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SystemCode, $0.ReadSystemCodeResponse>(
        'ReadSystemCode',
        readSystemCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SystemCode.fromBuffer(value),
        ($0.ReadSystemCodeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteSystemCodeRequest, $0.DeleteSystemCodeResponse>(
        'DeleteSystemCode',
        deleteSystemCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteSystemCodeRequest.fromBuffer(value),
        ($0.DeleteSystemCodeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SystemCode, $0.ListSystemCodeResponse>(
        'ListSystemCode',
        listSystemCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SystemCode.fromBuffer(value),
        ($0.ListSystemCodeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateSystemCodeResponse> createSystemCode_Pre($grpc.ServiceCall $call, $async.Future<$0.SystemCode> $request) async {
    return createSystemCode($call, await $request);
  }

  $async.Future<$0.UpdateSystemCodeResponse> updateSystemCode_Pre($grpc.ServiceCall $call, $async.Future<$0.SystemCode> $request) async {
    return updateSystemCode($call, await $request);
  }

  $async.Future<$0.ReadSystemCodeResponse> readSystemCode_Pre($grpc.ServiceCall $call, $async.Future<$0.SystemCode> $request) async {
    return readSystemCode($call, await $request);
  }

  $async.Future<$0.DeleteSystemCodeResponse> deleteSystemCode_Pre($grpc.ServiceCall $call, $async.Future<$0.DeleteSystemCodeRequest> $request) async {
    return deleteSystemCode($call, await $request);
  }

  $async.Future<$0.ListSystemCodeResponse> listSystemCode_Pre($grpc.ServiceCall $call, $async.Future<$0.SystemCode> $request) async {
    return listSystemCode($call, await $request);
  }

  $async.Future<$0.CreateSystemCodeResponse> createSystemCode($grpc.ServiceCall call, $0.SystemCode request);
  $async.Future<$0.UpdateSystemCodeResponse> updateSystemCode($grpc.ServiceCall call, $0.SystemCode request);
  $async.Future<$0.ReadSystemCodeResponse> readSystemCode($grpc.ServiceCall call, $0.SystemCode request);
  $async.Future<$0.DeleteSystemCodeResponse> deleteSystemCode($grpc.ServiceCall call, $0.DeleteSystemCodeRequest request);
  $async.Future<$0.ListSystemCodeResponse> listSystemCode($grpc.ServiceCall call, $0.SystemCode request);
}
