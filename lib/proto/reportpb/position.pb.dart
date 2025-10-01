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
    $core.int? accountId,
    $core.String? correspondent,
    $core.String? branch,
    $core.String? accountNo,
    $core.String? accountName,
    $core.String? masterAccountNo,
    $core.String? rep,
    $core.String? subAccountNo,
    $core.String? broker,
    $core.String? marginType,
    $core.String? type,
    $core.String? originalCusip,
    $core.String? symbol,
    $core.String? cusip,
    $core.String? symbolDescription,
    $core.String? assetType,
    $core.String? closingPrice,
    $core.String? qty,
    $core.String? marketValue,
    $core.String? costBasis,
    $core.String? dateType,
    $1.Date? date,
    $core.String? accountStatus,
    $core.String? tdMarketValue,
    $core.String? tdQty,
  }) {
    final result = create();
    if (accountId != null) result.accountId = accountId;
    if (correspondent != null) result.correspondent = correspondent;
    if (branch != null) result.branch = branch;
    if (accountNo != null) result.accountNo = accountNo;
    if (accountName != null) result.accountName = accountName;
    if (masterAccountNo != null) result.masterAccountNo = masterAccountNo;
    if (rep != null) result.rep = rep;
    if (subAccountNo != null) result.subAccountNo = subAccountNo;
    if (broker != null) result.broker = broker;
    if (marginType != null) result.marginType = marginType;
    if (type != null) result.type = type;
    if (originalCusip != null) result.originalCusip = originalCusip;
    if (symbol != null) result.symbol = symbol;
    if (cusip != null) result.cusip = cusip;
    if (symbolDescription != null) result.symbolDescription = symbolDescription;
    if (assetType != null) result.assetType = assetType;
    if (closingPrice != null) result.closingPrice = closingPrice;
    if (qty != null) result.qty = qty;
    if (marketValue != null) result.marketValue = marketValue;
    if (costBasis != null) result.costBasis = costBasis;
    if (dateType != null) result.dateType = dateType;
    if (date != null) result.date = date;
    if (accountStatus != null) result.accountStatus = accountStatus;
    if (tdMarketValue != null) result.tdMarketValue = tdMarketValue;
    if (tdQty != null) result.tdQty = tdQty;
    return result;
  }

  Position._();

  factory Position.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Position.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Position', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'accountId', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'correspondent')
    ..aOS(3, _omitFieldNames ? '' : 'branch')
    ..aOS(4, _omitFieldNames ? '' : 'accountNo')
    ..aOS(5, _omitFieldNames ? '' : 'accountName')
    ..aOS(6, _omitFieldNames ? '' : 'masterAccountNo')
    ..aOS(7, _omitFieldNames ? '' : 'rep')
    ..aOS(8, _omitFieldNames ? '' : 'subAccountNo')
    ..aOS(9, _omitFieldNames ? '' : 'broker')
    ..aOS(10, _omitFieldNames ? '' : 'marginType')
    ..aOS(11, _omitFieldNames ? '' : 'type')
    ..aOS(12, _omitFieldNames ? '' : 'originalCusip')
    ..aOS(13, _omitFieldNames ? '' : 'symbol')
    ..aOS(14, _omitFieldNames ? '' : 'cusip')
    ..aOS(15, _omitFieldNames ? '' : 'symbolDescription')
    ..aOS(16, _omitFieldNames ? '' : 'assetType')
    ..aOS(17, _omitFieldNames ? '' : 'closingPrice')
    ..aOS(18, _omitFieldNames ? '' : 'qty')
    ..aOS(19, _omitFieldNames ? '' : 'marketValue')
    ..aOS(20, _omitFieldNames ? '' : 'costBasis')
    ..aOS(21, _omitFieldNames ? '' : 'dateType')
    ..aOM<$1.Date>(22, _omitFieldNames ? '' : 'date', subBuilder: $1.Date.create)
    ..aOS(23, _omitFieldNames ? '' : 'accountStatus')
    ..aOS(24, _omitFieldNames ? '' : 'tdMarketValue')
    ..aOS(25, _omitFieldNames ? '' : 'tdQty')
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
  $core.String get subAccountNo => $_getSZ(7);
  @$pb.TagNumber(8)
  set subAccountNo($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasSubAccountNo() => $_has(7);
  @$pb.TagNumber(8)
  void clearSubAccountNo() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get broker => $_getSZ(8);
  @$pb.TagNumber(9)
  set broker($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasBroker() => $_has(8);
  @$pb.TagNumber(9)
  void clearBroker() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get marginType => $_getSZ(9);
  @$pb.TagNumber(10)
  set marginType($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasMarginType() => $_has(9);
  @$pb.TagNumber(10)
  void clearMarginType() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get type => $_getSZ(10);
  @$pb.TagNumber(11)
  set type($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasType() => $_has(10);
  @$pb.TagNumber(11)
  void clearType() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get originalCusip => $_getSZ(11);
  @$pb.TagNumber(12)
  set originalCusip($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasOriginalCusip() => $_has(11);
  @$pb.TagNumber(12)
  void clearOriginalCusip() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get symbol => $_getSZ(12);
  @$pb.TagNumber(13)
  set symbol($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasSymbol() => $_has(12);
  @$pb.TagNumber(13)
  void clearSymbol() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get cusip => $_getSZ(13);
  @$pb.TagNumber(14)
  set cusip($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasCusip() => $_has(13);
  @$pb.TagNumber(14)
  void clearCusip() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get symbolDescription => $_getSZ(14);
  @$pb.TagNumber(15)
  set symbolDescription($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasSymbolDescription() => $_has(14);
  @$pb.TagNumber(15)
  void clearSymbolDescription() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get assetType => $_getSZ(15);
  @$pb.TagNumber(16)
  set assetType($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasAssetType() => $_has(15);
  @$pb.TagNumber(16)
  void clearAssetType() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get closingPrice => $_getSZ(16);
  @$pb.TagNumber(17)
  set closingPrice($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasClosingPrice() => $_has(16);
  @$pb.TagNumber(17)
  void clearClosingPrice() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get qty => $_getSZ(17);
  @$pb.TagNumber(18)
  set qty($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasQty() => $_has(17);
  @$pb.TagNumber(18)
  void clearQty() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.String get marketValue => $_getSZ(18);
  @$pb.TagNumber(19)
  set marketValue($core.String value) => $_setString(18, value);
  @$pb.TagNumber(19)
  $core.bool hasMarketValue() => $_has(18);
  @$pb.TagNumber(19)
  void clearMarketValue() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get costBasis => $_getSZ(19);
  @$pb.TagNumber(20)
  set costBasis($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasCostBasis() => $_has(19);
  @$pb.TagNumber(20)
  void clearCostBasis() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.String get dateType => $_getSZ(20);
  @$pb.TagNumber(21)
  set dateType($core.String value) => $_setString(20, value);
  @$pb.TagNumber(21)
  $core.bool hasDateType() => $_has(20);
  @$pb.TagNumber(21)
  void clearDateType() => $_clearField(21);

  @$pb.TagNumber(22)
  $1.Date get date => $_getN(21);
  @$pb.TagNumber(22)
  set date($1.Date value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasDate() => $_has(21);
  @$pb.TagNumber(22)
  void clearDate() => $_clearField(22);
  @$pb.TagNumber(22)
  $1.Date ensureDate() => $_ensure(21);

  @$pb.TagNumber(23)
  $core.String get accountStatus => $_getSZ(22);
  @$pb.TagNumber(23)
  set accountStatus($core.String value) => $_setString(22, value);
  @$pb.TagNumber(23)
  $core.bool hasAccountStatus() => $_has(22);
  @$pb.TagNumber(23)
  void clearAccountStatus() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.String get tdMarketValue => $_getSZ(23);
  @$pb.TagNumber(24)
  set tdMarketValue($core.String value) => $_setString(23, value);
  @$pb.TagNumber(24)
  $core.bool hasTdMarketValue() => $_has(23);
  @$pb.TagNumber(24)
  void clearTdMarketValue() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.String get tdQty => $_getSZ(24);
  @$pb.TagNumber(25)
  set tdQty($core.String value) => $_setString(24, value);
  @$pb.TagNumber(25)
  $core.bool hasTdQty() => $_has(24);
  @$pb.TagNumber(25)
  void clearTdQty() => $_clearField(25);
}

class ListPositionRequest extends $pb.GeneratedMessage {
  factory ListPositionRequest({
    $core.String? correspondent,
    $core.String? accountNo,
    $core.String? accountName,
    $core.String? masterAccountNo,
    $core.bool? unpricedSecurity,
    $core.String? broker,
    $core.String? type,
    $core.String? symbol,
    $core.String? cusip,
    $1.Date? fromDate,
    $1.Date? toDate,
    $core.String? branch,
    $core.String? rep,
    $core.int? usrId,
    $2.Pagination? pagination,
    $core.String? dateType,
    $core.String? assetType,
    $core.String? rollUp,
  }) {
    final result = create();
    if (correspondent != null) result.correspondent = correspondent;
    if (accountNo != null) result.accountNo = accountNo;
    if (accountName != null) result.accountName = accountName;
    if (masterAccountNo != null) result.masterAccountNo = masterAccountNo;
    if (unpricedSecurity != null) result.unpricedSecurity = unpricedSecurity;
    if (broker != null) result.broker = broker;
    if (type != null) result.type = type;
    if (symbol != null) result.symbol = symbol;
    if (cusip != null) result.cusip = cusip;
    if (fromDate != null) result.fromDate = fromDate;
    if (toDate != null) result.toDate = toDate;
    if (branch != null) result.branch = branch;
    if (rep != null) result.rep = rep;
    if (usrId != null) result.usrId = usrId;
    if (pagination != null) result.pagination = pagination;
    if (dateType != null) result.dateType = dateType;
    if (assetType != null) result.assetType = assetType;
    if (rollUp != null) result.rollUp = rollUp;
    return result;
  }

  ListPositionRequest._();

  factory ListPositionRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListPositionRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListPositionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'correspondent')
    ..aOS(2, _omitFieldNames ? '' : 'accountNo')
    ..aOS(3, _omitFieldNames ? '' : 'accountName')
    ..aOS(4, _omitFieldNames ? '' : 'masterAccountNo')
    ..aOB(5, _omitFieldNames ? '' : 'unpricedSecurity')
    ..aOS(6, _omitFieldNames ? '' : 'broker')
    ..aOS(7, _omitFieldNames ? '' : 'type')
    ..aOS(8, _omitFieldNames ? '' : 'symbol')
    ..aOS(9, _omitFieldNames ? '' : 'cusip')
    ..aOM<$1.Date>(10, _omitFieldNames ? '' : 'fromDate', subBuilder: $1.Date.create)
    ..aOM<$1.Date>(11, _omitFieldNames ? '' : 'toDate', subBuilder: $1.Date.create)
    ..aOS(12, _omitFieldNames ? '' : 'branch')
    ..aOS(13, _omitFieldNames ? '' : 'rep')
    ..a<$core.int>(14, _omitFieldNames ? '' : 'usrId', $pb.PbFieldType.OU3)
    ..aOM<$2.Pagination>(15, _omitFieldNames ? '' : 'pagination', subBuilder: $2.Pagination.create)
    ..aOS(16, _omitFieldNames ? '' : 'dateType')
    ..aOS(17, _omitFieldNames ? '' : 'assetType')
    ..aOS(18, _omitFieldNames ? '' : 'rollUp')
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

  @$pb.TagNumber(3)
  $core.String get accountName => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAccountName() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get masterAccountNo => $_getSZ(3);
  @$pb.TagNumber(4)
  set masterAccountNo($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMasterAccountNo() => $_has(3);
  @$pb.TagNumber(4)
  void clearMasterAccountNo() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.bool get unpricedSecurity => $_getBF(4);
  @$pb.TagNumber(5)
  set unpricedSecurity($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasUnpricedSecurity() => $_has(4);
  @$pb.TagNumber(5)
  void clearUnpricedSecurity() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get broker => $_getSZ(5);
  @$pb.TagNumber(6)
  set broker($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasBroker() => $_has(5);
  @$pb.TagNumber(6)
  void clearBroker() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get type => $_getSZ(6);
  @$pb.TagNumber(7)
  set type($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasType() => $_has(6);
  @$pb.TagNumber(7)
  void clearType() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get symbol => $_getSZ(7);
  @$pb.TagNumber(8)
  set symbol($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasSymbol() => $_has(7);
  @$pb.TagNumber(8)
  void clearSymbol() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get cusip => $_getSZ(8);
  @$pb.TagNumber(9)
  set cusip($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasCusip() => $_has(8);
  @$pb.TagNumber(9)
  void clearCusip() => $_clearField(9);

  @$pb.TagNumber(10)
  $1.Date get fromDate => $_getN(9);
  @$pb.TagNumber(10)
  set fromDate($1.Date value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasFromDate() => $_has(9);
  @$pb.TagNumber(10)
  void clearFromDate() => $_clearField(10);
  @$pb.TagNumber(10)
  $1.Date ensureFromDate() => $_ensure(9);

  @$pb.TagNumber(11)
  $1.Date get toDate => $_getN(10);
  @$pb.TagNumber(11)
  set toDate($1.Date value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasToDate() => $_has(10);
  @$pb.TagNumber(11)
  void clearToDate() => $_clearField(11);
  @$pb.TagNumber(11)
  $1.Date ensureToDate() => $_ensure(10);

  @$pb.TagNumber(12)
  $core.String get branch => $_getSZ(11);
  @$pb.TagNumber(12)
  set branch($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasBranch() => $_has(11);
  @$pb.TagNumber(12)
  void clearBranch() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get rep => $_getSZ(12);
  @$pb.TagNumber(13)
  set rep($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasRep() => $_has(12);
  @$pb.TagNumber(13)
  void clearRep() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get usrId => $_getIZ(13);
  @$pb.TagNumber(14)
  set usrId($core.int value) => $_setUnsignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasUsrId() => $_has(13);
  @$pb.TagNumber(14)
  void clearUsrId() => $_clearField(14);

  @$pb.TagNumber(15)
  $2.Pagination get pagination => $_getN(14);
  @$pb.TagNumber(15)
  set pagination($2.Pagination value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasPagination() => $_has(14);
  @$pb.TagNumber(15)
  void clearPagination() => $_clearField(15);
  @$pb.TagNumber(15)
  $2.Pagination ensurePagination() => $_ensure(14);

  @$pb.TagNumber(16)
  $core.String get dateType => $_getSZ(15);
  @$pb.TagNumber(16)
  set dateType($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasDateType() => $_has(15);
  @$pb.TagNumber(16)
  void clearDateType() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get assetType => $_getSZ(16);
  @$pb.TagNumber(17)
  set assetType($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasAssetType() => $_has(16);
  @$pb.TagNumber(17)
  void clearAssetType() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get rollUp => $_getSZ(17);
  @$pb.TagNumber(18)
  set rollUp($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasRollUp() => $_has(17);
  @$pb.TagNumber(18)
  void clearRollUp() => $_clearField(18);
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
    $core.String? cashBalance,
    $core.String? longMarketValue,
    $core.String? shortMarketValue,
    $core.String? equity,
    $core.String? adjustedBalance,
    $core.String? tdQty,
    $core.String? closingPrice,
    $core.String? tdMarketValue,
    $core.String? costBasis,
  }) {
    final result = create();
    if (totalRows != null) result.totalRows = totalRows;
    if (cashBalance != null) result.cashBalance = cashBalance;
    if (longMarketValue != null) result.longMarketValue = longMarketValue;
    if (shortMarketValue != null) result.shortMarketValue = shortMarketValue;
    if (equity != null) result.equity = equity;
    if (adjustedBalance != null) result.adjustedBalance = adjustedBalance;
    if (tdQty != null) result.tdQty = tdQty;
    if (closingPrice != null) result.closingPrice = closingPrice;
    if (tdMarketValue != null) result.tdMarketValue = tdMarketValue;
    if (costBasis != null) result.costBasis = costBasis;
    return result;
  }

  ListPositionSummary._();

  factory ListPositionSummary.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListPositionSummary.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListPositionSummary', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'totalRows', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'cashBalance')
    ..aOS(3, _omitFieldNames ? '' : 'longMarketValue')
    ..aOS(4, _omitFieldNames ? '' : 'shortMarketValue')
    ..aOS(5, _omitFieldNames ? '' : 'equity')
    ..aOS(6, _omitFieldNames ? '' : 'adjustedBalance')
    ..aOS(7, _omitFieldNames ? '' : 'tdQty')
    ..aOS(8, _omitFieldNames ? '' : 'closingPrice')
    ..aOS(9, _omitFieldNames ? '' : 'tdMarketValue')
    ..aOS(10, _omitFieldNames ? '' : 'costBasis')
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
  $core.String get cashBalance => $_getSZ(1);
  @$pb.TagNumber(2)
  set cashBalance($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCashBalance() => $_has(1);
  @$pb.TagNumber(2)
  void clearCashBalance() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get longMarketValue => $_getSZ(2);
  @$pb.TagNumber(3)
  set longMarketValue($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLongMarketValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearLongMarketValue() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get shortMarketValue => $_getSZ(3);
  @$pb.TagNumber(4)
  set shortMarketValue($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasShortMarketValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearShortMarketValue() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get equity => $_getSZ(4);
  @$pb.TagNumber(5)
  set equity($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasEquity() => $_has(4);
  @$pb.TagNumber(5)
  void clearEquity() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get adjustedBalance => $_getSZ(5);
  @$pb.TagNumber(6)
  set adjustedBalance($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAdjustedBalance() => $_has(5);
  @$pb.TagNumber(6)
  void clearAdjustedBalance() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get tdQty => $_getSZ(6);
  @$pb.TagNumber(7)
  set tdQty($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasTdQty() => $_has(6);
  @$pb.TagNumber(7)
  void clearTdQty() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get closingPrice => $_getSZ(7);
  @$pb.TagNumber(8)
  set closingPrice($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasClosingPrice() => $_has(7);
  @$pb.TagNumber(8)
  void clearClosingPrice() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get tdMarketValue => $_getSZ(8);
  @$pb.TagNumber(9)
  set tdMarketValue($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasTdMarketValue() => $_has(8);
  @$pb.TagNumber(9)
  void clearTdMarketValue() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get costBasis => $_getSZ(9);
  @$pb.TagNumber(10)
  set costBasis($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasCostBasis() => $_has(9);
  @$pb.TagNumber(10)
  void clearCostBasis() => $_clearField(10);
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
