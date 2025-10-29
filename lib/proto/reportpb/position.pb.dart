//
//  Generated code. Do not modify.
//  source: proto/reportpb/position.proto
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

class Position extends $pb.GeneratedMessage {
  factory Position({
    $core.String? dateType,
    $1.Date? date,
    $core.int? accountId,
    $core.String? correspondent,
    $core.String? accountNo,
    $core.String? subAccountNo,
    $core.String? accountName,
    $core.String? masterAccountNo,
    $core.String? branch,
    $core.String? rep,
    $core.String? marginType,
    $core.String? accountType,
    $core.String? accountStatus,
    $core.String? originalCusip,
    $core.String? assetType,
    $core.String? symbol,
    $core.String? symbolDescription,
    $core.String? closingPrice,
    $core.String? closingPriceChange,
    $core.String? tdQty,
    $core.String? tdMarketValue,
    $core.String? tdShortMarketValue,
    $core.String? tdLongMarketValue,
    $core.String? sdQty,
    $core.String? sdMarketValue,
    $core.String? sdShortMarketValue,
    $core.String? sdLongMarketValue,
    $core.String? accountValuePercent,
    $core.String? avgCostPrice,
    $core.String? costBasis,
    $core.String? unrealizedPlValue,
    $core.String? unrealizedPlPercent,
    $core.String? lowPrice,
    $core.String? highPrice,
  }) {
    final result = create();
    if (dateType != null) result.dateType = dateType;
    if (date != null) result.date = date;
    if (accountId != null) result.accountId = accountId;
    if (correspondent != null) result.correspondent = correspondent;
    if (accountNo != null) result.accountNo = accountNo;
    if (subAccountNo != null) result.subAccountNo = subAccountNo;
    if (accountName != null) result.accountName = accountName;
    if (masterAccountNo != null) result.masterAccountNo = masterAccountNo;
    if (branch != null) result.branch = branch;
    if (rep != null) result.rep = rep;
    if (marginType != null) result.marginType = marginType;
    if (accountType != null) result.accountType = accountType;
    if (accountStatus != null) result.accountStatus = accountStatus;
    if (originalCusip != null) result.originalCusip = originalCusip;
    if (assetType != null) result.assetType = assetType;
    if (symbol != null) result.symbol = symbol;
    if (symbolDescription != null) result.symbolDescription = symbolDescription;
    if (closingPrice != null) result.closingPrice = closingPrice;
    if (closingPriceChange != null) result.closingPriceChange = closingPriceChange;
    if (tdQty != null) result.tdQty = tdQty;
    if (tdMarketValue != null) result.tdMarketValue = tdMarketValue;
    if (tdShortMarketValue != null) result.tdShortMarketValue = tdShortMarketValue;
    if (tdLongMarketValue != null) result.tdLongMarketValue = tdLongMarketValue;
    if (sdQty != null) result.sdQty = sdQty;
    if (sdMarketValue != null) result.sdMarketValue = sdMarketValue;
    if (sdShortMarketValue != null) result.sdShortMarketValue = sdShortMarketValue;
    if (sdLongMarketValue != null) result.sdLongMarketValue = sdLongMarketValue;
    if (accountValuePercent != null) result.accountValuePercent = accountValuePercent;
    if (avgCostPrice != null) result.avgCostPrice = avgCostPrice;
    if (costBasis != null) result.costBasis = costBasis;
    if (unrealizedPlValue != null) result.unrealizedPlValue = unrealizedPlValue;
    if (unrealizedPlPercent != null) result.unrealizedPlPercent = unrealizedPlPercent;
    if (lowPrice != null) result.lowPrice = lowPrice;
    if (highPrice != null) result.highPrice = highPrice;
    return result;
  }

  Position._();

  factory Position.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Position.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Position', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'dateType')
    ..aOM<$1.Date>(2, _omitFieldNames ? '' : 'date', subBuilder: $1.Date.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'accountId', $pb.PbFieldType.OU3)
    ..aOS(4, _omitFieldNames ? '' : 'correspondent')
    ..aOS(5, _omitFieldNames ? '' : 'accountNo')
    ..aOS(6, _omitFieldNames ? '' : 'subAccountNo')
    ..aOS(7, _omitFieldNames ? '' : 'accountName')
    ..aOS(8, _omitFieldNames ? '' : 'masterAccountNo')
    ..aOS(9, _omitFieldNames ? '' : 'branch')
    ..aOS(10, _omitFieldNames ? '' : 'rep')
    ..aOS(11, _omitFieldNames ? '' : 'marginType')
    ..aOS(12, _omitFieldNames ? '' : 'accountType')
    ..aOS(13, _omitFieldNames ? '' : 'accountStatus')
    ..aOS(14, _omitFieldNames ? '' : 'originalCusip')
    ..aOS(15, _omitFieldNames ? '' : 'assetType')
    ..aOS(16, _omitFieldNames ? '' : 'symbol')
    ..aOS(17, _omitFieldNames ? '' : 'symbolDescription')
    ..aOS(18, _omitFieldNames ? '' : 'closingPrice')
    ..aOS(19, _omitFieldNames ? '' : 'closingPriceChange')
    ..aOS(20, _omitFieldNames ? '' : 'tdQty')
    ..aOS(21, _omitFieldNames ? '' : 'tdMarketValue')
    ..aOS(22, _omitFieldNames ? '' : 'tdShortMarketValue')
    ..aOS(23, _omitFieldNames ? '' : 'tdLongMarketValue')
    ..aOS(24, _omitFieldNames ? '' : 'sdQty')
    ..aOS(25, _omitFieldNames ? '' : 'sdMarketValue')
    ..aOS(26, _omitFieldNames ? '' : 'sdShortMarketValue')
    ..aOS(27, _omitFieldNames ? '' : 'sdLongMarketValue')
    ..aOS(28, _omitFieldNames ? '' : 'accountValuePercent')
    ..aOS(29, _omitFieldNames ? '' : 'avgCostPrice')
    ..aOS(30, _omitFieldNames ? '' : 'costBasis')
    ..aOS(31, _omitFieldNames ? '' : 'unrealizedPlValue')
    ..aOS(32, _omitFieldNames ? '' : 'unrealizedPlPercent')
    ..aOS(33, _omitFieldNames ? '' : 'lowPrice')
    ..aOS(34, _omitFieldNames ? '' : 'highPrice')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Position clone() => Position()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Position copyWith(void Function(Position) updates) => super.copyWith((message) => updates(message as Position)) as Position;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Position create() => Position._();
  @$core.override
  Position createEmptyInstance() => create();
  static $pb.PbList<Position> createRepeated() => $pb.PbList<Position>();
  @$core.pragma('dart2js:noInline')
  static Position getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Position>(create);
  static Position? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get dateType => $_getSZ(0);
  @$pb.TagNumber(1)
  set dateType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDateType() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateType() => $_clearField(1);

  @$pb.TagNumber(2)
  $1.Date get date => $_getN(1);
  @$pb.TagNumber(2)
  set date($1.Date value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearDate() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Date ensureDate() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.int get accountId => $_getIZ(2);
  @$pb.TagNumber(3)
  set accountId($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAccountId() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountId() => $_clearField(3);

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
  $core.String get marginType => $_getSZ(10);
  @$pb.TagNumber(11)
  set marginType($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasMarginType() => $_has(10);
  @$pb.TagNumber(11)
  void clearMarginType() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get accountType => $_getSZ(11);
  @$pb.TagNumber(12)
  set accountType($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasAccountType() => $_has(11);
  @$pb.TagNumber(12)
  void clearAccountType() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get accountStatus => $_getSZ(12);
  @$pb.TagNumber(13)
  set accountStatus($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasAccountStatus() => $_has(12);
  @$pb.TagNumber(13)
  void clearAccountStatus() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get originalCusip => $_getSZ(13);
  @$pb.TagNumber(14)
  set originalCusip($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasOriginalCusip() => $_has(13);
  @$pb.TagNumber(14)
  void clearOriginalCusip() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get assetType => $_getSZ(14);
  @$pb.TagNumber(15)
  set assetType($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasAssetType() => $_has(14);
  @$pb.TagNumber(15)
  void clearAssetType() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get symbol => $_getSZ(15);
  @$pb.TagNumber(16)
  set symbol($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasSymbol() => $_has(15);
  @$pb.TagNumber(16)
  void clearSymbol() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get symbolDescription => $_getSZ(16);
  @$pb.TagNumber(17)
  set symbolDescription($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasSymbolDescription() => $_has(16);
  @$pb.TagNumber(17)
  void clearSymbolDescription() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get closingPrice => $_getSZ(17);
  @$pb.TagNumber(18)
  set closingPrice($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasClosingPrice() => $_has(17);
  @$pb.TagNumber(18)
  void clearClosingPrice() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.String get closingPriceChange => $_getSZ(18);
  @$pb.TagNumber(19)
  set closingPriceChange($core.String value) => $_setString(18, value);
  @$pb.TagNumber(19)
  $core.bool hasClosingPriceChange() => $_has(18);
  @$pb.TagNumber(19)
  void clearClosingPriceChange() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get tdQty => $_getSZ(19);
  @$pb.TagNumber(20)
  set tdQty($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasTdQty() => $_has(19);
  @$pb.TagNumber(20)
  void clearTdQty() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.String get tdMarketValue => $_getSZ(20);
  @$pb.TagNumber(21)
  set tdMarketValue($core.String value) => $_setString(20, value);
  @$pb.TagNumber(21)
  $core.bool hasTdMarketValue() => $_has(20);
  @$pb.TagNumber(21)
  void clearTdMarketValue() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.String get tdShortMarketValue => $_getSZ(21);
  @$pb.TagNumber(22)
  set tdShortMarketValue($core.String value) => $_setString(21, value);
  @$pb.TagNumber(22)
  $core.bool hasTdShortMarketValue() => $_has(21);
  @$pb.TagNumber(22)
  void clearTdShortMarketValue() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.String get tdLongMarketValue => $_getSZ(22);
  @$pb.TagNumber(23)
  set tdLongMarketValue($core.String value) => $_setString(22, value);
  @$pb.TagNumber(23)
  $core.bool hasTdLongMarketValue() => $_has(22);
  @$pb.TagNumber(23)
  void clearTdLongMarketValue() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.String get sdQty => $_getSZ(23);
  @$pb.TagNumber(24)
  set sdQty($core.String value) => $_setString(23, value);
  @$pb.TagNumber(24)
  $core.bool hasSdQty() => $_has(23);
  @$pb.TagNumber(24)
  void clearSdQty() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.String get sdMarketValue => $_getSZ(24);
  @$pb.TagNumber(25)
  set sdMarketValue($core.String value) => $_setString(24, value);
  @$pb.TagNumber(25)
  $core.bool hasSdMarketValue() => $_has(24);
  @$pb.TagNumber(25)
  void clearSdMarketValue() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.String get sdShortMarketValue => $_getSZ(25);
  @$pb.TagNumber(26)
  set sdShortMarketValue($core.String value) => $_setString(25, value);
  @$pb.TagNumber(26)
  $core.bool hasSdShortMarketValue() => $_has(25);
  @$pb.TagNumber(26)
  void clearSdShortMarketValue() => $_clearField(26);

  @$pb.TagNumber(27)
  $core.String get sdLongMarketValue => $_getSZ(26);
  @$pb.TagNumber(27)
  set sdLongMarketValue($core.String value) => $_setString(26, value);
  @$pb.TagNumber(27)
  $core.bool hasSdLongMarketValue() => $_has(26);
  @$pb.TagNumber(27)
  void clearSdLongMarketValue() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.String get accountValuePercent => $_getSZ(27);
  @$pb.TagNumber(28)
  set accountValuePercent($core.String value) => $_setString(27, value);
  @$pb.TagNumber(28)
  $core.bool hasAccountValuePercent() => $_has(27);
  @$pb.TagNumber(28)
  void clearAccountValuePercent() => $_clearField(28);

  @$pb.TagNumber(29)
  $core.String get avgCostPrice => $_getSZ(28);
  @$pb.TagNumber(29)
  set avgCostPrice($core.String value) => $_setString(28, value);
  @$pb.TagNumber(29)
  $core.bool hasAvgCostPrice() => $_has(28);
  @$pb.TagNumber(29)
  void clearAvgCostPrice() => $_clearField(29);

  @$pb.TagNumber(30)
  $core.String get costBasis => $_getSZ(29);
  @$pb.TagNumber(30)
  set costBasis($core.String value) => $_setString(29, value);
  @$pb.TagNumber(30)
  $core.bool hasCostBasis() => $_has(29);
  @$pb.TagNumber(30)
  void clearCostBasis() => $_clearField(30);

  @$pb.TagNumber(31)
  $core.String get unrealizedPlValue => $_getSZ(30);
  @$pb.TagNumber(31)
  set unrealizedPlValue($core.String value) => $_setString(30, value);
  @$pb.TagNumber(31)
  $core.bool hasUnrealizedPlValue() => $_has(30);
  @$pb.TagNumber(31)
  void clearUnrealizedPlValue() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.String get unrealizedPlPercent => $_getSZ(31);
  @$pb.TagNumber(32)
  set unrealizedPlPercent($core.String value) => $_setString(31, value);
  @$pb.TagNumber(32)
  $core.bool hasUnrealizedPlPercent() => $_has(31);
  @$pb.TagNumber(32)
  void clearUnrealizedPlPercent() => $_clearField(32);

  @$pb.TagNumber(33)
  $core.String get lowPrice => $_getSZ(32);
  @$pb.TagNumber(33)
  set lowPrice($core.String value) => $_setString(32, value);
  @$pb.TagNumber(33)
  $core.bool hasLowPrice() => $_has(32);
  @$pb.TagNumber(33)
  void clearLowPrice() => $_clearField(33);

  @$pb.TagNumber(34)
  $core.String get highPrice => $_getSZ(33);
  @$pb.TagNumber(34)
  set highPrice($core.String value) => $_setString(33, value);
  @$pb.TagNumber(34)
  $core.bool hasHighPrice() => $_has(33);
  @$pb.TagNumber(34)
  void clearHighPrice() => $_clearField(34);
}

class ListPositionRequest extends $pb.GeneratedMessage {
  factory ListPositionRequest({
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
    $core.String? assetType,
    $core.String? symbol,
    $core.String? rollUp,
    $core.bool? includeCash,
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
    if (assetType != null) result.assetType = assetType;
    if (symbol != null) result.symbol = symbol;
    if (rollUp != null) result.rollUp = rollUp;
    if (includeCash != null) result.includeCash = includeCash;
    return result;
  }

  ListPositionRequest._();

  factory ListPositionRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListPositionRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListPositionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
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
    ..aOS(11, _omitFieldNames ? '' : 'assetType')
    ..aOS(12, _omitFieldNames ? '' : 'symbol')
    ..aOS(13, _omitFieldNames ? '' : 'rollUp')
    ..aOB(14, _omitFieldNames ? '' : 'includeCash')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPositionRequest clone() => ListPositionRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPositionRequest copyWith(void Function(ListPositionRequest) updates) => super.copyWith((message) => updates(message as ListPositionRequest)) as ListPositionRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPositionRequest create() => ListPositionRequest._();
  @$core.override
  ListPositionRequest createEmptyInstance() => create();
  static $pb.PbList<ListPositionRequest> createRepeated() => $pb.PbList<ListPositionRequest>();
  @$core.pragma('dart2js:noInline')
  static ListPositionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPositionRequest>(create);
  static ListPositionRequest? _defaultInstance;

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
  $core.String get assetType => $_getSZ(10);
  @$pb.TagNumber(11)
  set assetType($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasAssetType() => $_has(10);
  @$pb.TagNumber(11)
  void clearAssetType() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get symbol => $_getSZ(11);
  @$pb.TagNumber(12)
  set symbol($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasSymbol() => $_has(11);
  @$pb.TagNumber(12)
  void clearSymbol() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get rollUp => $_getSZ(12);
  @$pb.TagNumber(13)
  set rollUp($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasRollUp() => $_has(12);
  @$pb.TagNumber(13)
  void clearRollUp() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.bool get includeCash => $_getBF(13);
  @$pb.TagNumber(14)
  set includeCash($core.bool value) => $_setBool(13, value);
  @$pb.TagNumber(14)
  $core.bool hasIncludeCash() => $_has(13);
  @$pb.TagNumber(14)
  void clearIncludeCash() => $_clearField(14);
}

class ListPositionResponse extends $pb.GeneratedMessage {
  factory ListPositionResponse({
    $core.Iterable<Position>? positions,
    ListPositionSummary? summary,
  }) {
    final result = create();
    if (positions != null) result.positions.addAll(positions);
    if (summary != null) result.summary = summary;
    return result;
  }

  ListPositionResponse._();

  factory ListPositionResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListPositionResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListPositionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..pc<Position>(1, _omitFieldNames ? '' : 'positions', $pb.PbFieldType.PM, subBuilder: Position.create)
    ..aOM<ListPositionSummary>(2, _omitFieldNames ? '' : 'summary', subBuilder: ListPositionSummary.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPositionResponse clone() => ListPositionResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPositionResponse copyWith(void Function(ListPositionResponse) updates) => super.copyWith((message) => updates(message as ListPositionResponse)) as ListPositionResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPositionResponse create() => ListPositionResponse._();
  @$core.override
  ListPositionResponse createEmptyInstance() => create();
  static $pb.PbList<ListPositionResponse> createRepeated() => $pb.PbList<ListPositionResponse>();
  @$core.pragma('dart2js:noInline')
  static ListPositionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPositionResponse>(create);
  static ListPositionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Position> get positions => $_getList(0);

  @$pb.TagNumber(2)
  ListPositionSummary get summary => $_getN(1);
  @$pb.TagNumber(2)
  set summary(ListPositionSummary value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSummary() => $_has(1);
  @$pb.TagNumber(2)
  void clearSummary() => $_clearField(2);
  @$pb.TagNumber(2)
  ListPositionSummary ensureSummary() => $_ensure(1);
}

class ListPositionSummary extends $pb.GeneratedMessage {
  factory ListPositionSummary({
    $core.int? totalRows,
    $core.String? costBasis,
    $core.String? sdQty,
    $core.String? sdMarketValue,
    $core.String? sdShortMarketValue,
    $core.String? sdLongMarketValue,
    $core.String? tdQty,
    $core.String? tdMarketValue,
    $core.String? tdShortMarketValue,
    $core.String? tdLongMarketValue,
  }) {
    final result = create();
    if (totalRows != null) result.totalRows = totalRows;
    if (costBasis != null) result.costBasis = costBasis;
    if (sdQty != null) result.sdQty = sdQty;
    if (sdMarketValue != null) result.sdMarketValue = sdMarketValue;
    if (sdShortMarketValue != null) result.sdShortMarketValue = sdShortMarketValue;
    if (sdLongMarketValue != null) result.sdLongMarketValue = sdLongMarketValue;
    if (tdQty != null) result.tdQty = tdQty;
    if (tdMarketValue != null) result.tdMarketValue = tdMarketValue;
    if (tdShortMarketValue != null) result.tdShortMarketValue = tdShortMarketValue;
    if (tdLongMarketValue != null) result.tdLongMarketValue = tdLongMarketValue;
    return result;
  }

  ListPositionSummary._();

  factory ListPositionSummary.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListPositionSummary.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListPositionSummary', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'totalRows', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'costBasis')
    ..aOS(3, _omitFieldNames ? '' : 'sdQty')
    ..aOS(4, _omitFieldNames ? '' : 'sdMarketValue')
    ..aOS(5, _omitFieldNames ? '' : 'sdShortMarketValue')
    ..aOS(6, _omitFieldNames ? '' : 'sdLongMarketValue')
    ..aOS(7, _omitFieldNames ? '' : 'tdQty')
    ..aOS(8, _omitFieldNames ? '' : 'tdMarketValue')
    ..aOS(9, _omitFieldNames ? '' : 'tdShortMarketValue')
    ..aOS(10, _omitFieldNames ? '' : 'tdLongMarketValue')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPositionSummary clone() => ListPositionSummary()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListPositionSummary copyWith(void Function(ListPositionSummary) updates) => super.copyWith((message) => updates(message as ListPositionSummary)) as ListPositionSummary;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListPositionSummary create() => ListPositionSummary._();
  @$core.override
  ListPositionSummary createEmptyInstance() => create();
  static $pb.PbList<ListPositionSummary> createRepeated() => $pb.PbList<ListPositionSummary>();
  @$core.pragma('dart2js:noInline')
  static ListPositionSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPositionSummary>(create);
  static ListPositionSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get totalRows => $_getIZ(0);
  @$pb.TagNumber(1)
  set totalRows($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTotalRows() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalRows() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get costBasis => $_getSZ(1);
  @$pb.TagNumber(2)
  set costBasis($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCostBasis() => $_has(1);
  @$pb.TagNumber(2)
  void clearCostBasis() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get sdQty => $_getSZ(2);
  @$pb.TagNumber(3)
  set sdQty($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSdQty() => $_has(2);
  @$pb.TagNumber(3)
  void clearSdQty() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get sdMarketValue => $_getSZ(3);
  @$pb.TagNumber(4)
  set sdMarketValue($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSdMarketValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearSdMarketValue() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get sdShortMarketValue => $_getSZ(4);
  @$pb.TagNumber(5)
  set sdShortMarketValue($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSdShortMarketValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearSdShortMarketValue() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get sdLongMarketValue => $_getSZ(5);
  @$pb.TagNumber(6)
  set sdLongMarketValue($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSdLongMarketValue() => $_has(5);
  @$pb.TagNumber(6)
  void clearSdLongMarketValue() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get tdQty => $_getSZ(6);
  @$pb.TagNumber(7)
  set tdQty($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasTdQty() => $_has(6);
  @$pb.TagNumber(7)
  void clearTdQty() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get tdMarketValue => $_getSZ(7);
  @$pb.TagNumber(8)
  set tdMarketValue($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasTdMarketValue() => $_has(7);
  @$pb.TagNumber(8)
  void clearTdMarketValue() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get tdShortMarketValue => $_getSZ(8);
  @$pb.TagNumber(9)
  set tdShortMarketValue($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasTdShortMarketValue() => $_has(8);
  @$pb.TagNumber(9)
  void clearTdShortMarketValue() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get tdLongMarketValue => $_getSZ(9);
  @$pb.TagNumber(10)
  set tdLongMarketValue($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasTdLongMarketValue() => $_has(9);
  @$pb.TagNumber(10)
  void clearTdLongMarketValue() => $_clearField(10);
}

class PositionAccountAllocation extends $pb.GeneratedMessage {
  factory PositionAccountAllocation({
    $core.String? percentage,
    $core.String? code,
    $core.String? description,
  }) {
    final result = create();
    if (percentage != null) result.percentage = percentage;
    if (code != null) result.code = code;
    if (description != null) result.description = description;
    return result;
  }

  PositionAccountAllocation._();

  factory PositionAccountAllocation.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory PositionAccountAllocation.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PositionAccountAllocation', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'percentage')
    ..aOS(2, _omitFieldNames ? '' : 'code')
    ..aOS(3, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PositionAccountAllocation clone() => PositionAccountAllocation()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PositionAccountAllocation copyWith(void Function(PositionAccountAllocation) updates) => super.copyWith((message) => updates(message as PositionAccountAllocation)) as PositionAccountAllocation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PositionAccountAllocation create() => PositionAccountAllocation._();
  @$core.override
  PositionAccountAllocation createEmptyInstance() => create();
  static $pb.PbList<PositionAccountAllocation> createRepeated() => $pb.PbList<PositionAccountAllocation>();
  @$core.pragma('dart2js:noInline')
  static PositionAccountAllocation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PositionAccountAllocation>(create);
  static PositionAccountAllocation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get percentage => $_getSZ(0);
  @$pb.TagNumber(1)
  set percentage($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPercentage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPercentage() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => $_clearField(3);
}

class GetPositionAccountAllocationRequest extends $pb.GeneratedMessage {
  factory GetPositionAccountAllocationRequest({
    $core.String? type,
  }) {
    final result = create();
    if (type != null) result.type = type;
    return result;
  }

  GetPositionAccountAllocationRequest._();

  factory GetPositionAccountAllocationRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetPositionAccountAllocationRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPositionAccountAllocationRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPositionAccountAllocationRequest clone() => GetPositionAccountAllocationRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPositionAccountAllocationRequest copyWith(void Function(GetPositionAccountAllocationRequest) updates) => super.copyWith((message) => updates(message as GetPositionAccountAllocationRequest)) as GetPositionAccountAllocationRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPositionAccountAllocationRequest create() => GetPositionAccountAllocationRequest._();
  @$core.override
  GetPositionAccountAllocationRequest createEmptyInstance() => create();
  static $pb.PbList<GetPositionAccountAllocationRequest> createRepeated() => $pb.PbList<GetPositionAccountAllocationRequest>();
  @$core.pragma('dart2js:noInline')
  static GetPositionAccountAllocationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPositionAccountAllocationRequest>(create);
  static GetPositionAccountAllocationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);
}

class GetPositionAccountAllocationResponse extends $pb.GeneratedMessage {
  factory GetPositionAccountAllocationResponse({
    $core.Iterable<PositionAccountAllocation>? positionAccountAllocations,
  }) {
    final result = create();
    if (positionAccountAllocations != null) result.positionAccountAllocations.addAll(positionAccountAllocations);
    return result;
  }

  GetPositionAccountAllocationResponse._();

  factory GetPositionAccountAllocationResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetPositionAccountAllocationResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetPositionAccountAllocationResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..pc<PositionAccountAllocation>(1, _omitFieldNames ? '' : 'positionAccountAllocations', $pb.PbFieldType.PM, subBuilder: PositionAccountAllocation.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPositionAccountAllocationResponse clone() => GetPositionAccountAllocationResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPositionAccountAllocationResponse copyWith(void Function(GetPositionAccountAllocationResponse) updates) => super.copyWith((message) => updates(message as GetPositionAccountAllocationResponse)) as GetPositionAccountAllocationResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetPositionAccountAllocationResponse create() => GetPositionAccountAllocationResponse._();
  @$core.override
  GetPositionAccountAllocationResponse createEmptyInstance() => create();
  static $pb.PbList<GetPositionAccountAllocationResponse> createRepeated() => $pb.PbList<GetPositionAccountAllocationResponse>();
  @$core.pragma('dart2js:noInline')
  static GetPositionAccountAllocationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetPositionAccountAllocationResponse>(create);
  static GetPositionAccountAllocationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<PositionAccountAllocation> get positionAccountAllocations => $_getList(0);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
