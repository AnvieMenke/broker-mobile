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
    $core.int? accountId,
    $core.String? correspondent,
    $core.String? accountNo,
    $core.String? subAccountNo,
    $core.String? accountName,
    $core.String? masterAccountNo,
    $core.String? broker,
    $core.String? type,
    $core.String? dateType,
    $1.Date? date,
    $core.String? rep,
    $core.String? branch,
    $core.String? marginType,
    $core.String? accountStatus,
    $core.String? tdCashBalance,
    $core.String? tdShortMarketValue,
    $core.String? tdLongMarketValue,
    $core.String? tdEquity,
    $core.String? tdAdjustedBalance,
    $core.String? sdCashBalance,
    $core.String? sdShortMarketValue,
    $core.String? sdLongMarketValue,
    $core.String? sdEquity,
    $core.String? sdAdjustedBalance,
    $core.int? reportBalanceId,
    $core.String? digitalEnhancedMarketValue,
    $core.String? sdRegFee,
    $core.String? sdTafFee,
    $core.String? sdCommission,
    $core.String? sdFees,
    $core.String? sdHaircut,
    $core.String? sdMoneyMarket,
    $core.String? participantNo,
    $core.String? tdMoneyMarket,
    $core.String? tdDebitBalanceAge,
    $core.String? sdDebitBalanceAge,
    $core.String? withdrawableAmt,
    $core.String? marginReq,
    $core.String? tradableAmt,
    $core.String? buyingPower,
    $core.String? digitalAssetMarketValue,
    $core.String? equityMarketValue,
    $core.String? fixedIncomeMarketValue,
    $core.String? mutualFundMarketValue,
    $core.String? optionMarketValue,
  }) {
    final result = create();
    if (accountId != null) result.accountId = accountId;
    if (correspondent != null) result.correspondent = correspondent;
    if (accountNo != null) result.accountNo = accountNo;
    if (subAccountNo != null) result.subAccountNo = subAccountNo;
    if (accountName != null) result.accountName = accountName;
    if (masterAccountNo != null) result.masterAccountNo = masterAccountNo;
    if (broker != null) result.broker = broker;
    if (type != null) result.type = type;
    if (dateType != null) result.dateType = dateType;
    if (date != null) result.date = date;
    if (rep != null) result.rep = rep;
    if (branch != null) result.branch = branch;
    if (marginType != null) result.marginType = marginType;
    if (accountStatus != null) result.accountStatus = accountStatus;
    if (tdCashBalance != null) result.tdCashBalance = tdCashBalance;
    if (tdShortMarketValue != null) result.tdShortMarketValue = tdShortMarketValue;
    if (tdLongMarketValue != null) result.tdLongMarketValue = tdLongMarketValue;
    if (tdEquity != null) result.tdEquity = tdEquity;
    if (tdAdjustedBalance != null) result.tdAdjustedBalance = tdAdjustedBalance;
    if (sdCashBalance != null) result.sdCashBalance = sdCashBalance;
    if (sdShortMarketValue != null) result.sdShortMarketValue = sdShortMarketValue;
    if (sdLongMarketValue != null) result.sdLongMarketValue = sdLongMarketValue;
    if (sdEquity != null) result.sdEquity = sdEquity;
    if (sdAdjustedBalance != null) result.sdAdjustedBalance = sdAdjustedBalance;
    if (reportBalanceId != null) result.reportBalanceId = reportBalanceId;
    if (digitalEnhancedMarketValue != null) result.digitalEnhancedMarketValue = digitalEnhancedMarketValue;
    if (sdRegFee != null) result.sdRegFee = sdRegFee;
    if (sdTafFee != null) result.sdTafFee = sdTafFee;
    if (sdCommission != null) result.sdCommission = sdCommission;
    if (sdFees != null) result.sdFees = sdFees;
    if (sdHaircut != null) result.sdHaircut = sdHaircut;
    if (sdMoneyMarket != null) result.sdMoneyMarket = sdMoneyMarket;
    if (participantNo != null) result.participantNo = participantNo;
    if (tdMoneyMarket != null) result.tdMoneyMarket = tdMoneyMarket;
    if (tdDebitBalanceAge != null) result.tdDebitBalanceAge = tdDebitBalanceAge;
    if (sdDebitBalanceAge != null) result.sdDebitBalanceAge = sdDebitBalanceAge;
    if (withdrawableAmt != null) result.withdrawableAmt = withdrawableAmt;
    if (marginReq != null) result.marginReq = marginReq;
    if (tradableAmt != null) result.tradableAmt = tradableAmt;
    if (buyingPower != null) result.buyingPower = buyingPower;
    if (digitalAssetMarketValue != null) result.digitalAssetMarketValue = digitalAssetMarketValue;
    if (equityMarketValue != null) result.equityMarketValue = equityMarketValue;
    if (fixedIncomeMarketValue != null) result.fixedIncomeMarketValue = fixedIncomeMarketValue;
    if (mutualFundMarketValue != null) result.mutualFundMarketValue = mutualFundMarketValue;
    if (optionMarketValue != null) result.optionMarketValue = optionMarketValue;
    return result;
  }

  Balance._();

  factory Balance.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Balance.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Balance', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'accountId', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'correspondent')
    ..aOS(3, _omitFieldNames ? '' : 'accountNo')
    ..aOS(4, _omitFieldNames ? '' : 'subAccountNo')
    ..aOS(5, _omitFieldNames ? '' : 'accountName')
    ..aOS(6, _omitFieldNames ? '' : 'masterAccountNo')
    ..aOS(7, _omitFieldNames ? '' : 'broker')
    ..aOS(8, _omitFieldNames ? '' : 'type')
    ..aOS(9, _omitFieldNames ? '' : 'dateType')
    ..aOM<$1.Date>(11, _omitFieldNames ? '' : 'date', subBuilder: $1.Date.create)
    ..aOS(12, _omitFieldNames ? '' : 'rep')
    ..aOS(13, _omitFieldNames ? '' : 'branch')
    ..aOS(14, _omitFieldNames ? '' : 'marginType')
    ..aOS(20, _omitFieldNames ? '' : 'accountStatus')
    ..aOS(21, _omitFieldNames ? '' : 'tdCashBalance')
    ..aOS(22, _omitFieldNames ? '' : 'tdShortMarketValue')
    ..aOS(23, _omitFieldNames ? '' : 'tdLongMarketValue')
    ..aOS(24, _omitFieldNames ? '' : 'tdEquity')
    ..aOS(25, _omitFieldNames ? '' : 'tdAdjustedBalance')
    ..aOS(26, _omitFieldNames ? '' : 'sdCashBalance')
    ..aOS(27, _omitFieldNames ? '' : 'sdShortMarketValue')
    ..aOS(28, _omitFieldNames ? '' : 'sdLongMarketValue')
    ..aOS(29, _omitFieldNames ? '' : 'sdEquity')
    ..aOS(30, _omitFieldNames ? '' : 'sdAdjustedBalance')
    ..a<$core.int>(31, _omitFieldNames ? '' : 'reportBalanceId', $pb.PbFieldType.OU3)
    ..aOS(32, _omitFieldNames ? '' : 'digitalEnhancedMarketValue')
    ..aOS(33, _omitFieldNames ? '' : 'sdRegFee')
    ..aOS(34, _omitFieldNames ? '' : 'sdTafFee')
    ..aOS(35, _omitFieldNames ? '' : 'sdCommission')
    ..aOS(36, _omitFieldNames ? '' : 'sdFees')
    ..aOS(37, _omitFieldNames ? '' : 'sdHaircut')
    ..aOS(38, _omitFieldNames ? '' : 'sdMoneyMarket')
    ..aOS(39, _omitFieldNames ? '' : 'participantNo')
    ..aOS(40, _omitFieldNames ? '' : 'tdMoneyMarket')
    ..aOS(41, _omitFieldNames ? '' : 'tdDebitBalanceAge')
    ..aOS(42, _omitFieldNames ? '' : 'sdDebitBalanceAge')
    ..aOS(43, _omitFieldNames ? '' : 'withdrawableAmt')
    ..aOS(44, _omitFieldNames ? '' : 'marginReq')
    ..aOS(45, _omitFieldNames ? '' : 'tradableAmt')
    ..aOS(46, _omitFieldNames ? '' : 'buyingPower')
    ..aOS(47, _omitFieldNames ? '' : 'digitalAssetMarketValue')
    ..aOS(48, _omitFieldNames ? '' : 'equityMarketValue')
    ..aOS(49, _omitFieldNames ? '' : 'fixedIncomeMarketValue')
    ..aOS(50, _omitFieldNames ? '' : 'mutualFundMarketValue')
    ..aOS(51, _omitFieldNames ? '' : 'optionMarketValue')
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
  $core.String get accountNo => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountNo($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAccountNo() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountNo() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get subAccountNo => $_getSZ(3);
  @$pb.TagNumber(4)
  set subAccountNo($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSubAccountNo() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubAccountNo() => $_clearField(4);

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
  $core.String get broker => $_getSZ(6);
  @$pb.TagNumber(7)
  set broker($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasBroker() => $_has(6);
  @$pb.TagNumber(7)
  void clearBroker() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get type => $_getSZ(7);
  @$pb.TagNumber(8)
  set type($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasType() => $_has(7);
  @$pb.TagNumber(8)
  void clearType() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get dateType => $_getSZ(8);
  @$pb.TagNumber(9)
  set dateType($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasDateType() => $_has(8);
  @$pb.TagNumber(9)
  void clearDateType() => $_clearField(9);

  @$pb.TagNumber(11)
  $1.Date get date => $_getN(9);
  @$pb.TagNumber(11)
  set date($1.Date value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasDate() => $_has(9);
  @$pb.TagNumber(11)
  void clearDate() => $_clearField(11);
  @$pb.TagNumber(11)
  $1.Date ensureDate() => $_ensure(9);

  @$pb.TagNumber(12)
  $core.String get rep => $_getSZ(10);
  @$pb.TagNumber(12)
  set rep($core.String value) => $_setString(10, value);
  @$pb.TagNumber(12)
  $core.bool hasRep() => $_has(10);
  @$pb.TagNumber(12)
  void clearRep() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get branch => $_getSZ(11);
  @$pb.TagNumber(13)
  set branch($core.String value) => $_setString(11, value);
  @$pb.TagNumber(13)
  $core.bool hasBranch() => $_has(11);
  @$pb.TagNumber(13)
  void clearBranch() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get marginType => $_getSZ(12);
  @$pb.TagNumber(14)
  set marginType($core.String value) => $_setString(12, value);
  @$pb.TagNumber(14)
  $core.bool hasMarginType() => $_has(12);
  @$pb.TagNumber(14)
  void clearMarginType() => $_clearField(14);

  @$pb.TagNumber(20)
  $core.String get accountStatus => $_getSZ(13);
  @$pb.TagNumber(20)
  set accountStatus($core.String value) => $_setString(13, value);
  @$pb.TagNumber(20)
  $core.bool hasAccountStatus() => $_has(13);
  @$pb.TagNumber(20)
  void clearAccountStatus() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.String get tdCashBalance => $_getSZ(14);
  @$pb.TagNumber(21)
  set tdCashBalance($core.String value) => $_setString(14, value);
  @$pb.TagNumber(21)
  $core.bool hasTdCashBalance() => $_has(14);
  @$pb.TagNumber(21)
  void clearTdCashBalance() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.String get tdShortMarketValue => $_getSZ(15);
  @$pb.TagNumber(22)
  set tdShortMarketValue($core.String value) => $_setString(15, value);
  @$pb.TagNumber(22)
  $core.bool hasTdShortMarketValue() => $_has(15);
  @$pb.TagNumber(22)
  void clearTdShortMarketValue() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.String get tdLongMarketValue => $_getSZ(16);
  @$pb.TagNumber(23)
  set tdLongMarketValue($core.String value) => $_setString(16, value);
  @$pb.TagNumber(23)
  $core.bool hasTdLongMarketValue() => $_has(16);
  @$pb.TagNumber(23)
  void clearTdLongMarketValue() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.String get tdEquity => $_getSZ(17);
  @$pb.TagNumber(24)
  set tdEquity($core.String value) => $_setString(17, value);
  @$pb.TagNumber(24)
  $core.bool hasTdEquity() => $_has(17);
  @$pb.TagNumber(24)
  void clearTdEquity() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.String get tdAdjustedBalance => $_getSZ(18);
  @$pb.TagNumber(25)
  set tdAdjustedBalance($core.String value) => $_setString(18, value);
  @$pb.TagNumber(25)
  $core.bool hasTdAdjustedBalance() => $_has(18);
  @$pb.TagNumber(25)
  void clearTdAdjustedBalance() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.String get sdCashBalance => $_getSZ(19);
  @$pb.TagNumber(26)
  set sdCashBalance($core.String value) => $_setString(19, value);
  @$pb.TagNumber(26)
  $core.bool hasSdCashBalance() => $_has(19);
  @$pb.TagNumber(26)
  void clearSdCashBalance() => $_clearField(26);

  @$pb.TagNumber(27)
  $core.String get sdShortMarketValue => $_getSZ(20);
  @$pb.TagNumber(27)
  set sdShortMarketValue($core.String value) => $_setString(20, value);
  @$pb.TagNumber(27)
  $core.bool hasSdShortMarketValue() => $_has(20);
  @$pb.TagNumber(27)
  void clearSdShortMarketValue() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.String get sdLongMarketValue => $_getSZ(21);
  @$pb.TagNumber(28)
  set sdLongMarketValue($core.String value) => $_setString(21, value);
  @$pb.TagNumber(28)
  $core.bool hasSdLongMarketValue() => $_has(21);
  @$pb.TagNumber(28)
  void clearSdLongMarketValue() => $_clearField(28);

  @$pb.TagNumber(29)
  $core.String get sdEquity => $_getSZ(22);
  @$pb.TagNumber(29)
  set sdEquity($core.String value) => $_setString(22, value);
  @$pb.TagNumber(29)
  $core.bool hasSdEquity() => $_has(22);
  @$pb.TagNumber(29)
  void clearSdEquity() => $_clearField(29);

  @$pb.TagNumber(30)
  $core.String get sdAdjustedBalance => $_getSZ(23);
  @$pb.TagNumber(30)
  set sdAdjustedBalance($core.String value) => $_setString(23, value);
  @$pb.TagNumber(30)
  $core.bool hasSdAdjustedBalance() => $_has(23);
  @$pb.TagNumber(30)
  void clearSdAdjustedBalance() => $_clearField(30);

  @$pb.TagNumber(31)
  $core.int get reportBalanceId => $_getIZ(24);
  @$pb.TagNumber(31)
  set reportBalanceId($core.int value) => $_setUnsignedInt32(24, value);
  @$pb.TagNumber(31)
  $core.bool hasReportBalanceId() => $_has(24);
  @$pb.TagNumber(31)
  void clearReportBalanceId() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.String get digitalEnhancedMarketValue => $_getSZ(25);
  @$pb.TagNumber(32)
  set digitalEnhancedMarketValue($core.String value) => $_setString(25, value);
  @$pb.TagNumber(32)
  $core.bool hasDigitalEnhancedMarketValue() => $_has(25);
  @$pb.TagNumber(32)
  void clearDigitalEnhancedMarketValue() => $_clearField(32);

  @$pb.TagNumber(33)
  $core.String get sdRegFee => $_getSZ(26);
  @$pb.TagNumber(33)
  set sdRegFee($core.String value) => $_setString(26, value);
  @$pb.TagNumber(33)
  $core.bool hasSdRegFee() => $_has(26);
  @$pb.TagNumber(33)
  void clearSdRegFee() => $_clearField(33);

  @$pb.TagNumber(34)
  $core.String get sdTafFee => $_getSZ(27);
  @$pb.TagNumber(34)
  set sdTafFee($core.String value) => $_setString(27, value);
  @$pb.TagNumber(34)
  $core.bool hasSdTafFee() => $_has(27);
  @$pb.TagNumber(34)
  void clearSdTafFee() => $_clearField(34);

  @$pb.TagNumber(35)
  $core.String get sdCommission => $_getSZ(28);
  @$pb.TagNumber(35)
  set sdCommission($core.String value) => $_setString(28, value);
  @$pb.TagNumber(35)
  $core.bool hasSdCommission() => $_has(28);
  @$pb.TagNumber(35)
  void clearSdCommission() => $_clearField(35);

  @$pb.TagNumber(36)
  $core.String get sdFees => $_getSZ(29);
  @$pb.TagNumber(36)
  set sdFees($core.String value) => $_setString(29, value);
  @$pb.TagNumber(36)
  $core.bool hasSdFees() => $_has(29);
  @$pb.TagNumber(36)
  void clearSdFees() => $_clearField(36);

  @$pb.TagNumber(37)
  $core.String get sdHaircut => $_getSZ(30);
  @$pb.TagNumber(37)
  set sdHaircut($core.String value) => $_setString(30, value);
  @$pb.TagNumber(37)
  $core.bool hasSdHaircut() => $_has(30);
  @$pb.TagNumber(37)
  void clearSdHaircut() => $_clearField(37);

  @$pb.TagNumber(38)
  $core.String get sdMoneyMarket => $_getSZ(31);
  @$pb.TagNumber(38)
  set sdMoneyMarket($core.String value) => $_setString(31, value);
  @$pb.TagNumber(38)
  $core.bool hasSdMoneyMarket() => $_has(31);
  @$pb.TagNumber(38)
  void clearSdMoneyMarket() => $_clearField(38);

  @$pb.TagNumber(39)
  $core.String get participantNo => $_getSZ(32);
  @$pb.TagNumber(39)
  set participantNo($core.String value) => $_setString(32, value);
  @$pb.TagNumber(39)
  $core.bool hasParticipantNo() => $_has(32);
  @$pb.TagNumber(39)
  void clearParticipantNo() => $_clearField(39);

  @$pb.TagNumber(40)
  $core.String get tdMoneyMarket => $_getSZ(33);
  @$pb.TagNumber(40)
  set tdMoneyMarket($core.String value) => $_setString(33, value);
  @$pb.TagNumber(40)
  $core.bool hasTdMoneyMarket() => $_has(33);
  @$pb.TagNumber(40)
  void clearTdMoneyMarket() => $_clearField(40);

  @$pb.TagNumber(41)
  $core.String get tdDebitBalanceAge => $_getSZ(34);
  @$pb.TagNumber(41)
  set tdDebitBalanceAge($core.String value) => $_setString(34, value);
  @$pb.TagNumber(41)
  $core.bool hasTdDebitBalanceAge() => $_has(34);
  @$pb.TagNumber(41)
  void clearTdDebitBalanceAge() => $_clearField(41);

  @$pb.TagNumber(42)
  $core.String get sdDebitBalanceAge => $_getSZ(35);
  @$pb.TagNumber(42)
  set sdDebitBalanceAge($core.String value) => $_setString(35, value);
  @$pb.TagNumber(42)
  $core.bool hasSdDebitBalanceAge() => $_has(35);
  @$pb.TagNumber(42)
  void clearSdDebitBalanceAge() => $_clearField(42);

  @$pb.TagNumber(43)
  $core.String get withdrawableAmt => $_getSZ(36);
  @$pb.TagNumber(43)
  set withdrawableAmt($core.String value) => $_setString(36, value);
  @$pb.TagNumber(43)
  $core.bool hasWithdrawableAmt() => $_has(36);
  @$pb.TagNumber(43)
  void clearWithdrawableAmt() => $_clearField(43);

  @$pb.TagNumber(44)
  $core.String get marginReq => $_getSZ(37);
  @$pb.TagNumber(44)
  set marginReq($core.String value) => $_setString(37, value);
  @$pb.TagNumber(44)
  $core.bool hasMarginReq() => $_has(37);
  @$pb.TagNumber(44)
  void clearMarginReq() => $_clearField(44);

  @$pb.TagNumber(45)
  $core.String get tradableAmt => $_getSZ(38);
  @$pb.TagNumber(45)
  set tradableAmt($core.String value) => $_setString(38, value);
  @$pb.TagNumber(45)
  $core.bool hasTradableAmt() => $_has(38);
  @$pb.TagNumber(45)
  void clearTradableAmt() => $_clearField(45);

  @$pb.TagNumber(46)
  $core.String get buyingPower => $_getSZ(39);
  @$pb.TagNumber(46)
  set buyingPower($core.String value) => $_setString(39, value);
  @$pb.TagNumber(46)
  $core.bool hasBuyingPower() => $_has(39);
  @$pb.TagNumber(46)
  void clearBuyingPower() => $_clearField(46);

  @$pb.TagNumber(47)
  $core.String get digitalAssetMarketValue => $_getSZ(40);
  @$pb.TagNumber(47)
  set digitalAssetMarketValue($core.String value) => $_setString(40, value);
  @$pb.TagNumber(47)
  $core.bool hasDigitalAssetMarketValue() => $_has(40);
  @$pb.TagNumber(47)
  void clearDigitalAssetMarketValue() => $_clearField(47);

  @$pb.TagNumber(48)
  $core.String get equityMarketValue => $_getSZ(41);
  @$pb.TagNumber(48)
  set equityMarketValue($core.String value) => $_setString(41, value);
  @$pb.TagNumber(48)
  $core.bool hasEquityMarketValue() => $_has(41);
  @$pb.TagNumber(48)
  void clearEquityMarketValue() => $_clearField(48);

  @$pb.TagNumber(49)
  $core.String get fixedIncomeMarketValue => $_getSZ(42);
  @$pb.TagNumber(49)
  set fixedIncomeMarketValue($core.String value) => $_setString(42, value);
  @$pb.TagNumber(49)
  $core.bool hasFixedIncomeMarketValue() => $_has(42);
  @$pb.TagNumber(49)
  void clearFixedIncomeMarketValue() => $_clearField(49);

  @$pb.TagNumber(50)
  $core.String get mutualFundMarketValue => $_getSZ(43);
  @$pb.TagNumber(50)
  set mutualFundMarketValue($core.String value) => $_setString(43, value);
  @$pb.TagNumber(50)
  $core.bool hasMutualFundMarketValue() => $_has(43);
  @$pb.TagNumber(50)
  void clearMutualFundMarketValue() => $_clearField(50);

  @$pb.TagNumber(51)
  $core.String get optionMarketValue => $_getSZ(44);
  @$pb.TagNumber(51)
  set optionMarketValue($core.String value) => $_setString(44, value);
  @$pb.TagNumber(51)
  $core.bool hasOptionMarketValue() => $_has(44);
  @$pb.TagNumber(51)
  void clearOptionMarketValue() => $_clearField(51);
}

class ListBalanceRequest extends $pb.GeneratedMessage {
  factory ListBalanceRequest({
    $core.String? correspondent,
    $core.String? accountNo,
    $core.String? accountName,
    $core.String? masterAccountNo,
    $core.String? branch,
    $core.String? rep,
    $1.Date? fromDate,
    $1.Date? toDate,
    $core.int? usrId,
    $2.Pagination? pagination,
    $core.String? dateType,
    $core.String? rollUp,
  }) {
    final result = create();
    if (correspondent != null) result.correspondent = correspondent;
    if (accountNo != null) result.accountNo = accountNo;
    if (accountName != null) result.accountName = accountName;
    if (masterAccountNo != null) result.masterAccountNo = masterAccountNo;
    if (branch != null) result.branch = branch;
    if (rep != null) result.rep = rep;
    if (fromDate != null) result.fromDate = fromDate;
    if (toDate != null) result.toDate = toDate;
    if (usrId != null) result.usrId = usrId;
    if (pagination != null) result.pagination = pagination;
    if (dateType != null) result.dateType = dateType;
    if (rollUp != null) result.rollUp = rollUp;
    return result;
  }

  ListBalanceRequest._();

  factory ListBalanceRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListBalanceRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListBalanceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'correspondent')
    ..aOS(2, _omitFieldNames ? '' : 'accountNo')
    ..aOS(3, _omitFieldNames ? '' : 'accountName')
    ..aOS(4, _omitFieldNames ? '' : 'masterAccountNo')
    ..aOS(5, _omitFieldNames ? '' : 'branch')
    ..aOS(6, _omitFieldNames ? '' : 'rep')
    ..aOM<$1.Date>(7, _omitFieldNames ? '' : 'fromDate', subBuilder: $1.Date.create)
    ..aOM<$1.Date>(8, _omitFieldNames ? '' : 'toDate', subBuilder: $1.Date.create)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'usrId', $pb.PbFieldType.OU3)
    ..aOM<$2.Pagination>(10, _omitFieldNames ? '' : 'pagination', subBuilder: $2.Pagination.create)
    ..aOS(11, _omitFieldNames ? '' : 'dateType')
    ..aOS(12, _omitFieldNames ? '' : 'rollUp')
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
  $core.String get branch => $_getSZ(4);
  @$pb.TagNumber(5)
  set branch($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBranch() => $_has(4);
  @$pb.TagNumber(5)
  void clearBranch() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get rep => $_getSZ(5);
  @$pb.TagNumber(6)
  set rep($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRep() => $_has(5);
  @$pb.TagNumber(6)
  void clearRep() => $_clearField(6);

  @$pb.TagNumber(7)
  $1.Date get fromDate => $_getN(6);
  @$pb.TagNumber(7)
  set fromDate($1.Date value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasFromDate() => $_has(6);
  @$pb.TagNumber(7)
  void clearFromDate() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.Date ensureFromDate() => $_ensure(6);

  @$pb.TagNumber(8)
  $1.Date get toDate => $_getN(7);
  @$pb.TagNumber(8)
  set toDate($1.Date value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasToDate() => $_has(7);
  @$pb.TagNumber(8)
  void clearToDate() => $_clearField(8);
  @$pb.TagNumber(8)
  $1.Date ensureToDate() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.int get usrId => $_getIZ(8);
  @$pb.TagNumber(9)
  set usrId($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasUsrId() => $_has(8);
  @$pb.TagNumber(9)
  void clearUsrId() => $_clearField(9);

  @$pb.TagNumber(10)
  $2.Pagination get pagination => $_getN(9);
  @$pb.TagNumber(10)
  set pagination($2.Pagination value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasPagination() => $_has(9);
  @$pb.TagNumber(10)
  void clearPagination() => $_clearField(10);
  @$pb.TagNumber(10)
  $2.Pagination ensurePagination() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.String get dateType => $_getSZ(10);
  @$pb.TagNumber(11)
  set dateType($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasDateType() => $_has(10);
  @$pb.TagNumber(11)
  void clearDateType() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get rollUp => $_getSZ(11);
  @$pb.TagNumber(12)
  set rollUp($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasRollUp() => $_has(11);
  @$pb.TagNumber(12)
  void clearRollUp() => $_clearField(12);
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
    $core.String? sdShortMarketValue,
    $core.String? sdLongMarketValue,
    $core.String? sdEquity,
    $core.String? sdAdjustedBalance,
    $core.String? sdMoneyMarket,
    $core.String? moneyMarket,
    $core.String? tdCashBalance,
    $core.String? tdMoneyMarket,
    $core.String? tdShortMarketValue,
    $core.String? tdLongMarketValue,
    $core.String? tdEquity,
    $core.String? tdAdjustedBalance,
    $core.String? tdDebitBalanceAge,
    $core.String? sdDebitBalanceAge,
    $core.String? digitalAssetMarketValue,
    $core.String? cashMarketValue,
    $core.String? cashQty,
    $core.String? digitalEnhancedMarketValue,
  }) {
    final result = create();
    if (totalRows != null) result.totalRows = totalRows;
    if (sdCashBalance != null) result.sdCashBalance = sdCashBalance;
    if (sdShortMarketValue != null) result.sdShortMarketValue = sdShortMarketValue;
    if (sdLongMarketValue != null) result.sdLongMarketValue = sdLongMarketValue;
    if (sdEquity != null) result.sdEquity = sdEquity;
    if (sdAdjustedBalance != null) result.sdAdjustedBalance = sdAdjustedBalance;
    if (sdMoneyMarket != null) result.sdMoneyMarket = sdMoneyMarket;
    if (moneyMarket != null) result.moneyMarket = moneyMarket;
    if (tdCashBalance != null) result.tdCashBalance = tdCashBalance;
    if (tdMoneyMarket != null) result.tdMoneyMarket = tdMoneyMarket;
    if (tdShortMarketValue != null) result.tdShortMarketValue = tdShortMarketValue;
    if (tdLongMarketValue != null) result.tdLongMarketValue = tdLongMarketValue;
    if (tdEquity != null) result.tdEquity = tdEquity;
    if (tdAdjustedBalance != null) result.tdAdjustedBalance = tdAdjustedBalance;
    if (tdDebitBalanceAge != null) result.tdDebitBalanceAge = tdDebitBalanceAge;
    if (sdDebitBalanceAge != null) result.sdDebitBalanceAge = sdDebitBalanceAge;
    if (digitalAssetMarketValue != null) result.digitalAssetMarketValue = digitalAssetMarketValue;
    if (cashMarketValue != null) result.cashMarketValue = cashMarketValue;
    if (cashQty != null) result.cashQty = cashQty;
    if (digitalEnhancedMarketValue != null) result.digitalEnhancedMarketValue = digitalEnhancedMarketValue;
    return result;
  }

  ListBalanceSummary._();

  factory ListBalanceSummary.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListBalanceSummary.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListBalanceSummary', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'totalRows', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'sdCashBalance')
    ..aOS(3, _omitFieldNames ? '' : 'sdShortMarketValue')
    ..aOS(4, _omitFieldNames ? '' : 'sdLongMarketValue')
    ..aOS(5, _omitFieldNames ? '' : 'sdEquity')
    ..aOS(6, _omitFieldNames ? '' : 'sdAdjustedBalance')
    ..aOS(7, _omitFieldNames ? '' : 'sdMoneyMarket')
    ..aOS(8, _omitFieldNames ? '' : 'moneyMarket')
    ..aOS(9, _omitFieldNames ? '' : 'tdCashBalance')
    ..aOS(10, _omitFieldNames ? '' : 'tdMoneyMarket')
    ..aOS(11, _omitFieldNames ? '' : 'tdShortMarketValue')
    ..aOS(12, _omitFieldNames ? '' : 'tdLongMarketValue')
    ..aOS(13, _omitFieldNames ? '' : 'tdEquity')
    ..aOS(14, _omitFieldNames ? '' : 'tdAdjustedBalance')
    ..aOS(15, _omitFieldNames ? '' : 'tdDebitBalanceAge')
    ..aOS(16, _omitFieldNames ? '' : 'sdDebitBalanceAge')
    ..aOS(17, _omitFieldNames ? '' : 'digitalAssetMarketValue')
    ..aOS(18, _omitFieldNames ? '' : 'cashMarketValue')
    ..aOS(19, _omitFieldNames ? '' : 'cashQty')
    ..aOS(20, _omitFieldNames ? '' : 'digitalEnhancedMarketValue')
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
  $core.String get sdShortMarketValue => $_getSZ(2);
  @$pb.TagNumber(3)
  set sdShortMarketValue($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSdShortMarketValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearSdShortMarketValue() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get sdLongMarketValue => $_getSZ(3);
  @$pb.TagNumber(4)
  set sdLongMarketValue($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSdLongMarketValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearSdLongMarketValue() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get sdEquity => $_getSZ(4);
  @$pb.TagNumber(5)
  set sdEquity($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSdEquity() => $_has(4);
  @$pb.TagNumber(5)
  void clearSdEquity() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get sdAdjustedBalance => $_getSZ(5);
  @$pb.TagNumber(6)
  set sdAdjustedBalance($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasSdAdjustedBalance() => $_has(5);
  @$pb.TagNumber(6)
  void clearSdAdjustedBalance() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get sdMoneyMarket => $_getSZ(6);
  @$pb.TagNumber(7)
  set sdMoneyMarket($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSdMoneyMarket() => $_has(6);
  @$pb.TagNumber(7)
  void clearSdMoneyMarket() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get moneyMarket => $_getSZ(7);
  @$pb.TagNumber(8)
  set moneyMarket($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasMoneyMarket() => $_has(7);
  @$pb.TagNumber(8)
  void clearMoneyMarket() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get tdCashBalance => $_getSZ(8);
  @$pb.TagNumber(9)
  set tdCashBalance($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasTdCashBalance() => $_has(8);
  @$pb.TagNumber(9)
  void clearTdCashBalance() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get tdMoneyMarket => $_getSZ(9);
  @$pb.TagNumber(10)
  set tdMoneyMarket($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasTdMoneyMarket() => $_has(9);
  @$pb.TagNumber(10)
  void clearTdMoneyMarket() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get tdShortMarketValue => $_getSZ(10);
  @$pb.TagNumber(11)
  set tdShortMarketValue($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasTdShortMarketValue() => $_has(10);
  @$pb.TagNumber(11)
  void clearTdShortMarketValue() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get tdLongMarketValue => $_getSZ(11);
  @$pb.TagNumber(12)
  set tdLongMarketValue($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasTdLongMarketValue() => $_has(11);
  @$pb.TagNumber(12)
  void clearTdLongMarketValue() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get tdEquity => $_getSZ(12);
  @$pb.TagNumber(13)
  set tdEquity($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasTdEquity() => $_has(12);
  @$pb.TagNumber(13)
  void clearTdEquity() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get tdAdjustedBalance => $_getSZ(13);
  @$pb.TagNumber(14)
  set tdAdjustedBalance($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasTdAdjustedBalance() => $_has(13);
  @$pb.TagNumber(14)
  void clearTdAdjustedBalance() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get tdDebitBalanceAge => $_getSZ(14);
  @$pb.TagNumber(15)
  set tdDebitBalanceAge($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasTdDebitBalanceAge() => $_has(14);
  @$pb.TagNumber(15)
  void clearTdDebitBalanceAge() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get sdDebitBalanceAge => $_getSZ(15);
  @$pb.TagNumber(16)
  set sdDebitBalanceAge($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasSdDebitBalanceAge() => $_has(15);
  @$pb.TagNumber(16)
  void clearSdDebitBalanceAge() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get digitalAssetMarketValue => $_getSZ(16);
  @$pb.TagNumber(17)
  set digitalAssetMarketValue($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasDigitalAssetMarketValue() => $_has(16);
  @$pb.TagNumber(17)
  void clearDigitalAssetMarketValue() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get cashMarketValue => $_getSZ(17);
  @$pb.TagNumber(18)
  set cashMarketValue($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasCashMarketValue() => $_has(17);
  @$pb.TagNumber(18)
  void clearCashMarketValue() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.String get cashQty => $_getSZ(18);
  @$pb.TagNumber(19)
  set cashQty($core.String value) => $_setString(18, value);
  @$pb.TagNumber(19)
  $core.bool hasCashQty() => $_has(18);
  @$pb.TagNumber(19)
  void clearCashQty() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get digitalEnhancedMarketValue => $_getSZ(19);
  @$pb.TagNumber(20)
  set digitalEnhancedMarketValue($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasDigitalEnhancedMarketValue() => $_has(19);
  @$pb.TagNumber(20)
  void clearDigitalEnhancedMarketValue() => $_clearField(20);
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
