//
//  Generated code. Do not modify.
//  source: proto/commonpb/systemcode.proto
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

@$pb.GrpcServiceName('commonpb.SystemCodeService')
class SystemCodeServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$lazySystemCode = $grpc.ClientMethod<$0.LazySystemCodeRequest, $0.SystemCodeResponse>(
      '/commonpb.SystemCodeService/LazySystemCode',
      ($0.LazySystemCodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SystemCodeResponse.fromBuffer(value));
  static final _$listSystemCode = $grpc.ClientMethod<$0.ListSystemCodeRequest, $0.SystemCodeResponse>(
      '/commonpb.SystemCodeService/ListSystemCode',
      ($0.ListSystemCodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SystemCodeResponse.fromBuffer(value));

  SystemCodeServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.SystemCodeResponse> lazySystemCode($0.LazySystemCodeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$lazySystemCode, request, options: options);
  }

  $grpc.ResponseFuture<$0.SystemCodeResponse> listSystemCode($0.ListSystemCodeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listSystemCode, request, options: options);
  }
}

@$pb.GrpcServiceName('commonpb.SystemCodeService')
abstract class SystemCodeServiceBase extends $grpc.Service {
  $core.String get $name => 'commonpb.SystemCodeService';

  SystemCodeServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LazySystemCodeRequest, $0.SystemCodeResponse>(
        'LazySystemCode',
        lazySystemCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LazySystemCodeRequest.fromBuffer(value),
        ($0.SystemCodeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListSystemCodeRequest, $0.SystemCodeResponse>(
        'ListSystemCode',
        listSystemCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListSystemCodeRequest.fromBuffer(value),
        ($0.SystemCodeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.SystemCodeResponse> lazySystemCode_Pre($grpc.ServiceCall $call, $async.Future<$0.LazySystemCodeRequest> $request) async {
    return lazySystemCode($call, await $request);
  }

  $async.Future<$0.SystemCodeResponse> listSystemCode_Pre($grpc.ServiceCall $call, $async.Future<$0.ListSystemCodeRequest> $request) async {
    return listSystemCode($call, await $request);
  }

  $async.Future<$0.SystemCodeResponse> lazySystemCode($grpc.ServiceCall call, $0.LazySystemCodeRequest request);
  $async.Future<$0.SystemCodeResponse> listSystemCode($grpc.ServiceCall call, $0.ListSystemCodeRequest request);
}
