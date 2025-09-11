//
//  Generated code. Do not modify.
//  source: proto/usrpb/usraccess.proto
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

import '../../google/protobuf/empty.pb.dart' as $1;
import 'access.pb.dart' as $0;

export 'access.pb.dart';

@$pb.GrpcServiceName('usrpb.UsrAccessService')
class UsrAccessServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$listUsrAccess = $grpc.ClientMethod<$0.ListUsrAccessRequest, $0.ListUsrAccessResponse>(
      '/usrpb.UsrAccessService/ListUsrAccess',
      ($0.ListUsrAccessRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListUsrAccessResponse.fromBuffer(value));
  static final _$updateAmountLimit = $grpc.ClientMethod<$0.UpdateAmountLimitRequest, $1.Empty>(
      '/usrpb.UsrAccessService/UpdateAmountLimit',
      ($0.UpdateAmountLimitRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  UsrAccessServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.ListUsrAccessResponse> listUsrAccess($0.ListUsrAccessRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listUsrAccess, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> updateAmountLimit($0.UpdateAmountLimitRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateAmountLimit, request, options: options);
  }
}

@$pb.GrpcServiceName('usrpb.UsrAccessService')
abstract class UsrAccessServiceBase extends $grpc.Service {
  $core.String get $name => 'usrpb.UsrAccessService';

  UsrAccessServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListUsrAccessRequest, $0.ListUsrAccessResponse>(
        'ListUsrAccess',
        listUsrAccess_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListUsrAccessRequest.fromBuffer(value),
        ($0.ListUsrAccessResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateAmountLimitRequest, $1.Empty>(
        'UpdateAmountLimit',
        updateAmountLimit_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateAmountLimitRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListUsrAccessResponse> listUsrAccess_Pre($grpc.ServiceCall $call, $async.Future<$0.ListUsrAccessRequest> $request) async {
    return listUsrAccess($call, await $request);
  }

  $async.Future<$1.Empty> updateAmountLimit_Pre($grpc.ServiceCall $call, $async.Future<$0.UpdateAmountLimitRequest> $request) async {
    return updateAmountLimit($call, await $request);
  }

  $async.Future<$0.ListUsrAccessResponse> listUsrAccess($grpc.ServiceCall call, $0.ListUsrAccessRequest request);
  $async.Future<$1.Empty> updateAmountLimit($grpc.ServiceCall call, $0.UpdateAmountLimitRequest request);
}
