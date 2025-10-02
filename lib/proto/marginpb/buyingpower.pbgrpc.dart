//
//  Generated code. Do not modify.
//  source: proto/marginpb/buyingpower.proto
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

import 'buyingpower.pb.dart' as $0;

export 'buyingpower.pb.dart';

@$pb.GrpcServiceName('marginpb.BuyingPowerService')
class BuyingPowerServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$listBuyingPower = $grpc.ClientMethod<$0.ListBuyingPowerRequest, $0.ListBuyingPowerResponse>(
      '/marginpb.BuyingPowerService/ListBuyingPower',
      ($0.ListBuyingPowerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListBuyingPowerResponse.fromBuffer(value));

  BuyingPowerServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.ListBuyingPowerResponse> listBuyingPower($0.ListBuyingPowerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listBuyingPower, request, options: options);
  }
}

@$pb.GrpcServiceName('marginpb.BuyingPowerService')
abstract class BuyingPowerServiceBase extends $grpc.Service {
  $core.String get $name => 'marginpb.BuyingPowerService';

  BuyingPowerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListBuyingPowerRequest, $0.ListBuyingPowerResponse>(
        'ListBuyingPower',
        listBuyingPower_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListBuyingPowerRequest.fromBuffer(value),
        ($0.ListBuyingPowerResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListBuyingPowerResponse> listBuyingPower_Pre($grpc.ServiceCall $call, $async.Future<$0.ListBuyingPowerRequest> $request) async {
    return listBuyingPower($call, await $request);
  }

  $async.Future<$0.ListBuyingPowerResponse> listBuyingPower($grpc.ServiceCall call, $0.ListBuyingPowerRequest request);
}
