//
//  Generated code. Do not modify.
//  source: proto/bankpb/account.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/timestamp.pb.dart' as $1;
import '../utilspb/pagination.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Account extends $pb.GeneratedMessage {
  factory Account({
    $core.int? bankId,
    $core.int? accountId,
    $core.String? correspondent,
    $core.String? masterAccountNo,
    $core.String? accountNo,
    $core.String? bankOwnerName,
    $core.String? bankName,
    $core.String? achRoutingNo,
    $core.String? wireRoutingNo,
    $core.String? bankAccountNo,
    $core.String? bankAccountType,
    $core.String? approvedMethod,
    $core.String? plaidAccessToken,
    $core.String? status,
    $1.Timestamp? createdAt,
    $core.String? createdBy,
    $1.Timestamp? modifiedAt,
    $core.String? modifiedBy,
    $core.String? nickName,
    $core.bool? ach,
    $core.bool? wire,
    $core.bool? check_22,
    $core.bool? isInternational,
    $core.String? bankIdentifierCode,
    $core.int? bankAddressId,
    $core.String? errorMessage,
    $core.String? internalStatus,
  }) {
    final result = create();
    if (bankId != null) result.bankId = bankId;
    if (accountId != null) result.accountId = accountId;
    if (correspondent != null) result.correspondent = correspondent;
    if (masterAccountNo != null) result.masterAccountNo = masterAccountNo;
    if (accountNo != null) result.accountNo = accountNo;
    if (bankOwnerName != null) result.bankOwnerName = bankOwnerName;
    if (bankName != null) result.bankName = bankName;
    if (achRoutingNo != null) result.achRoutingNo = achRoutingNo;
    if (wireRoutingNo != null) result.wireRoutingNo = wireRoutingNo;
    if (bankAccountNo != null) result.bankAccountNo = bankAccountNo;
    if (bankAccountType != null) result.bankAccountType = bankAccountType;
    if (approvedMethod != null) result.approvedMethod = approvedMethod;
    if (plaidAccessToken != null) result.plaidAccessToken = plaidAccessToken;
    if (status != null) result.status = status;
    if (createdAt != null) result.createdAt = createdAt;
    if (createdBy != null) result.createdBy = createdBy;
    if (modifiedAt != null) result.modifiedAt = modifiedAt;
    if (modifiedBy != null) result.modifiedBy = modifiedBy;
    if (nickName != null) result.nickName = nickName;
    if (ach != null) result.ach = ach;
    if (wire != null) result.wire = wire;
    if (check_22 != null) result.check_22 = check_22;
    if (isInternational != null) result.isInternational = isInternational;
    if (bankIdentifierCode != null) result.bankIdentifierCode = bankIdentifierCode;
    if (bankAddressId != null) result.bankAddressId = bankAddressId;
    if (errorMessage != null) result.errorMessage = errorMessage;
    if (internalStatus != null) result.internalStatus = internalStatus;
    return result;
  }

  Account._();

  factory Account.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Account.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Account', package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'bankId', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'accountId', $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'correspondent')
    ..aOS(4, _omitFieldNames ? '' : 'masterAccountNo')
    ..aOS(5, _omitFieldNames ? '' : 'accountNo')
    ..aOS(6, _omitFieldNames ? '' : 'bankOwnerName')
    ..aOS(7, _omitFieldNames ? '' : 'bankName')
    ..aOS(8, _omitFieldNames ? '' : 'achRoutingNo')
    ..aOS(9, _omitFieldNames ? '' : 'wireRoutingNo')
    ..aOS(10, _omitFieldNames ? '' : 'bankAccountNo')
    ..aOS(11, _omitFieldNames ? '' : 'bankAccountType')
    ..aOS(12, _omitFieldNames ? '' : 'approvedMethod')
    ..aOS(13, _omitFieldNames ? '' : 'plaidAccessToken')
    ..aOS(14, _omitFieldNames ? '' : 'status')
    ..aOM<$1.Timestamp>(15, _omitFieldNames ? '' : 'createdAt', subBuilder: $1.Timestamp.create)
    ..aOS(16, _omitFieldNames ? '' : 'createdBy')
    ..aOM<$1.Timestamp>(17, _omitFieldNames ? '' : 'modifiedAt', subBuilder: $1.Timestamp.create)
    ..aOS(18, _omitFieldNames ? '' : 'modifiedBy')
    ..aOS(19, _omitFieldNames ? '' : 'nickName')
    ..aOB(20, _omitFieldNames ? '' : 'ach')
    ..aOB(21, _omitFieldNames ? '' : 'wire')
    ..aOB(22, _omitFieldNames ? '' : 'check')
    ..aOB(23, _omitFieldNames ? '' : 'isInternational')
    ..aOS(24, _omitFieldNames ? '' : 'bankIdentifierCode')
    ..a<$core.int>(25, _omitFieldNames ? '' : 'bankAddressId', $pb.PbFieldType.OU3)
    ..aOS(26, _omitFieldNames ? '' : 'errorMessage')
    ..aOS(27, _omitFieldNames ? '' : 'internalStatus')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Account clone() => Account()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Account copyWith(void Function(Account) updates) => super.copyWith((message) => updates(message as Account)) as Account;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Account create() => Account._();
  @$core.override
  Account createEmptyInstance() => create();
  static $pb.PbList<Account> createRepeated() => $pb.PbList<Account>();
  @$core.pragma('dart2js:noInline')
  static Account getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Account>(create);
  static Account? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bankId => $_getIZ(0);
  @$pb.TagNumber(1)
  set bankId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBankId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBankId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get accountId => $_getIZ(1);
  @$pb.TagNumber(2)
  set accountId($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountId() => $_clearField(2);

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
  $core.String get accountNo => $_getSZ(4);
  @$pb.TagNumber(5)
  set accountNo($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasAccountNo() => $_has(4);
  @$pb.TagNumber(5)
  void clearAccountNo() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get bankOwnerName => $_getSZ(5);
  @$pb.TagNumber(6)
  set bankOwnerName($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasBankOwnerName() => $_has(5);
  @$pb.TagNumber(6)
  void clearBankOwnerName() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get bankName => $_getSZ(6);
  @$pb.TagNumber(7)
  set bankName($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasBankName() => $_has(6);
  @$pb.TagNumber(7)
  void clearBankName() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get achRoutingNo => $_getSZ(7);
  @$pb.TagNumber(8)
  set achRoutingNo($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasAchRoutingNo() => $_has(7);
  @$pb.TagNumber(8)
  void clearAchRoutingNo() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get wireRoutingNo => $_getSZ(8);
  @$pb.TagNumber(9)
  set wireRoutingNo($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasWireRoutingNo() => $_has(8);
  @$pb.TagNumber(9)
  void clearWireRoutingNo() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get bankAccountNo => $_getSZ(9);
  @$pb.TagNumber(10)
  set bankAccountNo($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasBankAccountNo() => $_has(9);
  @$pb.TagNumber(10)
  void clearBankAccountNo() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get bankAccountType => $_getSZ(10);
  @$pb.TagNumber(11)
  set bankAccountType($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasBankAccountType() => $_has(10);
  @$pb.TagNumber(11)
  void clearBankAccountType() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get approvedMethod => $_getSZ(11);
  @$pb.TagNumber(12)
  set approvedMethod($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasApprovedMethod() => $_has(11);
  @$pb.TagNumber(12)
  void clearApprovedMethod() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get plaidAccessToken => $_getSZ(12);
  @$pb.TagNumber(13)
  set plaidAccessToken($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasPlaidAccessToken() => $_has(12);
  @$pb.TagNumber(13)
  void clearPlaidAccessToken() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get status => $_getSZ(13);
  @$pb.TagNumber(14)
  set status($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasStatus() => $_has(13);
  @$pb.TagNumber(14)
  void clearStatus() => $_clearField(14);

  @$pb.TagNumber(15)
  $1.Timestamp get createdAt => $_getN(14);
  @$pb.TagNumber(15)
  set createdAt($1.Timestamp value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasCreatedAt() => $_has(14);
  @$pb.TagNumber(15)
  void clearCreatedAt() => $_clearField(15);
  @$pb.TagNumber(15)
  $1.Timestamp ensureCreatedAt() => $_ensure(14);

  @$pb.TagNumber(16)
  $core.String get createdBy => $_getSZ(15);
  @$pb.TagNumber(16)
  set createdBy($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasCreatedBy() => $_has(15);
  @$pb.TagNumber(16)
  void clearCreatedBy() => $_clearField(16);

  @$pb.TagNumber(17)
  $1.Timestamp get modifiedAt => $_getN(16);
  @$pb.TagNumber(17)
  set modifiedAt($1.Timestamp value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasModifiedAt() => $_has(16);
  @$pb.TagNumber(17)
  void clearModifiedAt() => $_clearField(17);
  @$pb.TagNumber(17)
  $1.Timestamp ensureModifiedAt() => $_ensure(16);

  @$pb.TagNumber(18)
  $core.String get modifiedBy => $_getSZ(17);
  @$pb.TagNumber(18)
  set modifiedBy($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasModifiedBy() => $_has(17);
  @$pb.TagNumber(18)
  void clearModifiedBy() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.String get nickName => $_getSZ(18);
  @$pb.TagNumber(19)
  set nickName($core.String value) => $_setString(18, value);
  @$pb.TagNumber(19)
  $core.bool hasNickName() => $_has(18);
  @$pb.TagNumber(19)
  void clearNickName() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.bool get ach => $_getBF(19);
  @$pb.TagNumber(20)
  set ach($core.bool value) => $_setBool(19, value);
  @$pb.TagNumber(20)
  $core.bool hasAch() => $_has(19);
  @$pb.TagNumber(20)
  void clearAch() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.bool get wire => $_getBF(20);
  @$pb.TagNumber(21)
  set wire($core.bool value) => $_setBool(20, value);
  @$pb.TagNumber(21)
  $core.bool hasWire() => $_has(20);
  @$pb.TagNumber(21)
  void clearWire() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.bool get check_22 => $_getBF(21);
  @$pb.TagNumber(22)
  set check_22($core.bool value) => $_setBool(21, value);
  @$pb.TagNumber(22)
  $core.bool hasCheck_22() => $_has(21);
  @$pb.TagNumber(22)
  void clearCheck_22() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.bool get isInternational => $_getBF(22);
  @$pb.TagNumber(23)
  set isInternational($core.bool value) => $_setBool(22, value);
  @$pb.TagNumber(23)
  $core.bool hasIsInternational() => $_has(22);
  @$pb.TagNumber(23)
  void clearIsInternational() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.String get bankIdentifierCode => $_getSZ(23);
  @$pb.TagNumber(24)
  set bankIdentifierCode($core.String value) => $_setString(23, value);
  @$pb.TagNumber(24)
  $core.bool hasBankIdentifierCode() => $_has(23);
  @$pb.TagNumber(24)
  void clearBankIdentifierCode() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.int get bankAddressId => $_getIZ(24);
  @$pb.TagNumber(25)
  set bankAddressId($core.int value) => $_setUnsignedInt32(24, value);
  @$pb.TagNumber(25)
  $core.bool hasBankAddressId() => $_has(24);
  @$pb.TagNumber(25)
  void clearBankAddressId() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.String get errorMessage => $_getSZ(25);
  @$pb.TagNumber(26)
  set errorMessage($core.String value) => $_setString(25, value);
  @$pb.TagNumber(26)
  $core.bool hasErrorMessage() => $_has(25);
  @$pb.TagNumber(26)
  void clearErrorMessage() => $_clearField(26);

  @$pb.TagNumber(27)
  $core.String get internalStatus => $_getSZ(26);
  @$pb.TagNumber(27)
  set internalStatus($core.String value) => $_setString(26, value);
  @$pb.TagNumber(27)
  $core.bool hasInternalStatus() => $_has(26);
  @$pb.TagNumber(27)
  void clearInternalStatus() => $_clearField(27);
}

class CreateAccountResponse extends $pb.GeneratedMessage {
  factory CreateAccountResponse({
    Account? bankAccount,
  }) {
    final result = create();
    if (bankAccount != null) result.bankAccount = bankAccount;
    return result;
  }

  CreateAccountResponse._();

  factory CreateAccountResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory CreateAccountResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateAccountResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'), createEmptyInstance: create)
    ..aOM<Account>(1, _omitFieldNames ? '' : 'bankAccount', subBuilder: Account.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateAccountResponse clone() => CreateAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateAccountResponse copyWith(void Function(CreateAccountResponse) updates) => super.copyWith((message) => updates(message as CreateAccountResponse)) as CreateAccountResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateAccountResponse create() => CreateAccountResponse._();
  @$core.override
  CreateAccountResponse createEmptyInstance() => create();
  static $pb.PbList<CreateAccountResponse> createRepeated() => $pb.PbList<CreateAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateAccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateAccountResponse>(create);
  static CreateAccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Account get bankAccount => $_getN(0);
  @$pb.TagNumber(1)
  set bankAccount(Account value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBankAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearBankAccount() => $_clearField(1);
  @$pb.TagNumber(1)
  Account ensureBankAccount() => $_ensure(0);
}

class UpdateAccountResponse extends $pb.GeneratedMessage {
  factory UpdateAccountResponse({
    Account? bankAccount,
  }) {
    final result = create();
    if (bankAccount != null) result.bankAccount = bankAccount;
    return result;
  }

  UpdateAccountResponse._();

  factory UpdateAccountResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory UpdateAccountResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateAccountResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'), createEmptyInstance: create)
    ..aOM<Account>(1, _omitFieldNames ? '' : 'bankAccount', subBuilder: Account.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateAccountResponse clone() => UpdateAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateAccountResponse copyWith(void Function(UpdateAccountResponse) updates) => super.copyWith((message) => updates(message as UpdateAccountResponse)) as UpdateAccountResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateAccountResponse create() => UpdateAccountResponse._();
  @$core.override
  UpdateAccountResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateAccountResponse> createRepeated() => $pb.PbList<UpdateAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateAccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateAccountResponse>(create);
  static UpdateAccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Account get bankAccount => $_getN(0);
  @$pb.TagNumber(1)
  set bankAccount(Account value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBankAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearBankAccount() => $_clearField(1);
  @$pb.TagNumber(1)
  Account ensureBankAccount() => $_ensure(0);
}

class ReadAccountRequest extends $pb.GeneratedMessage {
  factory ReadAccountRequest({
    $core.int? bankId,
  }) {
    final result = create();
    if (bankId != null) result.bankId = bankId;
    return result;
  }

  ReadAccountRequest._();

  factory ReadAccountRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ReadAccountRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadAccountRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'bankId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadAccountRequest clone() => ReadAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadAccountRequest copyWith(void Function(ReadAccountRequest) updates) => super.copyWith((message) => updates(message as ReadAccountRequest)) as ReadAccountRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadAccountRequest create() => ReadAccountRequest._();
  @$core.override
  ReadAccountRequest createEmptyInstance() => create();
  static $pb.PbList<ReadAccountRequest> createRepeated() => $pb.PbList<ReadAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadAccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadAccountRequest>(create);
  static ReadAccountRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bankId => $_getIZ(0);
  @$pb.TagNumber(1)
  set bankId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBankId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBankId() => $_clearField(1);
}

class ReadAccountResponse extends $pb.GeneratedMessage {
  factory ReadAccountResponse({
    Account? bankAccount,
  }) {
    final result = create();
    if (bankAccount != null) result.bankAccount = bankAccount;
    return result;
  }

  ReadAccountResponse._();

  factory ReadAccountResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ReadAccountResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadAccountResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'), createEmptyInstance: create)
    ..aOM<Account>(1, _omitFieldNames ? '' : 'bankAccount', subBuilder: Account.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadAccountResponse clone() => ReadAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadAccountResponse copyWith(void Function(ReadAccountResponse) updates) => super.copyWith((message) => updates(message as ReadAccountResponse)) as ReadAccountResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadAccountResponse create() => ReadAccountResponse._();
  @$core.override
  ReadAccountResponse createEmptyInstance() => create();
  static $pb.PbList<ReadAccountResponse> createRepeated() => $pb.PbList<ReadAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadAccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadAccountResponse>(create);
  static ReadAccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Account get bankAccount => $_getN(0);
  @$pb.TagNumber(1)
  set bankAccount(Account value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBankAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearBankAccount() => $_clearField(1);
  @$pb.TagNumber(1)
  Account ensureBankAccount() => $_ensure(0);
}

class ListAccountRequest extends $pb.GeneratedMessage {
  factory ListAccountRequest({
    $core.String? correspondent,
    $core.String? masterAccountNo,
    $core.String? accountNo,
    $core.String? bankOwnerName,
    $core.String? bankName,
    $core.String? achRoutingNo,
    $core.String? bankAccountNo,
    $core.String? status,
    $core.String? nickName,
    $2.Pagination? pagination,
  }) {
    final result = create();
    if (correspondent != null) result.correspondent = correspondent;
    if (masterAccountNo != null) result.masterAccountNo = masterAccountNo;
    if (accountNo != null) result.accountNo = accountNo;
    if (bankOwnerName != null) result.bankOwnerName = bankOwnerName;
    if (bankName != null) result.bankName = bankName;
    if (achRoutingNo != null) result.achRoutingNo = achRoutingNo;
    if (bankAccountNo != null) result.bankAccountNo = bankAccountNo;
    if (status != null) result.status = status;
    if (nickName != null) result.nickName = nickName;
    if (pagination != null) result.pagination = pagination;
    return result;
  }

  ListAccountRequest._();

  factory ListAccountRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListAccountRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListAccountRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'correspondent')
    ..aOS(2, _omitFieldNames ? '' : 'masterAccountNo')
    ..aOS(3, _omitFieldNames ? '' : 'accountNo')
    ..aOS(4, _omitFieldNames ? '' : 'bankOwnerName')
    ..aOS(5, _omitFieldNames ? '' : 'bankName')
    ..aOS(6, _omitFieldNames ? '' : 'achRoutingNo')
    ..aOS(7, _omitFieldNames ? '' : 'bankAccountNo')
    ..aOS(8, _omitFieldNames ? '' : 'status')
    ..aOS(9, _omitFieldNames ? '' : 'nickName')
    ..aOM<$2.Pagination>(10, _omitFieldNames ? '' : 'pagination', subBuilder: $2.Pagination.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountRequest clone() => ListAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountRequest copyWith(void Function(ListAccountRequest) updates) => super.copyWith((message) => updates(message as ListAccountRequest)) as ListAccountRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAccountRequest create() => ListAccountRequest._();
  @$core.override
  ListAccountRequest createEmptyInstance() => create();
  static $pb.PbList<ListAccountRequest> createRepeated() => $pb.PbList<ListAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static ListAccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAccountRequest>(create);
  static ListAccountRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get correspondent => $_getSZ(0);
  @$pb.TagNumber(1)
  set correspondent($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCorrespondent() => $_has(0);
  @$pb.TagNumber(1)
  void clearCorrespondent() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get masterAccountNo => $_getSZ(1);
  @$pb.TagNumber(2)
  set masterAccountNo($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMasterAccountNo() => $_has(1);
  @$pb.TagNumber(2)
  void clearMasterAccountNo() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get accountNo => $_getSZ(2);
  @$pb.TagNumber(3)
  set accountNo($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAccountNo() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccountNo() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get bankOwnerName => $_getSZ(3);
  @$pb.TagNumber(4)
  set bankOwnerName($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBankOwnerName() => $_has(3);
  @$pb.TagNumber(4)
  void clearBankOwnerName() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get bankName => $_getSZ(4);
  @$pb.TagNumber(5)
  set bankName($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBankName() => $_has(4);
  @$pb.TagNumber(5)
  void clearBankName() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get achRoutingNo => $_getSZ(5);
  @$pb.TagNumber(6)
  set achRoutingNo($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasAchRoutingNo() => $_has(5);
  @$pb.TagNumber(6)
  void clearAchRoutingNo() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get bankAccountNo => $_getSZ(6);
  @$pb.TagNumber(7)
  set bankAccountNo($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasBankAccountNo() => $_has(6);
  @$pb.TagNumber(7)
  void clearBankAccountNo() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get status => $_getSZ(7);
  @$pb.TagNumber(8)
  set status($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasStatus() => $_has(7);
  @$pb.TagNumber(8)
  void clearStatus() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get nickName => $_getSZ(8);
  @$pb.TagNumber(9)
  set nickName($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasNickName() => $_has(8);
  @$pb.TagNumber(9)
  void clearNickName() => $_clearField(9);

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
}

class ListAccountSummary extends $pb.GeneratedMessage {
  factory ListAccountSummary({
    $core.int? totalRows,
  }) {
    final result = create();
    if (totalRows != null) result.totalRows = totalRows;
    return result;
  }

  ListAccountSummary._();

  factory ListAccountSummary.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListAccountSummary.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListAccountSummary', package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'totalRows', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountSummary clone() => ListAccountSummary()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountSummary copyWith(void Function(ListAccountSummary) updates) => super.copyWith((message) => updates(message as ListAccountSummary)) as ListAccountSummary;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAccountSummary create() => ListAccountSummary._();
  @$core.override
  ListAccountSummary createEmptyInstance() => create();
  static $pb.PbList<ListAccountSummary> createRepeated() => $pb.PbList<ListAccountSummary>();
  @$core.pragma('dart2js:noInline')
  static ListAccountSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAccountSummary>(create);
  static ListAccountSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get totalRows => $_getIZ(0);
  @$pb.TagNumber(1)
  set totalRows($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTotalRows() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalRows() => $_clearField(1);
}

class ListAccountResponse extends $pb.GeneratedMessage {
  factory ListAccountResponse({
    $core.Iterable<Account>? bankAccounts,
    ListAccountSummary? summary,
  }) {
    final result = create();
    if (bankAccounts != null) result.bankAccounts.addAll(bankAccounts);
    if (summary != null) result.summary = summary;
    return result;
  }

  ListAccountResponse._();

  factory ListAccountResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListAccountResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListAccountResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'), createEmptyInstance: create)
    ..pc<Account>(1, _omitFieldNames ? '' : 'bankAccounts', $pb.PbFieldType.PM, subBuilder: Account.create)
    ..aOM<ListAccountSummary>(2, _omitFieldNames ? '' : 'summary', subBuilder: ListAccountSummary.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountResponse clone() => ListAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountResponse copyWith(void Function(ListAccountResponse) updates) => super.copyWith((message) => updates(message as ListAccountResponse)) as ListAccountResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAccountResponse create() => ListAccountResponse._();
  @$core.override
  ListAccountResponse createEmptyInstance() => create();
  static $pb.PbList<ListAccountResponse> createRepeated() => $pb.PbList<ListAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static ListAccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAccountResponse>(create);
  static ListAccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Account> get bankAccounts => $_getList(0);

  @$pb.TagNumber(2)
  ListAccountSummary get summary => $_getN(1);
  @$pb.TagNumber(2)
  set summary(ListAccountSummary value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSummary() => $_has(1);
  @$pb.TagNumber(2)
  void clearSummary() => $_clearField(2);
  @$pb.TagNumber(2)
  ListAccountSummary ensureSummary() => $_ensure(1);
}

class ListAccountAuditRequest extends $pb.GeneratedMessage {
  factory ListAccountAuditRequest({
    $core.int? bankId,
  }) {
    final result = create();
    if (bankId != null) result.bankId = bankId;
    return result;
  }

  ListAccountAuditRequest._();

  factory ListAccountAuditRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListAccountAuditRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListAccountAuditRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'bankId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountAuditRequest clone() => ListAccountAuditRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountAuditRequest copyWith(void Function(ListAccountAuditRequest) updates) => super.copyWith((message) => updates(message as ListAccountAuditRequest)) as ListAccountAuditRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAccountAuditRequest create() => ListAccountAuditRequest._();
  @$core.override
  ListAccountAuditRequest createEmptyInstance() => create();
  static $pb.PbList<ListAccountAuditRequest> createRepeated() => $pb.PbList<ListAccountAuditRequest>();
  @$core.pragma('dart2js:noInline')
  static ListAccountAuditRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAccountAuditRequest>(create);
  static ListAccountAuditRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bankId => $_getIZ(0);
  @$pb.TagNumber(1)
  set bankId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBankId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBankId() => $_clearField(1);
}

class ListAccountAuditResponse extends $pb.GeneratedMessage {
  factory ListAccountAuditResponse({
    $core.Iterable<Account>? account,
  }) {
    final result = create();
    if (account != null) result.account.addAll(account);
    return result;
  }

  ListAccountAuditResponse._();

  factory ListAccountAuditResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListAccountAuditResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListAccountAuditResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'), createEmptyInstance: create)
    ..pc<Account>(1, _omitFieldNames ? '' : 'account', $pb.PbFieldType.PM, subBuilder: Account.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountAuditResponse clone() => ListAccountAuditResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountAuditResponse copyWith(void Function(ListAccountAuditResponse) updates) => super.copyWith((message) => updates(message as ListAccountAuditResponse)) as ListAccountAuditResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAccountAuditResponse create() => ListAccountAuditResponse._();
  @$core.override
  ListAccountAuditResponse createEmptyInstance() => create();
  static $pb.PbList<ListAccountAuditResponse> createRepeated() => $pb.PbList<ListAccountAuditResponse>();
  @$core.pragma('dart2js:noInline')
  static ListAccountAuditResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListAccountAuditResponse>(create);
  static ListAccountAuditResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Account> get account => $_getList(0);
}

class ListBankAccountRequest extends $pb.GeneratedMessage {
  factory ListBankAccountRequest({
    $core.String? accountNo,
    $core.String? correspondent,
    $core.String? status,
    $core.int? userId,
  }) {
    final result = create();
    if (accountNo != null) result.accountNo = accountNo;
    if (correspondent != null) result.correspondent = correspondent;
    if (status != null) result.status = status;
    if (userId != null) result.userId = userId;
    return result;
  }

  ListBankAccountRequest._();

  factory ListBankAccountRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListBankAccountRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListBankAccountRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accountNo')
    ..aOS(2, _omitFieldNames ? '' : 'correspondent')
    ..aOS(3, _omitFieldNames ? '' : 'status')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3)
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

  @$pb.TagNumber(4)
  $core.int get userId => $_getIZ(3);
  @$pb.TagNumber(4)
  set userId($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasUserId() => $_has(3);
  @$pb.TagNumber(4)
  void clearUserId() => $_clearField(4);
}

class DeleteAccountRequest extends $pb.GeneratedMessage {
  factory DeleteAccountRequest({
    $core.int? bankId,
  }) {
    final result = create();
    if (bankId != null) result.bankId = bankId;
    return result;
  }

  DeleteAccountRequest._();

  factory DeleteAccountRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory DeleteAccountRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteAccountRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'bankId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteAccountRequest clone() => DeleteAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteAccountRequest copyWith(void Function(DeleteAccountRequest) updates) => super.copyWith((message) => updates(message as DeleteAccountRequest)) as DeleteAccountRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteAccountRequest create() => DeleteAccountRequest._();
  @$core.override
  DeleteAccountRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteAccountRequest> createRepeated() => $pb.PbList<DeleteAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteAccountRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteAccountRequest>(create);
  static DeleteAccountRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bankId => $_getIZ(0);
  @$pb.TagNumber(1)
  set bankId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBankId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBankId() => $_clearField(1);
}

class DeleteAccountResponse extends $pb.GeneratedMessage {
  factory DeleteAccountResponse({
    Account? bankAccount,
  }) {
    final result = create();
    if (bankAccount != null) result.bankAccount = bankAccount;
    return result;
  }

  DeleteAccountResponse._();

  factory DeleteAccountResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory DeleteAccountResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteAccountResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'), createEmptyInstance: create)
    ..aOM<Account>(1, _omitFieldNames ? '' : 'bankAccount', subBuilder: Account.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteAccountResponse clone() => DeleteAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteAccountResponse copyWith(void Function(DeleteAccountResponse) updates) => super.copyWith((message) => updates(message as DeleteAccountResponse)) as DeleteAccountResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteAccountResponse create() => DeleteAccountResponse._();
  @$core.override
  DeleteAccountResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteAccountResponse> createRepeated() => $pb.PbList<DeleteAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteAccountResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteAccountResponse>(create);
  static DeleteAccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Account get bankAccount => $_getN(0);
  @$pb.TagNumber(1)
  set bankAccount(Account value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBankAccount() => $_has(0);
  @$pb.TagNumber(1)
  void clearBankAccount() => $_clearField(1);
  @$pb.TagNumber(1)
  Account ensureBankAccount() => $_ensure(0);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
