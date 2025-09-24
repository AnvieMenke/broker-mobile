//
//  Generated code. Do not modify.
//  source: proto/commonpb/systemcode.proto
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
    $core.String? code,
    $core.String? description,
    $core.String? subType,
    $core.String? note,
  }) {
    final result = create();
    if (code != null) result.code = code;
    if (description != null) result.description = description;
    if (subType != null) result.subType = subType;
    if (note != null) result.note = note;
    return result;
  }

  SystemCode._();

  factory SystemCode.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SystemCode.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SystemCode', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..aOS(3, _omitFieldNames ? '' : 'subType')
    ..aOS(4, _omitFieldNames ? '' : 'note')
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
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get subType => $_getSZ(2);
  @$pb.TagNumber(3)
  set subType($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSubType() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get note => $_getSZ(3);
  @$pb.TagNumber(4)
  set note($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNote() => $_has(3);
  @$pb.TagNumber(4)
  void clearNote() => $_clearField(4);
}

class LazySystemCodeRequest extends $pb.GeneratedMessage {
  factory LazySystemCodeRequest({
    $core.String? type,
    $core.String? code,
    $core.int? limit,
    $core.String? subType,
    $core.String? note,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (code != null) result.code = code;
    if (limit != null) result.limit = limit;
    if (subType != null) result.subType = subType;
    if (note != null) result.note = note;
    return result;
  }

  LazySystemCodeRequest._();

  factory LazySystemCodeRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LazySystemCodeRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LazySystemCodeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'code')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'subType')
    ..aOS(5, _omitFieldNames ? '' : 'note')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazySystemCodeRequest clone() => LazySystemCodeRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazySystemCodeRequest copyWith(void Function(LazySystemCodeRequest) updates) => super.copyWith((message) => updates(message as LazySystemCodeRequest)) as LazySystemCodeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LazySystemCodeRequest create() => LazySystemCodeRequest._();
  @$core.override
  LazySystemCodeRequest createEmptyInstance() => create();
  static $pb.PbList<LazySystemCodeRequest> createRepeated() => $pb.PbList<LazySystemCodeRequest>();
  @$core.pragma('dart2js:noInline')
  static LazySystemCodeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LazySystemCodeRequest>(create);
  static LazySystemCodeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get limit => $_getIZ(2);
  @$pb.TagNumber(3)
  set limit($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimit() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get subType => $_getSZ(3);
  @$pb.TagNumber(4)
  set subType($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSubType() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get note => $_getSZ(4);
  @$pb.TagNumber(5)
  set note($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasNote() => $_has(4);
  @$pb.TagNumber(5)
  void clearNote() => $_clearField(5);
}

class ListSystemCodeRequest extends $pb.GeneratedMessage {
  factory ListSystemCodeRequest({
    $core.String? type,
    $core.String? subType,
    $core.String? orderBy,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (subType != null) result.subType = subType;
    if (orderBy != null) result.orderBy = orderBy;
    return result;
  }

  ListSystemCodeRequest._();

  factory ListSystemCodeRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListSystemCodeRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSystemCodeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'subType')
    ..aOS(3, _omitFieldNames ? '' : 'orderBy')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSystemCodeRequest clone() => ListSystemCodeRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSystemCodeRequest copyWith(void Function(ListSystemCodeRequest) updates) => super.copyWith((message) => updates(message as ListSystemCodeRequest)) as ListSystemCodeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSystemCodeRequest create() => ListSystemCodeRequest._();
  @$core.override
  ListSystemCodeRequest createEmptyInstance() => create();
  static $pb.PbList<ListSystemCodeRequest> createRepeated() => $pb.PbList<ListSystemCodeRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSystemCodeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSystemCodeRequest>(create);
  static ListSystemCodeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get subType => $_getSZ(1);
  @$pb.TagNumber(2)
  set subType($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSubType() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get orderBy => $_getSZ(2);
  @$pb.TagNumber(3)
  set orderBy($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOrderBy() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrderBy() => $_clearField(3);
}

class SystemCodeResponse extends $pb.GeneratedMessage {
  factory SystemCodeResponse({
    $core.Iterable<SystemCode>? systemCode,
  }) {
    final result = create();
    if (systemCode != null) result.systemCode.addAll(systemCode);
    return result;
  }

  SystemCodeResponse._();

  factory SystemCodeResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SystemCodeResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SystemCodeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..pc<SystemCode>(1, _omitFieldNames ? '' : 'systemCode', $pb.PbFieldType.PM, subBuilder: SystemCode.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemCodeResponse clone() => SystemCodeResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemCodeResponse copyWith(void Function(SystemCodeResponse) updates) => super.copyWith((message) => updates(message as SystemCodeResponse)) as SystemCodeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemCodeResponse create() => SystemCodeResponse._();
  @$core.override
  SystemCodeResponse createEmptyInstance() => create();
  static $pb.PbList<SystemCodeResponse> createRepeated() => $pb.PbList<SystemCodeResponse>();
  @$core.pragma('dart2js:noInline')
  static SystemCodeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SystemCodeResponse>(create);
  static SystemCodeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<SystemCode> get systemCode => $_getList(0);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
