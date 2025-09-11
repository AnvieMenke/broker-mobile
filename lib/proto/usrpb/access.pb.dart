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

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class UsrAccess extends $pb.GeneratedMessage {
  factory UsrAccess({
    $core.int? usrId,
    $core.int? accessId,
    $core.String? access,
    $core.String? subAccess,
    $core.int? roleId,
    $core.String? amountLimit,
  }) {
    final result = create();
    if (usrId != null) result.usrId = usrId;
    if (accessId != null) result.accessId = accessId;
    if (access != null) result.access = access;
    if (subAccess != null) result.subAccess = subAccess;
    if (roleId != null) result.roleId = roleId;
    if (amountLimit != null) result.amountLimit = amountLimit;
    return result;
  }

  UsrAccess._();

  factory UsrAccess.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory UsrAccess.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UsrAccess', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'usrId', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'accessId', $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'access')
    ..aOS(4, _omitFieldNames ? '' : 'subAccess')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'roleId', $pb.PbFieldType.OU3)
    ..aOS(6, _omitFieldNames ? '' : 'amountLimit')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UsrAccess clone() => UsrAccess()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UsrAccess copyWith(void Function(UsrAccess) updates) => super.copyWith((message) => updates(message as UsrAccess)) as UsrAccess;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UsrAccess create() => UsrAccess._();
  @$core.override
  UsrAccess createEmptyInstance() => create();
  static $pb.PbList<UsrAccess> createRepeated() => $pb.PbList<UsrAccess>();
  @$core.pragma('dart2js:noInline')
  static UsrAccess getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UsrAccess>(create);
  static UsrAccess? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get usrId => $_getIZ(0);
  @$pb.TagNumber(1)
  set usrId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUsrId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsrId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get accessId => $_getIZ(1);
  @$pb.TagNumber(2)
  set accessId($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAccessId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccessId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get access => $_getSZ(2);
  @$pb.TagNumber(3)
  set access($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAccess() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccess() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get subAccess => $_getSZ(3);
  @$pb.TagNumber(4)
  set subAccess($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSubAccess() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubAccess() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get roleId => $_getIZ(4);
  @$pb.TagNumber(5)
  set roleId($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRoleId() => $_has(4);
  @$pb.TagNumber(5)
  void clearRoleId() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get amountLimit => $_getSZ(5);
  @$pb.TagNumber(6)
  set amountLimit($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAmountLimit() => $_has(5);
  @$pb.TagNumber(6)
  void clearAmountLimit() => $_clearField(6);
}

class ListUsrAccessRequest extends $pb.GeneratedMessage {
  factory ListUsrAccessRequest({
    $core.int? usrId,
    $core.String? requestType,
    $core.int? roleId,
  }) {
    final result = create();
    if (usrId != null) result.usrId = usrId;
    if (requestType != null) result.requestType = requestType;
    if (roleId != null) result.roleId = roleId;
    return result;
  }

  ListUsrAccessRequest._();

  factory ListUsrAccessRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListUsrAccessRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListUsrAccessRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'usrId', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'requestType')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'roleId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListUsrAccessRequest clone() => ListUsrAccessRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListUsrAccessRequest copyWith(void Function(ListUsrAccessRequest) updates) => super.copyWith((message) => updates(message as ListUsrAccessRequest)) as ListUsrAccessRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListUsrAccessRequest create() => ListUsrAccessRequest._();
  @$core.override
  ListUsrAccessRequest createEmptyInstance() => create();
  static $pb.PbList<ListUsrAccessRequest> createRepeated() => $pb.PbList<ListUsrAccessRequest>();
  @$core.pragma('dart2js:noInline')
  static ListUsrAccessRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListUsrAccessRequest>(create);
  static ListUsrAccessRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get usrId => $_getIZ(0);
  @$pb.TagNumber(1)
  set usrId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUsrId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsrId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get requestType => $_getSZ(1);
  @$pb.TagNumber(2)
  set requestType($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRequestType() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequestType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get roleId => $_getIZ(2);
  @$pb.TagNumber(3)
  set roleId($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRoleId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoleId() => $_clearField(3);
}

class ListUsrAccessResponse extends $pb.GeneratedMessage {
  factory ListUsrAccessResponse({
    $core.Iterable<UsrAccess>? usrAccesses,
  }) {
    final result = create();
    if (usrAccesses != null) result.usrAccesses.addAll(usrAccesses);
    return result;
  }

  ListUsrAccessResponse._();

  factory ListUsrAccessResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListUsrAccessResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListUsrAccessResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..pc<UsrAccess>(1, _omitFieldNames ? '' : 'usrAccesses', $pb.PbFieldType.PM, subBuilder: UsrAccess.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListUsrAccessResponse clone() => ListUsrAccessResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListUsrAccessResponse copyWith(void Function(ListUsrAccessResponse) updates) => super.copyWith((message) => updates(message as ListUsrAccessResponse)) as ListUsrAccessResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListUsrAccessResponse create() => ListUsrAccessResponse._();
  @$core.override
  ListUsrAccessResponse createEmptyInstance() => create();
  static $pb.PbList<ListUsrAccessResponse> createRepeated() => $pb.PbList<ListUsrAccessResponse>();
  @$core.pragma('dart2js:noInline')
  static ListUsrAccessResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListUsrAccessResponse>(create);
  static ListUsrAccessResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<UsrAccess> get usrAccesses => $_getList(0);
}

class UpdateAmountLimitRequest extends $pb.GeneratedMessage {
  factory UpdateAmountLimitRequest({
    $core.String? amountLimit,
    $core.int? accessId,
  }) {
    final result = create();
    if (amountLimit != null) result.amountLimit = amountLimit;
    if (accessId != null) result.accessId = accessId;
    return result;
  }

  UpdateAmountLimitRequest._();

  factory UpdateAmountLimitRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory UpdateAmountLimitRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateAmountLimitRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'amountLimit')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'accessId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateAmountLimitRequest clone() => UpdateAmountLimitRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateAmountLimitRequest copyWith(void Function(UpdateAmountLimitRequest) updates) => super.copyWith((message) => updates(message as UpdateAmountLimitRequest)) as UpdateAmountLimitRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateAmountLimitRequest create() => UpdateAmountLimitRequest._();
  @$core.override
  UpdateAmountLimitRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateAmountLimitRequest> createRepeated() => $pb.PbList<UpdateAmountLimitRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateAmountLimitRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateAmountLimitRequest>(create);
  static UpdateAmountLimitRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get amountLimit => $_getSZ(0);
  @$pb.TagNumber(1)
  set amountLimit($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAmountLimit() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmountLimit() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get accessId => $_getIZ(1);
  @$pb.TagNumber(2)
  set accessId($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAccessId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccessId() => $_clearField(2);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
