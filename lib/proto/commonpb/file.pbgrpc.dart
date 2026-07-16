//
//  Generated code. Do not modify.
//  source: proto/commonpb/file.proto
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
import 'file.pb.dart' as $0;

export 'file.pb.dart';

@$pb.GrpcServiceName('commonpb.FileService')
class FileServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$attachFile = $grpc.ClientMethod<$0.AttachFileRequest, $0.AttachedFile>(
      '/commonpb.FileService/AttachFile',
      ($0.AttachFileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AttachedFile.fromBuffer(value));
  static final _$listFile = $grpc.ClientMethod<$0.ListFileRequest, $0.ListFileResponse>(
      '/commonpb.FileService/ListFile',
      ($0.ListFileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListFileResponse.fromBuffer(value));
  static final _$deleteFile = $grpc.ClientMethod<$0.DeleteFileRequest, $1.Empty>(
      '/commonpb.FileService/DeleteFile',
      ($0.DeleteFileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$downloadFile = $grpc.ClientMethod<$0.DownloadFileRequest, $0.File>(
      '/commonpb.FileService/DownloadFile',
      ($0.DownloadFileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.File.fromBuffer(value));

  FileServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.AttachedFile> attachFile($0.AttachFileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$attachFile, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListFileResponse> listFile($0.ListFileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listFile, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> deleteFile($0.DeleteFileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteFile, request, options: options);
  }

  $grpc.ResponseFuture<$0.File> downloadFile($0.DownloadFileRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$downloadFile, request, options: options);
  }
}

@$pb.GrpcServiceName('commonpb.FileService')
abstract class FileServiceBase extends $grpc.Service {
  $core.String get $name => 'commonpb.FileService';

  FileServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AttachFileRequest, $0.AttachedFile>(
        'AttachFile',
        attachFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AttachFileRequest.fromBuffer(value),
        ($0.AttachedFile value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListFileRequest, $0.ListFileResponse>(
        'ListFile',
        listFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListFileRequest.fromBuffer(value),
        ($0.ListFileResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteFileRequest, $1.Empty>(
        'DeleteFile',
        deleteFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteFileRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DownloadFileRequest, $0.File>(
        'DownloadFile',
        downloadFile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DownloadFileRequest.fromBuffer(value),
        ($0.File value) => value.writeToBuffer()));
  }

  $async.Future<$0.AttachedFile> attachFile_Pre($grpc.ServiceCall $call, $async.Future<$0.AttachFileRequest> $request) async {
    return attachFile($call, await $request);
  }

  $async.Future<$0.ListFileResponse> listFile_Pre($grpc.ServiceCall $call, $async.Future<$0.ListFileRequest> $request) async {
    return listFile($call, await $request);
  }

  $async.Future<$1.Empty> deleteFile_Pre($grpc.ServiceCall $call, $async.Future<$0.DeleteFileRequest> $request) async {
    return deleteFile($call, await $request);
  }

  $async.Future<$0.File> downloadFile_Pre($grpc.ServiceCall $call, $async.Future<$0.DownloadFileRequest> $request) async {
    return downloadFile($call, await $request);
  }

  $async.Future<$0.AttachedFile> attachFile($grpc.ServiceCall call, $0.AttachFileRequest request);
  $async.Future<$0.ListFileResponse> listFile($grpc.ServiceCall call, $0.ListFileRequest request);
  $async.Future<$1.Empty> deleteFile($grpc.ServiceCall call, $0.DeleteFileRequest request);
  $async.Future<$0.File> downloadFile($grpc.ServiceCall call, $0.DownloadFileRequest request);
}
