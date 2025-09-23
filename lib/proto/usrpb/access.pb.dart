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

import '../../google/type/timestamp.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

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

class RolePage extends $pb.GeneratedMessage {
  factory RolePage({
    $core.String? subMenu,
    $core.String? component,
    $core.String? pageName,
    $core.String? access,
  }) {
    final result = create();
    if (subMenu != null) result.subMenu = subMenu;
    if (component != null) result.component = component;
    if (pageName != null) result.pageName = pageName;
    if (access != null) result.access = access;
    return result;
  }

  RolePage._();

  factory RolePage.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory RolePage.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RolePage', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'subMenu')
    ..aOS(2, _omitFieldNames ? '' : 'component')
    ..aOS(3, _omitFieldNames ? '' : 'pageName')
    ..aOS(4, _omitFieldNames ? '' : 'access')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RolePage clone() => RolePage()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RolePage copyWith(void Function(RolePage) updates) => super.copyWith((message) => updates(message as RolePage)) as RolePage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RolePage create() => RolePage._();
  @$core.override
  RolePage createEmptyInstance() => create();
  static $pb.PbList<RolePage> createRepeated() => $pb.PbList<RolePage>();
  @$core.pragma('dart2js:noInline')
  static RolePage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RolePage>(create);
  static RolePage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get subMenu => $_getSZ(0);
  @$pb.TagNumber(1)
  set subMenu($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSubMenu() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubMenu() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get component => $_getSZ(1);
  @$pb.TagNumber(2)
  set component($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasComponent() => $_has(1);
  @$pb.TagNumber(2)
  void clearComponent() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get pageName => $_getSZ(2);
  @$pb.TagNumber(3)
  set pageName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPageName() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get access => $_getSZ(3);
  @$pb.TagNumber(4)
  set access($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAccess() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccess() => $_clearField(4);
}

class ListRolePageResponse extends $pb.GeneratedMessage {
  factory ListRolePageResponse({
    $core.Iterable<RolePage>? pages,
  }) {
    final result = create();
    if (pages != null) result.pages.addAll(pages);
    return result;
  }

  ListRolePageResponse._();

  factory ListRolePageResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListRolePageResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListRolePageResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..pc<RolePage>(1, _omitFieldNames ? '' : 'pages', $pb.PbFieldType.PM, subBuilder: RolePage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListRolePageResponse clone() => ListRolePageResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListRolePageResponse copyWith(void Function(ListRolePageResponse) updates) => super.copyWith((message) => updates(message as ListRolePageResponse)) as ListRolePageResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRolePageResponse create() => ListRolePageResponse._();
  @$core.override
  ListRolePageResponse createEmptyInstance() => create();
  static $pb.PbList<ListRolePageResponse> createRepeated() => $pb.PbList<ListRolePageResponse>();
  @$core.pragma('dart2js:noInline')
  static ListRolePageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRolePageResponse>(create);
  static ListRolePageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<RolePage> get pages => $_getList(0);
}

class AccessPage extends $pb.GeneratedMessage {
  factory AccessPage({
    $core.String? subMenu,
    $core.String? component,
    $core.String? pageName,
    $core.String? access,
    $core.String? createdBy,
    $2.Timestamp? createdAt,
    $core.String? modifiedBy,
    $2.Timestamp? modifiedAt,
    $core.int? roleId,
  }) {
    final result = create();
    if (subMenu != null) result.subMenu = subMenu;
    if (component != null) result.component = component;
    if (pageName != null) result.pageName = pageName;
    if (access != null) result.access = access;
    if (createdBy != null) result.createdBy = createdBy;
    if (createdAt != null) result.createdAt = createdAt;
    if (modifiedBy != null) result.modifiedBy = modifiedBy;
    if (modifiedAt != null) result.modifiedAt = modifiedAt;
    if (roleId != null) result.roleId = roleId;
    return result;
  }

  AccessPage._();

  factory AccessPage.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory AccessPage.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AccessPage', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'subMenu')
    ..aOS(2, _omitFieldNames ? '' : 'component')
    ..aOS(3, _omitFieldNames ? '' : 'pageName')
    ..aOS(4, _omitFieldNames ? '' : 'access')
    ..aOS(5, _omitFieldNames ? '' : 'createdBy')
    ..aOM<$2.Timestamp>(6, _omitFieldNames ? '' : 'createdAt', subBuilder: $2.Timestamp.create)
    ..aOS(7, _omitFieldNames ? '' : 'modifiedBy')
    ..aOM<$2.Timestamp>(8, _omitFieldNames ? '' : 'modifiedAt', subBuilder: $2.Timestamp.create)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'roleId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccessPage clone() => AccessPage()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccessPage copyWith(void Function(AccessPage) updates) => super.copyWith((message) => updates(message as AccessPage)) as AccessPage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccessPage create() => AccessPage._();
  @$core.override
  AccessPage createEmptyInstance() => create();
  static $pb.PbList<AccessPage> createRepeated() => $pb.PbList<AccessPage>();
  @$core.pragma('dart2js:noInline')
  static AccessPage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccessPage>(create);
  static AccessPage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get subMenu => $_getSZ(0);
  @$pb.TagNumber(1)
  set subMenu($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSubMenu() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubMenu() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get component => $_getSZ(1);
  @$pb.TagNumber(2)
  set component($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasComponent() => $_has(1);
  @$pb.TagNumber(2)
  void clearComponent() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get pageName => $_getSZ(2);
  @$pb.TagNumber(3)
  set pageName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPageName() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get access => $_getSZ(3);
  @$pb.TagNumber(4)
  set access($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAccess() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccess() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get createdBy => $_getSZ(4);
  @$pb.TagNumber(5)
  set createdBy($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCreatedBy() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedBy() => $_clearField(5);

  @$pb.TagNumber(6)
  $2.Timestamp get createdAt => $_getN(5);
  @$pb.TagNumber(6)
  set createdAt($2.Timestamp value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasCreatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreatedAt() => $_clearField(6);
  @$pb.TagNumber(6)
  $2.Timestamp ensureCreatedAt() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get modifiedBy => $_getSZ(6);
  @$pb.TagNumber(7)
  set modifiedBy($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasModifiedBy() => $_has(6);
  @$pb.TagNumber(7)
  void clearModifiedBy() => $_clearField(7);

  @$pb.TagNumber(8)
  $2.Timestamp get modifiedAt => $_getN(7);
  @$pb.TagNumber(8)
  set modifiedAt($2.Timestamp value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasModifiedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearModifiedAt() => $_clearField(8);
  @$pb.TagNumber(8)
  $2.Timestamp ensureModifiedAt() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.int get roleId => $_getIZ(8);
  @$pb.TagNumber(9)
  set roleId($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasRoleId() => $_has(8);
  @$pb.TagNumber(9)
  void clearRoleId() => $_clearField(9);
}

class SaveAccessPageRequest extends $pb.GeneratedMessage {
  factory SaveAccessPageRequest({
    $core.Iterable<$core.String>? components,
    $core.String? access,
    $core.int? roleId,
  }) {
    final result = create();
    if (components != null) result.components.addAll(components);
    if (access != null) result.access = access;
    if (roleId != null) result.roleId = roleId;
    return result;
  }

  SaveAccessPageRequest._();

  factory SaveAccessPageRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SaveAccessPageRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SaveAccessPageRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'components')
    ..aOS(2, _omitFieldNames ? '' : 'access')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'roleId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SaveAccessPageRequest clone() => SaveAccessPageRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SaveAccessPageRequest copyWith(void Function(SaveAccessPageRequest) updates) => super.copyWith((message) => updates(message as SaveAccessPageRequest)) as SaveAccessPageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SaveAccessPageRequest create() => SaveAccessPageRequest._();
  @$core.override
  SaveAccessPageRequest createEmptyInstance() => create();
  static $pb.PbList<SaveAccessPageRequest> createRepeated() => $pb.PbList<SaveAccessPageRequest>();
  @$core.pragma('dart2js:noInline')
  static SaveAccessPageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SaveAccessPageRequest>(create);
  static SaveAccessPageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get components => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get access => $_getSZ(1);
  @$pb.TagNumber(2)
  set access($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAccess() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccess() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get roleId => $_getIZ(2);
  @$pb.TagNumber(3)
  set roleId($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRoleId() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoleId() => $_clearField(3);
}

class ListAccessPageResponse extends $pb.GeneratedMessage {
  factory ListAccessPageResponse({
    $core.Iterable<AccessPage>? pages,
  }) {
    final result = create();
    if (pages != null) result.pages.addAll(pages);
    return result;
  }

  ListAccessPageResponse._();

  factory ListAccessPageResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListAccessPageResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListAccessPageResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..pc<AccessPage>(1, _omitFieldNames ? '' : 'pages', $pb.PbFieldType.PM, subBuilder: AccessPage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccessPageResponse clone() => ListAccessPageResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccessPageResponse copyWith(void Function(ListAccessPageResponse) updates) => super.copyWith((message) => updates(message as ListAccessPageResponse)) as ListAccessPageResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAccessPageResponse create() => ListAccessPageResponse._();
  @$core.override
  ListAccessPageResponse createEmptyInstance() => create();
  static $pb.PbList<ListAccessPageResponse> createRepeated() => $pb.PbList<ListAccessPageResponse>();
  @$core.pragma('dart2js:noInline')
  static ListAccessPageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAccessPageResponse>(create);
  static ListAccessPageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AccessPage> get pages => $_getList(0);
}

class ListAccessPageRequest extends $pb.GeneratedMessage {
  factory ListAccessPageRequest({
    $core.int? roleId,
    $core.String? subMenu,
    $core.String? component,
    $core.String? access,
  }) {
    final result = create();
    if (roleId != null) result.roleId = roleId;
    if (subMenu != null) result.subMenu = subMenu;
    if (component != null) result.component = component;
    if (access != null) result.access = access;
    return result;
  }

  ListAccessPageRequest._();

  factory ListAccessPageRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListAccessPageRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListAccessPageRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'roleId', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'subMenu')
    ..aOS(3, _omitFieldNames ? '' : 'component')
    ..aOS(4, _omitFieldNames ? '' : 'access')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccessPageRequest clone() => ListAccessPageRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccessPageRequest copyWith(void Function(ListAccessPageRequest) updates) => super.copyWith((message) => updates(message as ListAccessPageRequest)) as ListAccessPageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAccessPageRequest create() => ListAccessPageRequest._();
  @$core.override
  ListAccessPageRequest createEmptyInstance() => create();
  static $pb.PbList<ListAccessPageRequest> createRepeated() => $pb.PbList<ListAccessPageRequest>();
  @$core.pragma('dart2js:noInline')
  static ListAccessPageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAccessPageRequest>(create);
  static ListAccessPageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get roleId => $_getIZ(0);
  @$pb.TagNumber(1)
  set roleId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRoleId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoleId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get subMenu => $_getSZ(1);
  @$pb.TagNumber(2)
  set subMenu($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSubMenu() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubMenu() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get component => $_getSZ(2);
  @$pb.TagNumber(3)
  set component($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasComponent() => $_has(2);
  @$pb.TagNumber(3)
  void clearComponent() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get access => $_getSZ(3);
  @$pb.TagNumber(4)
  set access($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAccess() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccess() => $_clearField(4);
}

class AccessFunction extends $pb.GeneratedMessage {
  factory AccessFunction({
    $core.int? accessId,
    $core.String? access,
    $core.String? subAccess,
    $core.int? roleId,
    $core.String? amountLimit,
    $core.String? maxAmountLimit,
    $core.String? createdBy,
    $2.Timestamp? createdAt,
  }) {
    final result = create();
    if (accessId != null) result.accessId = accessId;
    if (access != null) result.access = access;
    if (subAccess != null) result.subAccess = subAccess;
    if (roleId != null) result.roleId = roleId;
    if (amountLimit != null) result.amountLimit = amountLimit;
    if (maxAmountLimit != null) result.maxAmountLimit = maxAmountLimit;
    if (createdBy != null) result.createdBy = createdBy;
    if (createdAt != null) result.createdAt = createdAt;
    return result;
  }

  AccessFunction._();

  factory AccessFunction.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory AccessFunction.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AccessFunction', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'accessId', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'access')
    ..aOS(3, _omitFieldNames ? '' : 'subAccess')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'roleId', $pb.PbFieldType.OU3)
    ..aOS(5, _omitFieldNames ? '' : 'amountLimit')
    ..aOS(6, _omitFieldNames ? '' : 'maxAmountLimit')
    ..aOS(7, _omitFieldNames ? '' : 'createdBy')
    ..aOM<$2.Timestamp>(8, _omitFieldNames ? '' : 'createdAt', subBuilder: $2.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccessFunction clone() => AccessFunction()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccessFunction copyWith(void Function(AccessFunction) updates) => super.copyWith((message) => updates(message as AccessFunction)) as AccessFunction;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccessFunction create() => AccessFunction._();
  @$core.override
  AccessFunction createEmptyInstance() => create();
  static $pb.PbList<AccessFunction> createRepeated() => $pb.PbList<AccessFunction>();
  @$core.pragma('dart2js:noInline')
  static AccessFunction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccessFunction>(create);
  static AccessFunction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get accessId => $_getIZ(0);
  @$pb.TagNumber(1)
  set accessId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAccessId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get access => $_getSZ(1);
  @$pb.TagNumber(2)
  set access($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAccess() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccess() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get subAccess => $_getSZ(2);
  @$pb.TagNumber(3)
  set subAccess($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSubAccess() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubAccess() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get roleId => $_getIZ(3);
  @$pb.TagNumber(4)
  set roleId($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRoleId() => $_has(3);
  @$pb.TagNumber(4)
  void clearRoleId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get amountLimit => $_getSZ(4);
  @$pb.TagNumber(5)
  set amountLimit($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAmountLimit() => $_has(4);
  @$pb.TagNumber(5)
  void clearAmountLimit() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get maxAmountLimit => $_getSZ(5);
  @$pb.TagNumber(6)
  set maxAmountLimit($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMaxAmountLimit() => $_has(5);
  @$pb.TagNumber(6)
  void clearMaxAmountLimit() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get createdBy => $_getSZ(6);
  @$pb.TagNumber(7)
  set createdBy($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCreatedBy() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedBy() => $_clearField(7);

  @$pb.TagNumber(8)
  $2.Timestamp get createdAt => $_getN(7);
  @$pb.TagNumber(8)
  set createdAt($2.Timestamp value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasCreatedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearCreatedAt() => $_clearField(8);
  @$pb.TagNumber(8)
  $2.Timestamp ensureCreatedAt() => $_ensure(7);
}

class ListRoleAccessFunctionRequest extends $pb.GeneratedMessage {
  factory ListRoleAccessFunctionRequest({
    $core.String? access,
    $core.String? subAccess,
  }) {
    final result = create();
    if (access != null) result.access = access;
    if (subAccess != null) result.subAccess = subAccess;
    return result;
  }

  ListRoleAccessFunctionRequest._();

  factory ListRoleAccessFunctionRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListRoleAccessFunctionRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListRoleAccessFunctionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'access')
    ..aOS(2, _omitFieldNames ? '' : 'subAccess')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListRoleAccessFunctionRequest clone() => ListRoleAccessFunctionRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListRoleAccessFunctionRequest copyWith(void Function(ListRoleAccessFunctionRequest) updates) => super.copyWith((message) => updates(message as ListRoleAccessFunctionRequest)) as ListRoleAccessFunctionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRoleAccessFunctionRequest create() => ListRoleAccessFunctionRequest._();
  @$core.override
  ListRoleAccessFunctionRequest createEmptyInstance() => create();
  static $pb.PbList<ListRoleAccessFunctionRequest> createRepeated() => $pb.PbList<ListRoleAccessFunctionRequest>();
  @$core.pragma('dart2js:noInline')
  static ListRoleAccessFunctionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRoleAccessFunctionRequest>(create);
  static ListRoleAccessFunctionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get access => $_getSZ(0);
  @$pb.TagNumber(1)
  set access($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccess() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get subAccess => $_getSZ(1);
  @$pb.TagNumber(2)
  set subAccess($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSubAccess() => $_has(1);
  @$pb.TagNumber(2)
  void clearSubAccess() => $_clearField(2);
}

class ListAccessFunctionRequest extends $pb.GeneratedMessage {
  factory ListAccessFunctionRequest({
    $core.String? searchType,
    $core.int? roleId,
  }) {
    final result = create();
    if (searchType != null) result.searchType = searchType;
    if (roleId != null) result.roleId = roleId;
    return result;
  }

  ListAccessFunctionRequest._();

  factory ListAccessFunctionRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListAccessFunctionRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListAccessFunctionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'searchType')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'roleId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccessFunctionRequest clone() => ListAccessFunctionRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccessFunctionRequest copyWith(void Function(ListAccessFunctionRequest) updates) => super.copyWith((message) => updates(message as ListAccessFunctionRequest)) as ListAccessFunctionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAccessFunctionRequest create() => ListAccessFunctionRequest._();
  @$core.override
  ListAccessFunctionRequest createEmptyInstance() => create();
  static $pb.PbList<ListAccessFunctionRequest> createRepeated() => $pb.PbList<ListAccessFunctionRequest>();
  @$core.pragma('dart2js:noInline')
  static ListAccessFunctionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAccessFunctionRequest>(create);
  static ListAccessFunctionRequest? _defaultInstance;

  /// ALL, SELECTED, UNSELECTED
  @$pb.TagNumber(1)
  $core.String get searchType => $_getSZ(0);
  @$pb.TagNumber(1)
  set searchType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSearchType() => $_has(0);
  @$pb.TagNumber(1)
  void clearSearchType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get roleId => $_getIZ(1);
  @$pb.TagNumber(2)
  set roleId($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRoleId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoleId() => $_clearField(2);
}

class ListAccessFunctionResponse extends $pb.GeneratedMessage {
  factory ListAccessFunctionResponse({
    $core.Iterable<AccessFunction>? accesses,
  }) {
    final result = create();
    if (accesses != null) result.accesses.addAll(accesses);
    return result;
  }

  ListAccessFunctionResponse._();

  factory ListAccessFunctionResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListAccessFunctionResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListAccessFunctionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..pc<AccessFunction>(1, _omitFieldNames ? '' : 'accesses', $pb.PbFieldType.PM, subBuilder: AccessFunction.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccessFunctionResponse clone() => ListAccessFunctionResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccessFunctionResponse copyWith(void Function(ListAccessFunctionResponse) updates) => super.copyWith((message) => updates(message as ListAccessFunctionResponse)) as ListAccessFunctionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAccessFunctionResponse create() => ListAccessFunctionResponse._();
  @$core.override
  ListAccessFunctionResponse createEmptyInstance() => create();
  static $pb.PbList<ListAccessFunctionResponse> createRepeated() => $pb.PbList<ListAccessFunctionResponse>();
  @$core.pragma('dart2js:noInline')
  static ListAccessFunctionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAccessFunctionResponse>(create);
  static ListAccessFunctionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AccessFunction> get accesses => $_getList(0);
}

class AddRemoveAccessFunctionRequest extends $pb.GeneratedMessage {
  factory AddRemoveAccessFunctionRequest({
    $core.int? roleId,
    $core.String? access,
    $core.String? subAccess,
  }) {
    final result = create();
    if (roleId != null) result.roleId = roleId;
    if (access != null) result.access = access;
    if (subAccess != null) result.subAccess = subAccess;
    return result;
  }

  AddRemoveAccessFunctionRequest._();

  factory AddRemoveAccessFunctionRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory AddRemoveAccessFunctionRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AddRemoveAccessFunctionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'roleId', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'access')
    ..aOS(3, _omitFieldNames ? '' : 'subAccess')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AddRemoveAccessFunctionRequest clone() => AddRemoveAccessFunctionRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AddRemoveAccessFunctionRequest copyWith(void Function(AddRemoveAccessFunctionRequest) updates) => super.copyWith((message) => updates(message as AddRemoveAccessFunctionRequest)) as AddRemoveAccessFunctionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AddRemoveAccessFunctionRequest create() => AddRemoveAccessFunctionRequest._();
  @$core.override
  AddRemoveAccessFunctionRequest createEmptyInstance() => create();
  static $pb.PbList<AddRemoveAccessFunctionRequest> createRepeated() => $pb.PbList<AddRemoveAccessFunctionRequest>();
  @$core.pragma('dart2js:noInline')
  static AddRemoveAccessFunctionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddRemoveAccessFunctionRequest>(create);
  static AddRemoveAccessFunctionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get roleId => $_getIZ(0);
  @$pb.TagNumber(1)
  set roleId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRoleId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoleId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get access => $_getSZ(1);
  @$pb.TagNumber(2)
  set access($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAccess() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccess() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get subAccess => $_getSZ(2);
  @$pb.TagNumber(3)
  set subAccess($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSubAccess() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubAccess() => $_clearField(3);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
