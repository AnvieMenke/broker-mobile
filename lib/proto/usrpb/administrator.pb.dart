//
//  Generated code. Do not modify.
//  source: proto/usrpb/administrator.proto
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
import '../utilspb/pagination.pb.dart' as $3;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Administrator extends $pb.GeneratedMessage {
  factory Administrator({
    $core.int? usrId,
    $core.String? email,
    $core.String? name,
    $core.String? password,
    $core.String? mobileNo,
    $core.String? userType,
    $core.String? status,
    $core.String? authenticationMode,
    $core.int? accountId,
    $core.String? correspondent,
    $core.String? accountNo,
    $core.int? roleId,
    $core.String? roleName,
    $core.String? onboardingPercent,
    $core.String? createdBy,
    $core.String? modifiedBy,
    $2.Timestamp? createdAt,
    $2.Timestamp? modifiedAt,
    $2.Timestamp? lastLogin,
    $core.String? language,
  }) {
    final result = create();
    if (usrId != null) result.usrId = usrId;
    if (email != null) result.email = email;
    if (name != null) result.name = name;
    if (password != null) result.password = password;
    if (mobileNo != null) result.mobileNo = mobileNo;
    if (userType != null) result.userType = userType;
    if (status != null) result.status = status;
    if (authenticationMode != null) result.authenticationMode = authenticationMode;
    if (accountId != null) result.accountId = accountId;
    if (correspondent != null) result.correspondent = correspondent;
    if (accountNo != null) result.accountNo = accountNo;
    if (roleId != null) result.roleId = roleId;
    if (roleName != null) result.roleName = roleName;
    if (onboardingPercent != null) result.onboardingPercent = onboardingPercent;
    if (createdBy != null) result.createdBy = createdBy;
    if (modifiedBy != null) result.modifiedBy = modifiedBy;
    if (createdAt != null) result.createdAt = createdAt;
    if (modifiedAt != null) result.modifiedAt = modifiedAt;
    if (lastLogin != null) result.lastLogin = lastLogin;
    if (language != null) result.language = language;
    return result;
  }

  Administrator._();

  factory Administrator.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Administrator.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Administrator', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'usrId', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'password')
    ..aOS(5, _omitFieldNames ? '' : 'mobileNo')
    ..aOS(6, _omitFieldNames ? '' : 'userType')
    ..aOS(7, _omitFieldNames ? '' : 'status')
    ..aOS(8, _omitFieldNames ? '' : 'authenticationMode')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'accountId', $pb.PbFieldType.OU3)
    ..aOS(10, _omitFieldNames ? '' : 'correspondent')
    ..aOS(11, _omitFieldNames ? '' : 'accountNo')
    ..a<$core.int>(12, _omitFieldNames ? '' : 'roleId', $pb.PbFieldType.OU3)
    ..aOS(13, _omitFieldNames ? '' : 'roleName')
    ..aOS(14, _omitFieldNames ? '' : 'onboardingPercent')
    ..aOS(15, _omitFieldNames ? '' : 'createdBy')
    ..aOS(16, _omitFieldNames ? '' : 'modifiedBy')
    ..aOM<$2.Timestamp>(17, _omitFieldNames ? '' : 'createdAt', subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(18, _omitFieldNames ? '' : 'modifiedAt', subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(19, _omitFieldNames ? '' : 'lastLogin', subBuilder: $2.Timestamp.create)
    ..aOS(20, _omitFieldNames ? '' : 'language')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Administrator clone() => Administrator()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Administrator copyWith(void Function(Administrator) updates) => super.copyWith((message) => updates(message as Administrator)) as Administrator;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Administrator create() => Administrator._();
  @$core.override
  Administrator createEmptyInstance() => create();
  static $pb.PbList<Administrator> createRepeated() => $pb.PbList<Administrator>();
  @$core.pragma('dart2js:noInline')
  static Administrator getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Administrator>(create);
  static Administrator? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get usrId => $_getIZ(0);
  @$pb.TagNumber(1)
  set usrId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUsrId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsrId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get password => $_getSZ(3);
  @$pb.TagNumber(4)
  set password($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasPassword() => $_has(3);
  @$pb.TagNumber(4)
  void clearPassword() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get mobileNo => $_getSZ(4);
  @$pb.TagNumber(5)
  set mobileNo($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMobileNo() => $_has(4);
  @$pb.TagNumber(5)
  void clearMobileNo() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get userType => $_getSZ(5);
  @$pb.TagNumber(6)
  set userType($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasUserType() => $_has(5);
  @$pb.TagNumber(6)
  void clearUserType() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get status => $_getSZ(6);
  @$pb.TagNumber(7)
  set status($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearStatus() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get authenticationMode => $_getSZ(7);
  @$pb.TagNumber(8)
  set authenticationMode($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasAuthenticationMode() => $_has(7);
  @$pb.TagNumber(8)
  void clearAuthenticationMode() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get accountId => $_getIZ(8);
  @$pb.TagNumber(9)
  set accountId($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasAccountId() => $_has(8);
  @$pb.TagNumber(9)
  void clearAccountId() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get correspondent => $_getSZ(9);
  @$pb.TagNumber(10)
  set correspondent($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasCorrespondent() => $_has(9);
  @$pb.TagNumber(10)
  void clearCorrespondent() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get accountNo => $_getSZ(10);
  @$pb.TagNumber(11)
  set accountNo($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasAccountNo() => $_has(10);
  @$pb.TagNumber(11)
  void clearAccountNo() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get roleId => $_getIZ(11);
  @$pb.TagNumber(12)
  set roleId($core.int value) => $_setUnsignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasRoleId() => $_has(11);
  @$pb.TagNumber(12)
  void clearRoleId() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get roleName => $_getSZ(12);
  @$pb.TagNumber(13)
  set roleName($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasRoleName() => $_has(12);
  @$pb.TagNumber(13)
  void clearRoleName() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get onboardingPercent => $_getSZ(13);
  @$pb.TagNumber(14)
  set onboardingPercent($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasOnboardingPercent() => $_has(13);
  @$pb.TagNumber(14)
  void clearOnboardingPercent() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get createdBy => $_getSZ(14);
  @$pb.TagNumber(15)
  set createdBy($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasCreatedBy() => $_has(14);
  @$pb.TagNumber(15)
  void clearCreatedBy() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get modifiedBy => $_getSZ(15);
  @$pb.TagNumber(16)
  set modifiedBy($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasModifiedBy() => $_has(15);
  @$pb.TagNumber(16)
  void clearModifiedBy() => $_clearField(16);

  @$pb.TagNumber(17)
  $2.Timestamp get createdAt => $_getN(16);
  @$pb.TagNumber(17)
  set createdAt($2.Timestamp value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasCreatedAt() => $_has(16);
  @$pb.TagNumber(17)
  void clearCreatedAt() => $_clearField(17);
  @$pb.TagNumber(17)
  $2.Timestamp ensureCreatedAt() => $_ensure(16);

  @$pb.TagNumber(18)
  $2.Timestamp get modifiedAt => $_getN(17);
  @$pb.TagNumber(18)
  set modifiedAt($2.Timestamp value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasModifiedAt() => $_has(17);
  @$pb.TagNumber(18)
  void clearModifiedAt() => $_clearField(18);
  @$pb.TagNumber(18)
  $2.Timestamp ensureModifiedAt() => $_ensure(17);

  @$pb.TagNumber(19)
  $2.Timestamp get lastLogin => $_getN(18);
  @$pb.TagNumber(19)
  set lastLogin($2.Timestamp value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasLastLogin() => $_has(18);
  @$pb.TagNumber(19)
  void clearLastLogin() => $_clearField(19);
  @$pb.TagNumber(19)
  $2.Timestamp ensureLastLogin() => $_ensure(18);

  @$pb.TagNumber(20)
  $core.String get language => $_getSZ(19);
  @$pb.TagNumber(20)
  set language($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasLanguage() => $_has(19);
  @$pb.TagNumber(20)
  void clearLanguage() => $_clearField(20);
}

class ListAdministratorRequest extends $pb.GeneratedMessage {
  factory ListAdministratorRequest({
    $core.String? email,
    $core.String? name,
    $core.String? userType,
    $core.String? status,
    $core.int? roleId,
    $core.bool? isPendingClients,
    $3.Pagination? pagination,
  }) {
    final result = create();
    if (email != null) result.email = email;
    if (name != null) result.name = name;
    if (userType != null) result.userType = userType;
    if (status != null) result.status = status;
    if (roleId != null) result.roleId = roleId;
    if (isPendingClients != null) result.isPendingClients = isPendingClients;
    if (pagination != null) result.pagination = pagination;
    return result;
  }

  ListAdministratorRequest._();

  factory ListAdministratorRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListAdministratorRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListAdministratorRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'userType')
    ..aOS(4, _omitFieldNames ? '' : 'status')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'roleId', $pb.PbFieldType.OU3)
    ..aOB(6, _omitFieldNames ? '' : 'isPendingClients')
    ..aOM<$3.Pagination>(7, _omitFieldNames ? '' : 'pagination', subBuilder: $3.Pagination.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAdministratorRequest clone() => ListAdministratorRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAdministratorRequest copyWith(void Function(ListAdministratorRequest) updates) => super.copyWith((message) => updates(message as ListAdministratorRequest)) as ListAdministratorRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAdministratorRequest create() => ListAdministratorRequest._();
  @$core.override
  ListAdministratorRequest createEmptyInstance() => create();
  static $pb.PbList<ListAdministratorRequest> createRepeated() => $pb.PbList<ListAdministratorRequest>();
  @$core.pragma('dart2js:noInline')
  static ListAdministratorRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAdministratorRequest>(create);
  static ListAdministratorRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get userType => $_getSZ(2);
  @$pb.TagNumber(3)
  set userType($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUserType() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get status => $_getSZ(3);
  @$pb.TagNumber(4)
  set status($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStatus() => $_has(3);
  @$pb.TagNumber(4)
  void clearStatus() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get roleId => $_getIZ(4);
  @$pb.TagNumber(5)
  set roleId($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRoleId() => $_has(4);
  @$pb.TagNumber(5)
  void clearRoleId() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isPendingClients => $_getBF(5);
  @$pb.TagNumber(6)
  set isPendingClients($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasIsPendingClients() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsPendingClients() => $_clearField(6);

  @$pb.TagNumber(7)
  $3.Pagination get pagination => $_getN(6);
  @$pb.TagNumber(7)
  set pagination($3.Pagination value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasPagination() => $_has(6);
  @$pb.TagNumber(7)
  void clearPagination() => $_clearField(7);
  @$pb.TagNumber(7)
  $3.Pagination ensurePagination() => $_ensure(6);
}

class ListAdministratorResponse extends $pb.GeneratedMessage {
  factory ListAdministratorResponse({
    $core.Iterable<Administrator>? administrators,
    ListAdministratorSummary? summary,
  }) {
    final result = create();
    if (administrators != null) result.administrators.addAll(administrators);
    if (summary != null) result.summary = summary;
    return result;
  }

  ListAdministratorResponse._();

  factory ListAdministratorResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListAdministratorResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListAdministratorResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..pc<Administrator>(1, _omitFieldNames ? '' : 'administrators', $pb.PbFieldType.PM, subBuilder: Administrator.create)
    ..aOM<ListAdministratorSummary>(2, _omitFieldNames ? '' : 'summary', subBuilder: ListAdministratorSummary.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAdministratorResponse clone() => ListAdministratorResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAdministratorResponse copyWith(void Function(ListAdministratorResponse) updates) => super.copyWith((message) => updates(message as ListAdministratorResponse)) as ListAdministratorResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAdministratorResponse create() => ListAdministratorResponse._();
  @$core.override
  ListAdministratorResponse createEmptyInstance() => create();
  static $pb.PbList<ListAdministratorResponse> createRepeated() => $pb.PbList<ListAdministratorResponse>();
  @$core.pragma('dart2js:noInline')
  static ListAdministratorResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAdministratorResponse>(create);
  static ListAdministratorResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Administrator> get administrators => $_getList(0);

  @$pb.TagNumber(2)
  ListAdministratorSummary get summary => $_getN(1);
  @$pb.TagNumber(2)
  set summary(ListAdministratorSummary value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSummary() => $_has(1);
  @$pb.TagNumber(2)
  void clearSummary() => $_clearField(2);
  @$pb.TagNumber(2)
  ListAdministratorSummary ensureSummary() => $_ensure(1);
}

class ListAdministratorSummary extends $pb.GeneratedMessage {
  factory ListAdministratorSummary({
    $core.int? totalRows,
  }) {
    final result = create();
    if (totalRows != null) result.totalRows = totalRows;
    return result;
  }

  ListAdministratorSummary._();

  factory ListAdministratorSummary.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListAdministratorSummary.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListAdministratorSummary', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'totalRows', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAdministratorSummary clone() => ListAdministratorSummary()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAdministratorSummary copyWith(void Function(ListAdministratorSummary) updates) => super.copyWith((message) => updates(message as ListAdministratorSummary)) as ListAdministratorSummary;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAdministratorSummary create() => ListAdministratorSummary._();
  @$core.override
  ListAdministratorSummary createEmptyInstance() => create();
  static $pb.PbList<ListAdministratorSummary> createRepeated() => $pb.PbList<ListAdministratorSummary>();
  @$core.pragma('dart2js:noInline')
  static ListAdministratorSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAdministratorSummary>(create);
  static ListAdministratorSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get totalRows => $_getIZ(0);
  @$pb.TagNumber(1)
  set totalRows($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTotalRows() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalRows() => $_clearField(1);
}

class CreateAdministratorResponse extends $pb.GeneratedMessage {
  factory CreateAdministratorResponse({
    Administrator? administrator,
  }) {
    final result = create();
    if (administrator != null) result.administrator = administrator;
    return result;
  }

  CreateAdministratorResponse._();

  factory CreateAdministratorResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory CreateAdministratorResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateAdministratorResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..aOM<Administrator>(1, _omitFieldNames ? '' : 'administrator', subBuilder: Administrator.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateAdministratorResponse clone() => CreateAdministratorResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateAdministratorResponse copyWith(void Function(CreateAdministratorResponse) updates) => super.copyWith((message) => updates(message as CreateAdministratorResponse)) as CreateAdministratorResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateAdministratorResponse create() => CreateAdministratorResponse._();
  @$core.override
  CreateAdministratorResponse createEmptyInstance() => create();
  static $pb.PbList<CreateAdministratorResponse> createRepeated() => $pb.PbList<CreateAdministratorResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateAdministratorResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateAdministratorResponse>(create);
  static CreateAdministratorResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Administrator get administrator => $_getN(0);
  @$pb.TagNumber(1)
  set administrator(Administrator value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAdministrator() => $_has(0);
  @$pb.TagNumber(1)
  void clearAdministrator() => $_clearField(1);
  @$pb.TagNumber(1)
  Administrator ensureAdministrator() => $_ensure(0);
}

class UpdateAdministratorResponse extends $pb.GeneratedMessage {
  factory UpdateAdministratorResponse({
    Administrator? administrator,
  }) {
    final result = create();
    if (administrator != null) result.administrator = administrator;
    return result;
  }

  UpdateAdministratorResponse._();

  factory UpdateAdministratorResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory UpdateAdministratorResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateAdministratorResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..aOM<Administrator>(1, _omitFieldNames ? '' : 'administrator', subBuilder: Administrator.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateAdministratorResponse clone() => UpdateAdministratorResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateAdministratorResponse copyWith(void Function(UpdateAdministratorResponse) updates) => super.copyWith((message) => updates(message as UpdateAdministratorResponse)) as UpdateAdministratorResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateAdministratorResponse create() => UpdateAdministratorResponse._();
  @$core.override
  UpdateAdministratorResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateAdministratorResponse> createRepeated() => $pb.PbList<UpdateAdministratorResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateAdministratorResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateAdministratorResponse>(create);
  static UpdateAdministratorResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Administrator get administrator => $_getN(0);
  @$pb.TagNumber(1)
  set administrator(Administrator value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAdministrator() => $_has(0);
  @$pb.TagNumber(1)
  void clearAdministrator() => $_clearField(1);
  @$pb.TagNumber(1)
  Administrator ensureAdministrator() => $_ensure(0);
}

class UpdateUserSettingsRequest extends $pb.GeneratedMessage {
  factory UpdateUserSettingsRequest({
    $core.String? mobileNo,
    $core.String? authenticationMode,
  }) {
    final result = create();
    if (mobileNo != null) result.mobileNo = mobileNo;
    if (authenticationMode != null) result.authenticationMode = authenticationMode;
    return result;
  }

  UpdateUserSettingsRequest._();

  factory UpdateUserSettingsRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory UpdateUserSettingsRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUserSettingsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'mobileNo')
    ..aOS(2, _omitFieldNames ? '' : 'authenticationMode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateUserSettingsRequest clone() => UpdateUserSettingsRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateUserSettingsRequest copyWith(void Function(UpdateUserSettingsRequest) updates) => super.copyWith((message) => updates(message as UpdateUserSettingsRequest)) as UpdateUserSettingsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUserSettingsRequest create() => UpdateUserSettingsRequest._();
  @$core.override
  UpdateUserSettingsRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateUserSettingsRequest> createRepeated() => $pb.PbList<UpdateUserSettingsRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserSettingsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserSettingsRequest>(create);
  static UpdateUserSettingsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get mobileNo => $_getSZ(0);
  @$pb.TagNumber(1)
  set mobileNo($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMobileNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearMobileNo() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get authenticationMode => $_getSZ(1);
  @$pb.TagNumber(2)
  set authenticationMode($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAuthenticationMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearAuthenticationMode() => $_clearField(2);
}

class UpdateUserSettingsResponse extends $pb.GeneratedMessage {
  factory UpdateUserSettingsResponse({
    $core.String? success,
  }) {
    final result = create();
    if (success != null) result.success = success;
    return result;
  }

  UpdateUserSettingsResponse._();

  factory UpdateUserSettingsResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory UpdateUserSettingsResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUserSettingsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'success')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateUserSettingsResponse clone() => UpdateUserSettingsResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateUserSettingsResponse copyWith(void Function(UpdateUserSettingsResponse) updates) => super.copyWith((message) => updates(message as UpdateUserSettingsResponse)) as UpdateUserSettingsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUserSettingsResponse create() => UpdateUserSettingsResponse._();
  @$core.override
  UpdateUserSettingsResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateUserSettingsResponse> createRepeated() => $pb.PbList<UpdateUserSettingsResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserSettingsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserSettingsResponse>(create);
  static UpdateUserSettingsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get success => $_getSZ(0);
  @$pb.TagNumber(1)
  set success($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSuccess() => $_has(0);
  @$pb.TagNumber(1)
  void clearSuccess() => $_clearField(1);
}

class ChangePasswordRequest extends $pb.GeneratedMessage {
  factory ChangePasswordRequest({
    $core.String? oldPassword,
    $core.String? newPassword,
  }) {
    final result = create();
    if (oldPassword != null) result.oldPassword = oldPassword;
    if (newPassword != null) result.newPassword = newPassword;
    return result;
  }

  ChangePasswordRequest._();

  factory ChangePasswordRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ChangePasswordRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChangePasswordRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'oldPassword')
    ..aOS(2, _omitFieldNames ? '' : 'newPassword')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangePasswordRequest clone() => ChangePasswordRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangePasswordRequest copyWith(void Function(ChangePasswordRequest) updates) => super.copyWith((message) => updates(message as ChangePasswordRequest)) as ChangePasswordRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChangePasswordRequest create() => ChangePasswordRequest._();
  @$core.override
  ChangePasswordRequest createEmptyInstance() => create();
  static $pb.PbList<ChangePasswordRequest> createRepeated() => $pb.PbList<ChangePasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static ChangePasswordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangePasswordRequest>(create);
  static ChangePasswordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get oldPassword => $_getSZ(0);
  @$pb.TagNumber(1)
  set oldPassword($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOldPassword() => $_has(0);
  @$pb.TagNumber(1)
  void clearOldPassword() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get newPassword => $_getSZ(1);
  @$pb.TagNumber(2)
  set newPassword($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNewPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearNewPassword() => $_clearField(2);
}

class ChangePasswordResponse extends $pb.GeneratedMessage {
  factory ChangePasswordResponse({
    $core.String? status,
    $core.String? msg,
  }) {
    final result = create();
    if (status != null) result.status = status;
    if (msg != null) result.msg = msg;
    return result;
  }

  ChangePasswordResponse._();

  factory ChangePasswordResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ChangePasswordResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChangePasswordResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'status')
    ..aOS(2, _omitFieldNames ? '' : 'msg')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangePasswordResponse clone() => ChangePasswordResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangePasswordResponse copyWith(void Function(ChangePasswordResponse) updates) => super.copyWith((message) => updates(message as ChangePasswordResponse)) as ChangePasswordResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChangePasswordResponse create() => ChangePasswordResponse._();
  @$core.override
  ChangePasswordResponse createEmptyInstance() => create();
  static $pb.PbList<ChangePasswordResponse> createRepeated() => $pb.PbList<ChangePasswordResponse>();
  @$core.pragma('dart2js:noInline')
  static ChangePasswordResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangePasswordResponse>(create);
  static ChangePasswordResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);
  @$pb.TagNumber(2)
  set msg($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsg() => $_clearField(2);
}

class UserAccountAccess extends $pb.GeneratedMessage {
  factory UserAccountAccess({
    $core.String? correspondent,
    $core.String? accountNo,
  }) {
    final result = create();
    if (correspondent != null) result.correspondent = correspondent;
    if (accountNo != null) result.accountNo = accountNo;
    return result;
  }

  UserAccountAccess._();

  factory UserAccountAccess.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory UserAccountAccess.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserAccountAccess', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'correspondent')
    ..aOS(2, _omitFieldNames ? '' : 'accountNo')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserAccountAccess clone() => UserAccountAccess()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UserAccountAccess copyWith(void Function(UserAccountAccess) updates) => super.copyWith((message) => updates(message as UserAccountAccess)) as UserAccountAccess;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserAccountAccess create() => UserAccountAccess._();
  @$core.override
  UserAccountAccess createEmptyInstance() => create();
  static $pb.PbList<UserAccountAccess> createRepeated() => $pb.PbList<UserAccountAccess>();
  @$core.pragma('dart2js:noInline')
  static UserAccountAccess getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserAccountAccess>(create);
  static UserAccountAccess? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get correspondent => $_getSZ(0);
  @$pb.TagNumber(1)
  set correspondent($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCorrespondent() => $_has(0);
  @$pb.TagNumber(1)
  void clearCorrespondent() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountNo => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountNo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAccountNo() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountNo() => $_clearField(2);
}

class EmptyRequest extends $pb.GeneratedMessage {
  factory EmptyRequest() => create();

  EmptyRequest._();

  factory EmptyRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory EmptyRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmptyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EmptyRequest clone() => EmptyRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EmptyRequest copyWith(void Function(EmptyRequest) updates) => super.copyWith((message) => updates(message as EmptyRequest)) as EmptyRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EmptyRequest create() => EmptyRequest._();
  @$core.override
  EmptyRequest createEmptyInstance() => create();
  static $pb.PbList<EmptyRequest> createRepeated() => $pb.PbList<EmptyRequest>();
  @$core.pragma('dart2js:noInline')
  static EmptyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyRequest>(create);
  static EmptyRequest? _defaultInstance;
}

class DeleteAccessResponse extends $pb.GeneratedMessage {
  factory DeleteAccessResponse({
    $core.int? accessId,
  }) {
    final result = create();
    if (accessId != null) result.accessId = accessId;
    return result;
  }

  DeleteAccessResponse._();

  factory DeleteAccessResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory DeleteAccessResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteAccessResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'accessId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteAccessResponse clone() => DeleteAccessResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteAccessResponse copyWith(void Function(DeleteAccessResponse) updates) => super.copyWith((message) => updates(message as DeleteAccessResponse)) as DeleteAccessResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteAccessResponse create() => DeleteAccessResponse._();
  @$core.override
  DeleteAccessResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteAccessResponse> createRepeated() => $pb.PbList<DeleteAccessResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteAccessResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteAccessResponse>(create);
  static DeleteAccessResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get accessId => $_getIZ(0);
  @$pb.TagNumber(1)
  set accessId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAccessId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessId() => $_clearField(1);
}

class ForgotPasswordCheckEmailRequest extends $pb.GeneratedMessage {
  factory ForgotPasswordCheckEmailRequest({
    $core.String? email,
    $core.String? correspondent,
  }) {
    final result = create();
    if (email != null) result.email = email;
    if (correspondent != null) result.correspondent = correspondent;
    return result;
  }

  ForgotPasswordCheckEmailRequest._();

  factory ForgotPasswordCheckEmailRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ForgotPasswordCheckEmailRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ForgotPasswordCheckEmailRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..aOS(2, _omitFieldNames ? '' : 'correspondent')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForgotPasswordCheckEmailRequest clone() => ForgotPasswordCheckEmailRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForgotPasswordCheckEmailRequest copyWith(void Function(ForgotPasswordCheckEmailRequest) updates) => super.copyWith((message) => updates(message as ForgotPasswordCheckEmailRequest)) as ForgotPasswordCheckEmailRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForgotPasswordCheckEmailRequest create() => ForgotPasswordCheckEmailRequest._();
  @$core.override
  ForgotPasswordCheckEmailRequest createEmptyInstance() => create();
  static $pb.PbList<ForgotPasswordCheckEmailRequest> createRepeated() => $pb.PbList<ForgotPasswordCheckEmailRequest>();
  @$core.pragma('dart2js:noInline')
  static ForgotPasswordCheckEmailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForgotPasswordCheckEmailRequest>(create);
  static ForgotPasswordCheckEmailRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get correspondent => $_getSZ(1);
  @$pb.TagNumber(2)
  set correspondent($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCorrespondent() => $_has(1);
  @$pb.TagNumber(2)
  void clearCorrespondent() => $_clearField(2);
}

class ForgotPasswordCheckEmailResponse extends $pb.GeneratedMessage {
  factory ForgotPasswordCheckEmailResponse({
    $core.Iterable<$core.String>? correspondents,
  }) {
    final result = create();
    if (correspondents != null) result.correspondents.addAll(correspondents);
    return result;
  }

  ForgotPasswordCheckEmailResponse._();

  factory ForgotPasswordCheckEmailResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ForgotPasswordCheckEmailResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ForgotPasswordCheckEmailResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'correspondents')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForgotPasswordCheckEmailResponse clone() => ForgotPasswordCheckEmailResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForgotPasswordCheckEmailResponse copyWith(void Function(ForgotPasswordCheckEmailResponse) updates) => super.copyWith((message) => updates(message as ForgotPasswordCheckEmailResponse)) as ForgotPasswordCheckEmailResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForgotPasswordCheckEmailResponse create() => ForgotPasswordCheckEmailResponse._();
  @$core.override
  ForgotPasswordCheckEmailResponse createEmptyInstance() => create();
  static $pb.PbList<ForgotPasswordCheckEmailResponse> createRepeated() => $pb.PbList<ForgotPasswordCheckEmailResponse>();
  @$core.pragma('dart2js:noInline')
  static ForgotPasswordCheckEmailResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForgotPasswordCheckEmailResponse>(create);
  static ForgotPasswordCheckEmailResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get correspondents => $_getList(0);
}

class ForgotPasswordRequest extends $pb.GeneratedMessage {
  factory ForgotPasswordRequest({
    $core.String? externalAuthId,
    $core.int? code,
    $core.String? email,
    $core.String? newPassword,
    $core.String? correspondent,
  }) {
    final result = create();
    if (externalAuthId != null) result.externalAuthId = externalAuthId;
    if (code != null) result.code = code;
    if (email != null) result.email = email;
    if (newPassword != null) result.newPassword = newPassword;
    if (correspondent != null) result.correspondent = correspondent;
    return result;
  }

  ForgotPasswordRequest._();

  factory ForgotPasswordRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ForgotPasswordRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ForgotPasswordRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'externalAuthId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'code', $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'email')
    ..aOS(4, _omitFieldNames ? '' : 'newPassword')
    ..aOS(5, _omitFieldNames ? '' : 'correspondent')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForgotPasswordRequest clone() => ForgotPasswordRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ForgotPasswordRequest copyWith(void Function(ForgotPasswordRequest) updates) => super.copyWith((message) => updates(message as ForgotPasswordRequest)) as ForgotPasswordRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForgotPasswordRequest create() => ForgotPasswordRequest._();
  @$core.override
  ForgotPasswordRequest createEmptyInstance() => create();
  static $pb.PbList<ForgotPasswordRequest> createRepeated() => $pb.PbList<ForgotPasswordRequest>();
  @$core.pragma('dart2js:noInline')
  static ForgotPasswordRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForgotPasswordRequest>(create);
  static ForgotPasswordRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get externalAuthId => $_getSZ(0);
  @$pb.TagNumber(1)
  set externalAuthId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasExternalAuthId() => $_has(0);
  @$pb.TagNumber(1)
  void clearExternalAuthId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get code => $_getIZ(1);
  @$pb.TagNumber(2)
  set code($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get newPassword => $_getSZ(3);
  @$pb.TagNumber(4)
  set newPassword($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasNewPassword() => $_has(3);
  @$pb.TagNumber(4)
  void clearNewPassword() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get correspondent => $_getSZ(4);
  @$pb.TagNumber(5)
  set correspondent($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCorrespondent() => $_has(4);
  @$pb.TagNumber(5)
  void clearCorrespondent() => $_clearField(5);
}

class LazyUser extends $pb.GeneratedMessage {
  factory LazyUser({
    $core.String? name,
    $core.String? email,
    $core.int? userId,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (email != null) result.email = email;
    if (userId != null) result.userId = userId;
    return result;
  }

  LazyUser._();

  factory LazyUser.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LazyUser.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LazyUser', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazyUser clone() => LazyUser()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazyUser copyWith(void Function(LazyUser) updates) => super.copyWith((message) => updates(message as LazyUser)) as LazyUser;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LazyUser create() => LazyUser._();
  @$core.override
  LazyUser createEmptyInstance() => create();
  static $pb.PbList<LazyUser> createRepeated() => $pb.PbList<LazyUser>();
  @$core.pragma('dart2js:noInline')
  static LazyUser getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LazyUser>(create);
  static LazyUser? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get userId => $_getIZ(2);
  @$pb.TagNumber(3)
  set userId($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUserId() => $_has(2);
  @$pb.TagNumber(3)
  void clearUserId() => $_clearField(3);
}

class LazyUsersRequest extends $pb.GeneratedMessage {
  factory LazyUsersRequest({
    $core.String? key,
  }) {
    final result = create();
    if (key != null) result.key = key;
    return result;
  }

  LazyUsersRequest._();

  factory LazyUsersRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LazyUsersRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LazyUsersRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazyUsersRequest clone() => LazyUsersRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazyUsersRequest copyWith(void Function(LazyUsersRequest) updates) => super.copyWith((message) => updates(message as LazyUsersRequest)) as LazyUsersRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LazyUsersRequest create() => LazyUsersRequest._();
  @$core.override
  LazyUsersRequest createEmptyInstance() => create();
  static $pb.PbList<LazyUsersRequest> createRepeated() => $pb.PbList<LazyUsersRequest>();
  @$core.pragma('dart2js:noInline')
  static LazyUsersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LazyUsersRequest>(create);
  static LazyUsersRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);
}

class LazyUsersResponse extends $pb.GeneratedMessage {
  factory LazyUsersResponse({
    $core.Iterable<LazyUser>? lazyUsers,
  }) {
    final result = create();
    if (lazyUsers != null) result.lazyUsers.addAll(lazyUsers);
    return result;
  }

  LazyUsersResponse._();

  factory LazyUsersResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LazyUsersResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LazyUsersResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..pc<LazyUser>(1, _omitFieldNames ? '' : 'lazyUsers', $pb.PbFieldType.PM, subBuilder: LazyUser.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazyUsersResponse clone() => LazyUsersResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazyUsersResponse copyWith(void Function(LazyUsersResponse) updates) => super.copyWith((message) => updates(message as LazyUsersResponse)) as LazyUsersResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LazyUsersResponse create() => LazyUsersResponse._();
  @$core.override
  LazyUsersResponse createEmptyInstance() => create();
  static $pb.PbList<LazyUsersResponse> createRepeated() => $pb.PbList<LazyUsersResponse>();
  @$core.pragma('dart2js:noInline')
  static LazyUsersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LazyUsersResponse>(create);
  static LazyUsersResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<LazyUser> get lazyUsers => $_getList(0);
}

class CurrentUserDetailsResponse extends $pb.GeneratedMessage {
  factory CurrentUserDetailsResponse({
    $core.int? usrId,
    $core.String? name,
    $core.String? email,
    $core.String? mobileNo,
    $core.String? roleName,
    $core.String? authenticationMode,
    $core.String? correspondent,
    $core.bool? hasMfaKeys,
    $core.int? roleId,
  }) {
    final result = create();
    if (usrId != null) result.usrId = usrId;
    if (name != null) result.name = name;
    if (email != null) result.email = email;
    if (mobileNo != null) result.mobileNo = mobileNo;
    if (roleName != null) result.roleName = roleName;
    if (authenticationMode != null) result.authenticationMode = authenticationMode;
    if (correspondent != null) result.correspondent = correspondent;
    if (hasMfaKeys != null) result.hasMfaKeys = hasMfaKeys;
    if (roleId != null) result.roleId = roleId;
    return result;
  }

  CurrentUserDetailsResponse._();

  factory CurrentUserDetailsResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory CurrentUserDetailsResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CurrentUserDetailsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'usrId', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'email')
    ..aOS(4, _omitFieldNames ? '' : 'mobileNo')
    ..aOS(5, _omitFieldNames ? '' : 'roleName')
    ..aOS(6, _omitFieldNames ? '' : 'authenticationMode')
    ..aOS(7, _omitFieldNames ? '' : 'correspondent')
    ..aOB(8, _omitFieldNames ? '' : 'hasMfaKeys')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'roleId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CurrentUserDetailsResponse clone() => CurrentUserDetailsResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CurrentUserDetailsResponse copyWith(void Function(CurrentUserDetailsResponse) updates) => super.copyWith((message) => updates(message as CurrentUserDetailsResponse)) as CurrentUserDetailsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CurrentUserDetailsResponse create() => CurrentUserDetailsResponse._();
  @$core.override
  CurrentUserDetailsResponse createEmptyInstance() => create();
  static $pb.PbList<CurrentUserDetailsResponse> createRepeated() => $pb.PbList<CurrentUserDetailsResponse>();
  @$core.pragma('dart2js:noInline')
  static CurrentUserDetailsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CurrentUserDetailsResponse>(create);
  static CurrentUserDetailsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get usrId => $_getIZ(0);
  @$pb.TagNumber(1)
  set usrId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUsrId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsrId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get mobileNo => $_getSZ(3);
  @$pb.TagNumber(4)
  set mobileNo($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMobileNo() => $_has(3);
  @$pb.TagNumber(4)
  void clearMobileNo() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get roleName => $_getSZ(4);
  @$pb.TagNumber(5)
  set roleName($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRoleName() => $_has(4);
  @$pb.TagNumber(5)
  void clearRoleName() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get authenticationMode => $_getSZ(5);
  @$pb.TagNumber(6)
  set authenticationMode($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAuthenticationMode() => $_has(5);
  @$pb.TagNumber(6)
  void clearAuthenticationMode() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get correspondent => $_getSZ(6);
  @$pb.TagNumber(7)
  set correspondent($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCorrespondent() => $_has(6);
  @$pb.TagNumber(7)
  void clearCorrespondent() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get hasMfaKeys => $_getBF(7);
  @$pb.TagNumber(8)
  set hasMfaKeys($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasHasMfaKeys() => $_has(7);
  @$pb.TagNumber(8)
  void clearHasMfaKeys() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get roleId => $_getIZ(8);
  @$pb.TagNumber(9)
  set roleId($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasRoleId() => $_has(8);
  @$pb.TagNumber(9)
  void clearRoleId() => $_clearField(9);
}

class GetUserOtpAuthUrlResponse extends $pb.GeneratedMessage {
  factory GetUserOtpAuthUrlResponse({
    $core.String? url,
    $core.bool? hasAuthenticator,
  }) {
    final result = create();
    if (url != null) result.url = url;
    if (hasAuthenticator != null) result.hasAuthenticator = hasAuthenticator;
    return result;
  }

  GetUserOtpAuthUrlResponse._();

  factory GetUserOtpAuthUrlResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetUserOtpAuthUrlResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetUserOtpAuthUrlResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..aOB(2, _omitFieldNames ? '' : 'hasAuthenticator')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetUserOtpAuthUrlResponse clone() => GetUserOtpAuthUrlResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetUserOtpAuthUrlResponse copyWith(void Function(GetUserOtpAuthUrlResponse) updates) => super.copyWith((message) => updates(message as GetUserOtpAuthUrlResponse)) as GetUserOtpAuthUrlResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUserOtpAuthUrlResponse create() => GetUserOtpAuthUrlResponse._();
  @$core.override
  GetUserOtpAuthUrlResponse createEmptyInstance() => create();
  static $pb.PbList<GetUserOtpAuthUrlResponse> createRepeated() => $pb.PbList<GetUserOtpAuthUrlResponse>();
  @$core.pragma('dart2js:noInline')
  static GetUserOtpAuthUrlResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserOtpAuthUrlResponse>(create);
  static GetUserOtpAuthUrlResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get hasAuthenticator => $_getBF(1);
  @$pb.TagNumber(2)
  set hasAuthenticator($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHasAuthenticator() => $_has(1);
  @$pb.TagNumber(2)
  void clearHasAuthenticator() => $_clearField(2);
}

class UpdateUserOtpAuthRequest extends $pb.GeneratedMessage {
  factory UpdateUserOtpAuthRequest({
    $core.String? validationCode,
  }) {
    final result = create();
    if (validationCode != null) result.validationCode = validationCode;
    return result;
  }

  UpdateUserOtpAuthRequest._();

  factory UpdateUserOtpAuthRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory UpdateUserOtpAuthRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateUserOtpAuthRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'validationCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateUserOtpAuthRequest clone() => UpdateUserOtpAuthRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateUserOtpAuthRequest copyWith(void Function(UpdateUserOtpAuthRequest) updates) => super.copyWith((message) => updates(message as UpdateUserOtpAuthRequest)) as UpdateUserOtpAuthRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateUserOtpAuthRequest create() => UpdateUserOtpAuthRequest._();
  @$core.override
  UpdateUserOtpAuthRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateUserOtpAuthRequest> createRepeated() => $pb.PbList<UpdateUserOtpAuthRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateUserOtpAuthRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateUserOtpAuthRequest>(create);
  static UpdateUserOtpAuthRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get validationCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set validationCode($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValidationCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearValidationCode() => $_clearField(1);
}

class UpdateLanguageRequest extends $pb.GeneratedMessage {
  factory UpdateLanguageRequest({
    $core.int? usrId,
    $core.String? language,
  }) {
    final result = create();
    if (usrId != null) result.usrId = usrId;
    if (language != null) result.language = language;
    return result;
  }

  UpdateLanguageRequest._();

  factory UpdateLanguageRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory UpdateLanguageRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateLanguageRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'usrId', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'language')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateLanguageRequest clone() => UpdateLanguageRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateLanguageRequest copyWith(void Function(UpdateLanguageRequest) updates) => super.copyWith((message) => updates(message as UpdateLanguageRequest)) as UpdateLanguageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateLanguageRequest create() => UpdateLanguageRequest._();
  @$core.override
  UpdateLanguageRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateLanguageRequest> createRepeated() => $pb.PbList<UpdateLanguageRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateLanguageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateLanguageRequest>(create);
  static UpdateLanguageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get usrId => $_getIZ(0);
  @$pb.TagNumber(1)
  set usrId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUsrId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsrId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get language => $_getSZ(1);
  @$pb.TagNumber(2)
  set language($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLanguage() => $_has(1);
  @$pb.TagNumber(2)
  void clearLanguage() => $_clearField(2);
}

class ChangeRoleRequest extends $pb.GeneratedMessage {
  factory ChangeRoleRequest({
    $core.int? usrId,
    $core.int? roleId,
  }) {
    final result = create();
    if (usrId != null) result.usrId = usrId;
    if (roleId != null) result.roleId = roleId;
    return result;
  }

  ChangeRoleRequest._();

  factory ChangeRoleRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ChangeRoleRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChangeRoleRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'usrId', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'roleId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangeRoleRequest clone() => ChangeRoleRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChangeRoleRequest copyWith(void Function(ChangeRoleRequest) updates) => super.copyWith((message) => updates(message as ChangeRoleRequest)) as ChangeRoleRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChangeRoleRequest create() => ChangeRoleRequest._();
  @$core.override
  ChangeRoleRequest createEmptyInstance() => create();
  static $pb.PbList<ChangeRoleRequest> createRepeated() => $pb.PbList<ChangeRoleRequest>();
  @$core.pragma('dart2js:noInline')
  static ChangeRoleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangeRoleRequest>(create);
  static ChangeRoleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get usrId => $_getIZ(0);
  @$pb.TagNumber(1)
  set usrId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUsrId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsrId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get roleId => $_getIZ(1);
  @$pb.TagNumber(2)
  set roleId($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRoleId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoleId() => $_clearField(2);
}

class LazyAdministratorEmailRequest extends $pb.GeneratedMessage {
  factory LazyAdministratorEmailRequest({
    $core.String? key,
    $core.int? limit,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (limit != null) result.limit = limit;
    return result;
  }

  LazyAdministratorEmailRequest._();

  factory LazyAdministratorEmailRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LazyAdministratorEmailRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LazyAdministratorEmailRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazyAdministratorEmailRequest clone() => LazyAdministratorEmailRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazyAdministratorEmailRequest copyWith(void Function(LazyAdministratorEmailRequest) updates) => super.copyWith((message) => updates(message as LazyAdministratorEmailRequest)) as LazyAdministratorEmailRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LazyAdministratorEmailRequest create() => LazyAdministratorEmailRequest._();
  @$core.override
  LazyAdministratorEmailRequest createEmptyInstance() => create();
  static $pb.PbList<LazyAdministratorEmailRequest> createRepeated() => $pb.PbList<LazyAdministratorEmailRequest>();
  @$core.pragma('dart2js:noInline')
  static LazyAdministratorEmailRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LazyAdministratorEmailRequest>(create);
  static LazyAdministratorEmailRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get limit => $_getIZ(1);
  @$pb.TagNumber(2)
  set limit($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => $_clearField(2);
}

class LazyAdministratorEmailResponse extends $pb.GeneratedMessage {
  factory LazyAdministratorEmailResponse({
    $core.Iterable<$core.String>? administratorEmails,
  }) {
    final result = create();
    if (administratorEmails != null) result.administratorEmails.addAll(administratorEmails);
    return result;
  }

  LazyAdministratorEmailResponse._();

  factory LazyAdministratorEmailResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LazyAdministratorEmailResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LazyAdministratorEmailResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'usrpb'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'administratorEmails')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazyAdministratorEmailResponse clone() => LazyAdministratorEmailResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazyAdministratorEmailResponse copyWith(void Function(LazyAdministratorEmailResponse) updates) => super.copyWith((message) => updates(message as LazyAdministratorEmailResponse)) as LazyAdministratorEmailResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LazyAdministratorEmailResponse create() => LazyAdministratorEmailResponse._();
  @$core.override
  LazyAdministratorEmailResponse createEmptyInstance() => create();
  static $pb.PbList<LazyAdministratorEmailResponse> createRepeated() => $pb.PbList<LazyAdministratorEmailResponse>();
  @$core.pragma('dart2js:noInline')
  static LazyAdministratorEmailResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LazyAdministratorEmailResponse>(create);
  static LazyAdministratorEmailResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get administratorEmails => $_getList(0);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
