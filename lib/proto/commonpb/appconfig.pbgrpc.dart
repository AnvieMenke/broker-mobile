//
//  Generated code. Do not modify.
//  source: proto/commonpb/appconfig.proto
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
import 'appconfig.pb.dart' as $1;

export 'appconfig.pb.dart';

@$pb.GrpcServiceName('commonpb.AppConfigService')
class AppConfigServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$getAppConfig = $grpc.ClientMethod<$0.Empty, $1.AppConfig>(
      '/commonpb.AppConfigService/GetAppConfig',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.AppConfig.fromBuffer(value));
  static final _$getMobileAppConfig = $grpc.ClientMethod<$1.MobileAppConfigRequest, $1.MobileAppConfig>(
      '/commonpb.AppConfigService/GetMobileAppConfig',
      ($1.MobileAppConfigRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.MobileAppConfig.fromBuffer(value));

  AppConfigServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$1.AppConfig> getAppConfig($0.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAppConfig, request, options: options);
  }

  $grpc.ResponseFuture<$1.MobileAppConfig> getMobileAppConfig($1.MobileAppConfigRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMobileAppConfig, request, options: options);
  }
}

@$pb.GrpcServiceName('commonpb.AppConfigService')
abstract class AppConfigServiceBase extends $grpc.Service {
  $core.String get $name => 'commonpb.AppConfigService';

  AppConfigServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $1.AppConfig>(
        'GetAppConfig',
        getAppConfig_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($1.AppConfig value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.MobileAppConfigRequest, $1.MobileAppConfig>(
        'GetMobileAppConfig',
        getMobileAppConfig_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.MobileAppConfigRequest.fromBuffer(value),
        ($1.MobileAppConfig value) => value.writeToBuffer()));
  }

  $async.Future<$1.AppConfig> getAppConfig_Pre($grpc.ServiceCall $call, $async.Future<$0.Empty> $request) async {
    return getAppConfig($call, await $request);
  }

  $async.Future<$1.MobileAppConfig> getMobileAppConfig_Pre($grpc.ServiceCall $call, $async.Future<$1.MobileAppConfigRequest> $request) async {
    return getMobileAppConfig($call, await $request);
  }

  $async.Future<$1.AppConfig> getAppConfig($grpc.ServiceCall call, $0.Empty request);
  $async.Future<$1.MobileAppConfig> getMobileAppConfig($grpc.ServiceCall call, $1.MobileAppConfigRequest request);
}
