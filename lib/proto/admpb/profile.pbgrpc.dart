//
//  Generated code. Do not modify.
//  source: proto/admpb/profile.proto
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

import 'profile.pb.dart' as $0;

export 'profile.pb.dart';

@$pb.GrpcServiceName('admpb.ProfileService')
class ProfileServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$readProfile = $grpc.ClientMethod<$0.ReadProfileRequest, $0.ReadProfileResponse>(
      '/admpb.ProfileService/ReadProfile',
      ($0.ReadProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ReadProfileResponse.fromBuffer(value));
  static final _$listProfile = $grpc.ClientMethod<$0.ListProfileRequest, $0.ListProfileResponse>(
      '/admpb.ProfileService/ListProfile',
      ($0.ListProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListProfileResponse.fromBuffer(value));
  static final _$executeProfile = $grpc.ClientMethod<$0.ExecuteProfileRequest, $0.ExecuteProfileResponse>(
      '/admpb.ProfileService/ExecuteProfile',
      ($0.ExecuteProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ExecuteProfileResponse.fromBuffer(value));
  static final _$getSettleDate = $grpc.ClientMethod<$0.SettleDateRequest, $0.ReadProfileResponse>(
      '/admpb.ProfileService/GetSettleDate',
      ($0.SettleDateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ReadProfileResponse.fromBuffer(value));
  static final _$updateProfile = $grpc.ClientMethod<$0.UpdateProfileRequest, $0.UpdateProfileResponse>(
      '/admpb.ProfileService/UpdateProfile',
      ($0.UpdateProfileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateProfileResponse.fromBuffer(value));

  ProfileServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.ReadProfileResponse> readProfile($0.ReadProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readProfile, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListProfileResponse> listProfile($0.ListProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listProfile, request, options: options);
  }

  $grpc.ResponseFuture<$0.ExecuteProfileResponse> executeProfile($0.ExecuteProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$executeProfile, request, options: options);
  }

  $grpc.ResponseFuture<$0.ReadProfileResponse> getSettleDate($0.SettleDateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSettleDate, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateProfileResponse> updateProfile($0.UpdateProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateProfile, request, options: options);
  }
}

@$pb.GrpcServiceName('admpb.ProfileService')
abstract class ProfileServiceBase extends $grpc.Service {
  $core.String get $name => 'admpb.ProfileService';

  ProfileServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ReadProfileRequest, $0.ReadProfileResponse>(
        'ReadProfile',
        readProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ReadProfileRequest.fromBuffer(value),
        ($0.ReadProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListProfileRequest, $0.ListProfileResponse>(
        'ListProfile',
        listProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListProfileRequest.fromBuffer(value),
        ($0.ListProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ExecuteProfileRequest, $0.ExecuteProfileResponse>(
        'ExecuteProfile',
        executeProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ExecuteProfileRequest.fromBuffer(value),
        ($0.ExecuteProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SettleDateRequest, $0.ReadProfileResponse>(
        'GetSettleDate',
        getSettleDate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SettleDateRequest.fromBuffer(value),
        ($0.ReadProfileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateProfileRequest, $0.UpdateProfileResponse>(
        'UpdateProfile',
        updateProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateProfileRequest.fromBuffer(value),
        ($0.UpdateProfileResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ReadProfileResponse> readProfile_Pre($grpc.ServiceCall $call, $async.Future<$0.ReadProfileRequest> $request) async {
    return readProfile($call, await $request);
  }

  $async.Future<$0.ListProfileResponse> listProfile_Pre($grpc.ServiceCall $call, $async.Future<$0.ListProfileRequest> $request) async {
    return listProfile($call, await $request);
  }

  $async.Future<$0.ExecuteProfileResponse> executeProfile_Pre($grpc.ServiceCall $call, $async.Future<$0.ExecuteProfileRequest> $request) async {
    return executeProfile($call, await $request);
  }

  $async.Future<$0.ReadProfileResponse> getSettleDate_Pre($grpc.ServiceCall $call, $async.Future<$0.SettleDateRequest> $request) async {
    return getSettleDate($call, await $request);
  }

  $async.Future<$0.UpdateProfileResponse> updateProfile_Pre($grpc.ServiceCall $call, $async.Future<$0.UpdateProfileRequest> $request) async {
    return updateProfile($call, await $request);
  }

  $async.Future<$0.ReadProfileResponse> readProfile($grpc.ServiceCall call, $0.ReadProfileRequest request);
  $async.Future<$0.ListProfileResponse> listProfile($grpc.ServiceCall call, $0.ListProfileRequest request);
  $async.Future<$0.ExecuteProfileResponse> executeProfile($grpc.ServiceCall call, $0.ExecuteProfileRequest request);
  $async.Future<$0.ReadProfileResponse> getSettleDate($grpc.ServiceCall call, $0.SettleDateRequest request);
  $async.Future<$0.UpdateProfileResponse> updateProfile($grpc.ServiceCall call, $0.UpdateProfileRequest request);
}
