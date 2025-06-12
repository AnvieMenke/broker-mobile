//
//  Generated code. Do not modify.
//  source: proto/usrpb/useraccess.proto
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

import 'useraccess.pb.dart' as $0;

export 'useraccess.pb.dart';

@$pb.GrpcServiceName('usrpb.UserAccessService')
class UserAccessServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$listUserAccess = $grpc.ClientMethod<$0.ListUserAccessRequest, $0.ListUserAccessResponse>(
      '/usrpb.UserAccessService/ListUserAccess',
      ($0.ListUserAccessRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListUserAccessResponse.fromBuffer(value));
  static final _$saveUserAccess = $grpc.ClientMethod<$0.UserAccess, $0.UserAccess>(
      '/usrpb.UserAccessService/SaveUserAccess',
      ($0.UserAccess value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UserAccess.fromBuffer(value));

  UserAccessServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.ListUserAccessResponse> listUserAccess($0.ListUserAccessRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listUserAccess, request, options: options);
  }

  $grpc.ResponseFuture<$0.UserAccess> saveUserAccess($0.UserAccess request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$saveUserAccess, request, options: options);
  }
}

@$pb.GrpcServiceName('usrpb.UserAccessService')
abstract class UserAccessServiceBase extends $grpc.Service {
  $core.String get $name => 'usrpb.UserAccessService';

  UserAccessServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListUserAccessRequest, $0.ListUserAccessResponse>(
        'ListUserAccess',
        listUserAccess_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListUserAccessRequest.fromBuffer(value),
        ($0.ListUserAccessResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UserAccess, $0.UserAccess>(
        'SaveUserAccess',
        saveUserAccess_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserAccess.fromBuffer(value),
        ($0.UserAccess value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListUserAccessResponse> listUserAccess_Pre($grpc.ServiceCall $call, $async.Future<$0.ListUserAccessRequest> $request) async {
    return listUserAccess($call, await $request);
  }

  $async.Future<$0.UserAccess> saveUserAccess_Pre($grpc.ServiceCall $call, $async.Future<$0.UserAccess> $request) async {
    return saveUserAccess($call, await $request);
  }

  $async.Future<$0.ListUserAccessResponse> listUserAccess($grpc.ServiceCall call, $0.ListUserAccessRequest request);
  $async.Future<$0.UserAccess> saveUserAccess($grpc.ServiceCall call, $0.UserAccess request);
}
