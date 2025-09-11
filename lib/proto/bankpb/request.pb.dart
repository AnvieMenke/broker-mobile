//
//  Generated code. Do not modify.
//  source: proto/bankpb/request.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/type/timestamp.pb.dart' as $2;
import '../../google/type/date.pb.dart' as $1;
import '../utilspb/pagination.pb.dart' as $3;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Request extends $pb.GeneratedMessage {
  factory Request({
    $core.int? requestId,
    $1.Date? systemDate,
    $core.int? accountId,
    $core.String? correspondent,
    $core.String? branch,
    $core.String? accountNo,
    $core.String? masterAccountNo,
    $core.String? rep,
    $core.int? bankId,
    $core.String? bankAccountNo,
    $core.String? bankRoutingNo,
    $core.String? bankName,
    $core.bool? isInternational,
    $core.String? requestType,
    $core.String? transferType,
    $core.String? amt,
    $core.String? fee,
    $core.String? fedNo,
    $core.String? externalId,
    $core.String? bank,
    $core.String? bankNote,
    $core.String? internalNote,
    $core.String? status,
    $core.String? createdBy,
    $2.Timestamp? createdAt,
    $2.Timestamp? modifiedAt,
    $core.String? modifiedBy,
    $core.String? sendTo,
    $core.int? walletId,
    $core.bool? waiveFee,
    $core.String? dateType,
    $1.Date? processDate,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    if (systemDate != null) result.systemDate = systemDate;
    if (accountId != null) result.accountId = accountId;
    if (correspondent != null) result.correspondent = correspondent;
    if (branch != null) result.branch = branch;
    if (accountNo != null) result.accountNo = accountNo;
    if (masterAccountNo != null) result.masterAccountNo = masterAccountNo;
    if (rep != null) result.rep = rep;
    if (bankId != null) result.bankId = bankId;
    if (bankAccountNo != null) result.bankAccountNo = bankAccountNo;
    if (bankRoutingNo != null) result.bankRoutingNo = bankRoutingNo;
    if (bankName != null) result.bankName = bankName;
    if (isInternational != null) result.isInternational = isInternational;
    if (requestType != null) result.requestType = requestType;
    if (transferType != null) result.transferType = transferType;
    if (amt != null) result.amt = amt;
    if (fee != null) result.fee = fee;
    if (fedNo != null) result.fedNo = fedNo;
    if (externalId != null) result.externalId = externalId;
    if (bank != null) result.bank = bank;
    if (bankNote != null) result.bankNote = bankNote;
    if (internalNote != null) result.internalNote = internalNote;
    if (status != null) result.status = status;
    if (createdBy != null) result.createdBy = createdBy;
    if (createdAt != null) result.createdAt = createdAt;
    if (modifiedAt != null) result.modifiedAt = modifiedAt;
    if (modifiedBy != null) result.modifiedBy = modifiedBy;
    if (sendTo != null) result.sendTo = sendTo;
    if (walletId != null) result.walletId = walletId;
    if (waiveFee != null) result.waiveFee = waiveFee;
    if (dateType != null) result.dateType = dateType;
    if (processDate != null) result.processDate = processDate;
    return result;
  }

  Request._();

  factory Request.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Request.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Request', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU3)
    ..aOM<$1.Date>(2, _omitFieldNames ? '' : 'systemDate', subBuilder: $1.Date.create)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'accountId', $pb.PbFieldType.OU3)
    ..aOS(6, _omitFieldNames ? '' : 'correspondent')
    ..aOS(7, _omitFieldNames ? '' : 'branch')
    ..aOS(8, _omitFieldNames ? '' : 'accountNo')
    ..aOS(9, _omitFieldNames ? '' : 'masterAccountNo')
    ..aOS(10, _omitFieldNames ? '' : 'rep')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'bankId', $pb.PbFieldType.OU3)
    ..aOS(12, _omitFieldNames ? '' : 'bankAccountNo')
    ..aOS(13, _omitFieldNames ? '' : 'bankRoutingNo')
    ..aOS(14, _omitFieldNames ? '' : 'bankName')
    ..aOB(15, _omitFieldNames ? '' : 'isInternational')
    ..aOS(16, _omitFieldNames ? '' : 'requestType')
    ..aOS(17, _omitFieldNames ? '' : 'transferType')
    ..aOS(18, _omitFieldNames ? '' : 'amt')
    ..aOS(19, _omitFieldNames ? '' : 'fee')
    ..aOS(20, _omitFieldNames ? '' : 'fedNo')
    ..aOS(21, _omitFieldNames ? '' : 'externalId')
    ..aOS(22, _omitFieldNames ? '' : 'bank')
    ..aOS(23, _omitFieldNames ? '' : 'bankNote')
    ..aOS(24, _omitFieldNames ? '' : 'internalNote')
    ..aOS(25, _omitFieldNames ? '' : 'status')
    ..aOS(26, _omitFieldNames ? '' : 'createdBy')
    ..aOM<$2.Timestamp>(27, _omitFieldNames ? '' : 'createdAt', subBuilder: $2.Timestamp.create)
    ..aOM<$2.Timestamp>(28, _omitFieldNames ? '' : 'modifiedAt', subBuilder: $2.Timestamp.create)
    ..aOS(29, _omitFieldNames ? '' : 'modifiedBy')
    ..aOS(30, _omitFieldNames ? '' : 'sendTo')
    ..a<$core.int>(31, _omitFieldNames ? '' : 'walletId', $pb.PbFieldType.OU3)
    ..aOB(32, _omitFieldNames ? '' : 'waiveFee')
    ..aOS(33, _omitFieldNames ? '' : 'dateType')
    ..aOM<$1.Date>(34, _omitFieldNames ? '' : 'processDate', subBuilder: $1.Date.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Request clone() => Request()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Request copyWith(void Function(Request) updates) => super.copyWith((message) => updates(message as Request)) as Request;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Request create() => Request._();
  @$core.override
  Request createEmptyInstance() => create();
  static $pb.PbList<Request> createRepeated() => $pb.PbList<Request>();
  @$core.pragma('dart2js:noInline')
  static Request getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Request>(create);
  static Request? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get requestId => $_getIZ(0);
  @$pb.TagNumber(1)
  set requestId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);

  @$pb.TagNumber(2)
  $1.Date get systemDate => $_getN(1);
  @$pb.TagNumber(2)
  set systemDate($1.Date value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSystemDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearSystemDate() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Date ensureSystemDate() => $_ensure(1);

  @$pb.TagNumber(5)
  $core.int get accountId => $_getIZ(2);
  @$pb.TagNumber(5)
  set accountId($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(5)
  $core.bool hasAccountId() => $_has(2);
  @$pb.TagNumber(5)
  void clearAccountId() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get correspondent => $_getSZ(3);
  @$pb.TagNumber(6)
  set correspondent($core.String value) => $_setString(3, value);
  @$pb.TagNumber(6)
  $core.bool hasCorrespondent() => $_has(3);
  @$pb.TagNumber(6)
  void clearCorrespondent() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get branch => $_getSZ(4);
  @$pb.TagNumber(7)
  set branch($core.String value) => $_setString(4, value);
  @$pb.TagNumber(7)
  $core.bool hasBranch() => $_has(4);
  @$pb.TagNumber(7)
  void clearBranch() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get accountNo => $_getSZ(5);
  @$pb.TagNumber(8)
  set accountNo($core.String value) => $_setString(5, value);
  @$pb.TagNumber(8)
  $core.bool hasAccountNo() => $_has(5);
  @$pb.TagNumber(8)
  void clearAccountNo() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get masterAccountNo => $_getSZ(6);
  @$pb.TagNumber(9)
  set masterAccountNo($core.String value) => $_setString(6, value);
  @$pb.TagNumber(9)
  $core.bool hasMasterAccountNo() => $_has(6);
  @$pb.TagNumber(9)
  void clearMasterAccountNo() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get rep => $_getSZ(7);
  @$pb.TagNumber(10)
  set rep($core.String value) => $_setString(7, value);
  @$pb.TagNumber(10)
  $core.bool hasRep() => $_has(7);
  @$pb.TagNumber(10)
  void clearRep() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get bankId => $_getIZ(8);
  @$pb.TagNumber(11)
  set bankId($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(11)
  $core.bool hasBankId() => $_has(8);
  @$pb.TagNumber(11)
  void clearBankId() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get bankAccountNo => $_getSZ(9);
  @$pb.TagNumber(12)
  set bankAccountNo($core.String value) => $_setString(9, value);
  @$pb.TagNumber(12)
  $core.bool hasBankAccountNo() => $_has(9);
  @$pb.TagNumber(12)
  void clearBankAccountNo() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get bankRoutingNo => $_getSZ(10);
  @$pb.TagNumber(13)
  set bankRoutingNo($core.String value) => $_setString(10, value);
  @$pb.TagNumber(13)
  $core.bool hasBankRoutingNo() => $_has(10);
  @$pb.TagNumber(13)
  void clearBankRoutingNo() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get bankName => $_getSZ(11);
  @$pb.TagNumber(14)
  set bankName($core.String value) => $_setString(11, value);
  @$pb.TagNumber(14)
  $core.bool hasBankName() => $_has(11);
  @$pb.TagNumber(14)
  void clearBankName() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.bool get isInternational => $_getBF(12);
  @$pb.TagNumber(15)
  set isInternational($core.bool value) => $_setBool(12, value);
  @$pb.TagNumber(15)
  $core.bool hasIsInternational() => $_has(12);
  @$pb.TagNumber(15)
  void clearIsInternational() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get requestType => $_getSZ(13);
  @$pb.TagNumber(16)
  set requestType($core.String value) => $_setString(13, value);
  @$pb.TagNumber(16)
  $core.bool hasRequestType() => $_has(13);
  @$pb.TagNumber(16)
  void clearRequestType() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get transferType => $_getSZ(14);
  @$pb.TagNumber(17)
  set transferType($core.String value) => $_setString(14, value);
  @$pb.TagNumber(17)
  $core.bool hasTransferType() => $_has(14);
  @$pb.TagNumber(17)
  void clearTransferType() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get amt => $_getSZ(15);
  @$pb.TagNumber(18)
  set amt($core.String value) => $_setString(15, value);
  @$pb.TagNumber(18)
  $core.bool hasAmt() => $_has(15);
  @$pb.TagNumber(18)
  void clearAmt() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.String get fee => $_getSZ(16);
  @$pb.TagNumber(19)
  set fee($core.String value) => $_setString(16, value);
  @$pb.TagNumber(19)
  $core.bool hasFee() => $_has(16);
  @$pb.TagNumber(19)
  void clearFee() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get fedNo => $_getSZ(17);
  @$pb.TagNumber(20)
  set fedNo($core.String value) => $_setString(17, value);
  @$pb.TagNumber(20)
  $core.bool hasFedNo() => $_has(17);
  @$pb.TagNumber(20)
  void clearFedNo() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.String get externalId => $_getSZ(18);
  @$pb.TagNumber(21)
  set externalId($core.String value) => $_setString(18, value);
  @$pb.TagNumber(21)
  $core.bool hasExternalId() => $_has(18);
  @$pb.TagNumber(21)
  void clearExternalId() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.String get bank => $_getSZ(19);
  @$pb.TagNumber(22)
  set bank($core.String value) => $_setString(19, value);
  @$pb.TagNumber(22)
  $core.bool hasBank() => $_has(19);
  @$pb.TagNumber(22)
  void clearBank() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.String get bankNote => $_getSZ(20);
  @$pb.TagNumber(23)
  set bankNote($core.String value) => $_setString(20, value);
  @$pb.TagNumber(23)
  $core.bool hasBankNote() => $_has(20);
  @$pb.TagNumber(23)
  void clearBankNote() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.String get internalNote => $_getSZ(21);
  @$pb.TagNumber(24)
  set internalNote($core.String value) => $_setString(21, value);
  @$pb.TagNumber(24)
  $core.bool hasInternalNote() => $_has(21);
  @$pb.TagNumber(24)
  void clearInternalNote() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.String get status => $_getSZ(22);
  @$pb.TagNumber(25)
  set status($core.String value) => $_setString(22, value);
  @$pb.TagNumber(25)
  $core.bool hasStatus() => $_has(22);
  @$pb.TagNumber(25)
  void clearStatus() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.String get createdBy => $_getSZ(23);
  @$pb.TagNumber(26)
  set createdBy($core.String value) => $_setString(23, value);
  @$pb.TagNumber(26)
  $core.bool hasCreatedBy() => $_has(23);
  @$pb.TagNumber(26)
  void clearCreatedBy() => $_clearField(26);

  @$pb.TagNumber(27)
  $2.Timestamp get createdAt => $_getN(24);
  @$pb.TagNumber(27)
  set createdAt($2.Timestamp value) => $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasCreatedAt() => $_has(24);
  @$pb.TagNumber(27)
  void clearCreatedAt() => $_clearField(27);
  @$pb.TagNumber(27)
  $2.Timestamp ensureCreatedAt() => $_ensure(24);

  @$pb.TagNumber(28)
  $2.Timestamp get modifiedAt => $_getN(25);
  @$pb.TagNumber(28)
  set modifiedAt($2.Timestamp value) => $_setField(28, value);
  @$pb.TagNumber(28)
  $core.bool hasModifiedAt() => $_has(25);
  @$pb.TagNumber(28)
  void clearModifiedAt() => $_clearField(28);
  @$pb.TagNumber(28)
  $2.Timestamp ensureModifiedAt() => $_ensure(25);

  @$pb.TagNumber(29)
  $core.String get modifiedBy => $_getSZ(26);
  @$pb.TagNumber(29)
  set modifiedBy($core.String value) => $_setString(26, value);
  @$pb.TagNumber(29)
  $core.bool hasModifiedBy() => $_has(26);
  @$pb.TagNumber(29)
  void clearModifiedBy() => $_clearField(29);

  @$pb.TagNumber(30)
  $core.String get sendTo => $_getSZ(27);
  @$pb.TagNumber(30)
  set sendTo($core.String value) => $_setString(27, value);
  @$pb.TagNumber(30)
  $core.bool hasSendTo() => $_has(27);
  @$pb.TagNumber(30)
  void clearSendTo() => $_clearField(30);

  @$pb.TagNumber(31)
  $core.int get walletId => $_getIZ(28);
  @$pb.TagNumber(31)
  set walletId($core.int value) => $_setUnsignedInt32(28, value);
  @$pb.TagNumber(31)
  $core.bool hasWalletId() => $_has(28);
  @$pb.TagNumber(31)
  void clearWalletId() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.bool get waiveFee => $_getBF(29);
  @$pb.TagNumber(32)
  set waiveFee($core.bool value) => $_setBool(29, value);
  @$pb.TagNumber(32)
  $core.bool hasWaiveFee() => $_has(29);
  @$pb.TagNumber(32)
  void clearWaiveFee() => $_clearField(32);

  @$pb.TagNumber(33)
  $core.String get dateType => $_getSZ(30);
  @$pb.TagNumber(33)
  set dateType($core.String value) => $_setString(30, value);
  @$pb.TagNumber(33)
  $core.bool hasDateType() => $_has(30);
  @$pb.TagNumber(33)
  void clearDateType() => $_clearField(33);

  @$pb.TagNumber(34)
  $1.Date get processDate => $_getN(31);
  @$pb.TagNumber(34)
  set processDate($1.Date value) => $_setField(34, value);
  @$pb.TagNumber(34)
  $core.bool hasProcessDate() => $_has(31);
  @$pb.TagNumber(34)
  void clearProcessDate() => $_clearField(34);
  @$pb.TagNumber(34)
  $1.Date ensureProcessDate() => $_ensure(31);
}

class CreateRequest extends $pb.GeneratedMessage {
  factory CreateRequest({
    $core.String? correspondent,
    $core.String? accountNo,
    $core.int? bankId,
    $core.String? requestType,
    $core.String? transferType,
    $core.String? amt,
    $core.String? fee,
    $core.String? fedNo,
    $core.String? externalId,
    $core.String? bank,
    $core.String? bankNote,
    $core.String? internalNote,
    $core.String? status,
    $core.String? sendTo,
    $core.int? walletId,
    $core.int? requestId,
  }) {
    final result = create();
    if (correspondent != null) result.correspondent = correspondent;
    if (accountNo != null) result.accountNo = accountNo;
    if (bankId != null) result.bankId = bankId;
    if (requestType != null) result.requestType = requestType;
    if (transferType != null) result.transferType = transferType;
    if (amt != null) result.amt = amt;
    if (fee != null) result.fee = fee;
    if (fedNo != null) result.fedNo = fedNo;
    if (externalId != null) result.externalId = externalId;
    if (bank != null) result.bank = bank;
    if (bankNote != null) result.bankNote = bankNote;
    if (internalNote != null) result.internalNote = internalNote;
    if (status != null) result.status = status;
    if (sendTo != null) result.sendTo = sendTo;
    if (walletId != null) result.walletId = walletId;
    if (requestId != null) result.requestId = requestId;
    return result;
  }

  CreateRequest._();

  factory CreateRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory CreateRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'correspondent')
    ..aOS(2, _omitFieldNames ? '' : 'accountNo')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'bankId', $pb.PbFieldType.OU3)
    ..aOS(4, _omitFieldNames ? '' : 'requestType')
    ..aOS(5, _omitFieldNames ? '' : 'transferType')
    ..aOS(6, _omitFieldNames ? '' : 'amt')
    ..aOS(7, _omitFieldNames ? '' : 'fee')
    ..aOS(8, _omitFieldNames ? '' : 'fedNo')
    ..aOS(9, _omitFieldNames ? '' : 'externalId')
    ..aOS(10, _omitFieldNames ? '' : 'bank')
    ..aOS(11, _omitFieldNames ? '' : 'bankNote')
    ..aOS(12, _omitFieldNames ? '' : 'internalNote')
    ..aOS(13, _omitFieldNames ? '' : 'status')
    ..aOS(14, _omitFieldNames ? '' : 'sendTo')
    ..a<$core.int>(31, _omitFieldNames ? '' : 'walletId', $pb.PbFieldType.OU3)
    ..a<$core.int>(32, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateRequest clone() => CreateRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateRequest copyWith(void Function(CreateRequest) updates) => super.copyWith((message) => updates(message as CreateRequest)) as CreateRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRequest create() => CreateRequest._();
  @$core.override
  CreateRequest createEmptyInstance() => create();
  static $pb.PbList<CreateRequest> createRepeated() => $pb.PbList<CreateRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRequest>(create);
  static CreateRequest? _defaultInstance;

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
  $core.int get bankId => $_getIZ(2);
  @$pb.TagNumber(3)
  set bankId($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBankId() => $_has(2);
  @$pb.TagNumber(3)
  void clearBankId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get requestType => $_getSZ(3);
  @$pb.TagNumber(4)
  set requestType($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRequestType() => $_has(3);
  @$pb.TagNumber(4)
  void clearRequestType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get transferType => $_getSZ(4);
  @$pb.TagNumber(5)
  set transferType($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTransferType() => $_has(4);
  @$pb.TagNumber(5)
  void clearTransferType() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get amt => $_getSZ(5);
  @$pb.TagNumber(6)
  set amt($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAmt() => $_has(5);
  @$pb.TagNumber(6)
  void clearAmt() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get fee => $_getSZ(6);
  @$pb.TagNumber(7)
  set fee($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasFee() => $_has(6);
  @$pb.TagNumber(7)
  void clearFee() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get fedNo => $_getSZ(7);
  @$pb.TagNumber(8)
  set fedNo($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasFedNo() => $_has(7);
  @$pb.TagNumber(8)
  void clearFedNo() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get externalId => $_getSZ(8);
  @$pb.TagNumber(9)
  set externalId($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasExternalId() => $_has(8);
  @$pb.TagNumber(9)
  void clearExternalId() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get bank => $_getSZ(9);
  @$pb.TagNumber(10)
  set bank($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasBank() => $_has(9);
  @$pb.TagNumber(10)
  void clearBank() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get bankNote => $_getSZ(10);
  @$pb.TagNumber(11)
  set bankNote($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasBankNote() => $_has(10);
  @$pb.TagNumber(11)
  void clearBankNote() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get internalNote => $_getSZ(11);
  @$pb.TagNumber(12)
  set internalNote($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasInternalNote() => $_has(11);
  @$pb.TagNumber(12)
  void clearInternalNote() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get status => $_getSZ(12);
  @$pb.TagNumber(13)
  set status($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasStatus() => $_has(12);
  @$pb.TagNumber(13)
  void clearStatus() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get sendTo => $_getSZ(13);
  @$pb.TagNumber(14)
  set sendTo($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasSendTo() => $_has(13);
  @$pb.TagNumber(14)
  void clearSendTo() => $_clearField(14);

  @$pb.TagNumber(31)
  $core.int get walletId => $_getIZ(14);
  @$pb.TagNumber(31)
  set walletId($core.int value) => $_setUnsignedInt32(14, value);
  @$pb.TagNumber(31)
  $core.bool hasWalletId() => $_has(14);
  @$pb.TagNumber(31)
  void clearWalletId() => $_clearField(31);

  @$pb.TagNumber(32)
  $core.int get requestId => $_getIZ(15);
  @$pb.TagNumber(32)
  set requestId($core.int value) => $_setUnsignedInt32(15, value);
  @$pb.TagNumber(32)
  $core.bool hasRequestId() => $_has(15);
  @$pb.TagNumber(32)
  void clearRequestId() => $_clearField(32);
}

class CreateResponse extends $pb.GeneratedMessage {
  factory CreateResponse({
    Request? request,
  }) {
    final result = create();
    if (request != null) result.request = request;
    return result;
  }

  CreateResponse._();

  factory CreateResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory CreateResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'), createEmptyInstance: create)
    ..aOM<Request>(1, _omitFieldNames ? '' : 'request', subBuilder: Request.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateResponse clone() => CreateResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateResponse copyWith(void Function(CreateResponse) updates) => super.copyWith((message) => updates(message as CreateResponse)) as CreateResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateResponse create() => CreateResponse._();
  @$core.override
  CreateResponse createEmptyInstance() => create();
  static $pb.PbList<CreateResponse> createRepeated() => $pb.PbList<CreateResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateResponse>(create);
  static CreateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Request get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(Request value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => $_clearField(1);
  @$pb.TagNumber(1)
  Request ensureRequest() => $_ensure(0);
}

class UpdateRequest extends $pb.GeneratedMessage {
  factory UpdateRequest({
    $core.int? requestId,
    $core.String? externalId,
    $core.String? fedNo,
    $core.String? internalNote,
    $core.String? status,
    $core.String? fee,
    $core.String? amt,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    if (externalId != null) result.externalId = externalId;
    if (fedNo != null) result.fedNo = fedNo;
    if (internalNote != null) result.internalNote = internalNote;
    if (status != null) result.status = status;
    if (fee != null) result.fee = fee;
    if (amt != null) result.amt = amt;
    return result;
  }

  UpdateRequest._();

  factory UpdateRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory UpdateRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'externalId')
    ..aOS(3, _omitFieldNames ? '' : 'fedNo')
    ..aOS(4, _omitFieldNames ? '' : 'internalNote')
    ..aOS(5, _omitFieldNames ? '' : 'status')
    ..aOS(6, _omitFieldNames ? '' : 'fee')
    ..aOS(7, _omitFieldNames ? '' : 'amt')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateRequest clone() => UpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateRequest copyWith(void Function(UpdateRequest) updates) => super.copyWith((message) => updates(message as UpdateRequest)) as UpdateRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateRequest create() => UpdateRequest._();
  @$core.override
  UpdateRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateRequest> createRepeated() => $pb.PbList<UpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateRequest>(create);
  static UpdateRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get requestId => $_getIZ(0);
  @$pb.TagNumber(1)
  set requestId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get externalId => $_getSZ(1);
  @$pb.TagNumber(2)
  set externalId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasExternalId() => $_has(1);
  @$pb.TagNumber(2)
  void clearExternalId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get fedNo => $_getSZ(2);
  @$pb.TagNumber(3)
  set fedNo($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFedNo() => $_has(2);
  @$pb.TagNumber(3)
  void clearFedNo() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get internalNote => $_getSZ(3);
  @$pb.TagNumber(4)
  set internalNote($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasInternalNote() => $_has(3);
  @$pb.TagNumber(4)
  void clearInternalNote() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get status => $_getSZ(4);
  @$pb.TagNumber(5)
  set status($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get fee => $_getSZ(5);
  @$pb.TagNumber(6)
  set fee($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasFee() => $_has(5);
  @$pb.TagNumber(6)
  void clearFee() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get amt => $_getSZ(6);
  @$pb.TagNumber(7)
  set amt($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasAmt() => $_has(6);
  @$pb.TagNumber(7)
  void clearAmt() => $_clearField(7);
}

class UpdateResponse extends $pb.GeneratedMessage {
  factory UpdateResponse({
    Request? request,
  }) {
    final result = create();
    if (request != null) result.request = request;
    return result;
  }

  UpdateResponse._();

  factory UpdateResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory UpdateResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'), createEmptyInstance: create)
    ..aOM<Request>(1, _omitFieldNames ? '' : 'request', subBuilder: Request.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateResponse clone() => UpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateResponse copyWith(void Function(UpdateResponse) updates) => super.copyWith((message) => updates(message as UpdateResponse)) as UpdateResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateResponse create() => UpdateResponse._();
  @$core.override
  UpdateResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateResponse> createRepeated() => $pb.PbList<UpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateResponse>(create);
  static UpdateResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Request get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(Request value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => $_clearField(1);
  @$pb.TagNumber(1)
  Request ensureRequest() => $_ensure(0);
}

class ReadRequest extends $pb.GeneratedMessage {
  factory ReadRequest({
    $core.int? requestId,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    return result;
  }

  ReadRequest._();

  factory ReadRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ReadRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadRequest clone() => ReadRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadRequest copyWith(void Function(ReadRequest) updates) => super.copyWith((message) => updates(message as ReadRequest)) as ReadRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadRequest create() => ReadRequest._();
  @$core.override
  ReadRequest createEmptyInstance() => create();
  static $pb.PbList<ReadRequest> createRepeated() => $pb.PbList<ReadRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadRequest>(create);
  static ReadRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get requestId => $_getIZ(0);
  @$pb.TagNumber(1)
  set requestId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);
}

class ReadResponse extends $pb.GeneratedMessage {
  factory ReadResponse({
    Request? request,
  }) {
    final result = create();
    if (request != null) result.request = request;
    return result;
  }

  ReadResponse._();

  factory ReadResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ReadResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'), createEmptyInstance: create)
    ..aOM<Request>(1, _omitFieldNames ? '' : 'request', subBuilder: Request.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadResponse clone() => ReadResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadResponse copyWith(void Function(ReadResponse) updates) => super.copyWith((message) => updates(message as ReadResponse)) as ReadResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadResponse create() => ReadResponse._();
  @$core.override
  ReadResponse createEmptyInstance() => create();
  static $pb.PbList<ReadResponse> createRepeated() => $pb.PbList<ReadResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadResponse>(create);
  static ReadResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Request get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(Request value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => $_clearField(1);
  @$pb.TagNumber(1)
  Request ensureRequest() => $_ensure(0);
}

class ListRequest extends $pb.GeneratedMessage {
  factory ListRequest({
    $core.String? correspondent,
    $core.String? accountNo,
    $core.String? masterAccountNo,
    $core.String? transferType,
    $core.String? status,
    $core.String? requestType,
    $1.Date? fromDate,
    $1.Date? toDate,
    $core.String? branch,
    $core.String? rep,
    $core.String? externalId,
    $core.int? requestId,
    $core.String? sign,
    $core.String? amount,
    $core.bool? isOpen,
    $3.Pagination? pagination,
    $core.String? dateType,
  }) {
    final result = create();
    if (correspondent != null) result.correspondent = correspondent;
    if (accountNo != null) result.accountNo = accountNo;
    if (masterAccountNo != null) result.masterAccountNo = masterAccountNo;
    if (transferType != null) result.transferType = transferType;
    if (status != null) result.status = status;
    if (requestType != null) result.requestType = requestType;
    if (fromDate != null) result.fromDate = fromDate;
    if (toDate != null) result.toDate = toDate;
    if (branch != null) result.branch = branch;
    if (rep != null) result.rep = rep;
    if (externalId != null) result.externalId = externalId;
    if (requestId != null) result.requestId = requestId;
    if (sign != null) result.sign = sign;
    if (amount != null) result.amount = amount;
    if (isOpen != null) result.isOpen = isOpen;
    if (pagination != null) result.pagination = pagination;
    if (dateType != null) result.dateType = dateType;
    return result;
  }

  ListRequest._();

  factory ListRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'correspondent')
    ..aOS(2, _omitFieldNames ? '' : 'accountNo')
    ..aOS(3, _omitFieldNames ? '' : 'masterAccountNo')
    ..aOS(4, _omitFieldNames ? '' : 'transferType')
    ..aOS(5, _omitFieldNames ? '' : 'status')
    ..aOS(6, _omitFieldNames ? '' : 'requestType')
    ..aOM<$1.Date>(7, _omitFieldNames ? '' : 'fromDate', subBuilder: $1.Date.create)
    ..aOM<$1.Date>(8, _omitFieldNames ? '' : 'toDate', subBuilder: $1.Date.create)
    ..aOS(9, _omitFieldNames ? '' : 'branch')
    ..aOS(10, _omitFieldNames ? '' : 'rep')
    ..aOS(11, _omitFieldNames ? '' : 'externalId')
    ..a<$core.int>(12, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU3)
    ..aOS(13, _omitFieldNames ? '' : 'sign')
    ..aOS(14, _omitFieldNames ? '' : 'amount')
    ..aOB(15, _omitFieldNames ? '' : 'isOpen')
    ..aOM<$3.Pagination>(16, _omitFieldNames ? '' : 'pagination', subBuilder: $3.Pagination.create)
    ..aOS(17, _omitFieldNames ? '' : 'dateType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListRequest clone() => ListRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListRequest copyWith(void Function(ListRequest) updates) => super.copyWith((message) => updates(message as ListRequest)) as ListRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRequest create() => ListRequest._();
  @$core.override
  ListRequest createEmptyInstance() => create();
  static $pb.PbList<ListRequest> createRepeated() => $pb.PbList<ListRequest>();
  @$core.pragma('dart2js:noInline')
  static ListRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRequest>(create);
  static ListRequest? _defaultInstance;

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
  $core.String get masterAccountNo => $_getSZ(2);
  @$pb.TagNumber(3)
  set masterAccountNo($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMasterAccountNo() => $_has(2);
  @$pb.TagNumber(3)
  void clearMasterAccountNo() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get transferType => $_getSZ(3);
  @$pb.TagNumber(4)
  set transferType($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTransferType() => $_has(3);
  @$pb.TagNumber(4)
  void clearTransferType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get status => $_getSZ(4);
  @$pb.TagNumber(5)
  set status($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasStatus() => $_has(4);
  @$pb.TagNumber(5)
  void clearStatus() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get requestType => $_getSZ(5);
  @$pb.TagNumber(6)
  set requestType($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRequestType() => $_has(5);
  @$pb.TagNumber(6)
  void clearRequestType() => $_clearField(6);

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
  $core.String get externalId => $_getSZ(10);
  @$pb.TagNumber(11)
  set externalId($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasExternalId() => $_has(10);
  @$pb.TagNumber(11)
  void clearExternalId() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get requestId => $_getIZ(11);
  @$pb.TagNumber(12)
  set requestId($core.int value) => $_setUnsignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasRequestId() => $_has(11);
  @$pb.TagNumber(12)
  void clearRequestId() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get sign => $_getSZ(12);
  @$pb.TagNumber(13)
  set sign($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasSign() => $_has(12);
  @$pb.TagNumber(13)
  void clearSign() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get amount => $_getSZ(13);
  @$pb.TagNumber(14)
  set amount($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasAmount() => $_has(13);
  @$pb.TagNumber(14)
  void clearAmount() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.bool get isOpen => $_getBF(14);
  @$pb.TagNumber(15)
  set isOpen($core.bool value) => $_setBool(14, value);
  @$pb.TagNumber(15)
  $core.bool hasIsOpen() => $_has(14);
  @$pb.TagNumber(15)
  void clearIsOpen() => $_clearField(15);

  @$pb.TagNumber(16)
  $3.Pagination get pagination => $_getN(15);
  @$pb.TagNumber(16)
  set pagination($3.Pagination value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasPagination() => $_has(15);
  @$pb.TagNumber(16)
  void clearPagination() => $_clearField(16);
  @$pb.TagNumber(16)
  $3.Pagination ensurePagination() => $_ensure(15);

  @$pb.TagNumber(17)
  $core.String get dateType => $_getSZ(16);
  @$pb.TagNumber(17)
  set dateType($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasDateType() => $_has(16);
  @$pb.TagNumber(17)
  void clearDateType() => $_clearField(17);
}

class ListSummary extends $pb.GeneratedMessage {
  factory ListSummary({
    $core.int? totalRows,
    $core.String? amt,
    $core.String? fee,
  }) {
    final result = create();
    if (totalRows != null) result.totalRows = totalRows;
    if (amt != null) result.amt = amt;
    if (fee != null) result.fee = fee;
    return result;
  }

  ListSummary._();

  factory ListSummary.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListSummary.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListSummary', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'totalRows', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'amt')
    ..aOS(3, _omitFieldNames ? '' : 'fee')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSummary clone() => ListSummary()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSummary copyWith(void Function(ListSummary) updates) => super.copyWith((message) => updates(message as ListSummary)) as ListSummary;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListSummary create() => ListSummary._();
  @$core.override
  ListSummary createEmptyInstance() => create();
  static $pb.PbList<ListSummary> createRepeated() => $pb.PbList<ListSummary>();
  @$core.pragma('dart2js:noInline')
  static ListSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListSummary>(create);
  static ListSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get totalRows => $_getIZ(0);
  @$pb.TagNumber(1)
  set totalRows($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTotalRows() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalRows() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get amt => $_getSZ(1);
  @$pb.TagNumber(2)
  set amt($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAmt() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmt() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get fee => $_getSZ(2);
  @$pb.TagNumber(3)
  set fee($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFee() => $_has(2);
  @$pb.TagNumber(3)
  void clearFee() => $_clearField(3);
}

class ListResponse extends $pb.GeneratedMessage {
  factory ListResponse({
    $core.Iterable<Request>? requests,
    ListSummary? summary,
  }) {
    final result = create();
    if (requests != null) result.requests.addAll(requests);
    if (summary != null) result.summary = summary;
    return result;
  }

  ListResponse._();

  factory ListResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'), createEmptyInstance: create)
    ..pc<Request>(1, _omitFieldNames ? '' : 'requests', $pb.PbFieldType.PM, subBuilder: Request.create)
    ..aOM<ListSummary>(2, _omitFieldNames ? '' : 'summary', subBuilder: ListSummary.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListResponse clone() => ListResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListResponse copyWith(void Function(ListResponse) updates) => super.copyWith((message) => updates(message as ListResponse)) as ListResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListResponse create() => ListResponse._();
  @$core.override
  ListResponse createEmptyInstance() => create();
  static $pb.PbList<ListResponse> createRepeated() => $pb.PbList<ListResponse>();
  @$core.pragma('dart2js:noInline')
  static ListResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListResponse>(create);
  static ListResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Request> get requests => $_getList(0);

  @$pb.TagNumber(2)
  ListSummary get summary => $_getN(1);
  @$pb.TagNumber(2)
  set summary(ListSummary value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSummary() => $_has(1);
  @$pb.TagNumber(2)
  void clearSummary() => $_clearField(2);
  @$pb.TagNumber(2)
  ListSummary ensureSummary() => $_ensure(1);
}

class ListRequestAuditRequest extends $pb.GeneratedMessage {
  factory ListRequestAuditRequest({
    $core.int? requestId,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    return result;
  }

  ListRequestAuditRequest._();

  factory ListRequestAuditRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListRequestAuditRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListRequestAuditRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListRequestAuditRequest clone() => ListRequestAuditRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListRequestAuditRequest copyWith(void Function(ListRequestAuditRequest) updates) => super.copyWith((message) => updates(message as ListRequestAuditRequest)) as ListRequestAuditRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRequestAuditRequest create() => ListRequestAuditRequest._();
  @$core.override
  ListRequestAuditRequest createEmptyInstance() => create();
  static $pb.PbList<ListRequestAuditRequest> createRepeated() => $pb.PbList<ListRequestAuditRequest>();
  @$core.pragma('dart2js:noInline')
  static ListRequestAuditRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRequestAuditRequest>(create);
  static ListRequestAuditRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get requestId => $_getIZ(0);
  @$pb.TagNumber(1)
  set requestId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);
}

class ListRequestAuditResponse extends $pb.GeneratedMessage {
  factory ListRequestAuditResponse({
    $core.Iterable<Request>? request,
  }) {
    final result = create();
    if (request != null) result.request.addAll(request);
    return result;
  }

  ListRequestAuditResponse._();

  factory ListRequestAuditResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListRequestAuditResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListRequestAuditResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'), createEmptyInstance: create)
    ..pc<Request>(1, _omitFieldNames ? '' : 'request', $pb.PbFieldType.PM, subBuilder: Request.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListRequestAuditResponse clone() => ListRequestAuditResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListRequestAuditResponse copyWith(void Function(ListRequestAuditResponse) updates) => super.copyWith((message) => updates(message as ListRequestAuditResponse)) as ListRequestAuditResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListRequestAuditResponse create() => ListRequestAuditResponse._();
  @$core.override
  ListRequestAuditResponse createEmptyInstance() => create();
  static $pb.PbList<ListRequestAuditResponse> createRepeated() => $pb.PbList<ListRequestAuditResponse>();
  @$core.pragma('dart2js:noInline')
  static ListRequestAuditResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListRequestAuditResponse>(create);
  static ListRequestAuditResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Request> get request => $_getList(0);
}

class ReadMaximumWithdrawableRequest extends $pb.GeneratedMessage {
  factory ReadMaximumWithdrawableRequest({
    $core.String? correspondent,
    $core.String? accountNo,
  }) {
    final result = create();
    if (correspondent != null) result.correspondent = correspondent;
    if (accountNo != null) result.accountNo = accountNo;
    return result;
  }

  ReadMaximumWithdrawableRequest._();

  factory ReadMaximumWithdrawableRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ReadMaximumWithdrawableRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadMaximumWithdrawableRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'correspondent')
    ..aOS(2, _omitFieldNames ? '' : 'accountNo')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadMaximumWithdrawableRequest clone() => ReadMaximumWithdrawableRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadMaximumWithdrawableRequest copyWith(void Function(ReadMaximumWithdrawableRequest) updates) => super.copyWith((message) => updates(message as ReadMaximumWithdrawableRequest)) as ReadMaximumWithdrawableRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadMaximumWithdrawableRequest create() => ReadMaximumWithdrawableRequest._();
  @$core.override
  ReadMaximumWithdrawableRequest createEmptyInstance() => create();
  static $pb.PbList<ReadMaximumWithdrawableRequest> createRepeated() => $pb.PbList<ReadMaximumWithdrawableRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadMaximumWithdrawableRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadMaximumWithdrawableRequest>(create);
  static ReadMaximumWithdrawableRequest? _defaultInstance;

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

class ReadMaximumWithdrawableResponse extends $pb.GeneratedMessage {
  factory ReadMaximumWithdrawableResponse({
    $core.int? accountId,
    $core.String? totalAmount,
    $core.String? withdrawableAmt,
    $core.String? charges,
    $core.String? pendingCallLog,
  }) {
    final result = create();
    if (accountId != null) result.accountId = accountId;
    if (totalAmount != null) result.totalAmount = totalAmount;
    if (withdrawableAmt != null) result.withdrawableAmt = withdrawableAmt;
    if (charges != null) result.charges = charges;
    if (pendingCallLog != null) result.pendingCallLog = pendingCallLog;
    return result;
  }

  ReadMaximumWithdrawableResponse._();

  factory ReadMaximumWithdrawableResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ReadMaximumWithdrawableResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadMaximumWithdrawableResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'accountId', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'totalAmount')
    ..aOS(3, _omitFieldNames ? '' : 'withdrawableAmt')
    ..aOS(4, _omitFieldNames ? '' : 'charges')
    ..aOS(5, _omitFieldNames ? '' : 'pendingCallLog')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadMaximumWithdrawableResponse clone() => ReadMaximumWithdrawableResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadMaximumWithdrawableResponse copyWith(void Function(ReadMaximumWithdrawableResponse) updates) => super.copyWith((message) => updates(message as ReadMaximumWithdrawableResponse)) as ReadMaximumWithdrawableResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadMaximumWithdrawableResponse create() => ReadMaximumWithdrawableResponse._();
  @$core.override
  ReadMaximumWithdrawableResponse createEmptyInstance() => create();
  static $pb.PbList<ReadMaximumWithdrawableResponse> createRepeated() => $pb.PbList<ReadMaximumWithdrawableResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadMaximumWithdrawableResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadMaximumWithdrawableResponse>(create);
  static ReadMaximumWithdrawableResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get accountId => $_getIZ(0);
  @$pb.TagNumber(1)
  set accountId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get totalAmount => $_getSZ(1);
  @$pb.TagNumber(2)
  set totalAmount($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTotalAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalAmount() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get withdrawableAmt => $_getSZ(2);
  @$pb.TagNumber(3)
  set withdrawableAmt($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasWithdrawableAmt() => $_has(2);
  @$pb.TagNumber(3)
  void clearWithdrawableAmt() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get charges => $_getSZ(3);
  @$pb.TagNumber(4)
  set charges($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCharges() => $_has(3);
  @$pb.TagNumber(4)
  void clearCharges() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get pendingCallLog => $_getSZ(4);
  @$pb.TagNumber(5)
  set pendingCallLog($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPendingCallLog() => $_has(4);
  @$pb.TagNumber(5)
  void clearPendingCallLog() => $_clearField(5);
}

class ReadSummaryRequest extends $pb.GeneratedMessage {
  factory ReadSummaryRequest({
    $core.int? usrId,
  }) {
    final result = create();
    if (usrId != null) result.usrId = usrId;
    return result;
  }

  ReadSummaryRequest._();

  factory ReadSummaryRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ReadSummaryRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadSummaryRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'usrId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadSummaryRequest clone() => ReadSummaryRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadSummaryRequest copyWith(void Function(ReadSummaryRequest) updates) => super.copyWith((message) => updates(message as ReadSummaryRequest)) as ReadSummaryRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadSummaryRequest create() => ReadSummaryRequest._();
  @$core.override
  ReadSummaryRequest createEmptyInstance() => create();
  static $pb.PbList<ReadSummaryRequest> createRepeated() => $pb.PbList<ReadSummaryRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadSummaryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadSummaryRequest>(create);
  static ReadSummaryRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get usrId => $_getIZ(0);
  @$pb.TagNumber(1)
  set usrId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUsrId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsrId() => $_clearField(1);
}

class RequestSummary extends $pb.GeneratedMessage {
  factory RequestSummary({
    $core.int? sendDone,
    $core.int? sendPending,
    $core.int? redeemDone,
    $core.int? redeemPending,
    $core.int? depositDone,
    $core.int? depositPending,
    $core.int? sendFailed,
    $core.int? redeemFailed,
    $core.int? depositFailed,
    $core.int? wallet,
    $core.int? account,
    $core.String? beginningBalance,
    $core.String? availableBalance,
    $core.String? blockchainBalance,
  }) {
    final result = create();
    if (sendDone != null) result.sendDone = sendDone;
    if (sendPending != null) result.sendPending = sendPending;
    if (redeemDone != null) result.redeemDone = redeemDone;
    if (redeemPending != null) result.redeemPending = redeemPending;
    if (depositDone != null) result.depositDone = depositDone;
    if (depositPending != null) result.depositPending = depositPending;
    if (sendFailed != null) result.sendFailed = sendFailed;
    if (redeemFailed != null) result.redeemFailed = redeemFailed;
    if (depositFailed != null) result.depositFailed = depositFailed;
    if (wallet != null) result.wallet = wallet;
    if (account != null) result.account = account;
    if (beginningBalance != null) result.beginningBalance = beginningBalance;
    if (availableBalance != null) result.availableBalance = availableBalance;
    if (blockchainBalance != null) result.blockchainBalance = blockchainBalance;
    return result;
  }

  RequestSummary._();

  factory RequestSummary.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory RequestSummary.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RequestSummary', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'sendDone', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'sendPending', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'redeemDone', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'redeemPending', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'depositDone', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'depositPending', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'sendFailed', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'redeemFailed', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'depositFailed', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, _omitFieldNames ? '' : 'wallet', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'account', $pb.PbFieldType.OU3)
    ..aOS(12, _omitFieldNames ? '' : 'beginningBalance')
    ..aOS(13, _omitFieldNames ? '' : 'availableBalance')
    ..aOS(14, _omitFieldNames ? '' : 'blockchainBalance')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequestSummary clone() => RequestSummary()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RequestSummary copyWith(void Function(RequestSummary) updates) => super.copyWith((message) => updates(message as RequestSummary)) as RequestSummary;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RequestSummary create() => RequestSummary._();
  @$core.override
  RequestSummary createEmptyInstance() => create();
  static $pb.PbList<RequestSummary> createRepeated() => $pb.PbList<RequestSummary>();
  @$core.pragma('dart2js:noInline')
  static RequestSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RequestSummary>(create);
  static RequestSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get sendDone => $_getIZ(0);
  @$pb.TagNumber(1)
  set sendDone($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSendDone() => $_has(0);
  @$pb.TagNumber(1)
  void clearSendDone() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get sendPending => $_getIZ(1);
  @$pb.TagNumber(2)
  set sendPending($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSendPending() => $_has(1);
  @$pb.TagNumber(2)
  void clearSendPending() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get redeemDone => $_getIZ(2);
  @$pb.TagNumber(3)
  set redeemDone($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRedeemDone() => $_has(2);
  @$pb.TagNumber(3)
  void clearRedeemDone() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get redeemPending => $_getIZ(3);
  @$pb.TagNumber(4)
  set redeemPending($core.int value) => $_setUnsignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRedeemPending() => $_has(3);
  @$pb.TagNumber(4)
  void clearRedeemPending() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get depositDone => $_getIZ(4);
  @$pb.TagNumber(5)
  set depositDone($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDepositDone() => $_has(4);
  @$pb.TagNumber(5)
  void clearDepositDone() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.int get depositPending => $_getIZ(5);
  @$pb.TagNumber(6)
  set depositPending($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasDepositPending() => $_has(5);
  @$pb.TagNumber(6)
  void clearDepositPending() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.int get sendFailed => $_getIZ(6);
  @$pb.TagNumber(7)
  set sendFailed($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasSendFailed() => $_has(6);
  @$pb.TagNumber(7)
  void clearSendFailed() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.int get redeemFailed => $_getIZ(7);
  @$pb.TagNumber(8)
  set redeemFailed($core.int value) => $_setUnsignedInt32(7, value);
  @$pb.TagNumber(8)
  $core.bool hasRedeemFailed() => $_has(7);
  @$pb.TagNumber(8)
  void clearRedeemFailed() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get depositFailed => $_getIZ(8);
  @$pb.TagNumber(9)
  set depositFailed($core.int value) => $_setUnsignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasDepositFailed() => $_has(8);
  @$pb.TagNumber(9)
  void clearDepositFailed() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get wallet => $_getIZ(9);
  @$pb.TagNumber(10)
  set wallet($core.int value) => $_setUnsignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasWallet() => $_has(9);
  @$pb.TagNumber(10)
  void clearWallet() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get account => $_getIZ(10);
  @$pb.TagNumber(11)
  set account($core.int value) => $_setUnsignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasAccount() => $_has(10);
  @$pb.TagNumber(11)
  void clearAccount() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get beginningBalance => $_getSZ(11);
  @$pb.TagNumber(12)
  set beginningBalance($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasBeginningBalance() => $_has(11);
  @$pb.TagNumber(12)
  void clearBeginningBalance() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get availableBalance => $_getSZ(12);
  @$pb.TagNumber(13)
  set availableBalance($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasAvailableBalance() => $_has(12);
  @$pb.TagNumber(13)
  void clearAvailableBalance() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get blockchainBalance => $_getSZ(13);
  @$pb.TagNumber(14)
  set blockchainBalance($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasBlockchainBalance() => $_has(13);
  @$pb.TagNumber(14)
  void clearBlockchainBalance() => $_clearField(14);
}

class ReadSummaryResponse extends $pb.GeneratedMessage {
  factory ReadSummaryResponse({
    RequestSummary? requestSummary,
  }) {
    final result = create();
    if (requestSummary != null) result.requestSummary = requestSummary;
    return result;
  }

  ReadSummaryResponse._();

  factory ReadSummaryResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ReadSummaryResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadSummaryResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'), createEmptyInstance: create)
    ..aOM<RequestSummary>(1, _omitFieldNames ? '' : 'requestSummary', subBuilder: RequestSummary.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadSummaryResponse clone() => ReadSummaryResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadSummaryResponse copyWith(void Function(ReadSummaryResponse) updates) => super.copyWith((message) => updates(message as ReadSummaryResponse)) as ReadSummaryResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadSummaryResponse create() => ReadSummaryResponse._();
  @$core.override
  ReadSummaryResponse createEmptyInstance() => create();
  static $pb.PbList<ReadSummaryResponse> createRepeated() => $pb.PbList<ReadSummaryResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadSummaryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadSummaryResponse>(create);
  static ReadSummaryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  RequestSummary get requestSummary => $_getN(0);
  @$pb.TagNumber(1)
  set requestSummary(RequestSummary value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestSummary() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestSummary() => $_clearField(1);
  @$pb.TagNumber(1)
  RequestSummary ensureRequestSummary() => $_ensure(0);
}

class ReadCashBalanceResponse extends $pb.GeneratedMessage {
  factory ReadCashBalanceResponse({
    $core.String? cashBalance,
  }) {
    final result = create();
    if (cashBalance != null) result.cashBalance = cashBalance;
    return result;
  }

  ReadCashBalanceResponse._();

  factory ReadCashBalanceResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ReadCashBalanceResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadCashBalanceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cashBalance')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadCashBalanceResponse clone() => ReadCashBalanceResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadCashBalanceResponse copyWith(void Function(ReadCashBalanceResponse) updates) => super.copyWith((message) => updates(message as ReadCashBalanceResponse)) as ReadCashBalanceResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadCashBalanceResponse create() => ReadCashBalanceResponse._();
  @$core.override
  ReadCashBalanceResponse createEmptyInstance() => create();
  static $pb.PbList<ReadCashBalanceResponse> createRepeated() => $pb.PbList<ReadCashBalanceResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadCashBalanceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadCashBalanceResponse>(create);
  static ReadCashBalanceResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get cashBalance => $_getSZ(0);
  @$pb.TagNumber(1)
  set cashBalance($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCashBalance() => $_has(0);
  @$pb.TagNumber(1)
  void clearCashBalance() => $_clearField(1);
}

class EmptyRequest extends $pb.GeneratedMessage {
  factory EmptyRequest() => create();

  EmptyRequest._();

  factory EmptyRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory EmptyRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmptyRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'), createEmptyInstance: create)
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

class GetNewRequestIdRequest extends $pb.GeneratedMessage {
  factory GetNewRequestIdRequest() => create();

  GetNewRequestIdRequest._();

  factory GetNewRequestIdRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetNewRequestIdRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetNewRequestIdRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetNewRequestIdRequest clone() => GetNewRequestIdRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetNewRequestIdRequest copyWith(void Function(GetNewRequestIdRequest) updates) => super.copyWith((message) => updates(message as GetNewRequestIdRequest)) as GetNewRequestIdRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetNewRequestIdRequest create() => GetNewRequestIdRequest._();
  @$core.override
  GetNewRequestIdRequest createEmptyInstance() => create();
  static $pb.PbList<GetNewRequestIdRequest> createRepeated() => $pb.PbList<GetNewRequestIdRequest>();
  @$core.pragma('dart2js:noInline')
  static GetNewRequestIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNewRequestIdRequest>(create);
  static GetNewRequestIdRequest? _defaultInstance;
}

class GetNewRequestIdResponse extends $pb.GeneratedMessage {
  factory GetNewRequestIdResponse({
    $core.int? requestId,
  }) {
    final result = create();
    if (requestId != null) result.requestId = requestId;
    return result;
  }

  GetNewRequestIdResponse._();

  factory GetNewRequestIdResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetNewRequestIdResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetNewRequestIdResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'requestId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetNewRequestIdResponse clone() => GetNewRequestIdResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetNewRequestIdResponse copyWith(void Function(GetNewRequestIdResponse) updates) => super.copyWith((message) => updates(message as GetNewRequestIdResponse)) as GetNewRequestIdResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetNewRequestIdResponse create() => GetNewRequestIdResponse._();
  @$core.override
  GetNewRequestIdResponse createEmptyInstance() => create();
  static $pb.PbList<GetNewRequestIdResponse> createRepeated() => $pb.PbList<GetNewRequestIdResponse>();
  @$core.pragma('dart2js:noInline')
  static GetNewRequestIdResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetNewRequestIdResponse>(create);
  static GetNewRequestIdResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get requestId => $_getIZ(0);
  @$pb.TagNumber(1)
  set requestId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequestId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequestId() => $_clearField(1);
}

class GetFeeRequest extends $pb.GeneratedMessage {
  factory GetFeeRequest({
    $core.String? correspondent,
    $core.String? accountNo,
    $core.String? amt,
    $core.String? requestType,
    $core.String? transferType,
    $core.bool? isInternational,
    $core.String? broker,
  }) {
    final result = create();
    if (correspondent != null) result.correspondent = correspondent;
    if (accountNo != null) result.accountNo = accountNo;
    if (amt != null) result.amt = amt;
    if (requestType != null) result.requestType = requestType;
    if (transferType != null) result.transferType = transferType;
    if (isInternational != null) result.isInternational = isInternational;
    if (broker != null) result.broker = broker;
    return result;
  }

  GetFeeRequest._();

  factory GetFeeRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetFeeRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetFeeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'correspondent')
    ..aOS(2, _omitFieldNames ? '' : 'accountNo')
    ..aOS(3, _omitFieldNames ? '' : 'amt')
    ..aOS(4, _omitFieldNames ? '' : 'requestType')
    ..aOS(5, _omitFieldNames ? '' : 'transferType')
    ..aOB(6, _omitFieldNames ? '' : 'isInternational')
    ..aOS(7, _omitFieldNames ? '' : 'broker')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFeeRequest clone() => GetFeeRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFeeRequest copyWith(void Function(GetFeeRequest) updates) => super.copyWith((message) => updates(message as GetFeeRequest)) as GetFeeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFeeRequest create() => GetFeeRequest._();
  @$core.override
  GetFeeRequest createEmptyInstance() => create();
  static $pb.PbList<GetFeeRequest> createRepeated() => $pb.PbList<GetFeeRequest>();
  @$core.pragma('dart2js:noInline')
  static GetFeeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFeeRequest>(create);
  static GetFeeRequest? _defaultInstance;

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
  $core.String get amt => $_getSZ(2);
  @$pb.TagNumber(3)
  set amt($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAmt() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmt() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get requestType => $_getSZ(3);
  @$pb.TagNumber(4)
  set requestType($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRequestType() => $_has(3);
  @$pb.TagNumber(4)
  void clearRequestType() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get transferType => $_getSZ(4);
  @$pb.TagNumber(5)
  set transferType($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTransferType() => $_has(4);
  @$pb.TagNumber(5)
  void clearTransferType() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get isInternational => $_getBF(5);
  @$pb.TagNumber(6)
  set isInternational($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasIsInternational() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsInternational() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get broker => $_getSZ(6);
  @$pb.TagNumber(7)
  set broker($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasBroker() => $_has(6);
  @$pb.TagNumber(7)
  void clearBroker() => $_clearField(7);
}

class GetFeeResponse extends $pb.GeneratedMessage {
  factory GetFeeResponse({
    $core.String? fee,
  }) {
    final result = create();
    if (fee != null) result.fee = fee;
    return result;
  }

  GetFeeResponse._();

  factory GetFeeResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetFeeResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetFeeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'proto'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fee')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFeeResponse clone() => GetFeeResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetFeeResponse copyWith(void Function(GetFeeResponse) updates) => super.copyWith((message) => updates(message as GetFeeResponse)) as GetFeeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetFeeResponse create() => GetFeeResponse._();
  @$core.override
  GetFeeResponse createEmptyInstance() => create();
  static $pb.PbList<GetFeeResponse> createRepeated() => $pb.PbList<GetFeeResponse>();
  @$core.pragma('dart2js:noInline')
  static GetFeeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetFeeResponse>(create);
  static GetFeeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fee => $_getSZ(0);
  @$pb.TagNumber(1)
  set fee($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFee() => $_has(0);
  @$pb.TagNumber(1)
  void clearFee() => $_clearField(1);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
