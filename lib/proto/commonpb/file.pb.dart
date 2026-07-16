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

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class File extends $pb.GeneratedMessage {
  factory File({
    $core.String? mimeType,
    $core.List<$core.int>? fileBytes,
    $core.String? fileName,
  }) {
    final result = create();
    if (mimeType != null) result.mimeType = mimeType;
    if (fileBytes != null) result.fileBytes = fileBytes;
    if (fileName != null) result.fileName = fileName;
    return result;
  }

  File._();

  factory File.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory File.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'File', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'mimeType')
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'fileBytes', $pb.PbFieldType.OY)
    ..aOS(3, _omitFieldNames ? '' : 'fileName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  File clone() => File()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  File copyWith(void Function(File) updates) => super.copyWith((message) => updates(message as File)) as File;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static File create() => File._();
  @$core.override
  File createEmptyInstance() => create();
  static $pb.PbList<File> createRepeated() => $pb.PbList<File>();
  @$core.pragma('dart2js:noInline')
  static File getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<File>(create);
  static File? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mimeType => $_getSZ(0);
  @$pb.TagNumber(1)
  set mimeType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMimeType() => $_has(0);
  @$pb.TagNumber(1)
  void clearMimeType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get fileBytes => $_getN(1);
  @$pb.TagNumber(2)
  set fileBytes($core.List<$core.int> value) => $_setBytes(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFileBytes() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileBytes() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get fileName => $_getSZ(2);
  @$pb.TagNumber(3)
  set fileName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFileName() => $_has(2);
  @$pb.TagNumber(3)
  void clearFileName() => $_clearField(3);
}

class AttachedFile extends $pb.GeneratedMessage {
  factory AttachedFile({
    $core.int? id,
    $core.String? fileName,
    $core.String? uploadedBy,
    $2.Timestamp? uploadedAt,
    $core.String? tag,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (fileName != null) result.fileName = fileName;
    if (uploadedBy != null) result.uploadedBy = uploadedBy;
    if (uploadedAt != null) result.uploadedAt = uploadedAt;
    if (tag != null) result.tag = tag;
    return result;
  }

  AttachedFile._();

  factory AttachedFile.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory AttachedFile.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AttachedFile', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'fileName')
    ..aOS(3, _omitFieldNames ? '' : 'uploadedBy')
    ..aOM<$2.Timestamp>(4, _omitFieldNames ? '' : 'uploadedAt', subBuilder: $2.Timestamp.create)
    ..aOS(5, _omitFieldNames ? '' : 'tag')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AttachedFile clone() => AttachedFile()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AttachedFile copyWith(void Function(AttachedFile) updates) => super.copyWith((message) => updates(message as AttachedFile)) as AttachedFile;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AttachedFile create() => AttachedFile._();
  @$core.override
  AttachedFile createEmptyInstance() => create();
  static $pb.PbList<AttachedFile> createRepeated() => $pb.PbList<AttachedFile>();
  @$core.pragma('dart2js:noInline')
  static AttachedFile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AttachedFile>(create);
  static AttachedFile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get fileName => $_getSZ(1);
  @$pb.TagNumber(2)
  set fileName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFileName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFileName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get uploadedBy => $_getSZ(2);
  @$pb.TagNumber(3)
  set uploadedBy($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUploadedBy() => $_has(2);
  @$pb.TagNumber(3)
  void clearUploadedBy() => $_clearField(3);

  @$pb.TagNumber(4)
  $2.Timestamp get uploadedAt => $_getN(3);
  @$pb.TagNumber(4)
  set uploadedAt($2.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasUploadedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearUploadedAt() => $_clearField(4);
  @$pb.TagNumber(4)
  $2.Timestamp ensureUploadedAt() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get tag => $_getSZ(4);
  @$pb.TagNumber(5)
  set tag($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTag() => $_has(4);
  @$pb.TagNumber(5)
  void clearTag() => $_clearField(5);
}

class ListFileRequest extends $pb.GeneratedMessage {
  factory ListFileRequest({
    $core.String? linkType,
    $core.int? linkId,
    $core.String? tag,
  }) {
    final result = create();
    if (linkType != null) result.linkType = linkType;
    if (linkId != null) result.linkId = linkId;
    if (tag != null) result.tag = tag;
    return result;
  }

  ListFileRequest._();

  factory ListFileRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListFileRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListFileRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'linkType')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'linkId', $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'tag')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListFileRequest clone() => ListFileRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListFileRequest copyWith(void Function(ListFileRequest) updates) => super.copyWith((message) => updates(message as ListFileRequest)) as ListFileRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListFileRequest create() => ListFileRequest._();
  @$core.override
  ListFileRequest createEmptyInstance() => create();
  static $pb.PbList<ListFileRequest> createRepeated() => $pb.PbList<ListFileRequest>();
  @$core.pragma('dart2js:noInline')
  static ListFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListFileRequest>(create);
  static ListFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get linkType => $_getSZ(0);
  @$pb.TagNumber(1)
  set linkType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLinkType() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinkType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get linkId => $_getIZ(1);
  @$pb.TagNumber(2)
  set linkId($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLinkId() => $_has(1);
  @$pb.TagNumber(2)
  void clearLinkId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get tag => $_getSZ(2);
  @$pb.TagNumber(3)
  set tag($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTag() => $_has(2);
  @$pb.TagNumber(3)
  void clearTag() => $_clearField(3);
}

class ListFileResponse extends $pb.GeneratedMessage {
  factory ListFileResponse({
    $core.Iterable<AttachedFile>? attachedFiles,
  }) {
    final result = create();
    if (attachedFiles != null) result.attachedFiles.addAll(attachedFiles);
    return result;
  }

  ListFileResponse._();

  factory ListFileResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListFileResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListFileResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..pc<AttachedFile>(1, _omitFieldNames ? '' : 'attachedFiles', $pb.PbFieldType.PM, subBuilder: AttachedFile.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListFileResponse clone() => ListFileResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListFileResponse copyWith(void Function(ListFileResponse) updates) => super.copyWith((message) => updates(message as ListFileResponse)) as ListFileResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListFileResponse create() => ListFileResponse._();
  @$core.override
  ListFileResponse createEmptyInstance() => create();
  static $pb.PbList<ListFileResponse> createRepeated() => $pb.PbList<ListFileResponse>();
  @$core.pragma('dart2js:noInline')
  static ListFileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListFileResponse>(create);
  static ListFileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AttachedFile> get attachedFiles => $_getList(0);
}

class DownloadFileRequest extends $pb.GeneratedMessage {
  factory DownloadFileRequest({
    $core.int? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  DownloadFileRequest._();

  factory DownloadFileRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory DownloadFileRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DownloadFileRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DownloadFileRequest clone() => DownloadFileRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DownloadFileRequest copyWith(void Function(DownloadFileRequest) updates) => super.copyWith((message) => updates(message as DownloadFileRequest)) as DownloadFileRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DownloadFileRequest create() => DownloadFileRequest._();
  @$core.override
  DownloadFileRequest createEmptyInstance() => create();
  static $pb.PbList<DownloadFileRequest> createRepeated() => $pb.PbList<DownloadFileRequest>();
  @$core.pragma('dart2js:noInline')
  static DownloadFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DownloadFileRequest>(create);
  static DownloadFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class DeleteFileRequest extends $pb.GeneratedMessage {
  factory DeleteFileRequest({
    $core.int? id,
  }) {
    final result = create();
    if (id != null) result.id = id;
    return result;
  }

  DeleteFileRequest._();

  factory DeleteFileRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory DeleteFileRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteFileRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteFileRequest clone() => DeleteFileRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteFileRequest copyWith(void Function(DeleteFileRequest) updates) => super.copyWith((message) => updates(message as DeleteFileRequest)) as DeleteFileRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteFileRequest create() => DeleteFileRequest._();
  @$core.override
  DeleteFileRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteFileRequest> createRepeated() => $pb.PbList<DeleteFileRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteFileRequest>(create);
  static DeleteFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);
}

class AttachFileRequest extends $pb.GeneratedMessage {
  factory AttachFileRequest({
    $core.int? linkId,
    $core.String? linkType,
    File? file,
    $core.String? tag,
  }) {
    final result = create();
    if (linkId != null) result.linkId = linkId;
    if (linkType != null) result.linkType = linkType;
    if (file != null) result.file = file;
    if (tag != null) result.tag = tag;
    return result;
  }

  AttachFileRequest._();

  factory AttachFileRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory AttachFileRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AttachFileRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'linkId', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'linkType')
    ..aOM<File>(3, _omitFieldNames ? '' : 'file', subBuilder: File.create)
    ..aOS(4, _omitFieldNames ? '' : 'tag')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AttachFileRequest clone() => AttachFileRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AttachFileRequest copyWith(void Function(AttachFileRequest) updates) => super.copyWith((message) => updates(message as AttachFileRequest)) as AttachFileRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AttachFileRequest create() => AttachFileRequest._();
  @$core.override
  AttachFileRequest createEmptyInstance() => create();
  static $pb.PbList<AttachFileRequest> createRepeated() => $pb.PbList<AttachFileRequest>();
  @$core.pragma('dart2js:noInline')
  static AttachFileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AttachFileRequest>(create);
  static AttachFileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get linkId => $_getIZ(0);
  @$pb.TagNumber(1)
  set linkId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLinkId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinkId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get linkType => $_getSZ(1);
  @$pb.TagNumber(2)
  set linkType($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLinkType() => $_has(1);
  @$pb.TagNumber(2)
  void clearLinkType() => $_clearField(2);

  @$pb.TagNumber(3)
  File get file => $_getN(2);
  @$pb.TagNumber(3)
  set file(File value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasFile() => $_has(2);
  @$pb.TagNumber(3)
  void clearFile() => $_clearField(3);
  @$pb.TagNumber(3)
  File ensureFile() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.String get tag => $_getSZ(3);
  @$pb.TagNumber(4)
  set tag($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTag() => $_has(3);
  @$pb.TagNumber(4)
  void clearTag() => $_clearField(4);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
