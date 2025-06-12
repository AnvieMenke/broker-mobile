//
//  Generated code. Do not modify.
//  source: proto/usrpb/useraccess.proto
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

class UserAccess extends $pb.GeneratedMessage {
  factory UserAccess({
    $core.int? pageId,
    $core.int? userId,
    $core.String? menu,
    $core.String? subMenu,
    $core.String? pageName,
    $core.String? access,
    $core.int? userGuideId,
    $core.int? roleId,
  }) {
    final result = create();
    if (pageId != null) result.pageId = pageId;
    if (userId != null) result.userId = userId;
    if (menu != null) result.menu = menu;
    if (subMenu != null) result.subMenu = subMenu;
    if (pageName != null) result.pageName = pageName;
    if (access != null) result.access = access;
    if (userGuideId != null) result.userGuideId = userGuideId;
    if (roleId != null) result.roleId = roleId;
    return result;
  }

  UserAccess._();

  factory UserAccess.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory UserAccess.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserAccess', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'pageId', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'menu')
    ..aOS(4, _omitFieldNames ? '' : 'subMenu')
    ..aOS(5, _omitFieldNames ? '' : 'pageName')
    ..aOS(6, _omitFieldNames ? '' : 'access')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'userGuideId', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'roleId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserAccess clone() => UserAccess()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserAccess copyWith(void Function(UserAccess) updates) => super.copyWith((message) => updates(message as UserAccess)) as UserAccess;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserAccess create() => UserAccess._();
  @$core.override
  UserAccess createEmptyInstance() => create();
  static $pb.PbList<UserAccess> createRepeated() => $pb.PbList<UserAccess>();
  @$core.pragma('dart2js:noInline')
  static UserAccess getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserAccess>(create);
  static UserAccess? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pageId => $_getIZ(0);
  @$pb.TagNumber(1)
  set pageId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get userId => $_getIZ(1);
  @$pb.TagNumber(2)
  set userId($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUserId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUserId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get menu => $_getSZ(2);
  @$pb.TagNumber(3)
  set menu($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMenu() => $_has(2);
  @$pb.TagNumber(3)
  void clearMenu() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get subMenu => $_getSZ(3);
  @$pb.TagNumber(4)
  set subMenu($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSubMenu() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubMenu() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get pageName => $_getSZ(4);
  @$pb.TagNumber(5)
  set pageName($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPageName() => $_has(4);
  @$pb.TagNumber(5)
  void clearPageName() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get access => $_getSZ(5);
  @$pb.TagNumber(6)
  set access($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAccess() => $_has(5);
  @$pb.TagNumber(6)
  void clearAccess() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get userGuideId => $_getIZ(6);
  @$pb.TagNumber(7)
  set userGuideId($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasUserGuideId() => $_has(6);
  @$pb.TagNumber(7)
  void clearUserGuideId() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get roleId => $_getIZ(7);
  @$pb.TagNumber(8)
  set roleId($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasRoleId() => $_has(7);
  @$pb.TagNumber(8)
  void clearRoleId() => $_clearField(8);
}

class ListUserAccessRequest extends $pb.GeneratedMessage {
  factory ListUserAccessRequest({
    $core.int? userId,
    $core.String? menu,
    $core.String? subMenu,
    $core.String? pageName,
    $core.String? access,
    $core.int? roleId,
  }) {
    final result = create();
    if (userId != null) result.userId = userId;
    if (menu != null) result.menu = menu;
    if (subMenu != null) result.subMenu = subMenu;
    if (pageName != null) result.pageName = pageName;
    if (access != null) result.access = access;
    if (roleId != null) result.roleId = roleId;
    return result;
  }

  ListUserAccessRequest._();

  factory ListUserAccessRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListUserAccessRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListUserAccessRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'menu')
    ..aOS(3, _omitFieldNames ? '' : 'subMenu')
    ..aOS(4, _omitFieldNames ? '' : 'pageName')
    ..aOS(5, _omitFieldNames ? '' : 'access')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'roleId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListUserAccessRequest clone() => ListUserAccessRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListUserAccessRequest copyWith(void Function(ListUserAccessRequest) updates) => super.copyWith((message) => updates(message as ListUserAccessRequest)) as ListUserAccessRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListUserAccessRequest create() => ListUserAccessRequest._();
  @$core.override
  ListUserAccessRequest createEmptyInstance() => create();
  static $pb.PbList<ListUserAccessRequest> createRepeated() => $pb.PbList<ListUserAccessRequest>();
  @$core.pragma('dart2js:noInline')
  static ListUserAccessRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListUserAccessRequest>(create);
  static ListUserAccessRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get userId => $_getIZ(0);
  @$pb.TagNumber(1)
  set userId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get menu => $_getSZ(1);
  @$pb.TagNumber(2)
  set menu($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMenu() => $_has(1);
  @$pb.TagNumber(2)
  void clearMenu() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get subMenu => $_getSZ(2);
  @$pb.TagNumber(3)
  set subMenu($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSubMenu() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubMenu() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get pageName => $_getSZ(3);
  @$pb.TagNumber(4)
  set pageName($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPageName() => $_has(3);
  @$pb.TagNumber(4)
  void clearPageName() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get access => $_getSZ(4);
  @$pb.TagNumber(5)
  set access($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAccess() => $_has(4);
  @$pb.TagNumber(5)
  void clearAccess() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get roleId => $_getIZ(5);
  @$pb.TagNumber(6)
  set roleId($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRoleId() => $_has(5);
  @$pb.TagNumber(6)
  void clearRoleId() => $_clearField(6);
}

class ListUserAccessResponse extends $pb.GeneratedMessage {
  factory ListUserAccessResponse({
    $core.Iterable<UserAccess>? userAccesses,
  }) {
    final result = create();
    if (userAccesses != null) result.userAccesses.addAll(userAccesses);
    return result;
  }

  ListUserAccessResponse._();

  factory ListUserAccessResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListUserAccessResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListUserAccessResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..pc<UserAccess>(1, _omitFieldNames ? '' : 'userAccesses', $pb.PbFieldType.PM, subBuilder: UserAccess.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListUserAccessResponse clone() => ListUserAccessResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListUserAccessResponse copyWith(void Function(ListUserAccessResponse) updates) => super.copyWith((message) => updates(message as ListUserAccessResponse)) as ListUserAccessResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListUserAccessResponse create() => ListUserAccessResponse._();
  @$core.override
  ListUserAccessResponse createEmptyInstance() => create();
  static $pb.PbList<ListUserAccessResponse> createRepeated() => $pb.PbList<ListUserAccessResponse>();
  @$core.pragma('dart2js:noInline')
  static ListUserAccessResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListUserAccessResponse>(create);
  static ListUserAccessResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<UserAccess> get userAccesses => $_getList(0);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
