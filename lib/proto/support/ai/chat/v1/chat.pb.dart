//
//  Generated code. Do not modify.
//  source: support/ai/chat/v1/chat.proto
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

class SendMessageRequest extends $pb.GeneratedMessage {
  factory SendMessageRequest({
    $core.String? application,
    $core.int? sessionId,
    $core.int? userId,
    $core.String? userType,
    $core.int? roleId,
    $core.String? content,
    $core.String? mode,
    $core.String? pageComponent,
    $core.bool? includeSystemDetails,
  }) {
    final result = create();
    if (application != null) result.application = application;
    if (sessionId != null) result.sessionId = sessionId;
    if (userId != null) result.userId = userId;
    if (userType != null) result.userType = userType;
    if (roleId != null) result.roleId = roleId;
    if (content != null) result.content = content;
    if (mode != null) result.mode = mode;
    if (pageComponent != null) result.pageComponent = pageComponent;
    if (includeSystemDetails != null) result.includeSystemDetails = includeSystemDetails;
    return result;
  }

  SendMessageRequest._();

  factory SendMessageRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SendMessageRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendMessageRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'support.ai.chat.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'application')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.OU3)
    ..aOS(4, _omitFieldNames ? '' : 'userType')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'roleId', $pb.PbFieldType.OU3)
    ..aOS(6, _omitFieldNames ? '' : 'content')
    ..aOS(7, _omitFieldNames ? '' : 'mode')
    ..aOS(8, _omitFieldNames ? '' : 'pageComponent')
    ..aOB(9, _omitFieldNames ? '' : 'includeSystemDetails')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SendMessageRequest clone() => SendMessageRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SendMessageRequest copyWith(void Function(SendMessageRequest) updates) => super.copyWith((message) => updates(message as SendMessageRequest)) as SendMessageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendMessageRequest create() => SendMessageRequest._();
  @$core.override
  SendMessageRequest createEmptyInstance() => create();
  static $pb.PbList<SendMessageRequest> createRepeated() => $pb.PbList<SendMessageRequest>();
  @$core.pragma('dart2js:noInline')
  static SendMessageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendMessageRequest>(create);
  static SendMessageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get application => $_getSZ(0);
  @$pb.TagNumber(1)
  set application($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasApplication() => $_has(0);
  @$pb.TagNumber(1)
  void clearApplication() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get sessionId => $_getIZ(1);
  @$pb.TagNumber(2)
  set sessionId($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSessionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSessionId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get userId => $_getIZ(2);
  @$pb.TagNumber(3)
  set userId($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get userType => $_getSZ(3);
  @$pb.TagNumber(4)
  set userType($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasUserType() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get roleId => $_getIZ(4);
  @$pb.TagNumber(5)
  set roleId($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRoleId() => $_has(4);
  @$pb.TagNumber(5)
  void clearRoleId() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get content => $_getSZ(5);
  @$pb.TagNumber(6)
  set content($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasContent() => $_has(5);
  @$pb.TagNumber(6)
  void clearContent() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get mode => $_getSZ(6);
  @$pb.TagNumber(7)
  set mode($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasMode() => $_has(6);
  @$pb.TagNumber(7)
  void clearMode() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get pageComponent => $_getSZ(7);
  @$pb.TagNumber(8)
  set pageComponent($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasPageComponent() => $_has(7);
  @$pb.TagNumber(8)
  void clearPageComponent() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get includeSystemDetails => $_getBF(8);
  @$pb.TagNumber(9)
  set includeSystemDetails($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(9)
  $core.bool hasIncludeSystemDetails() => $_has(8);
  @$pb.TagNumber(9)
  void clearIncludeSystemDetails() => $_clearField(9);
}

class SendMessageResponse extends $pb.GeneratedMessage {
  factory SendMessageResponse({
    $core.String? content,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? requirements,
    $core.int? sessionId,
    $core.Iterable<$core.String>? sources,
  }) {
    final result = create();
    if (content != null) result.content = content;
    if (requirements != null) result.requirements.addEntries(requirements);
    if (sessionId != null) result.sessionId = sessionId;
    if (sources != null) result.sources.addAll(sources);
    return result;
  }

  SendMessageResponse._();

  factory SendMessageResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SendMessageResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SendMessageResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'support.ai.chat.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'content')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'requirements', entryClassName: 'SendMessageResponse.RequirementsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('support.ai.chat.v1'))
    ..a<$core.int>(3, _omitFieldNames ? '' : 'sessionId', $pb.PbFieldType.OU3)
    ..pPS(4, _omitFieldNames ? '' : 'sources')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SendMessageResponse clone() => SendMessageResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SendMessageResponse copyWith(void Function(SendMessageResponse) updates) => super.copyWith((message) => updates(message as SendMessageResponse)) as SendMessageResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SendMessageResponse create() => SendMessageResponse._();
  @$core.override
  SendMessageResponse createEmptyInstance() => create();
  static $pb.PbList<SendMessageResponse> createRepeated() => $pb.PbList<SendMessageResponse>();
  @$core.pragma('dart2js:noInline')
  static SendMessageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendMessageResponse>(create);
  static SendMessageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get content => $_getSZ(0);
  @$pb.TagNumber(1)
  set content($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContent() => $_has(0);
  @$pb.TagNumber(1)
  void clearContent() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $core.String> get requirements => $_getMap(1);

  @$pb.TagNumber(3)
  $core.int get sessionId => $_getIZ(2);
  @$pb.TagNumber(3)
  set sessionId($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSessionId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSessionId() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get sources => $_getList(3);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
