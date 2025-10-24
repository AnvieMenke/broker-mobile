//
//  Generated code. Do not modify.
//  source: proto/admpb/contactus.proto
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

import 'contactus.pb.dart' as $0;

export 'contactus.pb.dart';

@$pb.GrpcServiceName('admpb.ContactUsService')
class ContactUsServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$updateContactUs = $grpc.ClientMethod<$0.ContactUs, $0.UpdateContactUsResponse>(
      '/admpb.ContactUsService/UpdateContactUs',
      ($0.ContactUs value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateContactUsResponse.fromBuffer(value));
  static final _$listContactUs = $grpc.ClientMethod<$0.ListContactUsRequest, $0.ListContactUsResponse>(
      '/admpb.ContactUsService/ListContactUs',
      ($0.ListContactUsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListContactUsResponse.fromBuffer(value));
  static final _$createContactUs = $grpc.ClientMethod<$0.ContactUs, $0.CreateContactUsResponse>(
      '/admpb.ContactUsService/CreateContactUs',
      ($0.ContactUs value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateContactUsResponse.fromBuffer(value));
  static final _$getNewId = $grpc.ClientMethod<$0.NewIdEmptyRequest, $0.ContactUs>(
      '/admpb.ContactUsService/GetNewId',
      ($0.NewIdEmptyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ContactUs.fromBuffer(value));

  ContactUsServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.UpdateContactUsResponse> updateContactUs($0.ContactUs request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateContactUs, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListContactUsResponse> listContactUs($0.ListContactUsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listContactUs, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateContactUsResponse> createContactUs($0.ContactUs request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createContactUs, request, options: options);
  }

  $grpc.ResponseFuture<$0.ContactUs> getNewId($0.NewIdEmptyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getNewId, request, options: options);
  }
}

@$pb.GrpcServiceName('admpb.ContactUsService')
abstract class ContactUsServiceBase extends $grpc.Service {
  $core.String get $name => 'admpb.ContactUsService';

  ContactUsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ContactUs, $0.UpdateContactUsResponse>(
        'UpdateContactUs',
        updateContactUs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ContactUs.fromBuffer(value),
        ($0.UpdateContactUsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListContactUsRequest, $0.ListContactUsResponse>(
        'ListContactUs',
        listContactUs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListContactUsRequest.fromBuffer(value),
        ($0.ListContactUsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ContactUs, $0.CreateContactUsResponse>(
        'CreateContactUs',
        createContactUs_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ContactUs.fromBuffer(value),
        ($0.CreateContactUsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NewIdEmptyRequest, $0.ContactUs>(
        'GetNewId',
        getNewId_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.NewIdEmptyRequest.fromBuffer(value),
        ($0.ContactUs value) => value.writeToBuffer()));
  }

  $async.Future<$0.UpdateContactUsResponse> updateContactUs_Pre($grpc.ServiceCall $call, $async.Future<$0.ContactUs> $request) async {
    return updateContactUs($call, await $request);
  }

  $async.Future<$0.ListContactUsResponse> listContactUs_Pre($grpc.ServiceCall $call, $async.Future<$0.ListContactUsRequest> $request) async {
    return listContactUs($call, await $request);
  }

  $async.Future<$0.CreateContactUsResponse> createContactUs_Pre($grpc.ServiceCall $call, $async.Future<$0.ContactUs> $request) async {
    return createContactUs($call, await $request);
  }

  $async.Future<$0.ContactUs> getNewId_Pre($grpc.ServiceCall $call, $async.Future<$0.NewIdEmptyRequest> $request) async {
    return getNewId($call, await $request);
  }

  $async.Future<$0.UpdateContactUsResponse> updateContactUs($grpc.ServiceCall call, $0.ContactUs request);
  $async.Future<$0.ListContactUsResponse> listContactUs($grpc.ServiceCall call, $0.ListContactUsRequest request);
  $async.Future<$0.CreateContactUsResponse> createContactUs($grpc.ServiceCall call, $0.ContactUs request);
  $async.Future<$0.ContactUs> getNewId($grpc.ServiceCall call, $0.NewIdEmptyRequest request);
}
