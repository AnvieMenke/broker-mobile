//
//  Generated code. Do not modify.
//  source: proto/commonpb/list.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/type/date.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Account extends $pb.GeneratedMessage {
  factory Account({
    $core.String? accountId,
    $core.String? correspondent,
    $core.String? accountNo,
    $core.String? masterAccountNo,
    $core.String? type,
  }) {
    final result = create();
    if (accountId != null) result.accountId = accountId;
    if (correspondent != null) result.correspondent = correspondent;
    if (accountNo != null) result.accountNo = accountNo;
    if (masterAccountNo != null) result.masterAccountNo = masterAccountNo;
    if (type != null) result.type = type;
    return result;
  }

  Account._();

  factory Account.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Account.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Account', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accountId')
    ..aOS(2, _omitFieldNames ? '' : 'correspondent')
    ..aOS(3, _omitFieldNames ? '' : 'accountNo')
    ..aOS(4, _omitFieldNames ? '' : 'masterAccountNo')
    ..aOS(5, _omitFieldNames ? '' : 'type')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Account clone() => Account()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Account copyWith(void Function(Account) updates) => super.copyWith((message) => updates(message as Account)) as Account;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Account create() => Account._();
  @$core.override
  Account createEmptyInstance() => create();
  static $pb.PbList<Account> createRepeated() => $pb.PbList<Account>();
  @$core.pragma('dart2js:noInline')
  static Account getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Account>(create);
  static Account? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get correspondent => $_getSZ(1);
  @$pb.TagNumber(2)
  set correspondent($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCorrespondent() => $_has(1);
  @$pb.TagNumber(2)
  void clearCorrespondent() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get accountNo => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountNo($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAccountNo() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountNo() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get masterAccountNo => $_getSZ(3);
  @$pb.TagNumber(4)
  set masterAccountNo($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMasterAccountNo() => $_has(3);
  @$pb.TagNumber(4)
  void clearMasterAccountNo() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get type => $_getSZ(4);
  @$pb.TagNumber(5)
  set type($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => $_clearField(5);
}

class ListAccountResponse extends $pb.GeneratedMessage {
  factory ListAccountResponse({
    $core.Iterable<Account>? accounts,
  }) {
    final result = create();
    if (accounts != null) result.accounts.addAll(accounts);
    return result;
  }

  ListAccountResponse._();

  factory ListAccountResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListAccountResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListAccountResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..pc<Account>(1, _omitFieldNames ? '' : 'accounts', $pb.PbFieldType.PM, subBuilder: Account.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountResponse clone() => ListAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountResponse copyWith(void Function(ListAccountResponse) updates) => super.copyWith((message) => updates(message as ListAccountResponse)) as ListAccountResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAccountResponse create() => ListAccountResponse._();
  @$core.override
  ListAccountResponse createEmptyInstance() => create();
  static $pb.PbList<ListAccountResponse> createRepeated() => $pb.PbList<ListAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static ListAccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAccountResponse>(create);
  static ListAccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Account> get accounts => $_getList(0);
}

class ListAccountRequest extends $pb.GeneratedMessage {
  factory ListAccountRequest() => create();

  ListAccountRequest._();

  factory ListAccountRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListAccountRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListAccountRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountRequest clone() => ListAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountRequest copyWith(void Function(ListAccountRequest) updates) => super.copyWith((message) => updates(message as ListAccountRequest)) as ListAccountRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAccountRequest create() => ListAccountRequest._();
  @$core.override
  ListAccountRequest createEmptyInstance() => create();
  static $pb.PbList<ListAccountRequest> createRepeated() => $pb.PbList<ListAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static ListAccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAccountRequest>(create);
  static ListAccountRequest? _defaultInstance;
}

class Security extends $pb.GeneratedMessage {
  factory Security({
    $core.String? securityId,
    $core.String? symbol,
    $core.String? symbolDescription,
  }) {
    final result = create();
    if (securityId != null) result.securityId = securityId;
    if (symbol != null) result.symbol = symbol;
    if (symbolDescription != null) result.symbolDescription = symbolDescription;
    return result;
  }

  Security._();

  factory Security.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Security.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Security', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'securityId')
    ..aOS(2, _omitFieldNames ? '' : 'symbol')
    ..aOS(3, _omitFieldNames ? '' : 'symbolDescription')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Security clone() => Security()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Security copyWith(void Function(Security) updates) => super.copyWith((message) => updates(message as Security)) as Security;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Security create() => Security._();
  @$core.override
  Security createEmptyInstance() => create();
  static $pb.PbList<Security> createRepeated() => $pb.PbList<Security>();
  @$core.pragma('dart2js:noInline')
  static Security getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Security>(create);
  static Security? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get securityId => $_getSZ(0);
  @$pb.TagNumber(1)
  set securityId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSecurityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSecurityId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get symbol => $_getSZ(1);
  @$pb.TagNumber(2)
  set symbol($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSymbol() => $_has(1);
  @$pb.TagNumber(2)
  void clearSymbol() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get symbolDescription => $_getSZ(2);
  @$pb.TagNumber(3)
  set symbolDescription($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSymbolDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearSymbolDescription() => $_clearField(3);
}

class ListSecurityRequest extends $pb.GeneratedMessage {
  factory ListSecurityRequest() => create();

  ListSecurityRequest._();

  factory ListSecurityRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListSecurityRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSecurityRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSecurityRequest clone() => ListSecurityRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSecurityRequest copyWith(void Function(ListSecurityRequest) updates) => super.copyWith((message) => updates(message as ListSecurityRequest)) as ListSecurityRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSecurityRequest create() => ListSecurityRequest._();
  @$core.override
  ListSecurityRequest createEmptyInstance() => create();
  static $pb.PbList<ListSecurityRequest> createRepeated() => $pb.PbList<ListSecurityRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSecurityRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSecurityRequest>(create);
  static ListSecurityRequest? _defaultInstance;
}

class ListSecurityResponse extends $pb.GeneratedMessage {
  factory ListSecurityResponse({
    $core.Iterable<Security>? securities,
  }) {
    final result = create();
    if (securities != null) result.securities.addAll(securities);
    return result;
  }

  ListSecurityResponse._();

  factory ListSecurityResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListSecurityResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSecurityResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..pc<Security>(1, _omitFieldNames ? '' : 'securities', $pb.PbFieldType.PM, subBuilder: Security.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSecurityResponse clone() => ListSecurityResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSecurityResponse copyWith(void Function(ListSecurityResponse) updates) => super.copyWith((message) => updates(message as ListSecurityResponse)) as ListSecurityResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSecurityResponse create() => ListSecurityResponse._();
  @$core.override
  ListSecurityResponse createEmptyInstance() => create();
  static $pb.PbList<ListSecurityResponse> createRepeated() => $pb.PbList<ListSecurityResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSecurityResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSecurityResponse>(create);
  static ListSecurityResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Security> get securities => $_getList(0);
}

class ReadPrimaryOwnerRequest extends $pb.GeneratedMessage {
  factory ReadPrimaryOwnerRequest({
    $core.String? correspondent,
    $core.String? accountNo,
  }) {
    final result = create();
    if (correspondent != null) result.correspondent = correspondent;
    if (accountNo != null) result.accountNo = accountNo;
    return result;
  }

  ReadPrimaryOwnerRequest._();

  factory ReadPrimaryOwnerRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ReadPrimaryOwnerRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadPrimaryOwnerRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'correspondent')
    ..aOS(2, _omitFieldNames ? '' : 'accountNo')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadPrimaryOwnerRequest clone() => ReadPrimaryOwnerRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadPrimaryOwnerRequest copyWith(void Function(ReadPrimaryOwnerRequest) updates) => super.copyWith((message) => updates(message as ReadPrimaryOwnerRequest)) as ReadPrimaryOwnerRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadPrimaryOwnerRequest create() => ReadPrimaryOwnerRequest._();
  @$core.override
  ReadPrimaryOwnerRequest createEmptyInstance() => create();
  static $pb.PbList<ReadPrimaryOwnerRequest> createRepeated() => $pb.PbList<ReadPrimaryOwnerRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadPrimaryOwnerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadPrimaryOwnerRequest>(create);
  static ReadPrimaryOwnerRequest? _defaultInstance;

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

class ReadPrimaryOwnerResponse extends $pb.GeneratedMessage {
  factory ReadPrimaryOwnerResponse({
    $core.String? firstName,
    $core.String? lastName,
    $core.String? fullName,
  }) {
    final result = create();
    if (firstName != null) result.firstName = firstName;
    if (lastName != null) result.lastName = lastName;
    if (fullName != null) result.fullName = fullName;
    return result;
  }

  ReadPrimaryOwnerResponse._();

  factory ReadPrimaryOwnerResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ReadPrimaryOwnerResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadPrimaryOwnerResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'firstName')
    ..aOS(2, _omitFieldNames ? '' : 'lastName')
    ..aOS(3, _omitFieldNames ? '' : 'fullName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadPrimaryOwnerResponse clone() => ReadPrimaryOwnerResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadPrimaryOwnerResponse copyWith(void Function(ReadPrimaryOwnerResponse) updates) => super.copyWith((message) => updates(message as ReadPrimaryOwnerResponse)) as ReadPrimaryOwnerResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadPrimaryOwnerResponse create() => ReadPrimaryOwnerResponse._();
  @$core.override
  ReadPrimaryOwnerResponse createEmptyInstance() => create();
  static $pb.PbList<ReadPrimaryOwnerResponse> createRepeated() => $pb.PbList<ReadPrimaryOwnerResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadPrimaryOwnerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadPrimaryOwnerResponse>(create);
  static ReadPrimaryOwnerResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get firstName => $_getSZ(0);
  @$pb.TagNumber(1)
  set firstName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFirstName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFirstName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get lastName => $_getSZ(1);
  @$pb.TagNumber(2)
  set lastName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLastName() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get fullName => $_getSZ(2);
  @$pb.TagNumber(3)
  set fullName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFullName() => $_has(2);
  @$pb.TagNumber(3)
  void clearFullName() => $_clearField(3);
}

class SystemCodeType extends $pb.GeneratedMessage {
  factory SystemCodeType({
    $core.String? type,
  }) {
    final result = create();
    if (type != null) result.type = type;
    return result;
  }

  SystemCodeType._();

  factory SystemCodeType.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SystemCodeType.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SystemCodeType', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemCodeType clone() => SystemCodeType()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemCodeType copyWith(void Function(SystemCodeType) updates) => super.copyWith((message) => updates(message as SystemCodeType)) as SystemCodeType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemCodeType create() => SystemCodeType._();
  @$core.override
  SystemCodeType createEmptyInstance() => create();
  static $pb.PbList<SystemCodeType> createRepeated() => $pb.PbList<SystemCodeType>();
  @$core.pragma('dart2js:noInline')
  static SystemCodeType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SystemCodeType>(create);
  static SystemCodeType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);
}

class SystemNumberSubType extends $pb.GeneratedMessage {
  factory SystemNumberSubType({
    $core.String? subType,
  }) {
    final result = create();
    if (subType != null) result.subType = subType;
    return result;
  }

  SystemNumberSubType._();

  factory SystemNumberSubType.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SystemNumberSubType.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SystemNumberSubType', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'subType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemNumberSubType clone() => SystemNumberSubType()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SystemNumberSubType copyWith(void Function(SystemNumberSubType) updates) => super.copyWith((message) => updates(message as SystemNumberSubType)) as SystemNumberSubType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SystemNumberSubType create() => SystemNumberSubType._();
  @$core.override
  SystemNumberSubType createEmptyInstance() => create();
  static $pb.PbList<SystemNumberSubType> createRepeated() => $pb.PbList<SystemNumberSubType>();
  @$core.pragma('dart2js:noInline')
  static SystemNumberSubType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SystemNumberSubType>(create);
  static SystemNumberSubType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get subType => $_getSZ(0);
  @$pb.TagNumber(1)
  set subType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSubType() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubType() => $_clearField(1);
}

class ListSystemNumberSubTypeResponse extends $pb.GeneratedMessage {
  factory ListSystemNumberSubTypeResponse({
    $core.Iterable<SystemNumberSubType>? subType,
  }) {
    final result = create();
    if (subType != null) result.subType.addAll(subType);
    return result;
  }

  ListSystemNumberSubTypeResponse._();

  factory ListSystemNumberSubTypeResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListSystemNumberSubTypeResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSystemNumberSubTypeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..pc<SystemNumberSubType>(1, _omitFieldNames ? '' : 'subType', $pb.PbFieldType.PM, subBuilder: SystemNumberSubType.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSystemNumberSubTypeResponse clone() => ListSystemNumberSubTypeResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSystemNumberSubTypeResponse copyWith(void Function(ListSystemNumberSubTypeResponse) updates) => super.copyWith((message) => updates(message as ListSystemNumberSubTypeResponse)) as ListSystemNumberSubTypeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSystemNumberSubTypeResponse create() => ListSystemNumberSubTypeResponse._();
  @$core.override
  ListSystemNumberSubTypeResponse createEmptyInstance() => create();
  static $pb.PbList<ListSystemNumberSubTypeResponse> createRepeated() => $pb.PbList<ListSystemNumberSubTypeResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSystemNumberSubTypeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSystemNumberSubTypeResponse>(create);
  static ListSystemNumberSubTypeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<SystemNumberSubType> get subType => $_getList(0);
}

class ListSubAccountNoRequest extends $pb.GeneratedMessage {
  factory ListSubAccountNoRequest({
    $core.String? accountNo,
    $core.String? key,
    $core.int? limit,
  }) {
    final result = create();
    if (accountNo != null) result.accountNo = accountNo;
    if (key != null) result.key = key;
    if (limit != null) result.limit = limit;
    return result;
  }

  ListSubAccountNoRequest._();

  factory ListSubAccountNoRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListSubAccountNoRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSubAccountNoRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accountNo')
    ..aOS(2, _omitFieldNames ? '' : 'key')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSubAccountNoRequest clone() => ListSubAccountNoRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSubAccountNoRequest copyWith(void Function(ListSubAccountNoRequest) updates) => super.copyWith((message) => updates(message as ListSubAccountNoRequest)) as ListSubAccountNoRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSubAccountNoRequest create() => ListSubAccountNoRequest._();
  @$core.override
  ListSubAccountNoRequest createEmptyInstance() => create();
  static $pb.PbList<ListSubAccountNoRequest> createRepeated() => $pb.PbList<ListSubAccountNoRequest>();
  @$core.pragma('dart2js:noInline')
  static ListSubAccountNoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSubAccountNoRequest>(create);
  static ListSubAccountNoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountNo => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountNo($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAccountNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountNo() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get key => $_getSZ(1);
  @$pb.TagNumber(2)
  set key($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearKey() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get limit => $_getIZ(2);
  @$pb.TagNumber(3)
  set limit($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimit() => $_clearField(3);
}

class SignetWallet extends $pb.GeneratedMessage {
  factory SignetWallet({
    $core.String? bankAccount,
  }) {
    final result = create();
    if (bankAccount != null) result.bankAccount = bankAccount;
    return result;
  }

  SignetWallet._();

  factory SignetWallet.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SignetWallet.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SignetWallet', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'bankAccount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SignetWallet clone() => SignetWallet()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SignetWallet copyWith(void Function(SignetWallet) updates) => super.copyWith((message) => updates(message as SignetWallet)) as SignetWallet;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SignetWallet create() => SignetWallet._();
  @$core.override
  SignetWallet createEmptyInstance() => create();
  static $pb.PbList<SignetWallet> createRepeated() => $pb.PbList<SignetWallet>();
  @$core.pragma('dart2js:noInline')
  static SignetWallet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignetWallet>(create);
  static SignetWallet? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bankAccount => $_getSZ(0);
  @$pb.TagNumber(1)
  set bankAccount($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBankAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearBankAccount() => $_clearField(1);
}

class ListSignetWalletResponse extends $pb.GeneratedMessage {
  factory ListSignetWalletResponse({
    $core.Iterable<SignetWallet>? signetWallets,
  }) {
    final result = create();
    if (signetWallets != null) result.signetWallets.addAll(signetWallets);
    return result;
  }

  ListSignetWalletResponse._();

  factory ListSignetWalletResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListSignetWalletResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSignetWalletResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..pc<SignetWallet>(1, _omitFieldNames ? '' : 'signetWallets', $pb.PbFieldType.PM, subBuilder: SignetWallet.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSignetWalletResponse clone() => ListSignetWalletResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSignetWalletResponse copyWith(void Function(ListSignetWalletResponse) updates) => super.copyWith((message) => updates(message as ListSignetWalletResponse)) as ListSignetWalletResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSignetWalletResponse create() => ListSignetWalletResponse._();
  @$core.override
  ListSignetWalletResponse createEmptyInstance() => create();
  static $pb.PbList<ListSignetWalletResponse> createRepeated() => $pb.PbList<ListSignetWalletResponse>();
  @$core.pragma('dart2js:noInline')
  static ListSignetWalletResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSignetWalletResponse>(create);
  static ListSignetWalletResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<SignetWallet> get signetWallets => $_getList(0);
}

class HouseAccount extends $pb.GeneratedMessage {
  factory HouseAccount({
    $core.String? houseAccount,
  }) {
    final result = create();
    if (houseAccount != null) result.houseAccount = houseAccount;
    return result;
  }

  HouseAccount._();

  factory HouseAccount.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory HouseAccount.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HouseAccount', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'houseAccount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HouseAccount clone() => HouseAccount()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HouseAccount copyWith(void Function(HouseAccount) updates) => super.copyWith((message) => updates(message as HouseAccount)) as HouseAccount;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HouseAccount create() => HouseAccount._();
  @$core.override
  HouseAccount createEmptyInstance() => create();
  static $pb.PbList<HouseAccount> createRepeated() => $pb.PbList<HouseAccount>();
  @$core.pragma('dart2js:noInline')
  static HouseAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HouseAccount>(create);
  static HouseAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get houseAccount => $_getSZ(0);
  @$pb.TagNumber(1)
  set houseAccount($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasHouseAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearHouseAccount() => $_clearField(1);
}

class ListHouseAccountResponse extends $pb.GeneratedMessage {
  factory ListHouseAccountResponse({
    $core.Iterable<HouseAccount>? houseAccounts,
  }) {
    final result = create();
    if (houseAccounts != null) result.houseAccounts.addAll(houseAccounts);
    return result;
  }

  ListHouseAccountResponse._();

  factory ListHouseAccountResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListHouseAccountResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListHouseAccountResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..pc<HouseAccount>(1, _omitFieldNames ? '' : 'houseAccounts', $pb.PbFieldType.PM, subBuilder: HouseAccount.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListHouseAccountResponse clone() => ListHouseAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListHouseAccountResponse copyWith(void Function(ListHouseAccountResponse) updates) => super.copyWith((message) => updates(message as ListHouseAccountResponse)) as ListHouseAccountResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListHouseAccountResponse create() => ListHouseAccountResponse._();
  @$core.override
  ListHouseAccountResponse createEmptyInstance() => create();
  static $pb.PbList<ListHouseAccountResponse> createRepeated() => $pb.PbList<ListHouseAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static ListHouseAccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListHouseAccountResponse>(create);
  static ListHouseAccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<HouseAccount> get houseAccounts => $_getList(0);
}

class ListEmptyRequest extends $pb.GeneratedMessage {
  factory ListEmptyRequest() => create();

  ListEmptyRequest._();

  factory ListEmptyRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListEmptyRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListEmptyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListEmptyRequest clone() => ListEmptyRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListEmptyRequest copyWith(void Function(ListEmptyRequest) updates) => super.copyWith((message) => updates(message as ListEmptyRequest)) as ListEmptyRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListEmptyRequest create() => ListEmptyRequest._();
  @$core.override
  ListEmptyRequest createEmptyInstance() => create();
  static $pb.PbList<ListEmptyRequest> createRepeated() => $pb.PbList<ListEmptyRequest>();
  @$core.pragma('dart2js:noInline')
  static ListEmptyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListEmptyRequest>(create);
  static ListEmptyRequest? _defaultInstance;
}

class ListCusipRequest extends $pb.GeneratedMessage {
  factory ListCusipRequest({
    $1.Date? systemDate,
    $core.String? symbol,
  }) {
    final result = create();
    if (systemDate != null) result.systemDate = systemDate;
    if (symbol != null) result.symbol = symbol;
    return result;
  }

  ListCusipRequest._();

  factory ListCusipRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListCusipRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListCusipRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOM<$1.Date>(1, _omitFieldNames ? '' : 'systemDate', subBuilder: $1.Date.create)
    ..aOS(2, _omitFieldNames ? '' : 'symbol')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListCusipRequest clone() => ListCusipRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListCusipRequest copyWith(void Function(ListCusipRequest) updates) => super.copyWith((message) => updates(message as ListCusipRequest)) as ListCusipRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListCusipRequest create() => ListCusipRequest._();
  @$core.override
  ListCusipRequest createEmptyInstance() => create();
  static $pb.PbList<ListCusipRequest> createRepeated() => $pb.PbList<ListCusipRequest>();
  @$core.pragma('dart2js:noInline')
  static ListCusipRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListCusipRequest>(create);
  static ListCusipRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Date get systemDate => $_getN(0);
  @$pb.TagNumber(1)
  set systemDate($1.Date value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSystemDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearSystemDate() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Date ensureSystemDate() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get symbol => $_getSZ(1);
  @$pb.TagNumber(2)
  set symbol($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSymbol() => $_has(1);
  @$pb.TagNumber(2)
  void clearSymbol() => $_clearField(2);
}

class ListCusipResponse extends $pb.GeneratedMessage {
  factory ListCusipResponse({
    $core.String? cusip,
  }) {
    final result = create();
    if (cusip != null) result.cusip = cusip;
    return result;
  }

  ListCusipResponse._();

  factory ListCusipResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListCusipResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListCusipResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cusip')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListCusipResponse clone() => ListCusipResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListCusipResponse copyWith(void Function(ListCusipResponse) updates) => super.copyWith((message) => updates(message as ListCusipResponse)) as ListCusipResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListCusipResponse create() => ListCusipResponse._();
  @$core.override
  ListCusipResponse createEmptyInstance() => create();
  static $pb.PbList<ListCusipResponse> createRepeated() => $pb.PbList<ListCusipResponse>();
  @$core.pragma('dart2js:noInline')
  static ListCusipResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListCusipResponse>(create);
  static ListCusipResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cusip => $_getSZ(0);
  @$pb.TagNumber(1)
  set cusip($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCusip() => $_has(0);
  @$pb.TagNumber(1)
  void clearCusip() => $_clearField(1);
}

class Broker extends $pb.GeneratedMessage {
  factory Broker({
    $core.String? broker,
    $core.String? brokerNo,
    $core.int? id,
  }) {
    final result = create();
    if (broker != null) result.broker = broker;
    if (brokerNo != null) result.brokerNo = brokerNo;
    if (id != null) result.id = id;
    return result;
  }

  Broker._();

  factory Broker.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Broker.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Broker', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'broker')
    ..aOS(2, _omitFieldNames ? '' : 'brokerNo')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'id', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Broker clone() => Broker()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Broker copyWith(void Function(Broker) updates) => super.copyWith((message) => updates(message as Broker)) as Broker;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Broker create() => Broker._();
  @$core.override
  Broker createEmptyInstance() => create();
  static $pb.PbList<Broker> createRepeated() => $pb.PbList<Broker>();
  @$core.pragma('dart2js:noInline')
  static Broker getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Broker>(create);
  static Broker? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get broker => $_getSZ(0);
  @$pb.TagNumber(1)
  set broker($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBroker() => $_has(0);
  @$pb.TagNumber(1)
  void clearBroker() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get brokerNo => $_getSZ(1);
  @$pb.TagNumber(2)
  set brokerNo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBrokerNo() => $_has(1);
  @$pb.TagNumber(2)
  void clearBrokerNo() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get id => $_getIZ(2);
  @$pb.TagNumber(3)
  set id($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasId() => $_has(2);
  @$pb.TagNumber(3)
  void clearId() => $_clearField(3);
}

class ListBankNameRequest extends $pb.GeneratedMessage {
  factory ListBankNameRequest({
    $core.String? key,
    $core.int? limit,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (limit != null) result.limit = limit;
    return result;
  }

  ListBankNameRequest._();

  factory ListBankNameRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListBankNameRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListBankNameRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListBankNameRequest clone() => ListBankNameRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListBankNameRequest copyWith(void Function(ListBankNameRequest) updates) => super.copyWith((message) => updates(message as ListBankNameRequest)) as ListBankNameRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListBankNameRequest create() => ListBankNameRequest._();
  @$core.override
  ListBankNameRequest createEmptyInstance() => create();
  static $pb.PbList<ListBankNameRequest> createRepeated() => $pb.PbList<ListBankNameRequest>();
  @$core.pragma('dart2js:noInline')
  static ListBankNameRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListBankNameRequest>(create);
  static ListBankNameRequest? _defaultInstance;

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

class ListBankNameResponse extends $pb.GeneratedMessage {
  factory ListBankNameResponse({
    $core.Iterable<$core.String>? bankNames,
  }) {
    final result = create();
    if (bankNames != null) result.bankNames.addAll(bankNames);
    return result;
  }

  ListBankNameResponse._();

  factory ListBankNameResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListBankNameResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListBankNameResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'bankNames')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListBankNameResponse clone() => ListBankNameResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListBankNameResponse copyWith(void Function(ListBankNameResponse) updates) => super.copyWith((message) => updates(message as ListBankNameResponse)) as ListBankNameResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListBankNameResponse create() => ListBankNameResponse._();
  @$core.override
  ListBankNameResponse createEmptyInstance() => create();
  static $pb.PbList<ListBankNameResponse> createRepeated() => $pb.PbList<ListBankNameResponse>();
  @$core.pragma('dart2js:noInline')
  static ListBankNameResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListBankNameResponse>(create);
  static ListBankNameResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get bankNames => $_getList(0);
}

class AdmEntryType extends $pb.GeneratedMessage {
  factory AdmEntryType({
    $core.String? entryType,
    $core.String? entryTypeDescription,
    $core.String? screenType,
    $core.String? correspondent,
    $core.String? accountNo,
    $core.String? subAccountNo,
    $core.String? status,
    $core.String? settlementMethod,
  }) {
    final result = create();
    if (entryType != null) result.entryType = entryType;
    if (entryTypeDescription != null) result.entryTypeDescription = entryTypeDescription;
    if (screenType != null) result.screenType = screenType;
    if (correspondent != null) result.correspondent = correspondent;
    if (accountNo != null) result.accountNo = accountNo;
    if (subAccountNo != null) result.subAccountNo = subAccountNo;
    if (status != null) result.status = status;
    if (settlementMethod != null) result.settlementMethod = settlementMethod;
    return result;
  }

  AdmEntryType._();

  factory AdmEntryType.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory AdmEntryType.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AdmEntryType', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'entryType')
    ..aOS(2, _omitFieldNames ? '' : 'entryTypeDescription')
    ..aOS(3, _omitFieldNames ? '' : 'screenType')
    ..aOS(4, _omitFieldNames ? '' : 'correspondent')
    ..aOS(5, _omitFieldNames ? '' : 'accountNo')
    ..aOS(6, _omitFieldNames ? '' : 'subAccountNo')
    ..aOS(7, _omitFieldNames ? '' : 'status')
    ..aOS(8, _omitFieldNames ? '' : 'settlementMethod')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AdmEntryType clone() => AdmEntryType()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AdmEntryType copyWith(void Function(AdmEntryType) updates) => super.copyWith((message) => updates(message as AdmEntryType)) as AdmEntryType;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AdmEntryType create() => AdmEntryType._();
  @$core.override
  AdmEntryType createEmptyInstance() => create();
  static $pb.PbList<AdmEntryType> createRepeated() => $pb.PbList<AdmEntryType>();
  @$core.pragma('dart2js:noInline')
  static AdmEntryType getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdmEntryType>(create);
  static AdmEntryType? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get entryType => $_getSZ(0);
  @$pb.TagNumber(1)
  set entryType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEntryType() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntryType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get entryTypeDescription => $_getSZ(1);
  @$pb.TagNumber(2)
  set entryTypeDescription($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEntryTypeDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearEntryTypeDescription() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get screenType => $_getSZ(2);
  @$pb.TagNumber(3)
  set screenType($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasScreenType() => $_has(2);
  @$pb.TagNumber(3)
  void clearScreenType() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get correspondent => $_getSZ(3);
  @$pb.TagNumber(4)
  set correspondent($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCorrespondent() => $_has(3);
  @$pb.TagNumber(4)
  void clearCorrespondent() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get accountNo => $_getSZ(4);
  @$pb.TagNumber(5)
  set accountNo($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAccountNo() => $_has(4);
  @$pb.TagNumber(5)
  void clearAccountNo() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get subAccountNo => $_getSZ(5);
  @$pb.TagNumber(6)
  set subAccountNo($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSubAccountNo() => $_has(5);
  @$pb.TagNumber(6)
  void clearSubAccountNo() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get status => $_getSZ(6);
  @$pb.TagNumber(7)
  set status($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearStatus() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get settlementMethod => $_getSZ(7);
  @$pb.TagNumber(8)
  set settlementMethod($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasSettlementMethod() => $_has(7);
  @$pb.TagNumber(8)
  void clearSettlementMethod() => $_clearField(8);
}

class ListAdmEntryTypeRequest extends $pb.GeneratedMessage {
  factory ListAdmEntryTypeRequest({
    $core.String? entryType,
    $core.String? screenType,
    $core.String? correspondent,
    $core.String? accountNo,
    $core.String? status,
    $core.String? note,
  }) {
    final result = create();
    if (entryType != null) result.entryType = entryType;
    if (screenType != null) result.screenType = screenType;
    if (correspondent != null) result.correspondent = correspondent;
    if (accountNo != null) result.accountNo = accountNo;
    if (status != null) result.status = status;
    if (note != null) result.note = note;
    return result;
  }

  ListAdmEntryTypeRequest._();

  factory ListAdmEntryTypeRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListAdmEntryTypeRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListAdmEntryTypeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'entryType')
    ..aOS(2, _omitFieldNames ? '' : 'screenType')
    ..aOS(3, _omitFieldNames ? '' : 'correspondent')
    ..aOS(4, _omitFieldNames ? '' : 'accountNo')
    ..aOS(6, _omitFieldNames ? '' : 'status')
    ..aOS(7, _omitFieldNames ? '' : 'note')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAdmEntryTypeRequest clone() => ListAdmEntryTypeRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAdmEntryTypeRequest copyWith(void Function(ListAdmEntryTypeRequest) updates) => super.copyWith((message) => updates(message as ListAdmEntryTypeRequest)) as ListAdmEntryTypeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAdmEntryTypeRequest create() => ListAdmEntryTypeRequest._();
  @$core.override
  ListAdmEntryTypeRequest createEmptyInstance() => create();
  static $pb.PbList<ListAdmEntryTypeRequest> createRepeated() => $pb.PbList<ListAdmEntryTypeRequest>();
  @$core.pragma('dart2js:noInline')
  static ListAdmEntryTypeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAdmEntryTypeRequest>(create);
  static ListAdmEntryTypeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get entryType => $_getSZ(0);
  @$pb.TagNumber(1)
  set entryType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEntryType() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntryType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get screenType => $_getSZ(1);
  @$pb.TagNumber(2)
  set screenType($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasScreenType() => $_has(1);
  @$pb.TagNumber(2)
  void clearScreenType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get correspondent => $_getSZ(2);
  @$pb.TagNumber(3)
  set correspondent($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCorrespondent() => $_has(2);
  @$pb.TagNumber(3)
  void clearCorrespondent() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get accountNo => $_getSZ(3);
  @$pb.TagNumber(4)
  set accountNo($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAccountNo() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccountNo() => $_clearField(4);

  @$pb.TagNumber(6)
  $core.String get status => $_getSZ(4);
  @$pb.TagNumber(6)
  set status($core.String value) => $_setString(4, value);
  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(6)
  void clearStatus() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get note => $_getSZ(5);
  @$pb.TagNumber(7)
  set note($core.String value) => $_setString(5, value);
  @$pb.TagNumber(7)
  $core.bool hasNote() => $_has(5);
  @$pb.TagNumber(7)
  void clearNote() => $_clearField(7);
}

class ListAdmEntryTypeResponse extends $pb.GeneratedMessage {
  factory ListAdmEntryTypeResponse({
    $core.Iterable<AdmEntryType>? entryTypes,
  }) {
    final result = create();
    if (entryTypes != null) result.entryTypes.addAll(entryTypes);
    return result;
  }

  ListAdmEntryTypeResponse._();

  factory ListAdmEntryTypeResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListAdmEntryTypeResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListAdmEntryTypeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..pc<AdmEntryType>(1, _omitFieldNames ? '' : 'entryTypes', $pb.PbFieldType.PM, subBuilder: AdmEntryType.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAdmEntryTypeResponse clone() => ListAdmEntryTypeResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAdmEntryTypeResponse copyWith(void Function(ListAdmEntryTypeResponse) updates) => super.copyWith((message) => updates(message as ListAdmEntryTypeResponse)) as ListAdmEntryTypeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAdmEntryTypeResponse create() => ListAdmEntryTypeResponse._();
  @$core.override
  ListAdmEntryTypeResponse createEmptyInstance() => create();
  static $pb.PbList<ListAdmEntryTypeResponse> createRepeated() => $pb.PbList<ListAdmEntryTypeResponse>();
  @$core.pragma('dart2js:noInline')
  static ListAdmEntryTypeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAdmEntryTypeResponse>(create);
  static ListAdmEntryTypeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<AdmEntryType> get entryTypes => $_getList(0);
}

class Page extends $pb.GeneratedMessage {
  factory Page({
    $core.int? pageId,
    $core.String? menu,
    $core.String? subMenu,
    $core.String? pageName,
    $core.String? component,
  }) {
    final result = create();
    if (pageId != null) result.pageId = pageId;
    if (menu != null) result.menu = menu;
    if (subMenu != null) result.subMenu = subMenu;
    if (pageName != null) result.pageName = pageName;
    if (component != null) result.component = component;
    return result;
  }

  Page._();

  factory Page.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Page.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Page', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'pageId', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'menu')
    ..aOS(3, _omitFieldNames ? '' : 'subMenu')
    ..aOS(4, _omitFieldNames ? '' : 'pageName')
    ..aOS(5, _omitFieldNames ? '' : 'component')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Page clone() => Page()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Page copyWith(void Function(Page) updates) => super.copyWith((message) => updates(message as Page)) as Page;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Page create() => Page._();
  @$core.override
  Page createEmptyInstance() => create();
  static $pb.PbList<Page> createRepeated() => $pb.PbList<Page>();
  @$core.pragma('dart2js:noInline')
  static Page getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Page>(create);
  static Page? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pageId => $_getIZ(0);
  @$pb.TagNumber(1)
  set pageId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPageId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageId() => $_clearField(1);

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
  $core.String get component => $_getSZ(4);
  @$pb.TagNumber(5)
  set component($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasComponent() => $_has(4);
  @$pb.TagNumber(5)
  void clearComponent() => $_clearField(5);
}

class ListPageRequest extends $pb.GeneratedMessage {
  factory ListPageRequest({
    $core.String? key,
    $core.int? limit,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (limit != null) result.limit = limit;
    return result;
  }

  ListPageRequest._();

  factory ListPageRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListPageRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListPageRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPageRequest clone() => ListPageRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPageRequest copyWith(void Function(ListPageRequest) updates) => super.copyWith((message) => updates(message as ListPageRequest)) as ListPageRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPageRequest create() => ListPageRequest._();
  @$core.override
  ListPageRequest createEmptyInstance() => create();
  static $pb.PbList<ListPageRequest> createRepeated() => $pb.PbList<ListPageRequest>();
  @$core.pragma('dart2js:noInline')
  static ListPageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPageRequest>(create);
  static ListPageRequest? _defaultInstance;

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

class ListPageResponse extends $pb.GeneratedMessage {
  factory ListPageResponse({
    $core.Iterable<Page>? pages,
  }) {
    final result = create();
    if (pages != null) result.pages.addAll(pages);
    return result;
  }

  ListPageResponse._();

  factory ListPageResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListPageResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListPageResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..pc<Page>(1, _omitFieldNames ? '' : 'pages', $pb.PbFieldType.PM, subBuilder: Page.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPageResponse clone() => ListPageResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPageResponse copyWith(void Function(ListPageResponse) updates) => super.copyWith((message) => updates(message as ListPageResponse)) as ListPageResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPageResponse create() => ListPageResponse._();
  @$core.override
  ListPageResponse createEmptyInstance() => create();
  static $pb.PbList<ListPageResponse> createRepeated() => $pb.PbList<ListPageResponse>();
  @$core.pragma('dart2js:noInline')
  static ListPageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPageResponse>(create);
  static ListPageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Page> get pages => $_getList(0);
}

class BankAccount extends $pb.GeneratedMessage {
  factory BankAccount({
    $core.String? bankId,
    $core.String? bankName,
    $core.String? achRoutingNo,
    $core.String? wireRoutingNo,
    $core.String? bankAccountNo,
    $core.String? bankAccountType,
  }) {
    final result = create();
    if (bankId != null) result.bankId = bankId;
    if (bankName != null) result.bankName = bankName;
    if (achRoutingNo != null) result.achRoutingNo = achRoutingNo;
    if (wireRoutingNo != null) result.wireRoutingNo = wireRoutingNo;
    if (bankAccountNo != null) result.bankAccountNo = bankAccountNo;
    if (bankAccountType != null) result.bankAccountType = bankAccountType;
    return result;
  }

  BankAccount._();

  factory BankAccount.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory BankAccount.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BankAccount', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'bankId')
    ..aOS(2, _omitFieldNames ? '' : 'bankName')
    ..aOS(3, _omitFieldNames ? '' : 'achRoutingNo')
    ..aOS(4, _omitFieldNames ? '' : 'wireRoutingNo')
    ..aOS(5, _omitFieldNames ? '' : 'bankAccountNo')
    ..aOS(6, _omitFieldNames ? '' : 'bankAccountType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BankAccount clone() => BankAccount()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BankAccount copyWith(void Function(BankAccount) updates) => super.copyWith((message) => updates(message as BankAccount)) as BankAccount;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BankAccount create() => BankAccount._();
  @$core.override
  BankAccount createEmptyInstance() => create();
  static $pb.PbList<BankAccount> createRepeated() => $pb.PbList<BankAccount>();
  @$core.pragma('dart2js:noInline')
  static BankAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BankAccount>(create);
  static BankAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get bankId => $_getSZ(0);
  @$pb.TagNumber(1)
  set bankId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBankId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBankId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get bankName => $_getSZ(1);
  @$pb.TagNumber(2)
  set bankName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBankName() => $_has(1);
  @$pb.TagNumber(2)
  void clearBankName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get achRoutingNo => $_getSZ(2);
  @$pb.TagNumber(3)
  set achRoutingNo($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAchRoutingNo() => $_has(2);
  @$pb.TagNumber(3)
  void clearAchRoutingNo() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get wireRoutingNo => $_getSZ(3);
  @$pb.TagNumber(4)
  set wireRoutingNo($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasWireRoutingNo() => $_has(3);
  @$pb.TagNumber(4)
  void clearWireRoutingNo() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get bankAccountNo => $_getSZ(4);
  @$pb.TagNumber(5)
  set bankAccountNo($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBankAccountNo() => $_has(4);
  @$pb.TagNumber(5)
  void clearBankAccountNo() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get bankAccountType => $_getSZ(5);
  @$pb.TagNumber(6)
  set bankAccountType($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasBankAccountType() => $_has(5);
  @$pb.TagNumber(6)
  void clearBankAccountType() => $_clearField(6);
}

class ListBankAccountResponse extends $pb.GeneratedMessage {
  factory ListBankAccountResponse({
    $core.Iterable<BankAccount>? bankAccounts,
  }) {
    final result = create();
    if (bankAccounts != null) result.bankAccounts.addAll(bankAccounts);
    return result;
  }

  ListBankAccountResponse._();

  factory ListBankAccountResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListBankAccountResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListBankAccountResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..pc<BankAccount>(1, _omitFieldNames ? '' : 'bankAccounts', $pb.PbFieldType.PM, subBuilder: BankAccount.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListBankAccountResponse clone() => ListBankAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListBankAccountResponse copyWith(void Function(ListBankAccountResponse) updates) => super.copyWith((message) => updates(message as ListBankAccountResponse)) as ListBankAccountResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListBankAccountResponse create() => ListBankAccountResponse._();
  @$core.override
  ListBankAccountResponse createEmptyInstance() => create();
  static $pb.PbList<ListBankAccountResponse> createRepeated() => $pb.PbList<ListBankAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static ListBankAccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListBankAccountResponse>(create);
  static ListBankAccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<BankAccount> get bankAccounts => $_getList(0);
}

class ListBankAccountRequest extends $pb.GeneratedMessage {
  factory ListBankAccountRequest({
    $core.String? accountNo,
    $core.String? correspondent,
    $core.String? status,
  }) {
    final result = create();
    if (accountNo != null) result.accountNo = accountNo;
    if (correspondent != null) result.correspondent = correspondent;
    if (status != null) result.status = status;
    return result;
  }

  ListBankAccountRequest._();

  factory ListBankAccountRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListBankAccountRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListBankAccountRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accountNo')
    ..aOS(2, _omitFieldNames ? '' : 'correspondent')
    ..aOS(3, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListBankAccountRequest clone() => ListBankAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListBankAccountRequest copyWith(void Function(ListBankAccountRequest) updates) => super.copyWith((message) => updates(message as ListBankAccountRequest)) as ListBankAccountRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListBankAccountRequest create() => ListBankAccountRequest._();
  @$core.override
  ListBankAccountRequest createEmptyInstance() => create();
  static $pb.PbList<ListBankAccountRequest> createRepeated() => $pb.PbList<ListBankAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static ListBankAccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListBankAccountRequest>(create);
  static ListBankAccountRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountNo => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountNo($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAccountNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountNo() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get correspondent => $_getSZ(1);
  @$pb.TagNumber(2)
  set correspondent($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCorrespondent() => $_has(1);
  @$pb.TagNumber(2)
  void clearCorrespondent() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get status => $_getSZ(2);
  @$pb.TagNumber(3)
  set status($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => $_clearField(3);
}

class ListOriginalCusipRequest extends $pb.GeneratedMessage {
  factory ListOriginalCusipRequest({
    $1.Date? systemDate,
    $core.String? symbol,
  }) {
    final result = create();
    if (systemDate != null) result.systemDate = systemDate;
    if (symbol != null) result.symbol = symbol;
    return result;
  }

  ListOriginalCusipRequest._();

  factory ListOriginalCusipRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListOriginalCusipRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListOriginalCusipRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOM<$1.Date>(1, _omitFieldNames ? '' : 'systemDate', subBuilder: $1.Date.create)
    ..aOS(2, _omitFieldNames ? '' : 'symbol')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListOriginalCusipRequest clone() => ListOriginalCusipRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListOriginalCusipRequest copyWith(void Function(ListOriginalCusipRequest) updates) => super.copyWith((message) => updates(message as ListOriginalCusipRequest)) as ListOriginalCusipRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListOriginalCusipRequest create() => ListOriginalCusipRequest._();
  @$core.override
  ListOriginalCusipRequest createEmptyInstance() => create();
  static $pb.PbList<ListOriginalCusipRequest> createRepeated() => $pb.PbList<ListOriginalCusipRequest>();
  @$core.pragma('dart2js:noInline')
  static ListOriginalCusipRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListOriginalCusipRequest>(create);
  static ListOriginalCusipRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Date get systemDate => $_getN(0);
  @$pb.TagNumber(1)
  set systemDate($1.Date value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSystemDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearSystemDate() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Date ensureSystemDate() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get symbol => $_getSZ(1);
  @$pb.TagNumber(2)
  set symbol($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSymbol() => $_has(1);
  @$pb.TagNumber(2)
  void clearSymbol() => $_clearField(2);
}

class ListOriginalCusipResponse extends $pb.GeneratedMessage {
  factory ListOriginalCusipResponse({
    $core.String? originalCusip,
  }) {
    final result = create();
    if (originalCusip != null) result.originalCusip = originalCusip;
    return result;
  }

  ListOriginalCusipResponse._();

  factory ListOriginalCusipResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListOriginalCusipResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListOriginalCusipResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'originalCusip')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListOriginalCusipResponse clone() => ListOriginalCusipResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListOriginalCusipResponse copyWith(void Function(ListOriginalCusipResponse) updates) => super.copyWith((message) => updates(message as ListOriginalCusipResponse)) as ListOriginalCusipResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListOriginalCusipResponse create() => ListOriginalCusipResponse._();
  @$core.override
  ListOriginalCusipResponse createEmptyInstance() => create();
  static $pb.PbList<ListOriginalCusipResponse> createRepeated() => $pb.PbList<ListOriginalCusipResponse>();
  @$core.pragma('dart2js:noInline')
  static ListOriginalCusipResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListOriginalCusipResponse>(create);
  static ListOriginalCusipResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get originalCusip => $_getSZ(0);
  @$pb.TagNumber(1)
  set originalCusip($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOriginalCusip() => $_has(0);
  @$pb.TagNumber(1)
  void clearOriginalCusip() => $_clearField(1);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
