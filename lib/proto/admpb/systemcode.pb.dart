//
//  Generated code. Do not modify.
//  source: proto/admpb/systemcode.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class SystemCode extends $pb.GeneratedMessage {
  factory SystemCode({
    $core.int? systemCodeId,
    $core.String? type,
    $core.String? code,
    $core.String? description,
    $core.String? note,
    $core.String? subType,
  }) {
    final result = create();
    if (systemCodeId != null) result.systemCodeId = systemCodeId;
    if (type != null) result.type = type;
    if (code != null) result.code = code;
    if (description != null) result.description = description;
    if (note != null) result.note = note;
    if (subType != null) result.subType = subType;
    return result;
  }

  SystemCode._();

  factory SystemCode.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SystemCode.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SystemCode', package: const $pb.PackageName(_omitMessageNames ? '' : 'admpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'systemCodeId', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'type')
    ..aOS(3, _omitFieldNames ? '' : 'code')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..aOS(5, _omitFieldNames ? '' : 'note')
    ..aOS(6, _omitFieldNames ? '' : 'subType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemCode clone() => SystemCode()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemCode copyWith(void Function(SystemCode) updates) => super.copyWith((message) => updates(message as SystemCode)) as SystemCode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemCode create() => SystemCode._();
  @$core.override
  SystemCode createEmptyInstance() => create();
  static $pb.PbList<SystemCode> createRepeated() => $pb.PbList<SystemCode>();
  @$core.pragma('dart2js:noInline')
  static SystemCode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SystemCode>(create);
  static SystemCode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get systemCodeId => $_getIZ(0);
  @$pb.TagNumber(1)
  set systemCodeId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSystemCodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSystemCodeId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get code => $_getSZ(2);
  @$pb.TagNumber(3)
  set code($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCode() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get note => $_getSZ(4);
  @$pb.TagNumber(5)
  set note($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasNote() => $_has(4);
  @$pb.TagNumber(5)
  void clearNote() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get subType => $_getSZ(5);
  @$pb.TagNumber(6)
  set subType($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSubType() => $_has(5);
  @$pb.TagNumber(6)
  void clearSubType() => $_clearField(6);
}

class CreateSystemCodeResponse extends $pb.GeneratedMessage {
  factory CreateSystemCodeResponse({
    SystemCode? systemCode,
  }) {
    final result = create();
    if (systemCode != null) result.systemCode = systemCode;
    return result;
  }

  CreateSystemCodeResponse._();

  factory CreateSystemCodeResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory CreateSystemCodeResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateSystemCodeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'admpb'), createEmptyInstance: create)
    ..aOM<SystemCode>(1, _omitFieldNames ? '' : 'systemCode', subBuilder: SystemCode.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateSystemCodeResponse clone() => CreateSystemCodeResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateSystemCodeResponse copyWith(void Function(CreateSystemCodeResponse) updates) => super.copyWith((message) => updates(message as CreateSystemCodeResponse)) as CreateSystemCodeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateSystemCodeResponse create() => CreateSystemCodeResponse._();
  @$core.override
  CreateSystemCodeResponse createEmptyInstance() => create();
  static $pb.PbList<CreateSystemCodeResponse> createRepeated() => $pb.PbList<CreateSystemCodeResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateSystemCodeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateSystemCodeResponse>(create);
  static CreateSystemCodeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SystemCode get systemCode => $_getN(0);
  @$pb.TagNumber(1)
  set systemCode(SystemCode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSystemCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearSystemCode() => $_clearField(1);
  @$pb.TagNumber(1)
  SystemCode ensureSystemCode() => $_ensure(0);
}

class ReadSystemCodeResponse extends $pb.GeneratedMessage {
  factory ReadSystemCodeResponse({
    SystemCode? systemCode,
  }) {
    final result = create();
    if (systemCode != null) result.systemCode = systemCode;
    return result;
  }

  ReadSystemCodeResponse._();

  factory ReadSystemCodeResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ReadSystemCodeResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadSystemCodeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'admpb'), createEmptyInstance: create)
    ..aOM<SystemCode>(1, _omitFieldNames ? '' : 'systemCode', subBuilder: SystemCode.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadSystemCodeResponse clone() => ReadSystemCodeResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadSystemCodeResponse copyWith(void Function(ReadSystemCodeResponse) updates) => super.copyWith((message) => updates(message as ReadSystemCodeResponse)) as ReadSystemCodeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadSystemCodeResponse create() => ReadSystemCodeResponse._();
  @$core.override
  ReadSystemCodeResponse createEmptyInstance() => create();
  static $pb.PbList<ReadSystemCodeResponse> createRepeated() => $pb.PbList<ReadSystemCodeResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadSystemCodeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadSystemCodeResponse>(create);
  static ReadSystemCodeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SystemCode get systemCode => $_getN(0);
  @$pb.TagNumber(1)
  set systemCode(SystemCode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSystemCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearSystemCode() => $_clearField(1);
  @$pb.TagNumber(1)
  SystemCode ensureSystemCode() => $_ensure(0);
}

class UpdateSystemCodeResponse extends $pb.GeneratedMessage {
  factory UpdateSystemCodeResponse({
    SystemCode? systemCode,
  }) {
    final result = create();
    if (systemCode != null) result.systemCode = systemCode;
    return result;
  }

  UpdateSystemCodeResponse._();

  factory UpdateSystemCodeResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory UpdateSystemCodeResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateSystemCodeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'admpb'), createEmptyInstance: create)
    ..aOM<SystemCode>(1, _omitFieldNames ? '' : 'systemCode', subBuilder: SystemCode.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateSystemCodeResponse clone() => UpdateSystemCodeResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateSystemCodeResponse copyWith(void Function(UpdateSystemCodeResponse) updates) => super.copyWith((message) => updates(message as UpdateSystemCodeResponse)) as UpdateSystemCodeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateSystemCodeResponse create() => UpdateSystemCodeResponse._();
  @$core.override
  UpdateSystemCodeResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateSystemCodeResponse> createRepeated() => $pb.PbList<UpdateSystemCodeResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateSystemCodeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateSystemCodeResponse>(create);
  static UpdateSystemCodeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  SystemCode get systemCode => $_getN(0);
  @$pb.TagNumber(1)
  set systemCode(SystemCode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSystemCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearSystemCode() => $_clearField(1);
  @$pb.TagNumber(1)
  SystemCode ensureSystemCode() => $_ensure(0);
}

class DeleteSystemCodeRequest extends $pb.GeneratedMessage {
  factory DeleteSystemCodeRequest({
    $core.int? systemCodeId,
  }) {
    final result = create();
    if (systemCodeId != null) result.systemCodeId = systemCodeId;
    return result;
  }

  DeleteSystemCodeRequest._();

  factory DeleteSystemCodeRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory DeleteSystemCodeRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSystemCodeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'admpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'systemCodeId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteSystemCodeRequest clone() => DeleteSystemCodeRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteSystemCodeRequest copyWith(void Function(DeleteSystemCodeRequest) updates) => super.copyWith((message) => updates(message as DeleteSystemCodeRequest)) as DeleteSystemCodeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSystemCodeRequest create() => DeleteSystemCodeRequest._();
  @$core.override
  DeleteSystemCodeRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteSystemCodeRequest> createRepeated() => $pb.PbList<DeleteSystemCodeRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteSystemCodeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSystemCodeRequest>(create);
  static DeleteSystemCodeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get systemCodeId => $_getIZ(0);
  @$pb.TagNumber(1)
  set systemCodeId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSystemCodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSystemCodeId() => $_clearField(1);
}

class DeleteSystemCodeResponse extends $pb.GeneratedMessage {
  factory DeleteSystemCodeResponse({
    $core.int? systemCodeId,
  }) {
    final result = create();
    if (systemCodeId != null) result.systemCodeId = systemCodeId;
    return result;
  }

  DeleteSystemCodeResponse._();

  factory DeleteSystemCodeResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory DeleteSystemCodeResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteSystemCodeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'admpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'systemCodeId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteSystemCodeResponse clone() => DeleteSystemCodeResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteSystemCodeResponse copyWith(void Function(DeleteSystemCodeResponse) updates) => super.copyWith((message) => updates(message as DeleteSystemCodeResponse)) as DeleteSystemCodeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteSystemCodeResponse create() => DeleteSystemCodeResponse._();
  @$core.override
  DeleteSystemCodeResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteSystemCodeResponse> createRepeated() => $pb.PbList<DeleteSystemCodeResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteSystemCodeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteSystemCodeResponse>(create);
  static DeleteSystemCodeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get systemCodeId => $_getIZ(0);
  @$pb.TagNumber(1)
  set systemCodeId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSystemCodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSystemCodeId() => $_clearField(1);
}

class ListSystemCodeResponse extends $pb.GeneratedMessage {
  factory ListSystemCodeResponse({
    $core.Iterable<SystemCode>? systemCodes,
  }) {
    final result = create();
    if (systemCodes != null) result.systemCodes.addAll(systemCodes);
    return result;
  }

  ListSystemCodeResponse._();

  factory ListSystemCodeResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListSystemCodeResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSystemCodeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'admpb'), createEmptyInstance: create)
    ..pc<SystemCode>(1, _omitFieldNames ? '' : 'systemCodes', $pb.PbFieldType.PM, subBuilder: SystemCode.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSystemCodeResponse clone() => ListSystemCodeResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSystemCodeResponse copyWith(void Function(ListSystemCodeResponse) updates) => super.copyWith((message) => updates(message as ListSystemCodeResponse)) as ListSystemCodeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSystemCodeResponse create() => ListSystemCodeResponse._();
  @$core.override
  ListSystemCodeResponse createEmptyInstance() => create();
  static $pb.PbList<ListSystemCodeResponse> createRepeated() => $pb.PbList<ListSystemCodeResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSystemCodeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSystemCodeResponse>(create);
  static ListSystemCodeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<SystemCode> get systemCodes => $_getList(0);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
