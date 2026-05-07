//
//  Generated code. Do not modify.
//  source: proto/reportpb/activity.proto
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
import '../../google/type/date.pb.dart' as $1;
import '../utilspb/pagination.pb.dart' as $3;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Activity extends $pb.GeneratedMessage {
  factory Activity({
    $core.String? correspondent,
    $core.String? accountNo,
    $core.String? accountName,
    $core.String? masterAccountNo,
    $1.Date? effSettleDate,
    $core.String? broker,
    $core.String? type,
    $core.String? capacity,
    $1.Date? effTradeDate,
    $core.String? symbol,
    $core.String? symbolDescription,
    $core.String? cusip,
    $core.String? assetType,
    $2.Timestamp? createdAt,
    $1.Date? systemDate,
    $1.Date? tradeDate,
    $2.Timestamp? tradeAt,
    $1.Date? settleDate,
    $core.String? entryType,
    $core.String? side,
    $core.String? qty,
    $core.String? price,
    $core.String? grossAmt,
    $core.String? regFee,
    $core.String? tafFee,
    $core.String? fees,
    $core.String? netAmt,
    $core.String? description,
    $core.String? batchNo,
    $core.String? status,
    $core.String? createdBy,
    $core.int? trnsId,
    $core.int? accountId,
    $core.String? executingVenue,
    $core.String? externalId,
    $core.String? orderId,
    $core.String? vendor,
    $core.String? contraAccountNo,
    $core.String? commission,
    $core.String? contraCorrespondent,
    $core.int? contraAccountId,
    $core.String? originalCusip,
    $core.String? entryTypeDescription,
    $core.String? rep,
    $core.String? branch,
    $core.String? compressType,
    $core.int? compressCount,
    $core.int? compressId,
    $core.String? traderId,
    $core.String? referenceId,
    $core.String? otherFees,
    $core.String? otherFees2,
    $core.String? taxWithholding,
    $core.Iterable<$core.String>? otherFeeValues,
    $core.String? marginType,
    $core.String? registeredAdvisorCapacity,
    $core.String? specialRemarks,
    $core.String? miscFee,
    $core.String? principal,
    $1.Date? asOfDate,
    $core.int? subAccountType,
    $core.String? subAccountNo,
    $core.String? otherFeesList,
    $core.int? dvpConfirmNo,
    $core.String? contraSubAccountNo,
    $core.int? reportActivityId,
    $core.String? currency,
    $core.bool? isSolicited,
    $core.bool? isSyndicate,
  }) {
    final result = create();
    if (correspondent != null) result.correspondent = correspondent;
    if (accountNo != null) result.accountNo = accountNo;
    if (accountName != null) result.accountName = accountName;
    if (masterAccountNo != null) result.masterAccountNo = masterAccountNo;
    if (effSettleDate != null) result.effSettleDate = effSettleDate;
    if (broker != null) result.broker = broker;
    if (type != null) result.type = type;
    if (capacity != null) result.capacity = capacity;
    if (effTradeDate != null) result.effTradeDate = effTradeDate;
    if (symbol != null) result.symbol = symbol;
    if (symbolDescription != null) result.symbolDescription = symbolDescription;
    if (cusip != null) result.cusip = cusip;
    if (assetType != null) result.assetType = assetType;
    if (createdAt != null) result.createdAt = createdAt;
    if (systemDate != null) result.systemDate = systemDate;
    if (tradeDate != null) result.tradeDate = tradeDate;
    if (tradeAt != null) result.tradeAt = tradeAt;
    if (settleDate != null) result.settleDate = settleDate;
    if (entryType != null) result.entryType = entryType;
    if (side != null) result.side = side;
    if (qty != null) result.qty = qty;
    if (price != null) result.price = price;
    if (grossAmt != null) result.grossAmt = grossAmt;
    if (regFee != null) result.regFee = regFee;
    if (tafFee != null) result.tafFee = tafFee;
    if (fees != null) result.fees = fees;
    if (netAmt != null) result.netAmt = netAmt;
    if (description != null) result.description = description;
    if (batchNo != null) result.batchNo = batchNo;
    if (status != null) result.status = status;
    if (createdBy != null) result.createdBy = createdBy;
    if (trnsId != null) result.trnsId = trnsId;
    if (accountId != null) result.accountId = accountId;
    if (executingVenue != null) result.executingVenue = executingVenue;
    if (externalId != null) result.externalId = externalId;
    if (orderId != null) result.orderId = orderId;
    if (vendor != null) result.vendor = vendor;
    if (contraAccountNo != null) result.contraAccountNo = contraAccountNo;
    if (commission != null) result.commission = commission;
    if (contraCorrespondent != null) result.contraCorrespondent = contraCorrespondent;
    if (contraAccountId != null) result.contraAccountId = contraAccountId;
    if (originalCusip != null) result.originalCusip = originalCusip;
    if (entryTypeDescription != null) result.entryTypeDescription = entryTypeDescription;
    if (rep != null) result.rep = rep;
    if (branch != null) result.branch = branch;
    if (compressType != null) result.compressType = compressType;
    if (compressCount != null) result.compressCount = compressCount;
    if (compressId != null) result.compressId = compressId;
    if (traderId != null) result.traderId = traderId;
    if (referenceId != null) result.referenceId = referenceId;
    if (otherFees != null) result.otherFees = otherFees;
    if (otherFees2 != null) result.otherFees2 = otherFees2;
    if (taxWithholding != null) result.taxWithholding = taxWithholding;
    if (otherFeeValues != null) result.otherFeeValues.addAll(otherFeeValues);
    if (marginType != null) result.marginType = marginType;
    if (registeredAdvisorCapacity != null) result.registeredAdvisorCapacity = registeredAdvisorCapacity;
    if (specialRemarks != null) result.specialRemarks = specialRemarks;
    if (miscFee != null) result.miscFee = miscFee;
    if (principal != null) result.principal = principal;
    if (asOfDate != null) result.asOfDate = asOfDate;
    if (subAccountType != null) result.subAccountType = subAccountType;
    if (subAccountNo != null) result.subAccountNo = subAccountNo;
    if (otherFeesList != null) result.otherFeesList = otherFeesList;
    if (dvpConfirmNo != null) result.dvpConfirmNo = dvpConfirmNo;
    if (contraSubAccountNo != null) result.contraSubAccountNo = contraSubAccountNo;
    if (reportActivityId != null) result.reportActivityId = reportActivityId;
    if (currency != null) result.currency = currency;
    if (isSolicited != null) result.isSolicited = isSolicited;
    if (isSyndicate != null) result.isSyndicate = isSyndicate;
    return result;
  }

  Activity._();

  factory Activity.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Activity.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Activity', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'correspondent')
    ..aOS(2, _omitFieldNames ? '' : 'accountNo')
    ..aOS(3, _omitFieldNames ? '' : 'accountName')
    ..aOS(4, _omitFieldNames ? '' : 'masterAccountNo')
    ..aOM<$1.Date>(5, _omitFieldNames ? '' : 'effSettleDate', subBuilder: $1.Date.create)
    ..aOS(6, _omitFieldNames ? '' : 'broker')
    ..aOS(7, _omitFieldNames ? '' : 'type')
    ..aOS(8, _omitFieldNames ? '' : 'capacity')
    ..aOM<$1.Date>(9, _omitFieldNames ? '' : 'effTradeDate', subBuilder: $1.Date.create)
    ..aOS(10, _omitFieldNames ? '' : 'symbol')
    ..aOS(11, _omitFieldNames ? '' : 'symbolDescription')
    ..aOS(12, _omitFieldNames ? '' : 'cusip')
    ..aOS(13, _omitFieldNames ? '' : 'assetType')
    ..aOM<$2.Timestamp>(14, _omitFieldNames ? '' : 'createdAt', subBuilder: $2.Timestamp.create)
    ..aOM<$1.Date>(15, _omitFieldNames ? '' : 'systemDate', subBuilder: $1.Date.create)
    ..aOM<$1.Date>(16, _omitFieldNames ? '' : 'tradeDate', subBuilder: $1.Date.create)
    ..aOM<$2.Timestamp>(17, _omitFieldNames ? '' : 'tradeAt', subBuilder: $2.Timestamp.create)
    ..aOM<$1.Date>(18, _omitFieldNames ? '' : 'settleDate', subBuilder: $1.Date.create)
    ..aOS(19, _omitFieldNames ? '' : 'entryType')
    ..aOS(20, _omitFieldNames ? '' : 'side')
    ..aOS(21, _omitFieldNames ? '' : 'qty')
    ..aOS(22, _omitFieldNames ? '' : 'price')
    ..aOS(23, _omitFieldNames ? '' : 'grossAmt')
    ..aOS(24, _omitFieldNames ? '' : 'regFee')
    ..aOS(25, _omitFieldNames ? '' : 'tafFee')
    ..aOS(26, _omitFieldNames ? '' : 'fees')
    ..aOS(27, _omitFieldNames ? '' : 'netAmt')
    ..aOS(28, _omitFieldNames ? '' : 'description')
    ..aOS(29, _omitFieldNames ? '' : 'batchNo')
    ..aOS(31, _omitFieldNames ? '' : 'status')
    ..aOS(32, _omitFieldNames ? '' : 'createdBy')
    ..a<$core.int>(33, _omitFieldNames ? '' : 'trnsId', $pb.PbFieldType.OU3)
    ..a<$core.int>(34, _omitFieldNames ? '' : 'accountId', $pb.PbFieldType.OU3)
    ..aOS(36, _omitFieldNames ? '' : 'executingVenue')
    ..aOS(37, _omitFieldNames ? '' : 'externalId')
    ..aOS(39, _omitFieldNames ? '' : 'orderId')
    ..aOS(40, _omitFieldNames ? '' : 'vendor')
    ..aOS(41, _omitFieldNames ? '' : 'contraAccountNo')
    ..aOS(43, _omitFieldNames ? '' : 'commission')
    ..aOS(44, _omitFieldNames ? '' : 'contraCorrespondent')
    ..a<$core.int>(45, _omitFieldNames ? '' : 'contraAccountId', $pb.PbFieldType.OU3)
    ..aOS(46, _omitFieldNames ? '' : 'originalCusip')
    ..aOS(47, _omitFieldNames ? '' : 'entryTypeDescription')
    ..aOS(48, _omitFieldNames ? '' : 'rep')
    ..aOS(49, _omitFieldNames ? '' : 'branch')
    ..aOS(50, _omitFieldNames ? '' : 'compressType')
    ..a<$core.int>(51, _omitFieldNames ? '' : 'compressCount', $pb.PbFieldType.OU3)
    ..a<$core.int>(52, _omitFieldNames ? '' : 'compressId', $pb.PbFieldType.OU3)
    ..aOS(53, _omitFieldNames ? '' : 'traderId')
    ..aOS(54, _omitFieldNames ? '' : 'referenceId')
    ..aOS(55, _omitFieldNames ? '' : 'otherFees')
    ..aOS(56, _omitFieldNames ? '' : 'otherFees2', protoName: 'other_fees_2')
    ..aOS(57, _omitFieldNames ? '' : 'taxWithholding')
    ..pPS(58, _omitFieldNames ? '' : 'otherFeeValues')
    ..aOS(59, _omitFieldNames ? '' : 'marginType')
    ..aOS(60, _omitFieldNames ? '' : 'registeredAdvisorCapacity')
    ..aOS(61, _omitFieldNames ? '' : 'specialRemarks')
    ..aOS(62, _omitFieldNames ? '' : 'miscFee')
    ..aOS(63, _omitFieldNames ? '' : 'principal')
    ..aOM<$1.Date>(64, _omitFieldNames ? '' : 'asOfDate', subBuilder: $1.Date.create)
    ..a<$core.int>(65, _omitFieldNames ? '' : 'subAccountType', $pb.PbFieldType.OU3)
    ..aOS(66, _omitFieldNames ? '' : 'subAccountNo')
    ..aOS(67, _omitFieldNames ? '' : 'otherFeesList')
    ..a<$core.int>(68, _omitFieldNames ? '' : 'dvpConfirmNo', $pb.PbFieldType.OU3)
    ..aOS(69, _omitFieldNames ? '' : 'contraSubAccountNo')
    ..a<$core.int>(70, _omitFieldNames ? '' : 'reportActivityId', $pb.PbFieldType.OU3)
    ..aOS(71, _omitFieldNames ? '' : 'currency')
    ..aOB(72, _omitFieldNames ? '' : 'isSolicited')
    ..aOB(73, _omitFieldNames ? '' : 'isSyndicate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Activity clone() => Activity()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Activity copyWith(void Function(Activity) updates) => super.copyWith((message) => updates(message as Activity)) as Activity;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Activity create() => Activity._();
  @$core.override
  Activity createEmptyInstance() => create();
  static $pb.PbList<Activity> createRepeated() => $pb.PbList<Activity>();
  @$core.pragma('dart2js:noInline')
  static Activity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Activity>(create);
  static Activity? _defaultInstance;

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
  $1.Date get effSettleDate => $_getN(4);
  @$pb.TagNumber(5)
  set effSettleDate($1.Date value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasEffSettleDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearEffSettleDate() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.Date ensureEffSettleDate() => $_ensure(4);

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
  $core.String get capacity => $_getSZ(7);
  @$pb.TagNumber(8)
  set capacity($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCapacity() => $_has(7);
  @$pb.TagNumber(8)
  void clearCapacity() => $_clearField(8);

  @$pb.TagNumber(9)
  $1.Date get effTradeDate => $_getN(8);
  @$pb.TagNumber(9)
  set effTradeDate($1.Date value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasEffTradeDate() => $_has(8);
  @$pb.TagNumber(9)
  void clearEffTradeDate() => $_clearField(9);
  @$pb.TagNumber(9)
  $1.Date ensureEffTradeDate() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.String get symbol => $_getSZ(9);
  @$pb.TagNumber(10)
  set symbol($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasSymbol() => $_has(9);
  @$pb.TagNumber(10)
  void clearSymbol() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get symbolDescription => $_getSZ(10);
  @$pb.TagNumber(11)
  set symbolDescription($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasSymbolDescription() => $_has(10);
  @$pb.TagNumber(11)
  void clearSymbolDescription() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get cusip => $_getSZ(11);
  @$pb.TagNumber(12)
  set cusip($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasCusip() => $_has(11);
  @$pb.TagNumber(12)
  void clearCusip() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get assetType => $_getSZ(12);
  @$pb.TagNumber(13)
  set assetType($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasAssetType() => $_has(12);
  @$pb.TagNumber(13)
  void clearAssetType() => $_clearField(13);

  @$pb.TagNumber(14)
  $2.Timestamp get createdAt => $_getN(13);
  @$pb.TagNumber(14)
  set createdAt($2.Timestamp value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasCreatedAt() => $_has(13);
  @$pb.TagNumber(14)
  void clearCreatedAt() => $_clearField(14);
  @$pb.TagNumber(14)
  $2.Timestamp ensureCreatedAt() => $_ensure(13);

  @$pb.TagNumber(15)
  $1.Date get systemDate => $_getN(14);
  @$pb.TagNumber(15)
  set systemDate($1.Date value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasSystemDate() => $_has(14);
  @$pb.TagNumber(15)
  void clearSystemDate() => $_clearField(15);
  @$pb.TagNumber(15)
  $1.Date ensureSystemDate() => $_ensure(14);

  @$pb.TagNumber(16)
  $1.Date get tradeDate => $_getN(15);
  @$pb.TagNumber(16)
  set tradeDate($1.Date value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasTradeDate() => $_has(15);
  @$pb.TagNumber(16)
  void clearTradeDate() => $_clearField(16);
  @$pb.TagNumber(16)
  $1.Date ensureTradeDate() => $_ensure(15);

  @$pb.TagNumber(17)
  $2.Timestamp get tradeAt => $_getN(16);
  @$pb.TagNumber(17)
  set tradeAt($2.Timestamp value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasTradeAt() => $_has(16);
  @$pb.TagNumber(17)
  void clearTradeAt() => $_clearField(17);
  @$pb.TagNumber(17)
  $2.Timestamp ensureTradeAt() => $_ensure(16);

  @$pb.TagNumber(18)
  $1.Date get settleDate => $_getN(17);
  @$pb.TagNumber(18)
  set settleDate($1.Date value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasSettleDate() => $_has(17);
  @$pb.TagNumber(18)
  void clearSettleDate() => $_clearField(18);
  @$pb.TagNumber(18)
  $1.Date ensureSettleDate() => $_ensure(17);

  @$pb.TagNumber(19)
  $core.String get entryType => $_getSZ(18);
  @$pb.TagNumber(19)
  set entryType($core.String value) => $_setString(18, value);
  @$pb.TagNumber(19)
  $core.bool hasEntryType() => $_has(18);
  @$pb.TagNumber(19)
  void clearEntryType() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get side => $_getSZ(19);
  @$pb.TagNumber(20)
  set side($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasSide() => $_has(19);
  @$pb.TagNumber(20)
  void clearSide() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.String get qty => $_getSZ(20);
  @$pb.TagNumber(21)
  set qty($core.String value) => $_setString(20, value);
  @$pb.TagNumber(21)
  $core.bool hasQty() => $_has(20);
  @$pb.TagNumber(21)
  void clearQty() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.String get price => $_getSZ(21);
  @$pb.TagNumber(22)
  set price($core.String value) => $_setString(21, value);
  @$pb.TagNumber(22)
  $core.bool hasPrice() => $_has(21);
  @$pb.TagNumber(22)
  void clearPrice() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.String get grossAmt => $_getSZ(22);
  @$pb.TagNumber(23)
  set grossAmt($core.String value) => $_setString(22, value);
  @$pb.TagNumber(23)
  $core.bool hasGrossAmt() => $_has(22);
  @$pb.TagNumber(23)
  void clearGrossAmt() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.String get regFee => $_getSZ(23);
  @$pb.TagNumber(24)
  set regFee($core.String value) => $_setString(23, value);
  @$pb.TagNumber(24)
  $core.bool hasRegFee() => $_has(23);
  @$pb.TagNumber(24)
  void clearRegFee() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.String get tafFee => $_getSZ(24);
  @$pb.TagNumber(25)
  set tafFee($core.String value) => $_setString(24, value);
  @$pb.TagNumber(25)
  $core.bool hasTafFee() => $_has(24);
  @$pb.TagNumber(25)
  void clearTafFee() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.String get fees => $_getSZ(25);
  @$pb.TagNumber(26)
  set fees($core.String value) => $_setString(25, value);
  @$pb.TagNumber(26)
  $core.bool hasFees() => $_has(25);
  @$pb.TagNumber(26)
  void clearFees() => $_clearField(26);

  @$pb.TagNumber(27)
  $core.String get netAmt => $_getSZ(26);
  @$pb.TagNumber(27)
  set netAmt($core.String value) => $_setString(26, value);
  @$pb.TagNumber(27)
  $core.bool hasNetAmt() => $_has(26);
  @$pb.TagNumber(27)
  void clearNetAmt() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.String get description => $_getSZ(27);
  @$pb.TagNumber(28)
  set description($core.String value) => $_setString(27, value);
  @$pb.TagNumber(28)
  $core.bool hasDescription() => $_has(27);
  @$pb.TagNumber(28)
  void clearDescription() => $_clearField(28);

  @$pb.TagNumber(29)
  $core.String get batchNo => $_getSZ(28);
  @$pb.TagNumber(29)
  set batchNo($core.String value) => $_setString(28, value);
  @$pb.TagNumber(29)
  $core.bool hasBatchNo() => $_has(28);
  @$pb.TagNumber(29)
  void clearBatchNo() => $_clearField(29);

  @$pb.TagNumber(31)
  $core.String get status => $_getSZ(29);
  @$pb.TagNumber(31)
  set status($core.String value) => $_setString(29, value);
  @$pb.TagNumber(31)
  $core.bool hasStatus() => $_has(29);
  @$pb.TagNumber(31)
  void clearStatus() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.String get createdBy => $_getSZ(30);
  @$pb.TagNumber(32)
  set createdBy($core.String value) => $_setString(30, value);
  @$pb.TagNumber(32)
  $core.bool hasCreatedBy() => $_has(30);
  @$pb.TagNumber(32)
  void clearCreatedBy() => $_clearField(32);

  @$pb.TagNumber(33)
  $core.int get trnsId => $_getIZ(31);
  @$pb.TagNumber(33)
  set trnsId($core.int value) => $_setUnsignedInt32(31, value);
  @$pb.TagNumber(33)
  $core.bool hasTrnsId() => $_has(31);
  @$pb.TagNumber(33)
  void clearTrnsId() => $_clearField(33);

  @$pb.TagNumber(34)
  $core.int get accountId => $_getIZ(32);
  @$pb.TagNumber(34)
  set accountId($core.int value) => $_setUnsignedInt32(32, value);
  @$pb.TagNumber(34)
  $core.bool hasAccountId() => $_has(32);
  @$pb.TagNumber(34)
  void clearAccountId() => $_clearField(34);

  @$pb.TagNumber(36)
  $core.String get executingVenue => $_getSZ(33);
  @$pb.TagNumber(36)
  set executingVenue($core.String value) => $_setString(33, value);
  @$pb.TagNumber(36)
  $core.bool hasExecutingVenue() => $_has(33);
  @$pb.TagNumber(36)
  void clearExecutingVenue() => $_clearField(36);

  @$pb.TagNumber(37)
  $core.String get externalId => $_getSZ(34);
  @$pb.TagNumber(37)
  set externalId($core.String value) => $_setString(34, value);
  @$pb.TagNumber(37)
  $core.bool hasExternalId() => $_has(34);
  @$pb.TagNumber(37)
  void clearExternalId() => $_clearField(37);

  @$pb.TagNumber(39)
  $core.String get orderId => $_getSZ(35);
  @$pb.TagNumber(39)
  set orderId($core.String value) => $_setString(35, value);
  @$pb.TagNumber(39)
  $core.bool hasOrderId() => $_has(35);
  @$pb.TagNumber(39)
  void clearOrderId() => $_clearField(39);

  @$pb.TagNumber(40)
  $core.String get vendor => $_getSZ(36);
  @$pb.TagNumber(40)
  set vendor($core.String value) => $_setString(36, value);
  @$pb.TagNumber(40)
  $core.bool hasVendor() => $_has(36);
  @$pb.TagNumber(40)
  void clearVendor() => $_clearField(40);

  @$pb.TagNumber(41)
  $core.String get contraAccountNo => $_getSZ(37);
  @$pb.TagNumber(41)
  set contraAccountNo($core.String value) => $_setString(37, value);
  @$pb.TagNumber(41)
  $core.bool hasContraAccountNo() => $_has(37);
  @$pb.TagNumber(41)
  void clearContraAccountNo() => $_clearField(41);

  @$pb.TagNumber(43)
  $core.String get commission => $_getSZ(38);
  @$pb.TagNumber(43)
  set commission($core.String value) => $_setString(38, value);
  @$pb.TagNumber(43)
  $core.bool hasCommission() => $_has(38);
  @$pb.TagNumber(43)
  void clearCommission() => $_clearField(43);

  @$pb.TagNumber(44)
  $core.String get contraCorrespondent => $_getSZ(39);
  @$pb.TagNumber(44)
  set contraCorrespondent($core.String value) => $_setString(39, value);
  @$pb.TagNumber(44)
  $core.bool hasContraCorrespondent() => $_has(39);
  @$pb.TagNumber(44)
  void clearContraCorrespondent() => $_clearField(44);

  @$pb.TagNumber(45)
  $core.int get contraAccountId => $_getIZ(40);
  @$pb.TagNumber(45)
  set contraAccountId($core.int value) => $_setUnsignedInt32(40, value);
  @$pb.TagNumber(45)
  $core.bool hasContraAccountId() => $_has(40);
  @$pb.TagNumber(45)
  void clearContraAccountId() => $_clearField(45);

  @$pb.TagNumber(46)
  $core.String get originalCusip => $_getSZ(41);
  @$pb.TagNumber(46)
  set originalCusip($core.String value) => $_setString(41, value);
  @$pb.TagNumber(46)
  $core.bool hasOriginalCusip() => $_has(41);
  @$pb.TagNumber(46)
  void clearOriginalCusip() => $_clearField(46);

  @$pb.TagNumber(47)
  $core.String get entryTypeDescription => $_getSZ(42);
  @$pb.TagNumber(47)
  set entryTypeDescription($core.String value) => $_setString(42, value);
  @$pb.TagNumber(47)
  $core.bool hasEntryTypeDescription() => $_has(42);
  @$pb.TagNumber(47)
  void clearEntryTypeDescription() => $_clearField(47);

  @$pb.TagNumber(48)
  $core.String get rep => $_getSZ(43);
  @$pb.TagNumber(48)
  set rep($core.String value) => $_setString(43, value);
  @$pb.TagNumber(48)
  $core.bool hasRep() => $_has(43);
  @$pb.TagNumber(48)
  void clearRep() => $_clearField(48);

  @$pb.TagNumber(49)
  $core.String get branch => $_getSZ(44);
  @$pb.TagNumber(49)
  set branch($core.String value) => $_setString(44, value);
  @$pb.TagNumber(49)
  $core.bool hasBranch() => $_has(44);
  @$pb.TagNumber(49)
  void clearBranch() => $_clearField(49);

  @$pb.TagNumber(50)
  $core.String get compressType => $_getSZ(45);
  @$pb.TagNumber(50)
  set compressType($core.String value) => $_setString(45, value);
  @$pb.TagNumber(50)
  $core.bool hasCompressType() => $_has(45);
  @$pb.TagNumber(50)
  void clearCompressType() => $_clearField(50);

  @$pb.TagNumber(51)
  $core.int get compressCount => $_getIZ(46);
  @$pb.TagNumber(51)
  set compressCount($core.int value) => $_setUnsignedInt32(46, value);
  @$pb.TagNumber(51)
  $core.bool hasCompressCount() => $_has(46);
  @$pb.TagNumber(51)
  void clearCompressCount() => $_clearField(51);

  @$pb.TagNumber(52)
  $core.int get compressId => $_getIZ(47);
  @$pb.TagNumber(52)
  set compressId($core.int value) => $_setUnsignedInt32(47, value);
  @$pb.TagNumber(52)
  $core.bool hasCompressId() => $_has(47);
  @$pb.TagNumber(52)
  void clearCompressId() => $_clearField(52);

  @$pb.TagNumber(53)
  $core.String get traderId => $_getSZ(48);
  @$pb.TagNumber(53)
  set traderId($core.String value) => $_setString(48, value);
  @$pb.TagNumber(53)
  $core.bool hasTraderId() => $_has(48);
  @$pb.TagNumber(53)
  void clearTraderId() => $_clearField(53);

  @$pb.TagNumber(54)
  $core.String get referenceId => $_getSZ(49);
  @$pb.TagNumber(54)
  set referenceId($core.String value) => $_setString(49, value);
  @$pb.TagNumber(54)
  $core.bool hasReferenceId() => $_has(49);
  @$pb.TagNumber(54)
  void clearReferenceId() => $_clearField(54);

  @$pb.TagNumber(55)
  $core.String get otherFees => $_getSZ(50);
  @$pb.TagNumber(55)
  set otherFees($core.String value) => $_setString(50, value);
  @$pb.TagNumber(55)
  $core.bool hasOtherFees() => $_has(50);
  @$pb.TagNumber(55)
  void clearOtherFees() => $_clearField(55);

  @$pb.TagNumber(56)
  $core.String get otherFees2 => $_getSZ(51);
  @$pb.TagNumber(56)
  set otherFees2($core.String value) => $_setString(51, value);
  @$pb.TagNumber(56)
  $core.bool hasOtherFees2() => $_has(51);
  @$pb.TagNumber(56)
  void clearOtherFees2() => $_clearField(56);

  @$pb.TagNumber(57)
  $core.String get taxWithholding => $_getSZ(52);
  @$pb.TagNumber(57)
  set taxWithholding($core.String value) => $_setString(52, value);
  @$pb.TagNumber(57)
  $core.bool hasTaxWithholding() => $_has(52);
  @$pb.TagNumber(57)
  void clearTaxWithholding() => $_clearField(57);

  /// Breakdown of other fee values in the same order of otherFeeTypes, results will only show if breakdownOtherFees search filter is set to true, and search_type = 'Uncompress'
  @$pb.TagNumber(58)
  $pb.PbList<$core.String> get otherFeeValues => $_getList(53);

  @$pb.TagNumber(59)
  $core.String get marginType => $_getSZ(54);
  @$pb.TagNumber(59)
  set marginType($core.String value) => $_setString(54, value);
  @$pb.TagNumber(59)
  $core.bool hasMarginType() => $_has(54);
  @$pb.TagNumber(59)
  void clearMarginType() => $_clearField(59);

  @$pb.TagNumber(60)
  $core.String get registeredAdvisorCapacity => $_getSZ(55);
  @$pb.TagNumber(60)
  set registeredAdvisorCapacity($core.String value) => $_setString(55, value);
  @$pb.TagNumber(60)
  $core.bool hasRegisteredAdvisorCapacity() => $_has(55);
  @$pb.TagNumber(60)
  void clearRegisteredAdvisorCapacity() => $_clearField(60);

  @$pb.TagNumber(61)
  $core.String get specialRemarks => $_getSZ(56);
  @$pb.TagNumber(61)
  set specialRemarks($core.String value) => $_setString(56, value);
  @$pb.TagNumber(61)
  $core.bool hasSpecialRemarks() => $_has(56);
  @$pb.TagNumber(61)
  void clearSpecialRemarks() => $_clearField(61);

  @$pb.TagNumber(62)
  $core.String get miscFee => $_getSZ(57);
  @$pb.TagNumber(62)
  set miscFee($core.String value) => $_setString(57, value);
  @$pb.TagNumber(62)
  $core.bool hasMiscFee() => $_has(57);
  @$pb.TagNumber(62)
  void clearMiscFee() => $_clearField(62);

  @$pb.TagNumber(63)
  $core.String get principal => $_getSZ(58);
  @$pb.TagNumber(63)
  set principal($core.String value) => $_setString(58, value);
  @$pb.TagNumber(63)
  $core.bool hasPrincipal() => $_has(58);
  @$pb.TagNumber(63)
  void clearPrincipal() => $_clearField(63);

  @$pb.TagNumber(64)
  $1.Date get asOfDate => $_getN(59);
  @$pb.TagNumber(64)
  set asOfDate($1.Date value) => $_setField(64, value);
  @$pb.TagNumber(64)
  $core.bool hasAsOfDate() => $_has(59);
  @$pb.TagNumber(64)
  void clearAsOfDate() => $_clearField(64);
  @$pb.TagNumber(64)
  $1.Date ensureAsOfDate() => $_ensure(59);

  @$pb.TagNumber(65)
  $core.int get subAccountType => $_getIZ(60);
  @$pb.TagNumber(65)
  set subAccountType($core.int value) => $_setUnsignedInt32(60, value);
  @$pb.TagNumber(65)
  $core.bool hasSubAccountType() => $_has(60);
  @$pb.TagNumber(65)
  void clearSubAccountType() => $_clearField(65);

  @$pb.TagNumber(66)
  $core.String get subAccountNo => $_getSZ(61);
  @$pb.TagNumber(66)
  set subAccountNo($core.String value) => $_setString(61, value);
  @$pb.TagNumber(66)
  $core.bool hasSubAccountNo() => $_has(61);
  @$pb.TagNumber(66)
  void clearSubAccountNo() => $_clearField(66);

  @$pb.TagNumber(67)
  $core.String get otherFeesList => $_getSZ(62);
  @$pb.TagNumber(67)
  set otherFeesList($core.String value) => $_setString(62, value);
  @$pb.TagNumber(67)
  $core.bool hasOtherFeesList() => $_has(62);
  @$pb.TagNumber(67)
  void clearOtherFeesList() => $_clearField(67);

  @$pb.TagNumber(68)
  $core.int get dvpConfirmNo => $_getIZ(63);
  @$pb.TagNumber(68)
  set dvpConfirmNo($core.int value) => $_setUnsignedInt32(63, value);
  @$pb.TagNumber(68)
  $core.bool hasDvpConfirmNo() => $_has(63);
  @$pb.TagNumber(68)
  void clearDvpConfirmNo() => $_clearField(68);

  @$pb.TagNumber(69)
  $core.String get contraSubAccountNo => $_getSZ(64);
  @$pb.TagNumber(69)
  set contraSubAccountNo($core.String value) => $_setString(64, value);
  @$pb.TagNumber(69)
  $core.bool hasContraSubAccountNo() => $_has(64);
  @$pb.TagNumber(69)
  void clearContraSubAccountNo() => $_clearField(69);

  @$pb.TagNumber(70)
  $core.int get reportActivityId => $_getIZ(65);
  @$pb.TagNumber(70)
  set reportActivityId($core.int value) => $_setUnsignedInt32(65, value);
  @$pb.TagNumber(70)
  $core.bool hasReportActivityId() => $_has(65);
  @$pb.TagNumber(70)
  void clearReportActivityId() => $_clearField(70);

  @$pb.TagNumber(71)
  $core.String get currency => $_getSZ(66);
  @$pb.TagNumber(71)
  set currency($core.String value) => $_setString(66, value);
  @$pb.TagNumber(71)
  $core.bool hasCurrency() => $_has(66);
  @$pb.TagNumber(71)
  void clearCurrency() => $_clearField(71);

  @$pb.TagNumber(72)
  $core.bool get isSolicited => $_getBF(67);
  @$pb.TagNumber(72)
  set isSolicited($core.bool value) => $_setBool(67, value);
  @$pb.TagNumber(72)
  $core.bool hasIsSolicited() => $_has(67);
  @$pb.TagNumber(72)
  void clearIsSolicited() => $_clearField(72);

  @$pb.TagNumber(73)
  $core.bool get isSyndicate => $_getBF(68);
  @$pb.TagNumber(73)
  set isSyndicate($core.bool value) => $_setBool(68, value);
  @$pb.TagNumber(73)
  $core.bool hasIsSyndicate() => $_has(68);
  @$pb.TagNumber(73)
  void clearIsSyndicate() => $_clearField(73);
}

class ActivityReportDetails extends $pb.GeneratedMessage {
  factory ActivityReportDetails({
    $core.String? accrual,
    $core.String? atsIdentifier,
    $core.String? classification,
    $core.bool? comparisonIndicator,
    $core.String? contraType,
    $core.String? couponRate,
    $core.String? createdByApi,
    $core.String? cumQty,
    $core.String? currencyFees,
    $core.String? currencyGrossAmt,
    $core.bool? delivered,
    $core.String? discretion,
    $core.String? entryTypeDescription,
    $core.int? euroclearId,
    $core.String? execId,
    $core.bool? isCorp,
    $core.bool? isMsrb,
    $core.bool? isOpenItem,
    $core.bool? isSolicited,
    $core.String? leavesQty,
    $core.String? legId,
    $core.String? markAmount,
    $core.String? markRate,
    $core.bool? newIssue,
    $core.bool? noRemuneration,
    $core.String? orderType,
    $1.Date? orgTerm,
    $core.String? orgType,
    $core.String? pmp,
    $core.String? product,
    $core.bool? s3,
    $core.bool? stepIndicator,
    $core.String? taxRate,
    $core.bool? whenIssue,
    $core.String? ytc,
    $core.String? ytm,
    $1.Date? systemDate,
    $core.String? batchNo,
    $core.int? reportActivityId,
    $core.bool? isSyndicate,
  }) {
    final result = create();
    if (accrual != null) result.accrual = accrual;
    if (atsIdentifier != null) result.atsIdentifier = atsIdentifier;
    if (classification != null) result.classification = classification;
    if (comparisonIndicator != null) result.comparisonIndicator = comparisonIndicator;
    if (contraType != null) result.contraType = contraType;
    if (couponRate != null) result.couponRate = couponRate;
    if (createdByApi != null) result.createdByApi = createdByApi;
    if (cumQty != null) result.cumQty = cumQty;
    if (currencyFees != null) result.currencyFees = currencyFees;
    if (currencyGrossAmt != null) result.currencyGrossAmt = currencyGrossAmt;
    if (delivered != null) result.delivered = delivered;
    if (discretion != null) result.discretion = discretion;
    if (entryTypeDescription != null) result.entryTypeDescription = entryTypeDescription;
    if (euroclearId != null) result.euroclearId = euroclearId;
    if (execId != null) result.execId = execId;
    if (isCorp != null) result.isCorp = isCorp;
    if (isMsrb != null) result.isMsrb = isMsrb;
    if (isOpenItem != null) result.isOpenItem = isOpenItem;
    if (isSolicited != null) result.isSolicited = isSolicited;
    if (leavesQty != null) result.leavesQty = leavesQty;
    if (legId != null) result.legId = legId;
    if (markAmount != null) result.markAmount = markAmount;
    if (markRate != null) result.markRate = markRate;
    if (newIssue != null) result.newIssue = newIssue;
    if (noRemuneration != null) result.noRemuneration = noRemuneration;
    if (orderType != null) result.orderType = orderType;
    if (orgTerm != null) result.orgTerm = orgTerm;
    if (orgType != null) result.orgType = orgType;
    if (pmp != null) result.pmp = pmp;
    if (product != null) result.product = product;
    if (s3 != null) result.s3 = s3;
    if (stepIndicator != null) result.stepIndicator = stepIndicator;
    if (taxRate != null) result.taxRate = taxRate;
    if (whenIssue != null) result.whenIssue = whenIssue;
    if (ytc != null) result.ytc = ytc;
    if (ytm != null) result.ytm = ytm;
    if (systemDate != null) result.systemDate = systemDate;
    if (batchNo != null) result.batchNo = batchNo;
    if (reportActivityId != null) result.reportActivityId = reportActivityId;
    if (isSyndicate != null) result.isSyndicate = isSyndicate;
    return result;
  }

  ActivityReportDetails._();

  factory ActivityReportDetails.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ActivityReportDetails.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ActivityReportDetails', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accrual')
    ..aOS(2, _omitFieldNames ? '' : 'atsIdentifier')
    ..aOS(3, _omitFieldNames ? '' : 'classification')
    ..aOB(4, _omitFieldNames ? '' : 'comparisonIndicator')
    ..aOS(5, _omitFieldNames ? '' : 'contraType')
    ..aOS(6, _omitFieldNames ? '' : 'couponRate')
    ..aOS(7, _omitFieldNames ? '' : 'createdByApi')
    ..aOS(8, _omitFieldNames ? '' : 'cumQty')
    ..aOS(9, _omitFieldNames ? '' : 'currencyFees')
    ..aOS(10, _omitFieldNames ? '' : 'currencyGrossAmt')
    ..aOB(11, _omitFieldNames ? '' : 'delivered')
    ..aOS(12, _omitFieldNames ? '' : 'discretion')
    ..aOS(13, _omitFieldNames ? '' : 'entryTypeDescription')
    ..a<$core.int>(14, _omitFieldNames ? '' : 'euroclearId', $pb.PbFieldType.OU3)
    ..aOS(15, _omitFieldNames ? '' : 'execId')
    ..aOB(16, _omitFieldNames ? '' : 'isCorp')
    ..aOB(17, _omitFieldNames ? '' : 'isMsrb')
    ..aOB(18, _omitFieldNames ? '' : 'isOpenItem')
    ..aOB(19, _omitFieldNames ? '' : 'isSolicited')
    ..aOS(20, _omitFieldNames ? '' : 'leavesQty')
    ..aOS(21, _omitFieldNames ? '' : 'legId')
    ..aOS(22, _omitFieldNames ? '' : 'markAmount')
    ..aOS(23, _omitFieldNames ? '' : 'markRate')
    ..aOB(24, _omitFieldNames ? '' : 'newIssue')
    ..aOB(25, _omitFieldNames ? '' : 'noRemuneration')
    ..aOS(26, _omitFieldNames ? '' : 'orderType')
    ..aOM<$1.Date>(27, _omitFieldNames ? '' : 'orgTerm', subBuilder: $1.Date.create)
    ..aOS(28, _omitFieldNames ? '' : 'orgType')
    ..aOS(29, _omitFieldNames ? '' : 'pmp')
    ..aOS(30, _omitFieldNames ? '' : 'product')
    ..aOB(31, _omitFieldNames ? '' : 's3')
    ..aOB(32, _omitFieldNames ? '' : 'stepIndicator')
    ..aOS(33, _omitFieldNames ? '' : 'taxRate')
    ..aOB(34, _omitFieldNames ? '' : 'whenIssue')
    ..aOS(35, _omitFieldNames ? '' : 'ytc')
    ..aOS(36, _omitFieldNames ? '' : 'ytm')
    ..aOM<$1.Date>(37, _omitFieldNames ? '' : 'systemDate', subBuilder: $1.Date.create)
    ..aOS(38, _omitFieldNames ? '' : 'batchNo')
    ..a<$core.int>(39, _omitFieldNames ? '' : 'reportActivityId', $pb.PbFieldType.OU3)
    ..aOB(40, _omitFieldNames ? '' : 'isSyndicate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActivityReportDetails clone() => ActivityReportDetails()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ActivityReportDetails copyWith(void Function(ActivityReportDetails) updates) => super.copyWith((message) => updates(message as ActivityReportDetails)) as ActivityReportDetails;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ActivityReportDetails create() => ActivityReportDetails._();
  @$core.override
  ActivityReportDetails createEmptyInstance() => create();
  static $pb.PbList<ActivityReportDetails> createRepeated() => $pb.PbList<ActivityReportDetails>();
  @$core.pragma('dart2js:noInline')
  static ActivityReportDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ActivityReportDetails>(create);
  static ActivityReportDetails? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accrual => $_getSZ(0);
  @$pb.TagNumber(1)
  set accrual($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAccrual() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccrual() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get atsIdentifier => $_getSZ(1);
  @$pb.TagNumber(2)
  set atsIdentifier($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAtsIdentifier() => $_has(1);
  @$pb.TagNumber(2)
  void clearAtsIdentifier() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get classification => $_getSZ(2);
  @$pb.TagNumber(3)
  set classification($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasClassification() => $_has(2);
  @$pb.TagNumber(3)
  void clearClassification() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get comparisonIndicator => $_getBF(3);
  @$pb.TagNumber(4)
  set comparisonIndicator($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasComparisonIndicator() => $_has(3);
  @$pb.TagNumber(4)
  void clearComparisonIndicator() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get contraType => $_getSZ(4);
  @$pb.TagNumber(5)
  set contraType($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasContraType() => $_has(4);
  @$pb.TagNumber(5)
  void clearContraType() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get couponRate => $_getSZ(5);
  @$pb.TagNumber(6)
  set couponRate($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCouponRate() => $_has(5);
  @$pb.TagNumber(6)
  void clearCouponRate() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get createdByApi => $_getSZ(6);
  @$pb.TagNumber(7)
  set createdByApi($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCreatedByApi() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedByApi() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get cumQty => $_getSZ(7);
  @$pb.TagNumber(8)
  set cumQty($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCumQty() => $_has(7);
  @$pb.TagNumber(8)
  void clearCumQty() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get currencyFees => $_getSZ(8);
  @$pb.TagNumber(9)
  set currencyFees($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasCurrencyFees() => $_has(8);
  @$pb.TagNumber(9)
  void clearCurrencyFees() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get currencyGrossAmt => $_getSZ(9);
  @$pb.TagNumber(10)
  set currencyGrossAmt($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasCurrencyGrossAmt() => $_has(9);
  @$pb.TagNumber(10)
  void clearCurrencyGrossAmt() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.bool get delivered => $_getBF(10);
  @$pb.TagNumber(11)
  set delivered($core.bool value) => $_setBool(10, value);
  @$pb.TagNumber(11)
  $core.bool hasDelivered() => $_has(10);
  @$pb.TagNumber(11)
  void clearDelivered() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get discretion => $_getSZ(11);
  @$pb.TagNumber(12)
  set discretion($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasDiscretion() => $_has(11);
  @$pb.TagNumber(12)
  void clearDiscretion() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get entryTypeDescription => $_getSZ(12);
  @$pb.TagNumber(13)
  set entryTypeDescription($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasEntryTypeDescription() => $_has(12);
  @$pb.TagNumber(13)
  void clearEntryTypeDescription() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.int get euroclearId => $_getIZ(13);
  @$pb.TagNumber(14)
  set euroclearId($core.int value) => $_setUnsignedInt32(13, value);
  @$pb.TagNumber(14)
  $core.bool hasEuroclearId() => $_has(13);
  @$pb.TagNumber(14)
  void clearEuroclearId() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get execId => $_getSZ(14);
  @$pb.TagNumber(15)
  set execId($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasExecId() => $_has(14);
  @$pb.TagNumber(15)
  void clearExecId() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.bool get isCorp => $_getBF(15);
  @$pb.TagNumber(16)
  set isCorp($core.bool value) => $_setBool(15, value);
  @$pb.TagNumber(16)
  $core.bool hasIsCorp() => $_has(15);
  @$pb.TagNumber(16)
  void clearIsCorp() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.bool get isMsrb => $_getBF(16);
  @$pb.TagNumber(17)
  set isMsrb($core.bool value) => $_setBool(16, value);
  @$pb.TagNumber(17)
  $core.bool hasIsMsrb() => $_has(16);
  @$pb.TagNumber(17)
  void clearIsMsrb() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.bool get isOpenItem => $_getBF(17);
  @$pb.TagNumber(18)
  set isOpenItem($core.bool value) => $_setBool(17, value);
  @$pb.TagNumber(18)
  $core.bool hasIsOpenItem() => $_has(17);
  @$pb.TagNumber(18)
  void clearIsOpenItem() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.bool get isSolicited => $_getBF(18);
  @$pb.TagNumber(19)
  set isSolicited($core.bool value) => $_setBool(18, value);
  @$pb.TagNumber(19)
  $core.bool hasIsSolicited() => $_has(18);
  @$pb.TagNumber(19)
  void clearIsSolicited() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get leavesQty => $_getSZ(19);
  @$pb.TagNumber(20)
  set leavesQty($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasLeavesQty() => $_has(19);
  @$pb.TagNumber(20)
  void clearLeavesQty() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.String get legId => $_getSZ(20);
  @$pb.TagNumber(21)
  set legId($core.String value) => $_setString(20, value);
  @$pb.TagNumber(21)
  $core.bool hasLegId() => $_has(20);
  @$pb.TagNumber(21)
  void clearLegId() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.String get markAmount => $_getSZ(21);
  @$pb.TagNumber(22)
  set markAmount($core.String value) => $_setString(21, value);
  @$pb.TagNumber(22)
  $core.bool hasMarkAmount() => $_has(21);
  @$pb.TagNumber(22)
  void clearMarkAmount() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.String get markRate => $_getSZ(22);
  @$pb.TagNumber(23)
  set markRate($core.String value) => $_setString(22, value);
  @$pb.TagNumber(23)
  $core.bool hasMarkRate() => $_has(22);
  @$pb.TagNumber(23)
  void clearMarkRate() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.bool get newIssue => $_getBF(23);
  @$pb.TagNumber(24)
  set newIssue($core.bool value) => $_setBool(23, value);
  @$pb.TagNumber(24)
  $core.bool hasNewIssue() => $_has(23);
  @$pb.TagNumber(24)
  void clearNewIssue() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.bool get noRemuneration => $_getBF(24);
  @$pb.TagNumber(25)
  set noRemuneration($core.bool value) => $_setBool(24, value);
  @$pb.TagNumber(25)
  $core.bool hasNoRemuneration() => $_has(24);
  @$pb.TagNumber(25)
  void clearNoRemuneration() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.String get orderType => $_getSZ(25);
  @$pb.TagNumber(26)
  set orderType($core.String value) => $_setString(25, value);
  @$pb.TagNumber(26)
  $core.bool hasOrderType() => $_has(25);
  @$pb.TagNumber(26)
  void clearOrderType() => $_clearField(26);

  @$pb.TagNumber(27)
  $1.Date get orgTerm => $_getN(26);
  @$pb.TagNumber(27)
  set orgTerm($1.Date value) => $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasOrgTerm() => $_has(26);
  @$pb.TagNumber(27)
  void clearOrgTerm() => $_clearField(27);
  @$pb.TagNumber(27)
  $1.Date ensureOrgTerm() => $_ensure(26);

  @$pb.TagNumber(28)
  $core.String get orgType => $_getSZ(27);
  @$pb.TagNumber(28)
  set orgType($core.String value) => $_setString(27, value);
  @$pb.TagNumber(28)
  $core.bool hasOrgType() => $_has(27);
  @$pb.TagNumber(28)
  void clearOrgType() => $_clearField(28);

  @$pb.TagNumber(29)
  $core.String get pmp => $_getSZ(28);
  @$pb.TagNumber(29)
  set pmp($core.String value) => $_setString(28, value);
  @$pb.TagNumber(29)
  $core.bool hasPmp() => $_has(28);
  @$pb.TagNumber(29)
  void clearPmp() => $_clearField(29);

  @$pb.TagNumber(30)
  $core.String get product => $_getSZ(29);
  @$pb.TagNumber(30)
  set product($core.String value) => $_setString(29, value);
  @$pb.TagNumber(30)
  $core.bool hasProduct() => $_has(29);
  @$pb.TagNumber(30)
  void clearProduct() => $_clearField(30);

  @$pb.TagNumber(31)
  $core.bool get s3 => $_getBF(30);
  @$pb.TagNumber(31)
  set s3($core.bool value) => $_setBool(30, value);
  @$pb.TagNumber(31)
  $core.bool hasS3() => $_has(30);
  @$pb.TagNumber(31)
  void clearS3() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.bool get stepIndicator => $_getBF(31);
  @$pb.TagNumber(32)
  set stepIndicator($core.bool value) => $_setBool(31, value);
  @$pb.TagNumber(32)
  $core.bool hasStepIndicator() => $_has(31);
  @$pb.TagNumber(32)
  void clearStepIndicator() => $_clearField(32);

  @$pb.TagNumber(33)
  $core.String get taxRate => $_getSZ(32);
  @$pb.TagNumber(33)
  set taxRate($core.String value) => $_setString(32, value);
  @$pb.TagNumber(33)
  $core.bool hasTaxRate() => $_has(32);
  @$pb.TagNumber(33)
  void clearTaxRate() => $_clearField(33);

  @$pb.TagNumber(34)
  $core.bool get whenIssue => $_getBF(33);
  @$pb.TagNumber(34)
  set whenIssue($core.bool value) => $_setBool(33, value);
  @$pb.TagNumber(34)
  $core.bool hasWhenIssue() => $_has(33);
  @$pb.TagNumber(34)
  void clearWhenIssue() => $_clearField(34);

  @$pb.TagNumber(35)
  $core.String get ytc => $_getSZ(34);
  @$pb.TagNumber(35)
  set ytc($core.String value) => $_setString(34, value);
  @$pb.TagNumber(35)
  $core.bool hasYtc() => $_has(34);
  @$pb.TagNumber(35)
  void clearYtc() => $_clearField(35);

  @$pb.TagNumber(36)
  $core.String get ytm => $_getSZ(35);
  @$pb.TagNumber(36)
  set ytm($core.String value) => $_setString(35, value);
  @$pb.TagNumber(36)
  $core.bool hasYtm() => $_has(35);
  @$pb.TagNumber(36)
  void clearYtm() => $_clearField(36);

  @$pb.TagNumber(37)
  $1.Date get systemDate => $_getN(36);
  @$pb.TagNumber(37)
  set systemDate($1.Date value) => $_setField(37, value);
  @$pb.TagNumber(37)
  $core.bool hasSystemDate() => $_has(36);
  @$pb.TagNumber(37)
  void clearSystemDate() => $_clearField(37);
  @$pb.TagNumber(37)
  $1.Date ensureSystemDate() => $_ensure(36);

  @$pb.TagNumber(38)
  $core.String get batchNo => $_getSZ(37);
  @$pb.TagNumber(38)
  set batchNo($core.String value) => $_setString(37, value);
  @$pb.TagNumber(38)
  $core.bool hasBatchNo() => $_has(37);
  @$pb.TagNumber(38)
  void clearBatchNo() => $_clearField(38);

  @$pb.TagNumber(39)
  $core.int get reportActivityId => $_getIZ(38);
  @$pb.TagNumber(39)
  set reportActivityId($core.int value) => $_setUnsignedInt32(38, value);
  @$pb.TagNumber(39)
  $core.bool hasReportActivityId() => $_has(38);
  @$pb.TagNumber(39)
  void clearReportActivityId() => $_clearField(39);

  @$pb.TagNumber(40)
  $core.bool get isSyndicate => $_getBF(39);
  @$pb.TagNumber(40)
  set isSyndicate($core.bool value) => $_setBool(39, value);
  @$pb.TagNumber(40)
  $core.bool hasIsSyndicate() => $_has(39);
  @$pb.TagNumber(40)
  void clearIsSyndicate() => $_clearField(40);
}

class ListActivityRequest extends $pb.GeneratedMessage {
  factory ListActivityRequest({
    $core.String? accountNo,
    $core.String? masterAccountNo,
    $core.String? symbol,
    $core.Iterable<$core.String>? statuses,
    $1.Date? fromDate,
    $1.Date? toDate,
    $core.Iterable<$core.String>? entryTypes,
    $core.String? branch,
    $core.String? rep,
    $core.Iterable<$core.String>? sides,
    $core.String? accountName,
    $core.int? usrId,
    $core.bool? compress,
    $core.String? correspondent,
    $core.String? dateType,
    $core.int? compressId,
    $core.String? searchType,
    $core.int? accountId,
    $3.Pagination? pagination,
    $core.bool? breakdownOtherFees,
    $core.String? description,
    $core.int? subAccountType,
    $core.String? subAccountNo,
    $1.Date? effTradeDate,
    $1.Date? effSettleDate,
    $core.String? capacity,
    $core.String? contraSubAccountNo,
    $core.int? contraAccountId,
    $core.String? currency,
    $core.int? trnsId,
    $core.String? transactionSide,
    $core.String? broker,
    $core.String? assetType,
  }) {
    final result = create();
    if (accountNo != null) result.accountNo = accountNo;
    if (masterAccountNo != null) result.masterAccountNo = masterAccountNo;
    if (symbol != null) result.symbol = symbol;
    if (statuses != null) result.statuses.addAll(statuses);
    if (fromDate != null) result.fromDate = fromDate;
    if (toDate != null) result.toDate = toDate;
    if (entryTypes != null) result.entryTypes.addAll(entryTypes);
    if (branch != null) result.branch = branch;
    if (rep != null) result.rep = rep;
    if (sides != null) result.sides.addAll(sides);
    if (accountName != null) result.accountName = accountName;
    if (usrId != null) result.usrId = usrId;
    if (compress != null) result.compress = compress;
    if (correspondent != null) result.correspondent = correspondent;
    if (dateType != null) result.dateType = dateType;
    if (compressId != null) result.compressId = compressId;
    if (searchType != null) result.searchType = searchType;
    if (accountId != null) result.accountId = accountId;
    if (pagination != null) result.pagination = pagination;
    if (breakdownOtherFees != null) result.breakdownOtherFees = breakdownOtherFees;
    if (description != null) result.description = description;
    if (subAccountType != null) result.subAccountType = subAccountType;
    if (subAccountNo != null) result.subAccountNo = subAccountNo;
    if (effTradeDate != null) result.effTradeDate = effTradeDate;
    if (effSettleDate != null) result.effSettleDate = effSettleDate;
    if (capacity != null) result.capacity = capacity;
    if (contraSubAccountNo != null) result.contraSubAccountNo = contraSubAccountNo;
    if (contraAccountId != null) result.contraAccountId = contraAccountId;
    if (currency != null) result.currency = currency;
    if (trnsId != null) result.trnsId = trnsId;
    if (transactionSide != null) result.transactionSide = transactionSide;
    if (broker != null) result.broker = broker;
    if (assetType != null) result.assetType = assetType;
    return result;
  }

  ListActivityRequest._();

  factory ListActivityRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListActivityRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListActivityRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accountNo')
    ..aOS(2, _omitFieldNames ? '' : 'masterAccountNo')
    ..aOS(3, _omitFieldNames ? '' : 'symbol')
    ..pPS(4, _omitFieldNames ? '' : 'statuses')
    ..aOM<$1.Date>(5, _omitFieldNames ? '' : 'fromDate', subBuilder: $1.Date.create)
    ..aOM<$1.Date>(6, _omitFieldNames ? '' : 'toDate', subBuilder: $1.Date.create)
    ..pPS(7, _omitFieldNames ? '' : 'entryTypes')
    ..aOS(8, _omitFieldNames ? '' : 'branch')
    ..aOS(9, _omitFieldNames ? '' : 'rep')
    ..pPS(10, _omitFieldNames ? '' : 'sides')
    ..aOS(11, _omitFieldNames ? '' : 'accountName')
    ..a<$core.int>(12, _omitFieldNames ? '' : 'usrId', $pb.PbFieldType.OU3)
    ..aOB(13, _omitFieldNames ? '' : 'compress')
    ..aOS(14, _omitFieldNames ? '' : 'correspondent')
    ..aOS(15, _omitFieldNames ? '' : 'dateType')
    ..a<$core.int>(16, _omitFieldNames ? '' : 'compressId', $pb.PbFieldType.OU3)
    ..aOS(17, _omitFieldNames ? '' : 'searchType')
    ..a<$core.int>(18, _omitFieldNames ? '' : 'accountId', $pb.PbFieldType.OU3)
    ..aOM<$3.Pagination>(19, _omitFieldNames ? '' : 'pagination', subBuilder: $3.Pagination.create)
    ..aOB(20, _omitFieldNames ? '' : 'breakdownOtherFees')
    ..aOS(21, _omitFieldNames ? '' : 'description')
    ..a<$core.int>(22, _omitFieldNames ? '' : 'subAccountType', $pb.PbFieldType.OU3)
    ..aOS(23, _omitFieldNames ? '' : 'subAccountNo')
    ..aOM<$1.Date>(24, _omitFieldNames ? '' : 'effTradeDate', subBuilder: $1.Date.create)
    ..aOM<$1.Date>(25, _omitFieldNames ? '' : 'effSettleDate', subBuilder: $1.Date.create)
    ..aOS(26, _omitFieldNames ? '' : 'capacity')
    ..aOS(27, _omitFieldNames ? '' : 'contraSubAccountNo')
    ..a<$core.int>(28, _omitFieldNames ? '' : 'contraAccountId', $pb.PbFieldType.OU3)
    ..aOS(29, _omitFieldNames ? '' : 'currency')
    ..a<$core.int>(30, _omitFieldNames ? '' : 'trnsId', $pb.PbFieldType.OU3)
    ..aOS(31, _omitFieldNames ? '' : 'transactionSide')
    ..aOS(32, _omitFieldNames ? '' : 'broker')
    ..aOS(33, _omitFieldNames ? '' : 'assetType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListActivityRequest clone() => ListActivityRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListActivityRequest copyWith(void Function(ListActivityRequest) updates) => super.copyWith((message) => updates(message as ListActivityRequest)) as ListActivityRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListActivityRequest create() => ListActivityRequest._();
  @$core.override
  ListActivityRequest createEmptyInstance() => create();
  static $pb.PbList<ListActivityRequest> createRepeated() => $pb.PbList<ListActivityRequest>();
  @$core.pragma('dart2js:noInline')
  static ListActivityRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListActivityRequest>(create);
  static ListActivityRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountNo => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountNo($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAccountNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountNo() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get masterAccountNo => $_getSZ(1);
  @$pb.TagNumber(2)
  set masterAccountNo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMasterAccountNo() => $_has(1);
  @$pb.TagNumber(2)
  void clearMasterAccountNo() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get symbol => $_getSZ(2);
  @$pb.TagNumber(3)
  set symbol($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSymbol() => $_has(2);
  @$pb.TagNumber(3)
  void clearSymbol() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<$core.String> get statuses => $_getList(3);

  @$pb.TagNumber(5)
  $1.Date get fromDate => $_getN(4);
  @$pb.TagNumber(5)
  set fromDate($1.Date value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasFromDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearFromDate() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.Date ensureFromDate() => $_ensure(4);

  @$pb.TagNumber(6)
  $1.Date get toDate => $_getN(5);
  @$pb.TagNumber(6)
  set toDate($1.Date value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasToDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearToDate() => $_clearField(6);
  @$pb.TagNumber(6)
  $1.Date ensureToDate() => $_ensure(5);

  @$pb.TagNumber(7)
  $pb.PbList<$core.String> get entryTypes => $_getList(6);

  @$pb.TagNumber(8)
  $core.String get branch => $_getSZ(7);
  @$pb.TagNumber(8)
  set branch($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasBranch() => $_has(7);
  @$pb.TagNumber(8)
  void clearBranch() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get rep => $_getSZ(8);
  @$pb.TagNumber(9)
  set rep($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasRep() => $_has(8);
  @$pb.TagNumber(9)
  void clearRep() => $_clearField(9);

  @$pb.TagNumber(10)
  $pb.PbList<$core.String> get sides => $_getList(9);

  @$pb.TagNumber(11)
  $core.String get accountName => $_getSZ(10);
  @$pb.TagNumber(11)
  set accountName($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasAccountName() => $_has(10);
  @$pb.TagNumber(11)
  void clearAccountName() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get usrId => $_getIZ(11);
  @$pb.TagNumber(12)
  set usrId($core.int value) => $_setUnsignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasUsrId() => $_has(11);
  @$pb.TagNumber(12)
  void clearUsrId() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.bool get compress => $_getBF(12);
  @$pb.TagNumber(13)
  set compress($core.bool value) => $_setBool(12, value);
  @$pb.TagNumber(13)
  $core.bool hasCompress() => $_has(12);
  @$pb.TagNumber(13)
  void clearCompress() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get correspondent => $_getSZ(13);
  @$pb.TagNumber(14)
  set correspondent($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasCorrespondent() => $_has(13);
  @$pb.TagNumber(14)
  void clearCorrespondent() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get dateType => $_getSZ(14);
  @$pb.TagNumber(15)
  set dateType($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasDateType() => $_has(14);
  @$pb.TagNumber(15)
  void clearDateType() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.int get compressId => $_getIZ(15);
  @$pb.TagNumber(16)
  set compressId($core.int value) => $_setUnsignedInt32(15, value);
  @$pb.TagNumber(16)
  $core.bool hasCompressId() => $_has(15);
  @$pb.TagNumber(16)
  void clearCompressId() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get searchType => $_getSZ(16);
  @$pb.TagNumber(17)
  set searchType($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasSearchType() => $_has(16);
  @$pb.TagNumber(17)
  void clearSearchType() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.int get accountId => $_getIZ(17);
  @$pb.TagNumber(18)
  set accountId($core.int value) => $_setUnsignedInt32(17, value);
  @$pb.TagNumber(18)
  $core.bool hasAccountId() => $_has(17);
  @$pb.TagNumber(18)
  void clearAccountId() => $_clearField(18);

  @$pb.TagNumber(19)
  $3.Pagination get pagination => $_getN(18);
  @$pb.TagNumber(19)
  set pagination($3.Pagination value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasPagination() => $_has(18);
  @$pb.TagNumber(19)
  void clearPagination() => $_clearField(19);
  @$pb.TagNumber(19)
  $3.Pagination ensurePagination() => $_ensure(18);

  /// will show results for otherFeeNames and otherFeeValues if set to true, and search_type = 'Uncompress'
  @$pb.TagNumber(20)
  $core.bool get breakdownOtherFees => $_getBF(19);
  @$pb.TagNumber(20)
  set breakdownOtherFees($core.bool value) => $_setBool(19, value);
  @$pb.TagNumber(20)
  $core.bool hasBreakdownOtherFees() => $_has(19);
  @$pb.TagNumber(20)
  void clearBreakdownOtherFees() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.String get description => $_getSZ(20);
  @$pb.TagNumber(21)
  set description($core.String value) => $_setString(20, value);
  @$pb.TagNumber(21)
  $core.bool hasDescription() => $_has(20);
  @$pb.TagNumber(21)
  void clearDescription() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.int get subAccountType => $_getIZ(21);
  @$pb.TagNumber(22)
  set subAccountType($core.int value) => $_setUnsignedInt32(21, value);
  @$pb.TagNumber(22)
  $core.bool hasSubAccountType() => $_has(21);
  @$pb.TagNumber(22)
  void clearSubAccountType() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.String get subAccountNo => $_getSZ(22);
  @$pb.TagNumber(23)
  set subAccountNo($core.String value) => $_setString(22, value);
  @$pb.TagNumber(23)
  $core.bool hasSubAccountNo() => $_has(22);
  @$pb.TagNumber(23)
  void clearSubAccountNo() => $_clearField(23);

  @$pb.TagNumber(24)
  $1.Date get effTradeDate => $_getN(23);
  @$pb.TagNumber(24)
  set effTradeDate($1.Date value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasEffTradeDate() => $_has(23);
  @$pb.TagNumber(24)
  void clearEffTradeDate() => $_clearField(24);
  @$pb.TagNumber(24)
  $1.Date ensureEffTradeDate() => $_ensure(23);

  @$pb.TagNumber(25)
  $1.Date get effSettleDate => $_getN(24);
  @$pb.TagNumber(25)
  set effSettleDate($1.Date value) => $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasEffSettleDate() => $_has(24);
  @$pb.TagNumber(25)
  void clearEffSettleDate() => $_clearField(25);
  @$pb.TagNumber(25)
  $1.Date ensureEffSettleDate() => $_ensure(24);

  @$pb.TagNumber(26)
  $core.String get capacity => $_getSZ(25);
  @$pb.TagNumber(26)
  set capacity($core.String value) => $_setString(25, value);
  @$pb.TagNumber(26)
  $core.bool hasCapacity() => $_has(25);
  @$pb.TagNumber(26)
  void clearCapacity() => $_clearField(26);

  @$pb.TagNumber(27)
  $core.String get contraSubAccountNo => $_getSZ(26);
  @$pb.TagNumber(27)
  set contraSubAccountNo($core.String value) => $_setString(26, value);
  @$pb.TagNumber(27)
  $core.bool hasContraSubAccountNo() => $_has(26);
  @$pb.TagNumber(27)
  void clearContraSubAccountNo() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.int get contraAccountId => $_getIZ(27);
  @$pb.TagNumber(28)
  set contraAccountId($core.int value) => $_setUnsignedInt32(27, value);
  @$pb.TagNumber(28)
  $core.bool hasContraAccountId() => $_has(27);
  @$pb.TagNumber(28)
  void clearContraAccountId() => $_clearField(28);

  @$pb.TagNumber(29)
  $core.String get currency => $_getSZ(28);
  @$pb.TagNumber(29)
  set currency($core.String value) => $_setString(28, value);
  @$pb.TagNumber(29)
  $core.bool hasCurrency() => $_has(28);
  @$pb.TagNumber(29)
  void clearCurrency() => $_clearField(29);

  @$pb.TagNumber(30)
  $core.int get trnsId => $_getIZ(29);
  @$pb.TagNumber(30)
  set trnsId($core.int value) => $_setUnsignedInt32(29, value);
  @$pb.TagNumber(30)
  $core.bool hasTrnsId() => $_has(29);
  @$pb.TagNumber(30)
  void clearTrnsId() => $_clearField(30);

  @$pb.TagNumber(31)
  $core.String get transactionSide => $_getSZ(30);
  @$pb.TagNumber(31)
  set transactionSide($core.String value) => $_setString(30, value);
  @$pb.TagNumber(31)
  $core.bool hasTransactionSide() => $_has(30);
  @$pb.TagNumber(31)
  void clearTransactionSide() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.String get broker => $_getSZ(31);
  @$pb.TagNumber(32)
  set broker($core.String value) => $_setString(31, value);
  @$pb.TagNumber(32)
  $core.bool hasBroker() => $_has(31);
  @$pb.TagNumber(32)
  void clearBroker() => $_clearField(32);

  @$pb.TagNumber(33)
  $core.String get assetType => $_getSZ(32);
  @$pb.TagNumber(33)
  set assetType($core.String value) => $_setString(32, value);
  @$pb.TagNumber(33)
  $core.bool hasAssetType() => $_has(32);
  @$pb.TagNumber(33)
  void clearAssetType() => $_clearField(33);
}

class PageViewActivityRequest extends $pb.GeneratedMessage {
  factory PageViewActivityRequest({
    $3.Pagination? pagination,
    $core.String? dateType,
    $1.Date? fromDate,
    $1.Date? toDate,
    $core.String? correspondent,
    $core.String? accountNo,
    $core.String? masterAccountNo,
    $core.String? branch,
    $core.String? rep,
    $core.String? contraAccountNo,
    $core.String? broker,
    $core.String? type,
    $core.String? symbol,
    $core.String? cusip,
    $core.String? status,
    $core.String? entryType,
    $core.String? side,
    $core.String? assetType,
    $core.int? trnsId,
    $core.bool? asOfTRNS,
    $core.String? searchType,
    $core.String? description,
  }) {
    final result = create();
    if (pagination != null) result.pagination = pagination;
    if (dateType != null) result.dateType = dateType;
    if (fromDate != null) result.fromDate = fromDate;
    if (toDate != null) result.toDate = toDate;
    if (correspondent != null) result.correspondent = correspondent;
    if (accountNo != null) result.accountNo = accountNo;
    if (masterAccountNo != null) result.masterAccountNo = masterAccountNo;
    if (branch != null) result.branch = branch;
    if (rep != null) result.rep = rep;
    if (contraAccountNo != null) result.contraAccountNo = contraAccountNo;
    if (broker != null) result.broker = broker;
    if (type != null) result.type = type;
    if (symbol != null) result.symbol = symbol;
    if (cusip != null) result.cusip = cusip;
    if (status != null) result.status = status;
    if (entryType != null) result.entryType = entryType;
    if (side != null) result.side = side;
    if (assetType != null) result.assetType = assetType;
    if (trnsId != null) result.trnsId = trnsId;
    if (asOfTRNS != null) result.asOfTRNS = asOfTRNS;
    if (searchType != null) result.searchType = searchType;
    if (description != null) result.description = description;
    return result;
  }

  PageViewActivityRequest._();

  factory PageViewActivityRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory PageViewActivityRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PageViewActivityRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..aOM<$3.Pagination>(1, _omitFieldNames ? '' : 'pagination', subBuilder: $3.Pagination.create)
    ..aOS(2, _omitFieldNames ? '' : 'dateType')
    ..aOM<$1.Date>(3, _omitFieldNames ? '' : 'fromDate', subBuilder: $1.Date.create)
    ..aOM<$1.Date>(4, _omitFieldNames ? '' : 'toDate', subBuilder: $1.Date.create)
    ..aOS(5, _omitFieldNames ? '' : 'correspondent')
    ..aOS(6, _omitFieldNames ? '' : 'accountNo')
    ..aOS(7, _omitFieldNames ? '' : 'masterAccountNo')
    ..aOS(8, _omitFieldNames ? '' : 'branch')
    ..aOS(9, _omitFieldNames ? '' : 'rep')
    ..aOS(10, _omitFieldNames ? '' : 'contraAccountNo')
    ..aOS(11, _omitFieldNames ? '' : 'broker')
    ..aOS(12, _omitFieldNames ? '' : 'type')
    ..aOS(13, _omitFieldNames ? '' : 'symbol')
    ..aOS(14, _omitFieldNames ? '' : 'cusip')
    ..aOS(15, _omitFieldNames ? '' : 'status')
    ..aOS(16, _omitFieldNames ? '' : 'entryType')
    ..aOS(17, _omitFieldNames ? '' : 'side')
    ..aOS(18, _omitFieldNames ? '' : 'assetType')
    ..a<$core.int>(19, _omitFieldNames ? '' : 'trnsId', $pb.PbFieldType.OU3)
    ..aOB(20, _omitFieldNames ? '' : 'asOfTRNS', protoName: 'asOfTRNS')
    ..aOS(21, _omitFieldNames ? '' : 'searchType')
    ..aOS(22, _omitFieldNames ? '' : 'description')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PageViewActivityRequest clone() => PageViewActivityRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PageViewActivityRequest copyWith(void Function(PageViewActivityRequest) updates) => super.copyWith((message) => updates(message as PageViewActivityRequest)) as PageViewActivityRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PageViewActivityRequest create() => PageViewActivityRequest._();
  @$core.override
  PageViewActivityRequest createEmptyInstance() => create();
  static $pb.PbList<PageViewActivityRequest> createRepeated() => $pb.PbList<PageViewActivityRequest>();
  @$core.pragma('dart2js:noInline')
  static PageViewActivityRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PageViewActivityRequest>(create);
  static PageViewActivityRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $3.Pagination get pagination => $_getN(0);
  @$pb.TagNumber(1)
  set pagination($3.Pagination value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPagination() => $_has(0);
  @$pb.TagNumber(1)
  void clearPagination() => $_clearField(1);
  @$pb.TagNumber(1)
  $3.Pagination ensurePagination() => $_ensure(0);

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
  $core.String get masterAccountNo => $_getSZ(6);
  @$pb.TagNumber(7)
  set masterAccountNo($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasMasterAccountNo() => $_has(6);
  @$pb.TagNumber(7)
  void clearMasterAccountNo() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get branch => $_getSZ(7);
  @$pb.TagNumber(8)
  set branch($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasBranch() => $_has(7);
  @$pb.TagNumber(8)
  void clearBranch() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get rep => $_getSZ(8);
  @$pb.TagNumber(9)
  set rep($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasRep() => $_has(8);
  @$pb.TagNumber(9)
  void clearRep() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get contraAccountNo => $_getSZ(9);
  @$pb.TagNumber(10)
  set contraAccountNo($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasContraAccountNo() => $_has(9);
  @$pb.TagNumber(10)
  void clearContraAccountNo() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get broker => $_getSZ(10);
  @$pb.TagNumber(11)
  set broker($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasBroker() => $_has(10);
  @$pb.TagNumber(11)
  void clearBroker() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get type => $_getSZ(11);
  @$pb.TagNumber(12)
  set type($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasType() => $_has(11);
  @$pb.TagNumber(12)
  void clearType() => $_clearField(12);

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
  $core.String get status => $_getSZ(14);
  @$pb.TagNumber(15)
  set status($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasStatus() => $_has(14);
  @$pb.TagNumber(15)
  void clearStatus() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get entryType => $_getSZ(15);
  @$pb.TagNumber(16)
  set entryType($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasEntryType() => $_has(15);
  @$pb.TagNumber(16)
  void clearEntryType() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get side => $_getSZ(16);
  @$pb.TagNumber(17)
  set side($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasSide() => $_has(16);
  @$pb.TagNumber(17)
  void clearSide() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get assetType => $_getSZ(17);
  @$pb.TagNumber(18)
  set assetType($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasAssetType() => $_has(17);
  @$pb.TagNumber(18)
  void clearAssetType() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.int get trnsId => $_getIZ(18);
  @$pb.TagNumber(19)
  set trnsId($core.int value) => $_setUnsignedInt32(18, value);
  @$pb.TagNumber(19)
  $core.bool hasTrnsId() => $_has(18);
  @$pb.TagNumber(19)
  void clearTrnsId() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.bool get asOfTRNS => $_getBF(19);
  @$pb.TagNumber(20)
  set asOfTRNS($core.bool value) => $_setBool(19, value);
  @$pb.TagNumber(20)
  $core.bool hasAsOfTRNS() => $_has(19);
  @$pb.TagNumber(20)
  void clearAsOfTRNS() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.String get searchType => $_getSZ(20);
  @$pb.TagNumber(21)
  set searchType($core.String value) => $_setString(20, value);
  @$pb.TagNumber(21)
  $core.bool hasSearchType() => $_has(20);
  @$pb.TagNumber(21)
  void clearSearchType() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.String get description => $_getSZ(21);
  @$pb.TagNumber(22)
  set description($core.String value) => $_setString(21, value);
  @$pb.TagNumber(22)
  $core.bool hasDescription() => $_has(21);
  @$pb.TagNumber(22)
  void clearDescription() => $_clearField(22);
}

class ListActivityReportDetailsRequest extends $pb.GeneratedMessage {
  factory ListActivityReportDetailsRequest({
    $core.int? reportActivityId,
    $core.bool? isArchived,
  }) {
    final result = create();
    if (reportActivityId != null) result.reportActivityId = reportActivityId;
    if (isArchived != null) result.isArchived = isArchived;
    return result;
  }

  ListActivityReportDetailsRequest._();

  factory ListActivityReportDetailsRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListActivityReportDetailsRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListActivityReportDetailsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'reportActivityId', $pb.PbFieldType.OU3)
    ..aOB(2, _omitFieldNames ? '' : 'isArchived')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListActivityReportDetailsRequest clone() => ListActivityReportDetailsRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListActivityReportDetailsRequest copyWith(void Function(ListActivityReportDetailsRequest) updates) => super.copyWith((message) => updates(message as ListActivityReportDetailsRequest)) as ListActivityReportDetailsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListActivityReportDetailsRequest create() => ListActivityReportDetailsRequest._();
  @$core.override
  ListActivityReportDetailsRequest createEmptyInstance() => create();
  static $pb.PbList<ListActivityReportDetailsRequest> createRepeated() => $pb.PbList<ListActivityReportDetailsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListActivityReportDetailsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListActivityReportDetailsRequest>(create);
  static ListActivityReportDetailsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get reportActivityId => $_getIZ(0);
  @$pb.TagNumber(1)
  set reportActivityId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasReportActivityId() => $_has(0);
  @$pb.TagNumber(1)
  void clearReportActivityId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isArchived => $_getBF(1);
  @$pb.TagNumber(2)
  set isArchived($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsArchived() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsArchived() => $_clearField(2);
}

class ListActivityResponse extends $pb.GeneratedMessage {
  factory ListActivityResponse({
    $core.Iterable<Activity>? activities,
    ListActivitySummary? summary,
    $core.Iterable<$core.String>? otherFeeTypes,
  }) {
    final result = create();
    if (activities != null) result.activities.addAll(activities);
    if (summary != null) result.summary = summary;
    if (otherFeeTypes != null) result.otherFeeTypes.addAll(otherFeeTypes);
    return result;
  }

  ListActivityResponse._();

  factory ListActivityResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListActivityResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListActivityResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..pc<Activity>(1, _omitFieldNames ? '' : 'activities', $pb.PbFieldType.PM, subBuilder: Activity.create)
    ..aOM<ListActivitySummary>(2, _omitFieldNames ? '' : 'summary', subBuilder: ListActivitySummary.create)
    ..pPS(3, _omitFieldNames ? '' : 'otherFeeTypes')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListActivityResponse clone() => ListActivityResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListActivityResponse copyWith(void Function(ListActivityResponse) updates) => super.copyWith((message) => updates(message as ListActivityResponse)) as ListActivityResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListActivityResponse create() => ListActivityResponse._();
  @$core.override
  ListActivityResponse createEmptyInstance() => create();
  static $pb.PbList<ListActivityResponse> createRepeated() => $pb.PbList<ListActivityResponse>();
  @$core.pragma('dart2js:noInline')
  static ListActivityResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListActivityResponse>(create);
  static ListActivityResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Activity> get activities => $_getList(0);

  @$pb.TagNumber(2)
  ListActivitySummary get summary => $_getN(1);
  @$pb.TagNumber(2)
  set summary(ListActivitySummary value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSummary() => $_has(1);
  @$pb.TagNumber(2)
  void clearSummary() => $_clearField(2);
  @$pb.TagNumber(2)
  ListActivitySummary ensureSummary() => $_ensure(1);

  /// Breakdown of other fee types/names in the same order of otherFeeValues, results will only show if breakdownOtherFees search filter is set to true, and search_type = 'Uncompress'
  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get otherFeeTypes => $_getList(2);
}

class ListActivitySummary extends $pb.GeneratedMessage {
  factory ListActivitySummary({
    $core.int? totalRows,
    $core.String? qty,
    $core.String? price,
    $core.String? grossAmt,
    $core.String? regFee,
    $core.String? tafFee,
    $core.String? commission,
    $core.String? fees,
    $core.String? netAmt,
    $core.String? otherFees2,
    $core.String? taxWithholding,
    $core.Iterable<$core.String>? otherFeeTypes,
    $core.Iterable<$core.String>? otherFeeValues,
  }) {
    final result = create();
    if (totalRows != null) result.totalRows = totalRows;
    if (qty != null) result.qty = qty;
    if (price != null) result.price = price;
    if (grossAmt != null) result.grossAmt = grossAmt;
    if (regFee != null) result.regFee = regFee;
    if (tafFee != null) result.tafFee = tafFee;
    if (commission != null) result.commission = commission;
    if (fees != null) result.fees = fees;
    if (netAmt != null) result.netAmt = netAmt;
    if (otherFees2 != null) result.otherFees2 = otherFees2;
    if (taxWithholding != null) result.taxWithholding = taxWithholding;
    if (otherFeeTypes != null) result.otherFeeTypes.addAll(otherFeeTypes);
    if (otherFeeValues != null) result.otherFeeValues.addAll(otherFeeValues);
    return result;
  }

  ListActivitySummary._();

  factory ListActivitySummary.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListActivitySummary.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListActivitySummary', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'totalRows', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'qty')
    ..aOS(3, _omitFieldNames ? '' : 'price')
    ..aOS(4, _omitFieldNames ? '' : 'grossAmt')
    ..aOS(5, _omitFieldNames ? '' : 'regFee')
    ..aOS(6, _omitFieldNames ? '' : 'tafFee')
    ..aOS(7, _omitFieldNames ? '' : 'commission')
    ..aOS(8, _omitFieldNames ? '' : 'fees')
    ..aOS(9, _omitFieldNames ? '' : 'netAmt')
    ..aOS(10, _omitFieldNames ? '' : 'otherFees2', protoName: 'other_fees_2')
    ..aOS(11, _omitFieldNames ? '' : 'taxWithholding')
    ..pPS(12, _omitFieldNames ? '' : 'otherFeeTypes')
    ..pPS(13, _omitFieldNames ? '' : 'otherFeeValues')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListActivitySummary clone() => ListActivitySummary()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListActivitySummary copyWith(void Function(ListActivitySummary) updates) => super.copyWith((message) => updates(message as ListActivitySummary)) as ListActivitySummary;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListActivitySummary create() => ListActivitySummary._();
  @$core.override
  ListActivitySummary createEmptyInstance() => create();
  static $pb.PbList<ListActivitySummary> createRepeated() => $pb.PbList<ListActivitySummary>();
  @$core.pragma('dart2js:noInline')
  static ListActivitySummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListActivitySummary>(create);
  static ListActivitySummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get totalRows => $_getIZ(0);
  @$pb.TagNumber(1)
  set totalRows($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTotalRows() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalRows() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get qty => $_getSZ(1);
  @$pb.TagNumber(2)
  set qty($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasQty() => $_has(1);
  @$pb.TagNumber(2)
  void clearQty() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get price => $_getSZ(2);
  @$pb.TagNumber(3)
  set price($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPrice() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrice() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get grossAmt => $_getSZ(3);
  @$pb.TagNumber(4)
  set grossAmt($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasGrossAmt() => $_has(3);
  @$pb.TagNumber(4)
  void clearGrossAmt() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get regFee => $_getSZ(4);
  @$pb.TagNumber(5)
  set regFee($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRegFee() => $_has(4);
  @$pb.TagNumber(5)
  void clearRegFee() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get tafFee => $_getSZ(5);
  @$pb.TagNumber(6)
  set tafFee($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasTafFee() => $_has(5);
  @$pb.TagNumber(6)
  void clearTafFee() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get commission => $_getSZ(6);
  @$pb.TagNumber(7)
  set commission($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCommission() => $_has(6);
  @$pb.TagNumber(7)
  void clearCommission() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get fees => $_getSZ(7);
  @$pb.TagNumber(8)
  set fees($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasFees() => $_has(7);
  @$pb.TagNumber(8)
  void clearFees() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get netAmt => $_getSZ(8);
  @$pb.TagNumber(9)
  set netAmt($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasNetAmt() => $_has(8);
  @$pb.TagNumber(9)
  void clearNetAmt() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get otherFees2 => $_getSZ(9);
  @$pb.TagNumber(10)
  set otherFees2($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasOtherFees2() => $_has(9);
  @$pb.TagNumber(10)
  void clearOtherFees2() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get taxWithholding => $_getSZ(10);
  @$pb.TagNumber(11)
  set taxWithholding($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasTaxWithholding() => $_has(10);
  @$pb.TagNumber(11)
  void clearTaxWithholding() => $_clearField(11);

  /// Breakdown of other fee types/names in the same order of otherFeeValues, results will only show if breakdownOtherFees search filter is set to true, and search_type = 'Uncompress'
  @$pb.TagNumber(12)
  $pb.PbList<$core.String> get otherFeeTypes => $_getList(11);

  /// Breakdown of other fee values in the same order of otherFeeTypes, results will only show if breakdownOtherFees search filter is set to true, and search_type = 'Uncompress'
  @$pb.TagNumber(13)
  $pb.PbList<$core.String> get otherFeeValues => $_getList(12);
}

class ListActivitiesResponse extends $pb.GeneratedMessage {
  factory ListActivitiesResponse({
    $core.Iterable<Activity>? activities,
    $core.Iterable<$core.String>? otherFeeTypes,
  }) {
    final result = create();
    if (activities != null) result.activities.addAll(activities);
    if (otherFeeTypes != null) result.otherFeeTypes.addAll(otherFeeTypes);
    return result;
  }

  ListActivitiesResponse._();

  factory ListActivitiesResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListActivitiesResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListActivitiesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'reportpb'), createEmptyInstance: create)
    ..pc<Activity>(1, _omitFieldNames ? '' : 'activities', $pb.PbFieldType.PM, subBuilder: Activity.create)
    ..pPS(2, _omitFieldNames ? '' : 'otherFeeTypes')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListActivitiesResponse clone() => ListActivitiesResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListActivitiesResponse copyWith(void Function(ListActivitiesResponse) updates) => super.copyWith((message) => updates(message as ListActivitiesResponse)) as ListActivitiesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListActivitiesResponse create() => ListActivitiesResponse._();
  @$core.override
  ListActivitiesResponse createEmptyInstance() => create();
  static $pb.PbList<ListActivitiesResponse> createRepeated() => $pb.PbList<ListActivitiesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListActivitiesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListActivitiesResponse>(create);
  static ListActivitiesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Activity> get activities => $_getList(0);

  /// Breakdown of other fee types/names in the same order of otherFeeValues, results will only show if breakdownOtherFees search filter is set to true, and search_type = 'Uncompress'
  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get otherFeeTypes => $_getList(1);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
