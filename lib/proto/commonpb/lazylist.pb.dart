//
//  Generated code. Do not modify.
//  source: proto/commonpb/lazylist.proto
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

class LazyAccount extends $pb.GeneratedMessage {
  factory LazyAccount({
    $core.int? accountId,
    $core.String? correspondent,
    $core.String? branch,
    $core.String? accountNo,
    $core.String? accountName,
    $core.String? masterAccountNo,
    $core.String? rep,
    $core.String? broker,
  }) {
    final result = create();
    if (accountId != null) result.accountId = accountId;
    if (correspondent != null) result.correspondent = correspondent;
    if (branch != null) result.branch = branch;
    if (accountNo != null) result.accountNo = accountNo;
    if (accountName != null) result.accountName = accountName;
    if (masterAccountNo != null) result.masterAccountNo = masterAccountNo;
    if (rep != null) result.rep = rep;
    if (broker != null) result.broker = broker;
    return result;
  }

  LazyAccount._();

  factory LazyAccount.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LazyAccount.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LazyAccount', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'accountId', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'correspondent')
    ..aOS(3, _omitFieldNames ? '' : 'branch')
    ..aOS(4, _omitFieldNames ? '' : 'accountNo')
    ..aOS(5, _omitFieldNames ? '' : 'accountName')
    ..aOS(6, _omitFieldNames ? '' : 'masterAccountNo')
    ..aOS(7, _omitFieldNames ? '' : 'rep')
    ..aOS(8, _omitFieldNames ? '' : 'broker')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazyAccount clone() => LazyAccount()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazyAccount copyWith(void Function(LazyAccount) updates) => super.copyWith((message) => updates(message as LazyAccount)) as LazyAccount;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LazyAccount create() => LazyAccount._();
  @$core.override
  LazyAccount createEmptyInstance() => create();
  static $pb.PbList<LazyAccount> createRepeated() => $pb.PbList<LazyAccount>();
  @$core.pragma('dart2js:noInline')
  static LazyAccount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LazyAccount>(create);
  static LazyAccount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get accountId => $_getIZ(0);
  @$pb.TagNumber(1)
  set accountId($core.int value) => $_setUnsignedInt32(0, value);
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
  $core.String get branch => $_getSZ(2);
  @$pb.TagNumber(3)
  set branch($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBranch() => $_has(2);
  @$pb.TagNumber(3)
  void clearBranch() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get accountNo => $_getSZ(3);
  @$pb.TagNumber(4)
  set accountNo($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAccountNo() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccountNo() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get accountName => $_getSZ(4);
  @$pb.TagNumber(5)
  set accountName($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAccountName() => $_has(4);
  @$pb.TagNumber(5)
  void clearAccountName() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get masterAccountNo => $_getSZ(5);
  @$pb.TagNumber(6)
  set masterAccountNo($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMasterAccountNo() => $_has(5);
  @$pb.TagNumber(6)
  void clearMasterAccountNo() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get rep => $_getSZ(6);
  @$pb.TagNumber(7)
  set rep($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasRep() => $_has(6);
  @$pb.TagNumber(7)
  void clearRep() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get broker => $_getSZ(7);
  @$pb.TagNumber(8)
  set broker($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasBroker() => $_has(7);
  @$pb.TagNumber(8)
  void clearBroker() => $_clearField(8);
}

class LazyAccountResponse extends $pb.GeneratedMessage {
  factory LazyAccountResponse({
    $core.Iterable<LazyAccount>? accounts,
  }) {
    final result = create();
    if (accounts != null) result.accounts.addAll(accounts);
    return result;
  }

  LazyAccountResponse._();

  factory LazyAccountResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LazyAccountResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LazyAccountResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..pc<LazyAccount>(1, _omitFieldNames ? '' : 'accounts', $pb.PbFieldType.PM, subBuilder: LazyAccount.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazyAccountResponse clone() => LazyAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazyAccountResponse copyWith(void Function(LazyAccountResponse) updates) => super.copyWith((message) => updates(message as LazyAccountResponse)) as LazyAccountResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LazyAccountResponse create() => LazyAccountResponse._();
  @$core.override
  LazyAccountResponse createEmptyInstance() => create();
  static $pb.PbList<LazyAccountResponse> createRepeated() => $pb.PbList<LazyAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static LazyAccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LazyAccountResponse>(create);
  static LazyAccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<LazyAccount> get accounts => $_getList(0);
}

class LazyAccountRequest extends $pb.GeneratedMessage {
  factory LazyAccountRequest({
    $core.String? key,
    $core.int? limit,
    $core.String? orderBy,
    $core.String? colType,
    $core.String? correspondent,
    $core.bool? isActive,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (limit != null) result.limit = limit;
    if (orderBy != null) result.orderBy = orderBy;
    if (colType != null) result.colType = colType;
    if (correspondent != null) result.correspondent = correspondent;
    if (isActive != null) result.isActive = isActive;
    return result;
  }

  LazyAccountRequest._();

  factory LazyAccountRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LazyAccountRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LazyAccountRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'orderBy')
    ..aOS(4, _omitFieldNames ? '' : 'colType')
    ..aOS(5, _omitFieldNames ? '' : 'correspondent')
    ..aOB(6, _omitFieldNames ? '' : 'isActive')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazyAccountRequest clone() => LazyAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazyAccountRequest copyWith(void Function(LazyAccountRequest) updates) => super.copyWith((message) => updates(message as LazyAccountRequest)) as LazyAccountRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LazyAccountRequest create() => LazyAccountRequest._();
  @$core.override
  LazyAccountRequest createEmptyInstance() => create();
  static $pb.PbList<LazyAccountRequest> createRepeated() => $pb.PbList<LazyAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static LazyAccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LazyAccountRequest>(create);
  static LazyAccountRequest? _defaultInstance;

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

  @$pb.TagNumber(3)
  $core.String get orderBy => $_getSZ(2);
  @$pb.TagNumber(3)
  set orderBy($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasOrderBy() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrderBy() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get colType => $_getSZ(3);
  @$pb.TagNumber(4)
  set colType($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasColType() => $_has(3);
  @$pb.TagNumber(4)
  void clearColType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get correspondent => $_getSZ(4);
  @$pb.TagNumber(5)
  set correspondent($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCorrespondent() => $_has(4);
  @$pb.TagNumber(5)
  void clearCorrespondent() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isActive => $_getBF(5);
  @$pb.TagNumber(6)
  set isActive($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasIsActive() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsActive() => $_clearField(6);
}

class RepAdvisor extends $pb.GeneratedMessage {
  factory RepAdvisor({
    $core.String? firstName,
    $core.String? lastName,
    $core.String? correspondent,
    $core.String? repCode,
  }) {
    final result = create();
    if (firstName != null) result.firstName = firstName;
    if (lastName != null) result.lastName = lastName;
    if (correspondent != null) result.correspondent = correspondent;
    if (repCode != null) result.repCode = repCode;
    return result;
  }

  RepAdvisor._();

  factory RepAdvisor.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory RepAdvisor.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RepAdvisor', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'firstName')
    ..aOS(2, _omitFieldNames ? '' : 'lastName')
    ..aOS(3, _omitFieldNames ? '' : 'correspondent')
    ..aOS(4, _omitFieldNames ? '' : 'repCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepAdvisor clone() => RepAdvisor()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RepAdvisor copyWith(void Function(RepAdvisor) updates) => super.copyWith((message) => updates(message as RepAdvisor)) as RepAdvisor;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RepAdvisor create() => RepAdvisor._();
  @$core.override
  RepAdvisor createEmptyInstance() => create();
  static $pb.PbList<RepAdvisor> createRepeated() => $pb.PbList<RepAdvisor>();
  @$core.pragma('dart2js:noInline')
  static RepAdvisor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RepAdvisor>(create);
  static RepAdvisor? _defaultInstance;

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
  $core.String get correspondent => $_getSZ(2);
  @$pb.TagNumber(3)
  set correspondent($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCorrespondent() => $_has(2);
  @$pb.TagNumber(3)
  void clearCorrespondent() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get repCode => $_getSZ(3);
  @$pb.TagNumber(4)
  set repCode($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRepCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearRepCode() => $_clearField(4);
}

class LazyRepAdvisorResponse extends $pb.GeneratedMessage {
  factory LazyRepAdvisorResponse({
    $core.Iterable<RepAdvisor>? repAdvisors,
  }) {
    final result = create();
    if (repAdvisors != null) result.repAdvisors.addAll(repAdvisors);
    return result;
  }

  LazyRepAdvisorResponse._();

  factory LazyRepAdvisorResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LazyRepAdvisorResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LazyRepAdvisorResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..pc<RepAdvisor>(1, _omitFieldNames ? '' : 'repAdvisors', $pb.PbFieldType.PM, protoName: 'repAdvisors', subBuilder: RepAdvisor.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazyRepAdvisorResponse clone() => LazyRepAdvisorResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazyRepAdvisorResponse copyWith(void Function(LazyRepAdvisorResponse) updates) => super.copyWith((message) => updates(message as LazyRepAdvisorResponse)) as LazyRepAdvisorResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LazyRepAdvisorResponse create() => LazyRepAdvisorResponse._();
  @$core.override
  LazyRepAdvisorResponse createEmptyInstance() => create();
  static $pb.PbList<LazyRepAdvisorResponse> createRepeated() => $pb.PbList<LazyRepAdvisorResponse>();
  @$core.pragma('dart2js:noInline')
  static LazyRepAdvisorResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LazyRepAdvisorResponse>(create);
  static LazyRepAdvisorResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<RepAdvisor> get repAdvisors => $_getList(0);
}

class LazySecurity extends $pb.GeneratedMessage {
  factory LazySecurity({
    $core.String? symbol,
    $core.String? symbolDescription,
    $core.String? cusip,
  }) {
    final result = create();
    if (symbol != null) result.symbol = symbol;
    if (symbolDescription != null) result.symbolDescription = symbolDescription;
    if (cusip != null) result.cusip = cusip;
    return result;
  }

  LazySecurity._();

  factory LazySecurity.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LazySecurity.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LazySecurity', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'symbol')
    ..aOS(2, _omitFieldNames ? '' : 'symbolDescription')
    ..aOS(3, _omitFieldNames ? '' : 'cusip')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazySecurity clone() => LazySecurity()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazySecurity copyWith(void Function(LazySecurity) updates) => super.copyWith((message) => updates(message as LazySecurity)) as LazySecurity;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LazySecurity create() => LazySecurity._();
  @$core.override
  LazySecurity createEmptyInstance() => create();
  static $pb.PbList<LazySecurity> createRepeated() => $pb.PbList<LazySecurity>();
  @$core.pragma('dart2js:noInline')
  static LazySecurity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LazySecurity>(create);
  static LazySecurity? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get symbol => $_getSZ(0);
  @$pb.TagNumber(1)
  set symbol($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSymbol() => $_has(0);
  @$pb.TagNumber(1)
  void clearSymbol() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get symbolDescription => $_getSZ(1);
  @$pb.TagNumber(2)
  set symbolDescription($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSymbolDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearSymbolDescription() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get cusip => $_getSZ(2);
  @$pb.TagNumber(3)
  set cusip($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCusip() => $_has(2);
  @$pb.TagNumber(3)
  void clearCusip() => $_clearField(3);
}

class LazyLoadSecurityRequest extends $pb.GeneratedMessage {
  factory LazyLoadSecurityRequest({
    $core.String? key,
    $core.int? limit,
    $core.String? field_3,
    $core.String? assetType,
    $core.bool? isActive,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (limit != null) result.limit = limit;
    if (field_3 != null) result.field_3 = field_3;
    if (assetType != null) result.assetType = assetType;
    if (isActive != null) result.isActive = isActive;
    return result;
  }

  LazyLoadSecurityRequest._();

  factory LazyLoadSecurityRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LazyLoadSecurityRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LazyLoadSecurityRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'limit', $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'field')
    ..aOS(4, _omitFieldNames ? '' : 'assetType')
    ..aOB(5, _omitFieldNames ? '' : 'isActive')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazyLoadSecurityRequest clone() => LazyLoadSecurityRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazyLoadSecurityRequest copyWith(void Function(LazyLoadSecurityRequest) updates) => super.copyWith((message) => updates(message as LazyLoadSecurityRequest)) as LazyLoadSecurityRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LazyLoadSecurityRequest create() => LazyLoadSecurityRequest._();
  @$core.override
  LazyLoadSecurityRequest createEmptyInstance() => create();
  static $pb.PbList<LazyLoadSecurityRequest> createRepeated() => $pb.PbList<LazyLoadSecurityRequest>();
  @$core.pragma('dart2js:noInline')
  static LazyLoadSecurityRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LazyLoadSecurityRequest>(create);
  static LazyLoadSecurityRequest? _defaultInstance;

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

  @$pb.TagNumber(3)
  $core.String get field_3 => $_getSZ(2);
  @$pb.TagNumber(3)
  set field_3($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasField_3() => $_has(2);
  @$pb.TagNumber(3)
  void clearField_3() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get assetType => $_getSZ(3);
  @$pb.TagNumber(4)
  set assetType($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAssetType() => $_has(3);
  @$pb.TagNumber(4)
  void clearAssetType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isActive => $_getBF(4);
  @$pb.TagNumber(5)
  set isActive($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasIsActive() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsActive() => $_clearField(5);
}

class LazyLoadSecurityResponse extends $pb.GeneratedMessage {
  factory LazyLoadSecurityResponse({
    $core.Iterable<LazySecurity>? securities,
  }) {
    final result = create();
    if (securities != null) result.securities.addAll(securities);
    return result;
  }

  LazyLoadSecurityResponse._();

  factory LazyLoadSecurityResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LazyLoadSecurityResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LazyLoadSecurityResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..pc<LazySecurity>(1, _omitFieldNames ? '' : 'securities', $pb.PbFieldType.PM, subBuilder: LazySecurity.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazyLoadSecurityResponse clone() => LazyLoadSecurityResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LazyLoadSecurityResponse copyWith(void Function(LazyLoadSecurityResponse) updates) => super.copyWith((message) => updates(message as LazyLoadSecurityResponse)) as LazyLoadSecurityResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LazyLoadSecurityResponse create() => LazyLoadSecurityResponse._();
  @$core.override
  LazyLoadSecurityResponse createEmptyInstance() => create();
  static $pb.PbList<LazyLoadSecurityResponse> createRepeated() => $pb.PbList<LazyLoadSecurityResponse>();
  @$core.pragma('dart2js:noInline')
  static LazyLoadSecurityResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LazyLoadSecurityResponse>(create);
  static LazyLoadSecurityResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<LazySecurity> get securities => $_getList(0);
}

class AccessibleRequest extends $pb.GeneratedMessage {
  factory AccessibleRequest({
    $core.String? key,
    $core.String? correspondent,
    $core.bool? isAllStatus,
    $core.String? type,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (correspondent != null) result.correspondent = correspondent;
    if (isAllStatus != null) result.isAllStatus = isAllStatus;
    if (type != null) result.type = type;
    return result;
  }

  AccessibleRequest._();

  factory AccessibleRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory AccessibleRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AccessibleRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'correspondent')
    ..aOB(3, _omitFieldNames ? '' : 'isAllStatus')
    ..aOS(4, _omitFieldNames ? '' : 'type')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccessibleRequest clone() => AccessibleRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccessibleRequest copyWith(void Function(AccessibleRequest) updates) => super.copyWith((message) => updates(message as AccessibleRequest)) as AccessibleRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccessibleRequest create() => AccessibleRequest._();
  @$core.override
  AccessibleRequest createEmptyInstance() => create();
  static $pb.PbList<AccessibleRequest> createRepeated() => $pb.PbList<AccessibleRequest>();
  @$core.pragma('dart2js:noInline')
  static AccessibleRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccessibleRequest>(create);
  static AccessibleRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get correspondent => $_getSZ(1);
  @$pb.TagNumber(2)
  set correspondent($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCorrespondent() => $_has(1);
  @$pb.TagNumber(2)
  void clearCorrespondent() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isAllStatus => $_getBF(2);
  @$pb.TagNumber(3)
  set isAllStatus($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsAllStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsAllStatus() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get type => $_getSZ(3);
  @$pb.TagNumber(4)
  set type($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasType() => $_has(3);
  @$pb.TagNumber(4)
  void clearType() => $_clearField(4);
}

class AccessibleCorrespondentResponse extends $pb.GeneratedMessage {
  factory AccessibleCorrespondentResponse({
    $core.Iterable<$core.String>? correspondents,
  }) {
    final result = create();
    if (correspondents != null) result.correspondents.addAll(correspondents);
    return result;
  }

  AccessibleCorrespondentResponse._();

  factory AccessibleCorrespondentResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory AccessibleCorrespondentResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AccessibleCorrespondentResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'correspondents')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccessibleCorrespondentResponse clone() => AccessibleCorrespondentResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccessibleCorrespondentResponse copyWith(void Function(AccessibleCorrespondentResponse) updates) => super.copyWith((message) => updates(message as AccessibleCorrespondentResponse)) as AccessibleCorrespondentResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccessibleCorrespondentResponse create() => AccessibleCorrespondentResponse._();
  @$core.override
  AccessibleCorrespondentResponse createEmptyInstance() => create();
  static $pb.PbList<AccessibleCorrespondentResponse> createRepeated() => $pb.PbList<AccessibleCorrespondentResponse>();
  @$core.pragma('dart2js:noInline')
  static AccessibleCorrespondentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccessibleCorrespondentResponse>(create);
  static AccessibleCorrespondentResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get correspondents => $_getList(0);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
