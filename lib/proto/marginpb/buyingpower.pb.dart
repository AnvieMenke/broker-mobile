//
//  Generated code. Do not modify.
//  source: proto/marginpb/buyingpower.proto
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

class BuyingPower extends $pb.GeneratedMessage {
  factory BuyingPower({
    $1.Date? tradeDate,
    $core.String? correspondent,
    $core.String? masterAccountNo,
    $core.String? accountName,
    $core.String? buyingPower,
    $core.String? buyingPowerUsed,
    $core.String? buyingPowerPercent,
    $core.int? accountId,
    $core.String? marginEquity,
    $core.String? exchangeReq,
    $core.String? multiplier,
    $core.String? percentDeduction,
    $core.String? openingBuyingPower,
    $core.String? deposit,
    $core.String? buyingPowerCall,
    $core.bool? oms,
    $core.bool? client,
    $core.int? trnsId,
    $core.String? houseReq,
    $core.String? marginType,
    $core.String? cashBalance,
    $core.String? sma,
    $core.String? houseExcess,
    $core.String? exchangeExcess,
    $core.String? note,
    $2.Pagination? pagination,
  }) {
    final result = create();
    if (tradeDate != null) result.tradeDate = tradeDate;
    if (correspondent != null) result.correspondent = correspondent;
    if (masterAccountNo != null) result.masterAccountNo = masterAccountNo;
    if (accountName != null) result.accountName = accountName;
    if (buyingPower != null) result.buyingPower = buyingPower;
    if (buyingPowerUsed != null) result.buyingPowerUsed = buyingPowerUsed;
    if (buyingPowerPercent != null) result.buyingPowerPercent = buyingPowerPercent;
    if (accountId != null) result.accountId = accountId;
    if (marginEquity != null) result.marginEquity = marginEquity;
    if (exchangeReq != null) result.exchangeReq = exchangeReq;
    if (multiplier != null) result.multiplier = multiplier;
    if (percentDeduction != null) result.percentDeduction = percentDeduction;
    if (openingBuyingPower != null) result.openingBuyingPower = openingBuyingPower;
    if (deposit != null) result.deposit = deposit;
    if (buyingPowerCall != null) result.buyingPowerCall = buyingPowerCall;
    if (oms != null) result.oms = oms;
    if (client != null) result.client = client;
    if (trnsId != null) result.trnsId = trnsId;
    if (houseReq != null) result.houseReq = houseReq;
    if (marginType != null) result.marginType = marginType;
    if (cashBalance != null) result.cashBalance = cashBalance;
    if (sma != null) result.sma = sma;
    if (houseExcess != null) result.houseExcess = houseExcess;
    if (exchangeExcess != null) result.exchangeExcess = exchangeExcess;
    if (note != null) result.note = note;
    if (pagination != null) result.pagination = pagination;
    return result;
  }

  BuyingPower._();

  factory BuyingPower.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory BuyingPower.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BuyingPower', package: const $pb.PackageName(_omitMessageNames ? '' : 'marginpb'), createEmptyInstance: create)
    ..aOM<$1.Date>(1, _omitFieldNames ? '' : 'tradeDate', subBuilder: $1.Date.create)
    ..aOS(2, _omitFieldNames ? '' : 'correspondent')
    ..aOS(3, _omitFieldNames ? '' : 'masterAccountNo')
    ..aOS(4, _omitFieldNames ? '' : 'accountName')
    ..aOS(5, _omitFieldNames ? '' : 'buyingPower')
    ..aOS(6, _omitFieldNames ? '' : 'buyingPowerUsed')
    ..aOS(7, _omitFieldNames ? '' : 'buyingPowerPercent')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'accountId', $pb.PbFieldType.OU3)
    ..aOS(9, _omitFieldNames ? '' : 'marginEquity')
    ..aOS(10, _omitFieldNames ? '' : 'exchangeReq')
    ..aOS(11, _omitFieldNames ? '' : 'multiplier')
    ..aOS(12, _omitFieldNames ? '' : 'percentDeduction')
    ..aOS(13, _omitFieldNames ? '' : 'openingBuyingPower')
    ..aOS(14, _omitFieldNames ? '' : 'deposit')
    ..aOS(15, _omitFieldNames ? '' : 'buyingPowerCall')
    ..aOB(16, _omitFieldNames ? '' : 'oms')
    ..aOB(17, _omitFieldNames ? '' : 'client')
    ..a<$core.int>(18, _omitFieldNames ? '' : 'trnsId', $pb.PbFieldType.OU3)
    ..aOS(19, _omitFieldNames ? '' : 'houseReq')
    ..aOS(20, _omitFieldNames ? '' : 'marginType')
    ..aOS(21, _omitFieldNames ? '' : 'cashBalance')
    ..aOS(22, _omitFieldNames ? '' : 'sma')
    ..aOS(23, _omitFieldNames ? '' : 'houseExcess')
    ..aOS(24, _omitFieldNames ? '' : 'exchangeExcess')
    ..aOS(25, _omitFieldNames ? '' : 'note')
    ..aOM<$2.Pagination>(26, _omitFieldNames ? '' : 'pagination', subBuilder: $2.Pagination.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BuyingPower clone() => BuyingPower()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BuyingPower copyWith(void Function(BuyingPower) updates) => super.copyWith((message) => updates(message as BuyingPower)) as BuyingPower;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BuyingPower create() => BuyingPower._();
  @$core.override
  BuyingPower createEmptyInstance() => create();
  static $pb.PbList<BuyingPower> createRepeated() => $pb.PbList<BuyingPower>();
  @$core.pragma('dart2js:noInline')
  static BuyingPower getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BuyingPower>(create);
  static BuyingPower? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Date get tradeDate => $_getN(0);
  @$pb.TagNumber(1)
  set tradeDate($1.Date value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTradeDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearTradeDate() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Date ensureTradeDate() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get correspondent => $_getSZ(1);
  @$pb.TagNumber(2)
  set correspondent($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCorrespondent() => $_has(1);
  @$pb.TagNumber(2)
  void clearCorrespondent() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get masterAccountNo => $_getSZ(2);
  @$pb.TagNumber(3)
  set masterAccountNo($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMasterAccountNo() => $_has(2);
  @$pb.TagNumber(3)
  void clearMasterAccountNo() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get accountName => $_getSZ(3);
  @$pb.TagNumber(4)
  set accountName($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAccountName() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccountName() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get buyingPower => $_getSZ(4);
  @$pb.TagNumber(5)
  set buyingPower($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBuyingPower() => $_has(4);
  @$pb.TagNumber(5)
  void clearBuyingPower() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get buyingPowerUsed => $_getSZ(5);
  @$pb.TagNumber(6)
  set buyingPowerUsed($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasBuyingPowerUsed() => $_has(5);
  @$pb.TagNumber(6)
  void clearBuyingPowerUsed() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get buyingPowerPercent => $_getSZ(6);
  @$pb.TagNumber(7)
  set buyingPowerPercent($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasBuyingPowerPercent() => $_has(6);
  @$pb.TagNumber(7)
  void clearBuyingPowerPercent() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get accountId => $_getIZ(7);
  @$pb.TagNumber(8)
  set accountId($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasAccountId() => $_has(7);
  @$pb.TagNumber(8)
  void clearAccountId() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get marginEquity => $_getSZ(8);
  @$pb.TagNumber(9)
  set marginEquity($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasMarginEquity() => $_has(8);
  @$pb.TagNumber(9)
  void clearMarginEquity() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get exchangeReq => $_getSZ(9);
  @$pb.TagNumber(10)
  set exchangeReq($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasExchangeReq() => $_has(9);
  @$pb.TagNumber(10)
  void clearExchangeReq() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get multiplier => $_getSZ(10);
  @$pb.TagNumber(11)
  set multiplier($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasMultiplier() => $_has(10);
  @$pb.TagNumber(11)
  void clearMultiplier() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get percentDeduction => $_getSZ(11);
  @$pb.TagNumber(12)
  set percentDeduction($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasPercentDeduction() => $_has(11);
  @$pb.TagNumber(12)
  void clearPercentDeduction() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get openingBuyingPower => $_getSZ(12);
  @$pb.TagNumber(13)
  set openingBuyingPower($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasOpeningBuyingPower() => $_has(12);
  @$pb.TagNumber(13)
  void clearOpeningBuyingPower() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get deposit => $_getSZ(13);
  @$pb.TagNumber(14)
  set deposit($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasDeposit() => $_has(13);
  @$pb.TagNumber(14)
  void clearDeposit() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get buyingPowerCall => $_getSZ(14);
  @$pb.TagNumber(15)
  set buyingPowerCall($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasBuyingPowerCall() => $_has(14);
  @$pb.TagNumber(15)
  void clearBuyingPowerCall() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.bool get oms => $_getBF(15);
  @$pb.TagNumber(16)
  set oms($core.bool value) => $_setBool(15, value);
  @$pb.TagNumber(16)
  $core.bool hasOms() => $_has(15);
  @$pb.TagNumber(16)
  void clearOms() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.bool get client => $_getBF(16);
  @$pb.TagNumber(17)
  set client($core.bool value) => $_setBool(16, value);
  @$pb.TagNumber(17)
  $core.bool hasClient() => $_has(16);
  @$pb.TagNumber(17)
  void clearClient() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.int get trnsId => $_getIZ(17);
  @$pb.TagNumber(18)
  set trnsId($core.int value) => $_setUnsignedInt32(17, value);
  @$pb.TagNumber(18)
  $core.bool hasTrnsId() => $_has(17);
  @$pb.TagNumber(18)
  void clearTrnsId() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.String get houseReq => $_getSZ(18);
  @$pb.TagNumber(19)
  set houseReq($core.String value) => $_setString(18, value);
  @$pb.TagNumber(19)
  $core.bool hasHouseReq() => $_has(18);
  @$pb.TagNumber(19)
  void clearHouseReq() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get marginType => $_getSZ(19);
  @$pb.TagNumber(20)
  set marginType($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasMarginType() => $_has(19);
  @$pb.TagNumber(20)
  void clearMarginType() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.String get cashBalance => $_getSZ(20);
  @$pb.TagNumber(21)
  set cashBalance($core.String value) => $_setString(20, value);
  @$pb.TagNumber(21)
  $core.bool hasCashBalance() => $_has(20);
  @$pb.TagNumber(21)
  void clearCashBalance() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.String get sma => $_getSZ(21);
  @$pb.TagNumber(22)
  set sma($core.String value) => $_setString(21, value);
  @$pb.TagNumber(22)
  $core.bool hasSma() => $_has(21);
  @$pb.TagNumber(22)
  void clearSma() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.String get houseExcess => $_getSZ(22);
  @$pb.TagNumber(23)
  set houseExcess($core.String value) => $_setString(22, value);
  @$pb.TagNumber(23)
  $core.bool hasHouseExcess() => $_has(22);
  @$pb.TagNumber(23)
  void clearHouseExcess() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.String get exchangeExcess => $_getSZ(23);
  @$pb.TagNumber(24)
  set exchangeExcess($core.String value) => $_setString(23, value);
  @$pb.TagNumber(24)
  $core.bool hasExchangeExcess() => $_has(23);
  @$pb.TagNumber(24)
  void clearExchangeExcess() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.String get note => $_getSZ(24);
  @$pb.TagNumber(25)
  set note($core.String value) => $_setString(24, value);
  @$pb.TagNumber(25)
  $core.bool hasNote() => $_has(24);
  @$pb.TagNumber(25)
  void clearNote() => $_clearField(25);

  @$pb.TagNumber(26)
  $2.Pagination get pagination => $_getN(25);
  @$pb.TagNumber(26)
  set pagination($2.Pagination value) => $_setField(26, value);
  @$pb.TagNumber(26)
  $core.bool hasPagination() => $_has(25);
  @$pb.TagNumber(26)
  void clearPagination() => $_clearField(26);
  @$pb.TagNumber(26)
  $2.Pagination ensurePagination() => $_ensure(25);
}

class ListBuyingPowerRequest extends $pb.GeneratedMessage {
  factory ListBuyingPowerRequest({
    $1.Date? fromDate,
    $1.Date? toDate,
    $core.String? correspondent,
    $core.String? masterAccountNo,
    $core.String? accountName,
    $core.String? marginType,
    $core.bool? hideZero,
    $2.Pagination? pagination,
  }) {
    final result = create();
    if (fromDate != null) result.fromDate = fromDate;
    if (toDate != null) result.toDate = toDate;
    if (correspondent != null) result.correspondent = correspondent;
    if (masterAccountNo != null) result.masterAccountNo = masterAccountNo;
    if (accountName != null) result.accountName = accountName;
    if (marginType != null) result.marginType = marginType;
    if (hideZero != null) result.hideZero = hideZero;
    if (pagination != null) result.pagination = pagination;
    return result;
  }

  ListBuyingPowerRequest._();

  factory ListBuyingPowerRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListBuyingPowerRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListBuyingPowerRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'marginpb'), createEmptyInstance: create)
    ..aOM<$1.Date>(1, _omitFieldNames ? '' : 'fromDate', subBuilder: $1.Date.create)
    ..aOM<$1.Date>(2, _omitFieldNames ? '' : 'toDate', subBuilder: $1.Date.create)
    ..aOS(3, _omitFieldNames ? '' : 'correspondent')
    ..aOS(4, _omitFieldNames ? '' : 'masterAccountNo')
    ..aOS(5, _omitFieldNames ? '' : 'accountName')
    ..aOS(6, _omitFieldNames ? '' : 'marginType')
    ..aOB(7, _omitFieldNames ? '' : 'hideZero')
    ..aOM<$2.Pagination>(8, _omitFieldNames ? '' : 'pagination', subBuilder: $2.Pagination.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListBuyingPowerRequest clone() => ListBuyingPowerRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListBuyingPowerRequest copyWith(void Function(ListBuyingPowerRequest) updates) => super.copyWith((message) => updates(message as ListBuyingPowerRequest)) as ListBuyingPowerRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListBuyingPowerRequest create() => ListBuyingPowerRequest._();
  @$core.override
  ListBuyingPowerRequest createEmptyInstance() => create();
  static $pb.PbList<ListBuyingPowerRequest> createRepeated() => $pb.PbList<ListBuyingPowerRequest>();
  @$core.pragma('dart2js:noInline')
  static ListBuyingPowerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListBuyingPowerRequest>(create);
  static ListBuyingPowerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Date get fromDate => $_getN(0);
  @$pb.TagNumber(1)
  set fromDate($1.Date value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFromDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromDate() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Date ensureFromDate() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Date get toDate => $_getN(1);
  @$pb.TagNumber(2)
  set toDate($1.Date value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasToDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearToDate() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Date ensureToDate() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.String get correspondent => $_getSZ(2);
  @$pb.TagNumber(3)
  set correspondent($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCorrespondent() => $_has(2);
  @$pb.TagNumber(3)
  void clearCorrespondent() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get masterAccountNo => $_getSZ(3);
  @$pb.TagNumber(4)
  set masterAccountNo($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasMasterAccountNo() => $_has(3);
  @$pb.TagNumber(4)
  void clearMasterAccountNo() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get accountName => $_getSZ(4);
  @$pb.TagNumber(5)
  set accountName($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAccountName() => $_has(4);
  @$pb.TagNumber(5)
  void clearAccountName() => $_clearField(5);

  /// Margin Type
  ///
  /// VALUES:
  ///
  /// * House
  /// * Margin
  /// * Cash
  /// * Non Leveraged Margin
  @$pb.TagNumber(6)
  $core.String get marginType => $_getSZ(5);
  @$pb.TagNumber(6)
  set marginType($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMarginType() => $_has(5);
  @$pb.TagNumber(6)
  void clearMarginType() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.bool get hideZero => $_getBF(6);
  @$pb.TagNumber(7)
  set hideZero($core.bool value) => $_setBool(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHideZero() => $_has(6);
  @$pb.TagNumber(7)
  void clearHideZero() => $_clearField(7);

  @$pb.TagNumber(8)
  $2.Pagination get pagination => $_getN(7);
  @$pb.TagNumber(8)
  set pagination($2.Pagination value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasPagination() => $_has(7);
  @$pb.TagNumber(8)
  void clearPagination() => $_clearField(8);
  @$pb.TagNumber(8)
  $2.Pagination ensurePagination() => $_ensure(7);
}

class ListBuyingPowerSummary extends $pb.GeneratedMessage {
  factory ListBuyingPowerSummary({
    $core.int? totalRows,
  }) {
    final result = create();
    if (totalRows != null) result.totalRows = totalRows;
    return result;
  }

  ListBuyingPowerSummary._();

  factory ListBuyingPowerSummary.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListBuyingPowerSummary.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListBuyingPowerSummary', package: const $pb.PackageName(_omitMessageNames ? '' : 'marginpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'totalRows', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListBuyingPowerSummary clone() => ListBuyingPowerSummary()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListBuyingPowerSummary copyWith(void Function(ListBuyingPowerSummary) updates) => super.copyWith((message) => updates(message as ListBuyingPowerSummary)) as ListBuyingPowerSummary;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListBuyingPowerSummary create() => ListBuyingPowerSummary._();
  @$core.override
  ListBuyingPowerSummary createEmptyInstance() => create();
  static $pb.PbList<ListBuyingPowerSummary> createRepeated() => $pb.PbList<ListBuyingPowerSummary>();
  @$core.pragma('dart2js:noInline')
  static ListBuyingPowerSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListBuyingPowerSummary>(create);
  static ListBuyingPowerSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get totalRows => $_getIZ(0);
  @$pb.TagNumber(1)
  set totalRows($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTotalRows() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalRows() => $_clearField(1);
}

class ListBuyingPowerResponse extends $pb.GeneratedMessage {
  factory ListBuyingPowerResponse({
    $core.Iterable<BuyingPower>? buyingPowers,
    ListBuyingPowerSummary? summary,
  }) {
    final result = create();
    if (buyingPowers != null) result.buyingPowers.addAll(buyingPowers);
    if (summary != null) result.summary = summary;
    return result;
  }

  ListBuyingPowerResponse._();

  factory ListBuyingPowerResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListBuyingPowerResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListBuyingPowerResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'marginpb'), createEmptyInstance: create)
    ..pc<BuyingPower>(1, _omitFieldNames ? '' : 'buyingPowers', $pb.PbFieldType.PM, subBuilder: BuyingPower.create)
    ..aOM<ListBuyingPowerSummary>(2, _omitFieldNames ? '' : 'summary', subBuilder: ListBuyingPowerSummary.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListBuyingPowerResponse clone() => ListBuyingPowerResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListBuyingPowerResponse copyWith(void Function(ListBuyingPowerResponse) updates) => super.copyWith((message) => updates(message as ListBuyingPowerResponse)) as ListBuyingPowerResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListBuyingPowerResponse create() => ListBuyingPowerResponse._();
  @$core.override
  ListBuyingPowerResponse createEmptyInstance() => create();
  static $pb.PbList<ListBuyingPowerResponse> createRepeated() => $pb.PbList<ListBuyingPowerResponse>();
  @$core.pragma('dart2js:noInline')
  static ListBuyingPowerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListBuyingPowerResponse>(create);
  static ListBuyingPowerResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<BuyingPower> get buyingPowers => $_getList(0);

  @$pb.TagNumber(2)
  ListBuyingPowerSummary get summary => $_getN(1);
  @$pb.TagNumber(2)
  set summary(ListBuyingPowerSummary value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSummary() => $_has(1);
  @$pb.TagNumber(2)
  void clearSummary() => $_clearField(2);
  @$pb.TagNumber(2)
  ListBuyingPowerSummary ensureSummary() => $_ensure(1);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
