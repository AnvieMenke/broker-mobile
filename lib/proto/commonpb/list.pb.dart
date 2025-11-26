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

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

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
    $core.bool? isInternational,
    $core.bool? ach,
    $core.bool? wire,
    $core.bool? check_10,
  }) {
    final result = create();
    if (bankId != null) result.bankId = bankId;
    if (bankName != null) result.bankName = bankName;
    if (achRoutingNo != null) result.achRoutingNo = achRoutingNo;
    if (wireRoutingNo != null) result.wireRoutingNo = wireRoutingNo;
    if (bankAccountNo != null) result.bankAccountNo = bankAccountNo;
    if (bankAccountType != null) result.bankAccountType = bankAccountType;
    if (isInternational != null) result.isInternational = isInternational;
    if (ach != null) result.ach = ach;
    if (wire != null) result.wire = wire;
    if (check_10 != null) result.check_10 = check_10;
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
    ..aOB(7, _omitFieldNames ? '' : 'isInternational')
    ..aOB(8, _omitFieldNames ? '' : 'ach')
    ..aOB(9, _omitFieldNames ? '' : 'wire')
    ..aOB(10, _omitFieldNames ? '' : 'check')
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

  @$pb.TagNumber(7)
  $core.bool get isInternational => $_getBF(6);
  @$pb.TagNumber(7)
  set isInternational($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasIsInternational() => $_has(6);
  @$pb.TagNumber(7)
  void clearIsInternational() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.bool get ach => $_getBF(7);
  @$pb.TagNumber(8)
  set ach($core.bool value) => $_setBool(7, value);
  @$pb.TagNumber(8)
  $core.bool hasAch() => $_has(7);
  @$pb.TagNumber(8)
  void clearAch() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get wire => $_getBF(8);
  @$pb.TagNumber(9)
  set wire($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(9)
  $core.bool hasWire() => $_has(8);
  @$pb.TagNumber(9)
  void clearWire() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.bool get check_10 => $_getBF(9);
  @$pb.TagNumber(10)
  set check_10($core.bool value) => $_setBool(9, value);
  @$pb.TagNumber(10)
  $core.bool hasCheck_10() => $_has(9);
  @$pb.TagNumber(10)
  void clearCheck_10() => $_clearField(10);
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


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
