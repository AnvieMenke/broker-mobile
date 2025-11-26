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

  ProfileServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.ReadProfileResponse> readProfile($0.ReadProfileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readProfile, request, options: options);
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
  }

  $async.Future<$0.ReadProfileResponse> readProfile_Pre($grpc.ServiceCall $call, $async.Future<$0.ReadProfileRequest> $request) async {
    return readProfile($call, await $request);
  }

  $async.Future<$0.ReadProfileResponse> readProfile($grpc.ServiceCall call, $0.ReadProfileRequest request);
}
