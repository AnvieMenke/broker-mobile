//
//  Generated code. Do not modify.
//  source: proto/reportpb/balance.proto
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
import '../utilspb/pagination.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Balance extends $pb.GeneratedMessage {
  factory Balance({
    $core.int? reportBalanceId,
    $core.String? dateType,
    $1.Date? date,
    $core.int? accountId,
    $core.String? correspondent,
    $core.String? branch,
    $core.String? accountNo,
    $core.String? subAccountNo,
    $core.String? accountName,
    $core.String? masterAccountNo,
    $core.String? rep,
    $core.String? marginType,
    $core.String? accountStatus,
    $core.String? accountType,
    $core.String? tdCashBalance,
    $core.String? tdMarketValue,
    $core.String? tdShortMarketValue,
    $core.String? tdLongMarketValue,
    $core.String? tdEquity,
    $core.String? tdAdjustedBalance,
    $core.String? sdCashBalance,
    $core.String? sdMarketValue,
    $core.String? sdShortMarketValue,
    $core.String? sdLongMarketValue,
    $core.String? sdEquity,
    $core.String? sdAdjustedBalance,
    $core.String? accountValuePercent,
    $core.String? positionCost,
    $core.String? unrealizedPlValue,
    $core.String? unrealizedPlPercent,
    $core.String? ytdPlValue,
    $core.String? ytdPlPercent,
  }) {
    final result = create();
    if (reportBalanceId != null) result.reportBalanceId = reportBalanceId;
    if (dateType != null) result.dateType = dateType;
    if (date != null) result.date = date;
    if (accountId != null) result.accountId = accountId;
    if (correspondent != null) result.correspondent = correspondent;
    if (branch != null) result.branch = branch;
    if (accountNo != null) result.accountNo = accountNo;
    if (subAccountNo != null) result.subAccountNo = subAccountNo;
    if (accountName != null) result.accountName = accountName;
    if (masterAccountNo != null) result.masterAccountNo = masterAccountNo;
    if (rep != null) result.rep = rep;
    if (marginType != null) result.marginType = marginType;
    if (accountStatus != null) result.accountStatus = accountStatus;
    if (accountType != null) result.accountType = accountType;
    if (tdCashBalance != null) result.tdCashBalance = tdCashBalance;
    if (tdMarketValue != null) result.tdMarketValue = tdMarketValue;
    if (tdShortMarketValue != null) result.tdShortMarketValue = tdShortMarketValue;
    if (tdLongMarketValue != null) result.tdLongMarketValue = tdLongMarketValue;
    if (tdEquity != null) result.tdEquity = tdEquity;
    if (tdAdjustedBalance != null) result.tdAdjustedBalance = tdAdjustedBalance;
    if (sdCashBalance != null) result.sdCashBalance = sdCashBalance;
    if (sdMarketValue != null) result.sdMarketValue = sdMarketValue;
    if (sdShortMarketValue != null) result.sdShortMarketValue = sdShortMarketValue;
    if (sdLongMarketValue != null) result.sdLongMarketValue = sdLongMarketValue;
    if (sdEquity != null) result.sdEquity = sdEquity;
    if (sdAdjustedBalance != null) result.sdAdjustedBalance = sdAdjustedBalance;
    if (accountValuePercent != null) result.accountValuePercent = accountValuePercent;
    if (positionCost != null) result.positionCost = positionCost;
    if (unrealizedPlValue != null) result.unrealizedPlValue = unrealizedPlValue;
    if (unrealizedPlPercent != null) result.unrealizedPlPercent = unrealizedPlPercent;
    if (ytdPlValue != null) result.ytdPlValue = ytdPlValue;
    if (ytdPlPercent != null) result.ytdPlPercent = ytdPlPercent;
    return result;
  }

  Balance._();

  factory Balance.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Balance.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Balance', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'reportBalanceId', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'dateType')
    ..aOM<$1.Date>(3, _omitFieldNames ? '' : 'date', subBuilder: $1.Date.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'accountId', $pb.PbFieldType.OU3)
    ..aOS(5, _omitFieldNames ? '' : 'correspondent')
    ..aOS(6, _omitFieldNames ? '' : 'branch')
    ..aOS(7, _omitFieldNames ? '' : 'accountNo')
    ..aOS(8, _omitFieldNames ? '' : 'subAccountNo')
    ..aOS(9, _omitFieldNames ? '' : 'accountName')
    ..aOS(10, _omitFieldNames ? '' : 'masterAccountNo')
    ..aOS(11, _omitFieldNames ? '' : 'rep')
    ..aOS(12, _omitFieldNames ? '' : 'marginType')
    ..aOS(13, _omitFieldNames ? '' : 'accountStatus')
    ..aOS(14, _omitFieldNames ? '' : 'accountType')
    ..aOS(15, _omitFieldNames ? '' : 'tdCashBalance')
    ..aOS(16, _omitFieldNames ? '' : 'tdMarketValue')
    ..aOS(17, _omitFieldNames ? '' : 'tdShortMarketValue')
    ..aOS(18, _omitFieldNames ? '' : 'tdLongMarketValue')
    ..aOS(19, _omitFieldNames ? '' : 'tdEquity')
    ..aOS(20, _omitFieldNames ? '' : 'tdAdjustedBalance')
    ..aOS(21, _omitFieldNames ? '' : 'sdCashBalance')
    ..aOS(22, _omitFieldNames ? '' : 'sdMarketValue')
    ..aOS(23, _omitFieldNames ? '' : 'sdShortMarketValue')
    ..aOS(24, _omitFieldNames ? '' : 'sdLongMarketValue')
    ..aOS(25, _omitFieldNames ? '' : 'sdEquity')
    ..aOS(26, _omitFieldNames ? '' : 'sdAdjustedBalance')
    ..aOS(27, _omitFieldNames ? '' : 'accountValuePercent')
    ..aOS(28, _omitFieldNames ? '' : 'positionCost')
    ..aOS(29, _omitFieldNames ? '' : 'unrealizedPlValue')
    ..aOS(30, _omitFieldNames ? '' : 'unrealizedPlPercent')
    ..aOS(31, _omitFieldNames ? '' : 'ytdPlValue')
    ..aOS(32, _omitFieldNames ? '' : 'ytdPlPercent')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Balance clone() => Balance()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Balance copyWith(void Function(Balance) updates) => super.copyWith((message) => updates(message as Balance)) as Balance;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Balance create() => Balance._();
  @$core.override
  Balance createEmptyInstance() => create();
  static $pb.PbList<Balance> createRepeated() => $pb.PbList<Balance>();
  @$core.pragma('dart2js:noInline')
  static Balance getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Balance>(create);
  static Balance? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get reportBalanceId => $_getIZ(0);
  @$pb.TagNumber(1)
  set reportBalanceId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasReportBalanceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearReportBalanceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get dateType => $_getSZ(1);
  @$pb.TagNumber(2)
  set dateType($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDateType() => $_has(1);
  @$pb.TagNumber(2)
  void clearDateType() => $_clearField(2);

  @$pb.TagNumber(3)
  $1.Date get date => $_getN(2);
  @$pb.TagNumber(3)
  set date($1.Date value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearDate() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Date ensureDate() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.int get accountId => $_getIZ(3);
  @$pb.TagNumber(4)
  set accountId($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAccountId() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccountId() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get correspondent => $_getSZ(4);
  @$pb.TagNumber(5)
  set correspondent($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCorrespondent() => $_has(4);
  @$pb.TagNumber(5)
  void clearCorrespondent() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get branch => $_getSZ(5);
  @$pb.TagNumber(6)
  set branch($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasBranch() => $_has(5);
  @$pb.TagNumber(6)
  void clearBranch() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get accountNo => $_getSZ(6);
  @$pb.TagNumber(7)
  set accountNo($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasAccountNo() => $_has(6);
  @$pb.TagNumber(7)
  void clearAccountNo() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get subAccountNo => $_getSZ(7);
  @$pb.TagNumber(8)
  set subAccountNo($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasSubAccountNo() => $_has(7);
  @$pb.TagNumber(8)
  void clearSubAccountNo() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get accountName => $_getSZ(8);
  @$pb.TagNumber(9)
  set accountName($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasAccountName() => $_has(8);
  @$pb.TagNumber(9)
  void clearAccountName() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get masterAccountNo => $_getSZ(9);
  @$pb.TagNumber(10)
  set masterAccountNo($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasMasterAccountNo() => $_has(9);
  @$pb.TagNumber(10)
  void clearMasterAccountNo() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get rep => $_getSZ(10);
  @$pb.TagNumber(11)
  set rep($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasRep() => $_has(10);
  @$pb.TagNumber(11)
  void clearRep() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get marginType => $_getSZ(11);
  @$pb.TagNumber(12)
  set marginType($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasMarginType() => $_has(11);
  @$pb.TagNumber(12)
  void clearMarginType() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get accountStatus => $_getSZ(12);
  @$pb.TagNumber(13)
  set accountStatus($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasAccountStatus() => $_has(12);
  @$pb.TagNumber(13)
  void clearAccountStatus() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get accountType => $_getSZ(13);
  @$pb.TagNumber(14)
  set accountType($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasAccountType() => $_has(13);
  @$pb.TagNumber(14)
  void clearAccountType() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get tdCashBalance => $_getSZ(14);
  @$pb.TagNumber(15)
  set tdCashBalance($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasTdCashBalance() => $_has(14);
  @$pb.TagNumber(15)
  void clearTdCashBalance() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get tdMarketValue => $_getSZ(15);
  @$pb.TagNumber(16)
  set tdMarketValue($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasTdMarketValue() => $_has(15);
  @$pb.TagNumber(16)
  void clearTdMarketValue() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get tdShortMarketValue => $_getSZ(16);
  @$pb.TagNumber(17)
  set tdShortMarketValue($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasTdShortMarketValue() => $_has(16);
  @$pb.TagNumber(17)
  void clearTdShortMarketValue() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get tdLongMarketValue => $_getSZ(17);
  @$pb.TagNumber(18)
  set tdLongMarketValue($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasTdLongMarketValue() => $_has(17);
  @$pb.TagNumber(18)
  void clearTdLongMarketValue() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.String get tdEquity => $_getSZ(18);
  @$pb.TagNumber(19)
  set tdEquity($core.String value) => $_setString(18, value);
  @$pb.TagNumber(19)
  $core.bool hasTdEquity() => $_has(18);
  @$pb.TagNumber(19)
  void clearTdEquity() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get tdAdjustedBalance => $_getSZ(19);
  @$pb.TagNumber(20)
  set tdAdjustedBalance($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasTdAdjustedBalance() => $_has(19);
  @$pb.TagNumber(20)
  void clearTdAdjustedBalance() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.String get sdCashBalance => $_getSZ(20);
  @$pb.TagNumber(21)
  set sdCashBalance($core.String value) => $_setString(20, value);
  @$pb.TagNumber(21)
  $core.bool hasSdCashBalance() => $_has(20);
  @$pb.TagNumber(21)
  void clearSdCashBalance() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.String get sdMarketValue => $_getSZ(21);
  @$pb.TagNumber(22)
  set sdMarketValue($core.String value) => $_setString(21, value);
  @$pb.TagNumber(22)
  $core.bool hasSdMarketValue() => $_has(21);
  @$pb.TagNumber(22)
  void clearSdMarketValue() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.String get sdShortMarketValue => $_getSZ(22);
  @$pb.TagNumber(23)
  set sdShortMarketValue($core.String value) => $_setString(22, value);
  @$pb.TagNumber(23)
  $core.bool hasSdShortMarketValue() => $_has(22);
  @$pb.TagNumber(23)
  void clearSdShortMarketValue() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.String get sdLongMarketValue => $_getSZ(23);
  @$pb.TagNumber(24)
  set sdLongMarketValue($core.String value) => $_setString(23, value);
  @$pb.TagNumber(24)
  $core.bool hasSdLongMarketValue() => $_has(23);
  @$pb.TagNumber(24)
  void clearSdLongMarketValue() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.String get sdEquity => $_getSZ(24);
  @$pb.TagNumber(25)
  set sdEquity($core.String value) => $_setString(24, value);
  @$pb.TagNumber(25)
  $core.bool hasSdEquity() => $_has(24);
  @$pb.TagNumber(25)
  void clearSdEquity() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.String get sdAdjustedBalance => $_getSZ(25);
  @$pb.TagNumber(26)
  set sdAdjustedBalance($core.String value) => $_setString(25, value);
  @$pb.TagNumber(26)
  $core.bool hasSdAdjustedBalance() => $_has(25);
  @$pb.TagNumber(26)
  void clearSdAdjustedBalance() => $_clearField(26);

  @$pb.TagNumber(27)
  $core.String get accountValuePercent => $_getSZ(26);
  @$pb.TagNumber(27)
  set accountValuePercent($core.String value) => $_setString(26, value);
  @$pb.TagNumber(27)
  $core.bool hasAccountValuePercent() => $_has(26);
  @$pb.TagNumber(27)
  void clearAccountValuePercent() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.String get positionCost => $_getSZ(27);
  @$pb.TagNumber(28)
  set positionCost($core.String value) => $_setString(27, value);
  @$pb.TagNumber(28)
  $core.bool hasPositionCost() => $_has(27);
  @$pb.TagNumber(28)
  void clearPositionCost() => $_clearField(28);

  @$pb.TagNumber(29)
  $core.String get unrealizedPlValue => $_getSZ(28);
  @$pb.TagNumber(29)
  set unrealizedPlValue($core.String value) => $_setString(28, value);
  @$pb.TagNumber(29)
  $core.bool hasUnrealizedPlValue() => $_has(28);
  @$pb.TagNumber(29)
  void clearUnrealizedPlValue() => $_clearField(29);

  @$pb.TagNumber(30)
  $core.String get unrealizedPlPercent => $_getSZ(29);
  @$pb.TagNumber(30)
  set unrealizedPlPercent($core.String value) => $_setString(29, value);
  @$pb.TagNumber(30)
  $core.bool hasUnrealizedPlPercent() => $_has(29);
  @$pb.TagNumber(30)
  void clearUnrealizedPlPercent() => $_clearField(30);

  @$pb.TagNumber(31)
  $core.String get ytdPlValue => $_getSZ(30);
  @$pb.TagNumber(31)
  set ytdPlValue($core.String value) => $_setString(30, value);
  @$pb.TagNumber(31)
  $core.bool hasYtdPlValue() => $_has(30);
  @$pb.TagNumber(31)
  void clearYtdPlValue() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.String get ytdPlPercent => $_getSZ(31);
  @$pb.TagNumber(32)
  set ytdPlPercent($core.String value) => $_setString(31, value);
  @$pb.TagNumber(32)
  $core.bool hasYtdPlPercent() => $_has(31);
  @$pb.TagNumber(32)
  void clearYtdPlPercent() => $_clearField(32);
}

class ListBalanceRequest extends $pb.GeneratedMessage {
  factory ListBalanceRequest({
    $2.Pagination? pagination,
    $core.String? dateType,
    $1.Date? fromDate,
    $1.Date? toDate,
    $core.String? correspondent,
    $core.String? accountNo,
    $core.String? accountName,
    $core.String? masterAccountNo,
    $core.String? branch,
    $core.String? rep,
    $core.String? rollUp,
    $core.bool? hideZero,
  }) {
    final result = create();
    if (pagination != null) result.pagination = pagination;
    if (dateType != null) result.dateType = dateType;
    if (fromDate != null) result.fromDate = fromDate;
    if (toDate != null) result.toDate = toDate;
    if (correspondent != null) result.correspondent = correspondent;
    if (accountNo != null) result.accountNo = accountNo;
    if (accountName != null) result.accountName = accountName;
    if (masterAccountNo != null) result.masterAccountNo = masterAccountNo;
    if (branch != null) result.branch = branch;
    if (rep != null) result.rep = rep;
    if (rollUp != null) result.rollUp = rollUp;
    if (hideZero != null) result.hideZero = hideZero;
    return result;
  }

  ListBalanceRequest._();

  factory ListBalanceRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListBalanceRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListBalanceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..aOM<$2.Pagination>(1, _omitFieldNames ? '' : 'pagination', subBuilder: $2.Pagination.create)
    ..aOS(2, _omitFieldNames ? '' : 'dateType')
    ..aOM<$1.Date>(3, _omitFieldNames ? '' : 'fromDate', subBuilder: $1.Date.create)
    ..aOM<$1.Date>(4, _omitFieldNames ? '' : 'toDate', subBuilder: $1.Date.create)
    ..aOS(5, _omitFieldNames ? '' : 'correspondent')
    ..aOS(6, _omitFieldNames ? '' : 'accountNo')
    ..aOS(7, _omitFieldNames ? '' : 'accountName')
    ..aOS(8, _omitFieldNames ? '' : 'masterAccountNo')
    ..aOS(9, _omitFieldNames ? '' : 'branch')
    ..aOS(10, _omitFieldNames ? '' : 'rep')
    ..aOS(11, _omitFieldNames ? '' : 'rollUp')
    ..aOB(12, _omitFieldNames ? '' : 'hideZero')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListBalanceRequest clone() => ListBalanceRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListBalanceRequest copyWith(void Function(ListBalanceRequest) updates) => super.copyWith((message) => updates(message as ListBalanceRequest)) as ListBalanceRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListBalanceRequest create() => ListBalanceRequest._();
  @$core.override
  ListBalanceRequest createEmptyInstance() => create();
  static $pb.PbList<ListBalanceRequest> createRepeated() => $pb.PbList<ListBalanceRequest>();
  @$core.pragma('dart2js:noInline')
  static ListBalanceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListBalanceRequest>(create);
  static ListBalanceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $2.Pagination get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($2.Pagination value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => $_clearField(1);
  @$pb.TagNumber(1)
  $2.Pagination ensurePagination() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get dateType => $_getSZ(1);
  @$pb.TagNumber(2)
  set dateType($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDateType() => $_has(1);
  @$pb.TagNumber(2)
  void clearDateType() => $_clearField(2);

  @$pb.TagNumber(3)
  $1.Date get fromDate => $_getN(2);
  @$pb.TagNumber(3)
  set fromDate($1.Date value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasFromDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearFromDate() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Date ensureFromDate() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Date get toDate => $_getN(3);
  @$pb.TagNumber(4)
  set toDate($1.Date value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasToDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearToDate() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Date ensureToDate() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get correspondent => $_getSZ(4);
  @$pb.TagNumber(5)
  set correspondent($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCorrespondent() => $_has(4);
  @$pb.TagNumber(5)
  void clearCorrespondent() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get accountNo => $_getSZ(5);
  @$pb.TagNumber(6)
  set accountNo($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAccountNo() => $_has(5);
  @$pb.TagNumber(6)
  void clearAccountNo() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get accountName => $_getSZ(6);
  @$pb.TagNumber(7)
  set accountName($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasAccountName() => $_has(6);
  @$pb.TagNumber(7)
  void clearAccountName() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get masterAccountNo => $_getSZ(7);
  @$pb.TagNumber(8)
  set masterAccountNo($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasMasterAccountNo() => $_has(7);
  @$pb.TagNumber(8)
  void clearMasterAccountNo() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get branch => $_getSZ(8);
  @$pb.TagNumber(9)
  set branch($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasBranch() => $_has(8);
  @$pb.TagNumber(9)
  void clearBranch() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get rep => $_getSZ(9);
  @$pb.TagNumber(10)
  set rep($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasRep() => $_has(9);
  @$pb.TagNumber(10)
  void clearRep() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get rollUp => $_getSZ(10);
  @$pb.TagNumber(11)
  set rollUp($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasRollUp() => $_has(10);
  @$pb.TagNumber(11)
  void clearRollUp() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.bool get hideZero => $_getBF(11);
  @$pb.TagNumber(12)
  set hideZero($core.bool value) => $_setBool(11, value);
  @$pb.TagNumber(12)
  $core.bool hasHideZero() => $_has(11);
  @$pb.TagNumber(12)
  void clearHideZero() => $_clearField(12);
}

class ListBalanceResponse extends $pb.GeneratedMessage {
  factory ListBalanceResponse({
    $core.Iterable<Balance>? balances,
    ListBalanceSummary? summary,
  }) {
    final result = create();
    if (balances != null) result.balances.addAll(balances);
    if (summary != null) result.summary = summary;
    return result;
  }

  ListBalanceResponse._();

  factory ListBalanceResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListBalanceResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListBalanceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..pc<Balance>(1, _omitFieldNames ? '' : 'balances', $pb.PbFieldType.PM, subBuilder: Balance.create)
    ..aOM<ListBalanceSummary>(2, _omitFieldNames ? '' : 'summary', subBuilder: ListBalanceSummary.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListBalanceResponse clone() => ListBalanceResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListBalanceResponse copyWith(void Function(ListBalanceResponse) updates) => super.copyWith((message) => updates(message as ListBalanceResponse)) as ListBalanceResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListBalanceResponse create() => ListBalanceResponse._();
  @$core.override
  ListBalanceResponse createEmptyInstance() => create();
  static $pb.PbList<ListBalanceResponse> createRepeated() => $pb.PbList<ListBalanceResponse>();
  @$core.pragma('dart2js:noInline')
  static ListBalanceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListBalanceResponse>(create);
  static ListBalanceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Balance> get balances => $_getList(0);

  @$pb.TagNumber(2)
  ListBalanceSummary get summary => $_getN(1);
  @$pb.TagNumber(2)
  set summary(ListBalanceSummary value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSummary() => $_has(1);
  @$pb.TagNumber(2)
  void clearSummary() => $_clearField(2);
  @$pb.TagNumber(2)
  ListBalanceSummary ensureSummary() => $_ensure(1);
}

class ListBalanceSummary extends $pb.GeneratedMessage {
  factory ListBalanceSummary({
    $core.int? totalRows,
    $core.String? sdCashBalance,
    $core.String? sdMarketValue,
    $core.String? sdShortMarketValue,
    $core.String? sdLongMarketValue,
    $core.String? sdEquity,
    $core.String? sdAdjustedBalance,
    $core.String? tdCashBalance,
    $core.String? tdMarketValue,
    $core.String? tdShortMarketValue,
    $core.String? tdLongMarketValue,
    $core.String? tdEquity,
    $core.String? tdAdjustedBalance,
    $core.String? positionCost,
    $core.String? unrealizedPlValue,
    $core.String? unrealizedPlPercent,
    $core.String? ytdPlValue,
    $core.String? ytdPlPercent,
    $core.String? accountValuePercent,
  }) {
    final result = create();
    if (totalRows != null) result.totalRows = totalRows;
    if (sdCashBalance != null) result.sdCashBalance = sdCashBalance;
    if (sdMarketValue != null) result.sdMarketValue = sdMarketValue;
    if (sdShortMarketValue != null) result.sdShortMarketValue = sdShortMarketValue;
    if (sdLongMarketValue != null) result.sdLongMarketValue = sdLongMarketValue;
    if (sdEquity != null) result.sdEquity = sdEquity;
    if (sdAdjustedBalance != null) result.sdAdjustedBalance = sdAdjustedBalance;
    if (tdCashBalance != null) result.tdCashBalance = tdCashBalance;
    if (tdMarketValue != null) result.tdMarketValue = tdMarketValue;
    if (tdShortMarketValue != null) result.tdShortMarketValue = tdShortMarketValue;
    if (tdLongMarketValue != null) result.tdLongMarketValue = tdLongMarketValue;
    if (tdEquity != null) result.tdEquity = tdEquity;
    if (tdAdjustedBalance != null) result.tdAdjustedBalance = tdAdjustedBalance;
    if (positionCost != null) result.positionCost = positionCost;
    if (unrealizedPlValue != null) result.unrealizedPlValue = unrealizedPlValue;
    if (unrealizedPlPercent != null) result.unrealizedPlPercent = unrealizedPlPercent;
    if (ytdPlValue != null) result.ytdPlValue = ytdPlValue;
    if (ytdPlPercent != null) result.ytdPlPercent = ytdPlPercent;
    if (accountValuePercent != null) result.accountValuePercent = accountValuePercent;
    return result;
  }

  ListBalanceSummary._();

  factory ListBalanceSummary.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListBalanceSummary.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListBalanceSummary', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'totalRows', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'sdCashBalance')
    ..aOS(3, _omitFieldNames ? '' : 'sdMarketValue')
    ..aOS(4, _omitFieldNames ? '' : 'sdShortMarketValue')
    ..aOS(5, _omitFieldNames ? '' : 'sdLongMarketValue')
    ..aOS(6, _omitFieldNames ? '' : 'sdEquity')
    ..aOS(7, _omitFieldNames ? '' : 'sdAdjustedBalance')
    ..aOS(8, _omitFieldNames ? '' : 'tdCashBalance')
    ..aOS(9, _omitFieldNames ? '' : 'tdMarketValue')
    ..aOS(10, _omitFieldNames ? '' : 'tdShortMarketValue')
    ..aOS(11, _omitFieldNames ? '' : 'tdLongMarketValue')
    ..aOS(12, _omitFieldNames ? '' : 'tdEquity')
    ..aOS(13, _omitFieldNames ? '' : 'tdAdjustedBalance')
    ..aOS(14, _omitFieldNames ? '' : 'positionCost')
    ..aOS(15, _omitFieldNames ? '' : 'unrealizedPlValue')
    ..aOS(16, _omitFieldNames ? '' : 'unrealizedPlPercent')
    ..aOS(17, _omitFieldNames ? '' : 'ytdPlValue')
    ..aOS(18, _omitFieldNames ? '' : 'ytdPlPercent')
    ..aOS(19, _omitFieldNames ? '' : 'accountValuePercent')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListBalanceSummary clone() => ListBalanceSummary()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListBalanceSummary copyWith(void Function(ListBalanceSummary) updates) => super.copyWith((message) => updates(message as ListBalanceSummary)) as ListBalanceSummary;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListBalanceSummary create() => ListBalanceSummary._();
  @$core.override
  ListBalanceSummary createEmptyInstance() => create();
  static $pb.PbList<ListBalanceSummary> createRepeated() => $pb.PbList<ListBalanceSummary>();
  @$core.pragma('dart2js:noInline')
  static ListBalanceSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListBalanceSummary>(create);
  static ListBalanceSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get totalRows => $_getIZ(0);
  @$pb.TagNumber(1)
  set totalRows($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTotalRows() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalRows() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sdCashBalance => $_getSZ(1);
  @$pb.TagNumber(2)
  set sdCashBalance($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSdCashBalance() => $_has(1);
  @$pb.TagNumber(2)
  void clearSdCashBalance() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get sdMarketValue => $_getSZ(2);
  @$pb.TagNumber(3)
  set sdMarketValue($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSdMarketValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearSdMarketValue() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get sdShortMarketValue => $_getSZ(3);
  @$pb.TagNumber(4)
  set sdShortMarketValue($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSdShortMarketValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearSdShortMarketValue() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get sdLongMarketValue => $_getSZ(4);
  @$pb.TagNumber(5)
  set sdLongMarketValue($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSdLongMarketValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearSdLongMarketValue() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get sdEquity => $_getSZ(5);
  @$pb.TagNumber(6)
  set sdEquity($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSdEquity() => $_has(5);
  @$pb.TagNumber(6)
  void clearSdEquity() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get sdAdjustedBalance => $_getSZ(6);
  @$pb.TagNumber(7)
  set sdAdjustedBalance($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSdAdjustedBalance() => $_has(6);
  @$pb.TagNumber(7)
  void clearSdAdjustedBalance() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get tdCashBalance => $_getSZ(7);
  @$pb.TagNumber(8)
  set tdCashBalance($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasTdCashBalance() => $_has(7);
  @$pb.TagNumber(8)
  void clearTdCashBalance() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get tdMarketValue => $_getSZ(8);
  @$pb.TagNumber(9)
  set tdMarketValue($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasTdMarketValue() => $_has(8);
  @$pb.TagNumber(9)
  void clearTdMarketValue() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get tdShortMarketValue => $_getSZ(9);
  @$pb.TagNumber(10)
  set tdShortMarketValue($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasTdShortMarketValue() => $_has(9);
  @$pb.TagNumber(10)
  void clearTdShortMarketValue() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get tdLongMarketValue => $_getSZ(10);
  @$pb.TagNumber(11)
  set tdLongMarketValue($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasTdLongMarketValue() => $_has(10);
  @$pb.TagNumber(11)
  void clearTdLongMarketValue() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get tdEquity => $_getSZ(11);
  @$pb.TagNumber(12)
  set tdEquity($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasTdEquity() => $_has(11);
  @$pb.TagNumber(12)
  void clearTdEquity() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get tdAdjustedBalance => $_getSZ(12);
  @$pb.TagNumber(13)
  set tdAdjustedBalance($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasTdAdjustedBalance() => $_has(12);
  @$pb.TagNumber(13)
  void clearTdAdjustedBalance() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get positionCost => $_getSZ(13);
  @$pb.TagNumber(14)
  set positionCost($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasPositionCost() => $_has(13);
  @$pb.TagNumber(14)
  void clearPositionCost() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get unrealizedPlValue => $_getSZ(14);
  @$pb.TagNumber(15)
  set unrealizedPlValue($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasUnrealizedPlValue() => $_has(14);
  @$pb.TagNumber(15)
  void clearUnrealizedPlValue() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get unrealizedPlPercent => $_getSZ(15);
  @$pb.TagNumber(16)
  set unrealizedPlPercent($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasUnrealizedPlPercent() => $_has(15);
  @$pb.TagNumber(16)
  void clearUnrealizedPlPercent() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get ytdPlValue => $_getSZ(16);
  @$pb.TagNumber(17)
  set ytdPlValue($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasYtdPlValue() => $_has(16);
  @$pb.TagNumber(17)
  void clearYtdPlValue() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get ytdPlPercent => $_getSZ(17);
  @$pb.TagNumber(18)
  set ytdPlPercent($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasYtdPlPercent() => $_has(17);
  @$pb.TagNumber(18)
  void clearYtdPlPercent() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.String get accountValuePercent => $_getSZ(18);
  @$pb.TagNumber(19)
  set accountValuePercent($core.String value) => $_setString(18, value);
  @$pb.TagNumber(19)
  $core.bool hasAccountValuePercent() => $_has(18);
  @$pb.TagNumber(19)
  void clearAccountValuePercent() => $_clearField(19);
}

class DashboardBalance extends $pb.GeneratedMessage {
  factory DashboardBalance({
    $1.Date? date,
    $core.String? tdCashBalance,
  }) {
    final result = create();
    if (date != null) result.date = date;
    if (tdCashBalance != null) result.tdCashBalance = tdCashBalance;
    return result;
  }

  DashboardBalance._();

  factory DashboardBalance.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory DashboardBalance.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DashboardBalance', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..aOM<$1.Date>(1, _omitFieldNames ? '' : 'date', subBuilder: $1.Date.create)
    ..aOS(2, _omitFieldNames ? '' : 'tdCashBalance')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DashboardBalance clone() => DashboardBalance()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DashboardBalance copyWith(void Function(DashboardBalance) updates) => super.copyWith((message) => updates(message as DashboardBalance)) as DashboardBalance;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DashboardBalance create() => DashboardBalance._();
  @$core.override
  DashboardBalance createEmptyInstance() => create();
  static $pb.PbList<DashboardBalance> createRepeated() => $pb.PbList<DashboardBalance>();
  @$core.pragma('dart2js:noInline')
  static DashboardBalance getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DashboardBalance>(create);
  static DashboardBalance? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Date get date => $_getN(0);
  @$pb.TagNumber(1)
  set date($1.Date value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearDate() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Date ensureDate() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get tdCashBalance => $_getSZ(1);
  @$pb.TagNumber(2)
  set tdCashBalance($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTdCashBalance() => $_has(1);
  @$pb.TagNumber(2)
  void clearTdCashBalance() => $_clearField(2);
}

class ListDashboardBalanceRequest extends $pb.GeneratedMessage {
  factory ListDashboardBalanceRequest({
    $core.String? periodType,
    $core.int? periodRange,
  }) {
    final result = create();
    if (periodType != null) result.periodType = periodType;
    if (periodRange != null) result.periodRange = periodRange;
    return result;
  }

  ListDashboardBalanceRequest._();

  factory ListDashboardBalanceRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListDashboardBalanceRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListDashboardBalanceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'periodType')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'periodRange', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListDashboardBalanceRequest clone() => ListDashboardBalanceRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListDashboardBalanceRequest copyWith(void Function(ListDashboardBalanceRequest) updates) => super.copyWith((message) => updates(message as ListDashboardBalanceRequest)) as ListDashboardBalanceRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListDashboardBalanceRequest create() => ListDashboardBalanceRequest._();
  @$core.override
  ListDashboardBalanceRequest createEmptyInstance() => create();
  static $pb.PbList<ListDashboardBalanceRequest> createRepeated() => $pb.PbList<ListDashboardBalanceRequest>();
  @$core.pragma('dart2js:noInline')
  static ListDashboardBalanceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDashboardBalanceRequest>(create);
  static ListDashboardBalanceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get periodType => $_getSZ(0);
  @$pb.TagNumber(1)
  set periodType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPeriodType() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeriodType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get periodRange => $_getIZ(1);
  @$pb.TagNumber(2)
  set periodRange($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPeriodRange() => $_has(1);
  @$pb.TagNumber(2)
  void clearPeriodRange() => $_clearField(2);
}

class ListDashboardBalanceResponse extends $pb.GeneratedMessage {
  factory ListDashboardBalanceResponse({
    $core.Iterable<DashboardBalance>? dashboardBalances,
  }) {
    final result = create();
    if (dashboardBalances != null) result.dashboardBalances.addAll(dashboardBalances);
    return result;
  }

  ListDashboardBalanceResponse._();

  factory ListDashboardBalanceResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListDashboardBalanceResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListDashboardBalanceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..pc<DashboardBalance>(1, _omitFieldNames ? '' : 'dashboardBalances', $pb.PbFieldType.PM, subBuilder: DashboardBalance.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListDashboardBalanceResponse clone() => ListDashboardBalanceResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListDashboardBalanceResponse copyWith(void Function(ListDashboardBalanceResponse) updates) => super.copyWith((message) => updates(message as ListDashboardBalanceResponse)) as ListDashboardBalanceResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListDashboardBalanceResponse create() => ListDashboardBalanceResponse._();
  @$core.override
  ListDashboardBalanceResponse createEmptyInstance() => create();
  static $pb.PbList<ListDashboardBalanceResponse> createRepeated() => $pb.PbList<ListDashboardBalanceResponse>();
  @$core.pragma('dart2js:noInline')
  static ListDashboardBalanceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListDashboardBalanceResponse>(create);
  static ListDashboardBalanceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<DashboardBalance> get dashboardBalances => $_getList(0);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
