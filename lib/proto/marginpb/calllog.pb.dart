//
//  Generated code. Do not modify.
//  source: proto/marginpb/calllog.proto
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

class CallLog extends $pb.GeneratedMessage {
  factory CallLog({
    $core.int? requirementLogId,
    $core.int? requirementId,
    $1.Date? tradeDate,
    $1.Date? fromDate,
    $1.Date? toDate,
    $core.int? accountId,
    $core.String? correspondent,
    $core.String? masterAccountNo,
    $core.String? accountName,
    $core.String? callType,
    $core.String? callReq,
    $core.String? callAmt,
    $core.String? callStatus,
    $core.String? callStatusReason,
    $core.String? modifiedBy,
    $2.Timestamp? modifiedDate,
    $1.Date? dueDate,
    $core.int? callStatusReasonCount,
    $core.bool? notify,
    $2.Timestamp? notifyDate,
    $core.String? marginType,
    $core.int? age,
  }) {
    final result = create();
    if (requirementLogId != null) result.requirementLogId = requirementLogId;
    if (requirementId != null) result.requirementId = requirementId;
    if (tradeDate != null) result.tradeDate = tradeDate;
    if (fromDate != null) result.fromDate = fromDate;
    if (toDate != null) result.toDate = toDate;
    if (accountId != null) result.accountId = accountId;
    if (correspondent != null) result.correspondent = correspondent;
    if (masterAccountNo != null) result.masterAccountNo = masterAccountNo;
    if (accountName != null) result.accountName = accountName;
    if (callType != null) result.callType = callType;
    if (callReq != null) result.callReq = callReq;
    if (callAmt != null) result.callAmt = callAmt;
    if (callStatus != null) result.callStatus = callStatus;
    if (callStatusReason != null) result.callStatusReason = callStatusReason;
    if (modifiedBy != null) result.modifiedBy = modifiedBy;
    if (modifiedDate != null) result.modifiedDate = modifiedDate;
    if (dueDate != null) result.dueDate = dueDate;
    if (callStatusReasonCount != null) result.callStatusReasonCount = callStatusReasonCount;
    if (notify != null) result.notify = notify;
    if (notifyDate != null) result.notifyDate = notifyDate;
    if (marginType != null) result.marginType = marginType;
    if (age != null) result.age = age;
    return result;
  }

  CallLog._();

  factory CallLog.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory CallLog.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CallLog', package: const $pb.PackageName(_omitMessageNames ? '' : 'marginpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'requirementLogId', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'requirementId', $pb.PbFieldType.OU3)
    ..aOM<$1.Date>(3, _omitFieldNames ? '' : 'tradeDate', subBuilder: $1.Date.create)
    ..aOM<$1.Date>(4, _omitFieldNames ? '' : 'fromDate', subBuilder: $1.Date.create)
    ..aOM<$1.Date>(5, _omitFieldNames ? '' : 'toDate', subBuilder: $1.Date.create)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'accountId', $pb.PbFieldType.OU3)
    ..aOS(7, _omitFieldNames ? '' : 'correspondent')
    ..aOS(8, _omitFieldNames ? '' : 'masterAccountNo')
    ..aOS(9, _omitFieldNames ? '' : 'accountName')
    ..aOS(10, _omitFieldNames ? '' : 'callType')
    ..aOS(11, _omitFieldNames ? '' : 'callReq')
    ..aOS(12, _omitFieldNames ? '' : 'callAmt')
    ..aOS(13, _omitFieldNames ? '' : 'callStatus')
    ..aOS(14, _omitFieldNames ? '' : 'callStatusReason')
    ..aOS(15, _omitFieldNames ? '' : 'modifiedBy')
    ..aOM<$2.Timestamp>(16, _omitFieldNames ? '' : 'modifiedDate', subBuilder: $2.Timestamp.create)
    ..aOM<$1.Date>(17, _omitFieldNames ? '' : 'dueDate', subBuilder: $1.Date.create)
    ..a<$core.int>(18, _omitFieldNames ? '' : 'callStatusReasonCount', $pb.PbFieldType.O3)
    ..aOB(19, _omitFieldNames ? '' : 'notify')
    ..aOM<$2.Timestamp>(20, _omitFieldNames ? '' : 'notifyDate', subBuilder: $2.Timestamp.create)
    ..aOS(21, _omitFieldNames ? '' : 'marginType')
    ..a<$core.int>(22, _omitFieldNames ? '' : 'age', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CallLog clone() => CallLog()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CallLog copyWith(void Function(CallLog) updates) => super.copyWith((message) => updates(message as CallLog)) as CallLog;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallLog create() => CallLog._();
  @$core.override
  CallLog createEmptyInstance() => create();
  static $pb.PbList<CallLog> createRepeated() => $pb.PbList<CallLog>();
  @$core.pragma('dart2js:noInline')
  static CallLog getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CallLog>(create);
  static CallLog? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get requirementLogId => $_getIZ(0);
  @$pb.TagNumber(1)
  set requirementLogId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequirementLogId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequirementLogId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get requirementId => $_getIZ(1);
  @$pb.TagNumber(2)
  set requirementId($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRequirementId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRequirementId() => $_clearField(2);

  @$pb.TagNumber(3)
  $1.Date get tradeDate => $_getN(2);
  @$pb.TagNumber(3)
  set tradeDate($1.Date value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTradeDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearTradeDate() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Date ensureTradeDate() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Date get fromDate => $_getN(3);
  @$pb.TagNumber(4)
  set fromDate($1.Date value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasFromDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearFromDate() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Date ensureFromDate() => $_ensure(3);

  @$pb.TagNumber(5)
  $1.Date get toDate => $_getN(4);
  @$pb.TagNumber(5)
  set toDate($1.Date value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasToDate() => $_has(4);
  @$pb.TagNumber(5)
  void clearToDate() => $_clearField(5);
  @$pb.TagNumber(5)
  $1.Date ensureToDate() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.int get accountId => $_getIZ(5);
  @$pb.TagNumber(6)
  set accountId($core.int value) => $_setUnsignedInt32(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAccountId() => $_has(5);
  @$pb.TagNumber(6)
  void clearAccountId() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get correspondent => $_getSZ(6);
  @$pb.TagNumber(7)
  set correspondent($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCorrespondent() => $_has(6);
  @$pb.TagNumber(7)
  void clearCorrespondent() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get masterAccountNo => $_getSZ(7);
  @$pb.TagNumber(8)
  set masterAccountNo($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasMasterAccountNo() => $_has(7);
  @$pb.TagNumber(8)
  void clearMasterAccountNo() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get accountName => $_getSZ(8);
  @$pb.TagNumber(9)
  set accountName($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasAccountName() => $_has(8);
  @$pb.TagNumber(9)
  void clearAccountName() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get callType => $_getSZ(9);
  @$pb.TagNumber(10)
  set callType($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasCallType() => $_has(9);
  @$pb.TagNumber(10)
  void clearCallType() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get callReq => $_getSZ(10);
  @$pb.TagNumber(11)
  set callReq($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasCallReq() => $_has(10);
  @$pb.TagNumber(11)
  void clearCallReq() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get callAmt => $_getSZ(11);
  @$pb.TagNumber(12)
  set callAmt($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasCallAmt() => $_has(11);
  @$pb.TagNumber(12)
  void clearCallAmt() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get callStatus => $_getSZ(12);
  @$pb.TagNumber(13)
  set callStatus($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasCallStatus() => $_has(12);
  @$pb.TagNumber(13)
  void clearCallStatus() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get callStatusReason => $_getSZ(13);
  @$pb.TagNumber(14)
  set callStatusReason($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasCallStatusReason() => $_has(13);
  @$pb.TagNumber(14)
  void clearCallStatusReason() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get modifiedBy => $_getSZ(14);
  @$pb.TagNumber(15)
  set modifiedBy($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasModifiedBy() => $_has(14);
  @$pb.TagNumber(15)
  void clearModifiedBy() => $_clearField(15);

  @$pb.TagNumber(16)
  $2.Timestamp get modifiedDate => $_getN(15);
  @$pb.TagNumber(16)
  set modifiedDate($2.Timestamp value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasModifiedDate() => $_has(15);
  @$pb.TagNumber(16)
  void clearModifiedDate() => $_clearField(16);
  @$pb.TagNumber(16)
  $2.Timestamp ensureModifiedDate() => $_ensure(15);

  @$pb.TagNumber(17)
  $1.Date get dueDate => $_getN(16);
  @$pb.TagNumber(17)
  set dueDate($1.Date value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasDueDate() => $_has(16);
  @$pb.TagNumber(17)
  void clearDueDate() => $_clearField(17);
  @$pb.TagNumber(17)
  $1.Date ensureDueDate() => $_ensure(16);

  @$pb.TagNumber(18)
  $core.int get callStatusReasonCount => $_getIZ(17);
  @$pb.TagNumber(18)
  set callStatusReasonCount($core.int value) => $_setSignedInt32(17, value);
  @$pb.TagNumber(18)
  $core.bool hasCallStatusReasonCount() => $_has(17);
  @$pb.TagNumber(18)
  void clearCallStatusReasonCount() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.bool get notify => $_getBF(18);
  @$pb.TagNumber(19)
  set notify($core.bool value) => $_setBool(18, value);
  @$pb.TagNumber(19)
  $core.bool hasNotify() => $_has(18);
  @$pb.TagNumber(19)
  void clearNotify() => $_clearField(19);

  @$pb.TagNumber(20)
  $2.Timestamp get notifyDate => $_getN(19);
  @$pb.TagNumber(20)
  set notifyDate($2.Timestamp value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasNotifyDate() => $_has(19);
  @$pb.TagNumber(20)
  void clearNotifyDate() => $_clearField(20);
  @$pb.TagNumber(20)
  $2.Timestamp ensureNotifyDate() => $_ensure(19);

  @$pb.TagNumber(21)
  $core.String get marginType => $_getSZ(20);
  @$pb.TagNumber(21)
  set marginType($core.String value) => $_setString(20, value);
  @$pb.TagNumber(21)
  $core.bool hasMarginType() => $_has(20);
  @$pb.TagNumber(21)
  void clearMarginType() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.int get age => $_getIZ(21);
  @$pb.TagNumber(22)
  set age($core.int value) => $_setSignedInt32(21, value);
  @$pb.TagNumber(22)
  $core.bool hasAge() => $_has(21);
  @$pb.TagNumber(22)
  void clearAge() => $_clearField(22);
}

class ListCallLogRequest extends $pb.GeneratedMessage {
  factory ListCallLogRequest({
    $1.Date? fromDate,
    $1.Date? toDate,
    $core.String? correspondent,
    $core.String? masterAccountNo,
    $core.String? accountName,
    $core.String? callType,
    $core.String? callStatus,
    $core.String? callStatusReason,
    $core.bool? isOpen,
    $core.String? marginType,
    $3.Pagination? pagination,
  }) {
    final result = create();
    if (fromDate != null) result.fromDate = fromDate;
    if (toDate != null) result.toDate = toDate;
    if (correspondent != null) result.correspondent = correspondent;
    if (masterAccountNo != null) result.masterAccountNo = masterAccountNo;
    if (accountName != null) result.accountName = accountName;
    if (callType != null) result.callType = callType;
    if (callStatus != null) result.callStatus = callStatus;
    if (callStatusReason != null) result.callStatusReason = callStatusReason;
    if (isOpen != null) result.isOpen = isOpen;
    if (marginType != null) result.marginType = marginType;
    if (pagination != null) result.pagination = pagination;
    return result;
  }

  ListCallLogRequest._();

  factory ListCallLogRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListCallLogRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListCallLogRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'marginpb'), createEmptyInstance: create)
    ..aOM<$1.Date>(1, _omitFieldNames ? '' : 'fromDate', subBuilder: $1.Date.create)
    ..aOM<$1.Date>(2, _omitFieldNames ? '' : 'toDate', subBuilder: $1.Date.create)
    ..aOS(3, _omitFieldNames ? '' : 'correspondent')
    ..aOS(4, _omitFieldNames ? '' : 'masterAccountNo')
    ..aOS(5, _omitFieldNames ? '' : 'accountName')
    ..aOS(6, _omitFieldNames ? '' : 'callType')
    ..aOS(7, _omitFieldNames ? '' : 'callStatus')
    ..aOS(8, _omitFieldNames ? '' : 'callStatusReason')
    ..aOB(9, _omitFieldNames ? '' : 'isOpen')
    ..aOS(10, _omitFieldNames ? '' : 'marginType')
    ..aOM<$3.Pagination>(11, _omitFieldNames ? '' : 'pagination', subBuilder: $3.Pagination.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListCallLogRequest clone() => ListCallLogRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListCallLogRequest copyWith(void Function(ListCallLogRequest) updates) => super.copyWith((message) => updates(message as ListCallLogRequest)) as ListCallLogRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListCallLogRequest create() => ListCallLogRequest._();
  @$core.override
  ListCallLogRequest createEmptyInstance() => create();
  static $pb.PbList<ListCallLogRequest> createRepeated() => $pb.PbList<ListCallLogRequest>();
  @$core.pragma('dart2js:noInline')
  static ListCallLogRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListCallLogRequest>(create);
  static ListCallLogRequest? _defaultInstance;

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

  @$pb.TagNumber(6)
  $core.String get callType => $_getSZ(5);
  @$pb.TagNumber(6)
  set callType($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasCallType() => $_has(5);
  @$pb.TagNumber(6)
  void clearCallType() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get callStatus => $_getSZ(6);
  @$pb.TagNumber(7)
  set callStatus($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasCallStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearCallStatus() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get callStatusReason => $_getSZ(7);
  @$pb.TagNumber(8)
  set callStatusReason($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCallStatusReason() => $_has(7);
  @$pb.TagNumber(8)
  void clearCallStatusReason() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.bool get isOpen => $_getBF(8);
  @$pb.TagNumber(9)
  set isOpen($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(9)
  $core.bool hasIsOpen() => $_has(8);
  @$pb.TagNumber(9)
  void clearIsOpen() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get marginType => $_getSZ(9);
  @$pb.TagNumber(10)
  set marginType($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasMarginType() => $_has(9);
  @$pb.TagNumber(10)
  void clearMarginType() => $_clearField(10);

  @$pb.TagNumber(11)
  $3.Pagination get pagination => $_getN(10);
  @$pb.TagNumber(11)
  set pagination($3.Pagination value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasPagination() => $_has(10);
  @$pb.TagNumber(11)
  void clearPagination() => $_clearField(11);
  @$pb.TagNumber(11)
  $3.Pagination ensurePagination() => $_ensure(10);
}

class ListCallLogResponse extends $pb.GeneratedMessage {
  factory ListCallLogResponse({
    $core.Iterable<CallLog>? callLogs,
    ListCallLogSummary? summary,
  }) {
    final result = create();
    if (callLogs != null) result.callLogs.addAll(callLogs);
    if (summary != null) result.summary = summary;
    return result;
  }

  ListCallLogResponse._();

  factory ListCallLogResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListCallLogResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListCallLogResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'marginpb'), createEmptyInstance: create)
    ..pc<CallLog>(1, _omitFieldNames ? '' : 'callLogs', $pb.PbFieldType.PM, subBuilder: CallLog.create)
    ..aOM<ListCallLogSummary>(2, _omitFieldNames ? '' : 'summary', subBuilder: ListCallLogSummary.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListCallLogResponse clone() => ListCallLogResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListCallLogResponse copyWith(void Function(ListCallLogResponse) updates) => super.copyWith((message) => updates(message as ListCallLogResponse)) as ListCallLogResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListCallLogResponse create() => ListCallLogResponse._();
  @$core.override
  ListCallLogResponse createEmptyInstance() => create();
  static $pb.PbList<ListCallLogResponse> createRepeated() => $pb.PbList<ListCallLogResponse>();
  @$core.pragma('dart2js:noInline')
  static ListCallLogResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListCallLogResponse>(create);
  static ListCallLogResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<CallLog> get callLogs => $_getList(0);

  @$pb.TagNumber(2)
  ListCallLogSummary get summary => $_getN(1);
  @$pb.TagNumber(2)
  set summary(ListCallLogSummary value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSummary() => $_has(1);
  @$pb.TagNumber(2)
  void clearSummary() => $_clearField(2);
  @$pb.TagNumber(2)
  ListCallLogSummary ensureSummary() => $_ensure(1);
}

class ListCallLogSummary extends $pb.GeneratedMessage {
  factory ListCallLogSummary({
    $core.String? callReq,
    $core.String? callAmt,
    $core.int? totalRows,
  }) {
    final result = create();
    if (callReq != null) result.callReq = callReq;
    if (callAmt != null) result.callAmt = callAmt;
    if (totalRows != null) result.totalRows = totalRows;
    return result;
  }

  ListCallLogSummary._();

  factory ListCallLogSummary.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListCallLogSummary.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListCallLogSummary', package: const $pb.PackageName(_omitMessageNames ? '' : 'marginpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'callReq')
    ..aOS(2, _omitFieldNames ? '' : 'callAmt')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'totalRows', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListCallLogSummary clone() => ListCallLogSummary()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListCallLogSummary copyWith(void Function(ListCallLogSummary) updates) => super.copyWith((message) => updates(message as ListCallLogSummary)) as ListCallLogSummary;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListCallLogSummary create() => ListCallLogSummary._();
  @$core.override
  ListCallLogSummary createEmptyInstance() => create();
  static $pb.PbList<ListCallLogSummary> createRepeated() => $pb.PbList<ListCallLogSummary>();
  @$core.pragma('dart2js:noInline')
  static ListCallLogSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListCallLogSummary>(create);
  static ListCallLogSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get callReq => $_getSZ(0);
  @$pb.TagNumber(1)
  set callReq($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCallReq() => $_has(0);
  @$pb.TagNumber(1)
  void clearCallReq() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get callAmt => $_getSZ(1);
  @$pb.TagNumber(2)
  set callAmt($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCallAmt() => $_has(1);
  @$pb.TagNumber(2)
  void clearCallAmt() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get totalRows => $_getIZ(2);
  @$pb.TagNumber(3)
  set totalRows($core.int value) => $_setUnsignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasTotalRows() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalRows() => $_clearField(3);
}

class UpdateCallLogResponse extends $pb.GeneratedMessage {
  factory UpdateCallLogResponse({
    CallLog? callLog,
  }) {
    final result = create();
    if (callLog != null) result.callLog = callLog;
    return result;
  }

  UpdateCallLogResponse._();

  factory UpdateCallLogResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory UpdateCallLogResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateCallLogResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'marginpb'), createEmptyInstance: create)
    ..aOM<CallLog>(1, _omitFieldNames ? '' : 'callLog', subBuilder: CallLog.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateCallLogResponse clone() => UpdateCallLogResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateCallLogResponse copyWith(void Function(UpdateCallLogResponse) updates) => super.copyWith((message) => updates(message as UpdateCallLogResponse)) as UpdateCallLogResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateCallLogResponse create() => UpdateCallLogResponse._();
  @$core.override
  UpdateCallLogResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateCallLogResponse> createRepeated() => $pb.PbList<UpdateCallLogResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateCallLogResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateCallLogResponse>(create);
  static UpdateCallLogResponse? _defaultInstance;

  @$pb.TagNumber(1)
  CallLog get callLog => $_getN(0);
  @$pb.TagNumber(1)
  set callLog(CallLog value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCallLog() => $_has(0);
  @$pb.TagNumber(1)
  void clearCallLog() => $_clearField(1);
  @$pb.TagNumber(1)
  CallLog ensureCallLog() => $_ensure(0);
}

class CallNoticeRequest extends $pb.GeneratedMessage {
  factory CallNoticeRequest({
    $core.Iterable<$core.int>? accountIds,
  }) {
    final result = create();
    if (accountIds != null) result.accountIds.addAll(accountIds);
    return result;
  }

  CallNoticeRequest._();

  factory CallNoticeRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory CallNoticeRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CallNoticeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'marginpb'), createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'accountIds', $pb.PbFieldType.KU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CallNoticeRequest clone() => CallNoticeRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CallNoticeRequest copyWith(void Function(CallNoticeRequest) updates) => super.copyWith((message) => updates(message as CallNoticeRequest)) as CallNoticeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CallNoticeRequest create() => CallNoticeRequest._();
  @$core.override
  CallNoticeRequest createEmptyInstance() => create();
  static $pb.PbList<CallNoticeRequest> createRepeated() => $pb.PbList<CallNoticeRequest>();
  @$core.pragma('dart2js:noInline')
  static CallNoticeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CallNoticeRequest>(create);
  static CallNoticeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get accountIds => $_getList(0);
}

class EmptyResponse extends $pb.GeneratedMessage {
  factory EmptyResponse() => create();

  EmptyResponse._();

  factory EmptyResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory EmptyResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmptyResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'marginpb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EmptyResponse clone() => EmptyResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EmptyResponse copyWith(void Function(EmptyResponse) updates) => super.copyWith((message) => updates(message as EmptyResponse)) as EmptyResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EmptyResponse create() => EmptyResponse._();
  @$core.override
  EmptyResponse createEmptyInstance() => create();
  static $pb.PbList<EmptyResponse> createRepeated() => $pb.PbList<EmptyResponse>();
  @$core.pragma('dart2js:noInline')
  static EmptyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyResponse>(create);
  static EmptyResponse? _defaultInstance;
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
