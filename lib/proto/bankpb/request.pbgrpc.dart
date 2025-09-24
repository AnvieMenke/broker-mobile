//
//  Generated code. Do not modify.
//  source: proto/bankpb/request.proto
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

import 'request.pb.dart' as $0;

export 'request.pb.dart';

@$pb.GrpcServiceName('bankpb.RequestService')
class RequestServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$create = $grpc.ClientMethod<$0.CreateRequest, $0.CreateResponse>(
      '/bankpb.RequestService/Create',
      ($0.CreateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateResponse.fromBuffer(value));
  static final _$update = $grpc.ClientMethod<$0.UpdateRequest, $0.UpdateResponse>(
      '/bankpb.RequestService/Update',
      ($0.UpdateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateResponse.fromBuffer(value));
  static final _$read = $grpc.ClientMethod<$0.ReadRequest, $0.ReadResponse>(
      '/bankpb.RequestService/Read',
      ($0.ReadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ReadResponse.fromBuffer(value));
  static final _$list = $grpc.ClientMethod<$0.ListRequest, $0.ListResponse>(
      '/bankpb.RequestService/List',
      ($0.ListRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListResponse.fromBuffer(value));
  static final _$listRequestAudit = $grpc.ClientMethod<$0.ListRequestAuditRequest, $0.ListRequestAuditResponse>(
      '/bankpb.RequestService/ListRequestAudit',
      ($0.ListRequestAuditRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListRequestAuditResponse.fromBuffer(value));
  static final _$readMaximumWithdrawable = $grpc.ClientMethod<$0.ReadMaximumWithdrawableRequest, $0.ReadMaximumWithdrawableResponse>(
      '/bankpb.RequestService/ReadMaximumWithdrawable',
      ($0.ReadMaximumWithdrawableRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ReadMaximumWithdrawableResponse.fromBuffer(value));
  static final _$getFee = $grpc.ClientMethod<$0.GetFeeRequest, $0.GetFeeResponse>(
      '/bankpb.RequestService/GetFee',
      ($0.GetFeeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetFeeResponse.fromBuffer(value));

  RequestServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.CreateResponse> create($0.CreateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$create, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateResponse> update($0.UpdateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$update, request, options: options);
  }

  $grpc.ResponseFuture<$0.ReadResponse> read($0.ReadRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$read, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListResponse> list($0.ListRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$list, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListRequestAuditResponse> listRequestAudit($0.ListRequestAuditRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listRequestAudit, request, options: options);
  }

  $grpc.ResponseFuture<$0.ReadMaximumWithdrawableResponse> readMaximumWithdrawable($0.ReadMaximumWithdrawableRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$readMaximumWithdrawable, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetFeeResponse> getFee($0.GetFeeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getFee, request, options: options);
  }
}

@$pb.GrpcServiceName('bankpb.RequestService')
abstract class RequestServiceBase extends $grpc.Service {
  $core.String get $name => 'bankpb.RequestService';

  RequestServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateRequest, $0.CreateResponse>(
        'Create',
        create_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateRequest.fromBuffer(value),
        ($0.CreateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateRequest, $0.UpdateResponse>(
        'Update',
        update_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateRequest.fromBuffer(value),
        ($0.UpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReadRequest, $0.ReadResponse>(
        'Read',
        read_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ReadRequest.fromBuffer(value),
        ($0.ReadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListRequest, $0.ListResponse>(
        'List',
        list_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListRequest.fromBuffer(value),
        ($0.ListResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListRequestAuditRequest, $0.ListRequestAuditResponse>(
        'ListRequestAudit',
        listRequestAudit_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListRequestAuditRequest.fromBuffer(value),
        ($0.ListRequestAuditResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ReadMaximumWithdrawableRequest, $0.ReadMaximumWithdrawableResponse>(
        'ReadMaximumWithdrawable',
        readMaximumWithdrawable_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ReadMaximumWithdrawableRequest.fromBuffer(value),
        ($0.ReadMaximumWithdrawableResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetFeeRequest, $0.GetFeeResponse>(
        'GetFee',
        getFee_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetFeeRequest.fromBuffer(value),
        ($0.GetFeeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateResponse> create_Pre($grpc.ServiceCall $call, $async.Future<$0.CreateRequest> $request) async {
    return create($call, await $request);
  }

  $async.Future<$0.UpdateResponse> update_Pre($grpc.ServiceCall $call, $async.Future<$0.UpdateRequest> $request) async {
    return update($call, await $request);
  }

  $async.Future<$0.ReadResponse> read_Pre($grpc.ServiceCall $call, $async.Future<$0.ReadRequest> $request) async {
    return read($call, await $request);
  }

  $async.Future<$0.ListResponse> list_Pre($grpc.ServiceCall $call, $async.Future<$0.ListRequest> $request) async {
    return list($call, await $request);
  }

  $async.Future<$0.ListRequestAuditResponse> listRequestAudit_Pre($grpc.ServiceCall $call, $async.Future<$0.ListRequestAuditRequest> $request) async {
    return listRequestAudit($call, await $request);
  }

  $async.Future<$0.ReadMaximumWithdrawableResponse> readMaximumWithdrawable_Pre($grpc.ServiceCall $call, $async.Future<$0.ReadMaximumWithdrawableRequest> $request) async {
    return readMaximumWithdrawable($call, await $request);
  }

  $async.Future<$0.GetFeeResponse> getFee_Pre($grpc.ServiceCall $call, $async.Future<$0.GetFeeRequest> $request) async {
    return getFee($call, await $request);
  }

  $async.Future<$0.CreateResponse> create($grpc.ServiceCall call, $0.CreateRequest request);
  $async.Future<$0.UpdateResponse> update($grpc.ServiceCall call, $0.UpdateRequest request);
  $async.Future<$0.ReadResponse> read($grpc.ServiceCall call, $0.ReadRequest request);
  $async.Future<$0.ListResponse> list($grpc.ServiceCall call, $0.ListRequest request);
  $async.Future<$0.ListRequestAuditResponse> listRequestAudit($grpc.ServiceCall call, $0.ListRequestAuditRequest request);
  $async.Future<$0.ReadMaximumWithdrawableResponse> readMaximumWithdrawable($grpc.ServiceCall call, $0.ReadMaximumWithdrawableRequest request);
  $async.Future<$0.GetFeeResponse> getFee($grpc.ServiceCall call, $0.GetFeeRequest request);
}
