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

import '../../google/type/timestamp.pb.dart' as $1;
import '../../google/type/date.pb.dart' as $2;
import '../utilspb/pagination.pb.dart' as $3;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Account extends $pb.GeneratedMessage {
  factory Account({
    $core.int? bankId,
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
    $2.Date? systemDate,
    $core.int? bankAddressId,
    $core.String? bankIdentifierCode,
    $core.int? glAccountId,
    $core.String? glAccountNo,
    $1.Timestamp? modifiedAt,
    $core.String? modifiedBy,
    $core.String? nickName,
    $core.bool? ach,
    $core.bool? wire,
    $core.bool? check_26,
  }) {
    final result = create();
    if (bankId != null) result.bankId = bankId;
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
    if (systemDate != null) result.systemDate = systemDate;
    if (bankAddressId != null) result.bankAddressId = bankAddressId;
    if (bankIdentifierCode != null)
      result.bankIdentifierCode = bankIdentifierCode;
    if (glAccountId != null) result.glAccountId = glAccountId;
    if (glAccountNo != null) result.glAccountNo = glAccountNo;
    if (modifiedAt != null) result.modifiedAt = modifiedAt;
    if (modifiedBy != null) result.modifiedBy = modifiedBy;
    if (nickName != null) result.nickName = nickName;
    if (ach != null) result.ach = ach;
    if (wire != null) result.wire = wire;
    if (check_26 != null) result.check_26 = check_26;
    return result;
  }

  Account._();

  factory Account.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);

  factory Account.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Account',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'bankId', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'correspondent')
    ..aOS(3, _omitFieldNames ? '' : 'masterAccountNo')
    ..aOS(4, _omitFieldNames ? '' : 'accountNo')
    ..aOS(5, _omitFieldNames ? '' : 'bankOwnerName')
    ..aOS(6, _omitFieldNames ? '' : 'bankName')
    ..aOS(7, _omitFieldNames ? '' : 'achRoutingNo')
    ..aOS(8, _omitFieldNames ? '' : 'wireRoutingNo')
    ..aOS(9, _omitFieldNames ? '' : 'bankAccountNo')
    ..aOS(10, _omitFieldNames ? '' : 'bankAccountType')
    ..aOS(11, _omitFieldNames ? '' : 'approvedMethod')
    ..aOS(12, _omitFieldNames ? '' : 'plaidAccessToken')
    ..aOS(13, _omitFieldNames ? '' : 'status')
    ..aOM<$1.Timestamp>(14, _omitFieldNames ? '' : 'createdAt',
        subBuilder: $1.Timestamp.create)
    ..aOS(15, _omitFieldNames ? '' : 'createdBy')
    ..aOM<$2.Date>(16, _omitFieldNames ? '' : 'systemDate',
        subBuilder: $2.Date.create)
    ..a<$core.int>(
        17, _omitFieldNames ? '' : 'bankAddressId', $pb.PbFieldType.OU3)
    ..aOS(18, _omitFieldNames ? '' : 'bankIdentifierCode')
    ..a<$core.int>(
        19, _omitFieldNames ? '' : 'glAccountId', $pb.PbFieldType.OU3)
    ..aOS(20, _omitFieldNames ? '' : 'glAccountNo')
    ..aOM<$1.Timestamp>(21, _omitFieldNames ? '' : 'modifiedAt',
        subBuilder: $1.Timestamp.create)
    ..aOS(22, _omitFieldNames ? '' : 'modifiedBy')
    ..aOS(23, _omitFieldNames ? '' : 'nickName')
    ..aOB(24, _omitFieldNames ? '' : 'ach')
    ..aOB(25, _omitFieldNames ? '' : 'wire')
    ..aOB(26, _omitFieldNames ? '' : 'check')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Account clone() => Account()..mergeFromMessage(this);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Account copyWith(void Function(Account) updates) =>
      super.copyWith((message) => updates(message as Account)) as Account;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Account create() => Account._();

  @$core.override
  Account createEmptyInstance() => create();

  static $pb.PbList<Account> createRepeated() => $pb.PbList<Account>();

  @$core.pragma('dart2js:noInline')
  static Account getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Account>(create);
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
  $core.String get accountNo => $_getSZ(3);

  @$pb.TagNumber(4)
  set accountNo($core.String value) => $_setString(3, value);

  @$pb.TagNumber(4)
  $core.bool hasAccountNo() => $_has(3);

  @$pb.TagNumber(4)
  void clearAccountNo() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get bankOwnerName => $_getSZ(4);

  @$pb.TagNumber(5)
  set bankOwnerName($core.String value) => $_setString(4, value);

  @$pb.TagNumber(5)
  $core.bool hasBankOwnerName() => $_has(4);

  @$pb.TagNumber(5)
  void clearBankOwnerName() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get bankName => $_getSZ(5);

  @$pb.TagNumber(6)
  set bankName($core.String value) => $_setString(5, value);

  @$pb.TagNumber(6)
  $core.bool hasBankName() => $_has(5);

  @$pb.TagNumber(6)
  void clearBankName() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get achRoutingNo => $_getSZ(6);

  @$pb.TagNumber(7)
  set achRoutingNo($core.String value) => $_setString(6, value);

  @$pb.TagNumber(7)
  $core.bool hasAchRoutingNo() => $_has(6);

  @$pb.TagNumber(7)
  void clearAchRoutingNo() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.String get wireRoutingNo => $_getSZ(7);

  @$pb.TagNumber(8)
  set wireRoutingNo($core.String value) => $_setString(7, value);

  @$pb.TagNumber(8)
  $core.bool hasWireRoutingNo() => $_has(7);

  @$pb.TagNumber(8)
  void clearWireRoutingNo() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get bankAccountNo => $_getSZ(8);

  @$pb.TagNumber(9)
  set bankAccountNo($core.String value) => $_setString(8, value);

  @$pb.TagNumber(9)
  $core.bool hasBankAccountNo() => $_has(8);

  @$pb.TagNumber(9)
  void clearBankAccountNo() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get bankAccountType => $_getSZ(9);

  @$pb.TagNumber(10)
  set bankAccountType($core.String value) => $_setString(9, value);

  @$pb.TagNumber(10)
  $core.bool hasBankAccountType() => $_has(9);

  @$pb.TagNumber(10)
  void clearBankAccountType() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get approvedMethod => $_getSZ(10);

  @$pb.TagNumber(11)
  set approvedMethod($core.String value) => $_setString(10, value);

  @$pb.TagNumber(11)
  $core.bool hasApprovedMethod() => $_has(10);

  @$pb.TagNumber(11)
  void clearApprovedMethod() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get plaidAccessToken => $_getSZ(11);

  @$pb.TagNumber(12)
  set plaidAccessToken($core.String value) => $_setString(11, value);

  @$pb.TagNumber(12)
  $core.bool hasPlaidAccessToken() => $_has(11);

  @$pb.TagNumber(12)
  void clearPlaidAccessToken() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get status => $_getSZ(12);

  @$pb.TagNumber(13)
  set status($core.String value) => $_setString(12, value);

  @$pb.TagNumber(13)
  $core.bool hasStatus() => $_has(12);

  @$pb.TagNumber(13)
  void clearStatus() => $_clearField(13);

  @$pb.TagNumber(14)
  $1.Timestamp get createdAt => $_getN(13);

  @$pb.TagNumber(14)
  set createdAt($1.Timestamp value) => $_setField(14, value);

  @$pb.TagNumber(14)
  $core.bool hasCreatedAt() => $_has(13);

  @$pb.TagNumber(14)
  void clearCreatedAt() => $_clearField(14);

  @$pb.TagNumber(14)
  $1.Timestamp ensureCreatedAt() => $_ensure(13);

  @$pb.TagNumber(15)
  $core.String get createdBy => $_getSZ(14);

  @$pb.TagNumber(15)
  set createdBy($core.String value) => $_setString(14, value);

  @$pb.TagNumber(15)
  $core.bool hasCreatedBy() => $_has(14);

  @$pb.TagNumber(15)
  void clearCreatedBy() => $_clearField(15);

  @$pb.TagNumber(16)
  $2.Date get systemDate => $_getN(15);

  @$pb.TagNumber(16)
  set systemDate($2.Date value) => $_setField(16, value);

  @$pb.TagNumber(16)
  $core.bool hasSystemDate() => $_has(15);

  @$pb.TagNumber(16)
  void clearSystemDate() => $_clearField(16);

  @$pb.TagNumber(16)
  $2.Date ensureSystemDate() => $_ensure(15);

  @$pb.TagNumber(17)
  $core.int get bankAddressId => $_getIZ(16);

  @$pb.TagNumber(17)
  set bankAddressId($core.int value) => $_setUnsignedInt32(16, value);

  @$pb.TagNumber(17)
  $core.bool hasBankAddressId() => $_has(16);

  @$pb.TagNumber(17)
  void clearBankAddressId() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get bankIdentifierCode => $_getSZ(17);

  @$pb.TagNumber(18)
  set bankIdentifierCode($core.String value) => $_setString(17, value);

  @$pb.TagNumber(18)
  $core.bool hasBankIdentifierCode() => $_has(17);

  @$pb.TagNumber(18)
  void clearBankIdentifierCode() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.int get glAccountId => $_getIZ(18);

  @$pb.TagNumber(19)
  set glAccountId($core.int value) => $_setUnsignedInt32(18, value);

  @$pb.TagNumber(19)
  $core.bool hasGlAccountId() => $_has(18);

  @$pb.TagNumber(19)
  void clearGlAccountId() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get glAccountNo => $_getSZ(19);

  @$pb.TagNumber(20)
  set glAccountNo($core.String value) => $_setString(19, value);

  @$pb.TagNumber(20)
  $core.bool hasGlAccountNo() => $_has(19);

  @$pb.TagNumber(20)
  void clearGlAccountNo() => $_clearField(20);

  @$pb.TagNumber(21)
  $1.Timestamp get modifiedAt => $_getN(20);

  @$pb.TagNumber(21)
  set modifiedAt($1.Timestamp value) => $_setField(21, value);

  @$pb.TagNumber(21)
  $core.bool hasModifiedAt() => $_has(20);

  @$pb.TagNumber(21)
  void clearModifiedAt() => $_clearField(21);

  @$pb.TagNumber(21)
  $1.Timestamp ensureModifiedAt() => $_ensure(20);

  @$pb.TagNumber(22)
  $core.String get modifiedBy => $_getSZ(21);

  @$pb.TagNumber(22)
  set modifiedBy($core.String value) => $_setString(21, value);

  @$pb.TagNumber(22)
  $core.bool hasModifiedBy() => $_has(21);

  @$pb.TagNumber(22)
  void clearModifiedBy() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.String get nickName => $_getSZ(22);

  @$pb.TagNumber(23)
  set nickName($core.String value) => $_setString(22, value);

  @$pb.TagNumber(23)
  $core.bool hasNickName() => $_has(22);

  @$pb.TagNumber(23)
  void clearNickName() => $_clearField(23);

  @$pb.TagNumber(24)
  $core.bool get ach => $_getBF(23);

  @$pb.TagNumber(24)
  set ach($core.bool value) => $_setBool(23, value);

  @$pb.TagNumber(24)
  $core.bool hasAch() => $_has(23);

  @$pb.TagNumber(24)
  void clearAch() => $_clearField(24);

  @$pb.TagNumber(25)
  $core.bool get wire => $_getBF(24);

  @$pb.TagNumber(25)
  set wire($core.bool value) => $_setBool(24, value);

  @$pb.TagNumber(25)
  $core.bool hasWire() => $_has(24);

  @$pb.TagNumber(25)
  void clearWire() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.bool get check_26 => $_getBF(25);

  @$pb.TagNumber(26)
  set check_26($core.bool value) => $_setBool(25, value);

  @$pb.TagNumber(26)
  $core.bool hasCheck_26() => $_has(25);

  @$pb.TagNumber(26)
  void clearCheck_26() => $_clearField(26);
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

  factory CreateAccountResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);

  factory CreateAccountResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateAccountResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'),
      createEmptyInstance: create)
    ..aOM<Account>(1, _omitFieldNames ? '' : 'bankAccount',
        subBuilder: Account.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateAccountResponse clone() =>
      CreateAccountResponse()..mergeFromMessage(this);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateAccountResponse copyWith(
          void Function(CreateAccountResponse) updates) =>
      super.copyWith((message) => updates(message as CreateAccountResponse))
          as CreateAccountResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateAccountResponse create() => CreateAccountResponse._();

  @$core.override
  CreateAccountResponse createEmptyInstance() => create();

  static $pb.PbList<CreateAccountResponse> createRepeated() =>
      $pb.PbList<CreateAccountResponse>();

  @$core.pragma('dart2js:noInline')
  static CreateAccountResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateAccountResponse>(create);
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

  factory UpdateAccountResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);

  factory UpdateAccountResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'UpdateAccountResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'),
      createEmptyInstance: create)
    ..aOM<Account>(1, _omitFieldNames ? '' : 'bankAccount',
        subBuilder: Account.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateAccountResponse clone() =>
      UpdateAccountResponse()..mergeFromMessage(this);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateAccountResponse copyWith(
          void Function(UpdateAccountResponse) updates) =>
      super.copyWith((message) => updates(message as UpdateAccountResponse))
          as UpdateAccountResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateAccountResponse create() => UpdateAccountResponse._();

  @$core.override
  UpdateAccountResponse createEmptyInstance() => create();

  static $pb.PbList<UpdateAccountResponse> createRepeated() =>
      $pb.PbList<UpdateAccountResponse>();

  @$core.pragma('dart2js:noInline')
  static UpdateAccountResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateAccountResponse>(create);
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

  factory ReadAccountRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);

  factory ReadAccountRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReadAccountRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'bankId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadAccountRequest clone() => ReadAccountRequest()..mergeFromMessage(this);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadAccountRequest copyWith(void Function(ReadAccountRequest) updates) =>
      super.copyWith((message) => updates(message as ReadAccountRequest))
          as ReadAccountRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadAccountRequest create() => ReadAccountRequest._();

  @$core.override
  ReadAccountRequest createEmptyInstance() => create();

  static $pb.PbList<ReadAccountRequest> createRepeated() =>
      $pb.PbList<ReadAccountRequest>();

  @$core.pragma('dart2js:noInline')
  static ReadAccountRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadAccountRequest>(create);
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

  factory ReadAccountResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);

  factory ReadAccountResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReadAccountResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'),
      createEmptyInstance: create)
    ..aOM<Account>(1, _omitFieldNames ? '' : 'bankAccount',
        subBuilder: Account.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadAccountResponse clone() => ReadAccountResponse()..mergeFromMessage(this);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadAccountResponse copyWith(void Function(ReadAccountResponse) updates) =>
      super.copyWith((message) => updates(message as ReadAccountResponse))
          as ReadAccountResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadAccountResponse create() => ReadAccountResponse._();

  @$core.override
  ReadAccountResponse createEmptyInstance() => create();

  static $pb.PbList<ReadAccountResponse> createRepeated() =>
      $pb.PbList<ReadAccountResponse>();

  @$core.pragma('dart2js:noInline')
  static ReadAccountResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadAccountResponse>(create);
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
    $2.Date? fromSystemDate,
    $2.Date? toSystemDate,
    $core.int? usrId,
    $core.String? nickName,
    $3.Pagination? pagination,
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
    if (fromSystemDate != null) result.fromSystemDate = fromSystemDate;
    if (toSystemDate != null) result.toSystemDate = toSystemDate;
    if (usrId != null) result.usrId = usrId;
    if (nickName != null) result.nickName = nickName;
    if (pagination != null) result.pagination = pagination;
    return result;
  }

  ListAccountRequest._();

  factory ListAccountRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);

  factory ListAccountRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListAccountRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'correspondent')
    ..aOS(2, _omitFieldNames ? '' : 'masterAccountNo')
    ..aOS(3, _omitFieldNames ? '' : 'accountNo')
    ..aOS(4, _omitFieldNames ? '' : 'bankOwnerName')
    ..aOS(5, _omitFieldNames ? '' : 'bankName')
    ..aOS(6, _omitFieldNames ? '' : 'achRoutingNo')
    ..aOS(7, _omitFieldNames ? '' : 'bankAccountNo')
    ..aOS(8, _omitFieldNames ? '' : 'status')
    ..aOM<$2.Date>(9, _omitFieldNames ? '' : 'fromSystemDate',
        subBuilder: $2.Date.create)
    ..aOM<$2.Date>(10, _omitFieldNames ? '' : 'toSystemDate',
        subBuilder: $2.Date.create)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'usrId', $pb.PbFieldType.OU3)
    ..aOS(12, _omitFieldNames ? '' : 'nickName')
    ..aOM<$3.Pagination>(13, _omitFieldNames ? '' : 'pagination',
        subBuilder: $3.Pagination.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountRequest clone() => ListAccountRequest()..mergeFromMessage(this);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountRequest copyWith(void Function(ListAccountRequest) updates) =>
      super.copyWith((message) => updates(message as ListAccountRequest))
          as ListAccountRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAccountRequest create() => ListAccountRequest._();

  @$core.override
  ListAccountRequest createEmptyInstance() => create();

  static $pb.PbList<ListAccountRequest> createRepeated() =>
      $pb.PbList<ListAccountRequest>();

  @$core.pragma('dart2js:noInline')
  static ListAccountRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListAccountRequest>(create);
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
  $2.Date get fromSystemDate => $_getN(8);

  @$pb.TagNumber(9)
  set fromSystemDate($2.Date value) => $_setField(9, value);

  @$pb.TagNumber(9)
  $core.bool hasFromSystemDate() => $_has(8);

  @$pb.TagNumber(9)
  void clearFromSystemDate() => $_clearField(9);

  @$pb.TagNumber(9)
  $2.Date ensureFromSystemDate() => $_ensure(8);

  @$pb.TagNumber(10)
  $2.Date get toSystemDate => $_getN(9);

  @$pb.TagNumber(10)
  set toSystemDate($2.Date value) => $_setField(10, value);

  @$pb.TagNumber(10)
  $core.bool hasToSystemDate() => $_has(9);

  @$pb.TagNumber(10)
  void clearToSystemDate() => $_clearField(10);

  @$pb.TagNumber(10)
  $2.Date ensureToSystemDate() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.int get usrId => $_getIZ(10);

  @$pb.TagNumber(11)
  set usrId($core.int value) => $_setUnsignedInt32(10, value);

  @$pb.TagNumber(11)
  $core.bool hasUsrId() => $_has(10);

  @$pb.TagNumber(11)
  void clearUsrId() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get nickName => $_getSZ(11);

  @$pb.TagNumber(12)
  set nickName($core.String value) => $_setString(11, value);

  @$pb.TagNumber(12)
  $core.bool hasNickName() => $_has(11);

  @$pb.TagNumber(12)
  void clearNickName() => $_clearField(12);

  @$pb.TagNumber(13)
  $3.Pagination get pagination => $_getN(12);

  @$pb.TagNumber(13)
  set pagination($3.Pagination value) => $_setField(13, value);

  @$pb.TagNumber(13)
  $core.bool hasPagination() => $_has(12);

  @$pb.TagNumber(13)
  void clearPagination() => $_clearField(13);

  @$pb.TagNumber(13)
  $3.Pagination ensurePagination() => $_ensure(12);
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

  factory ListAccountSummary.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);

  factory ListAccountSummary.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListAccountSummary',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'totalRows', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountSummary clone() => ListAccountSummary()..mergeFromMessage(this);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountSummary copyWith(void Function(ListAccountSummary) updates) =>
      super.copyWith((message) => updates(message as ListAccountSummary))
          as ListAccountSummary;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAccountSummary create() => ListAccountSummary._();

  @$core.override
  ListAccountSummary createEmptyInstance() => create();

  static $pb.PbList<ListAccountSummary> createRepeated() =>
      $pb.PbList<ListAccountSummary>();

  @$core.pragma('dart2js:noInline')
  static ListAccountSummary getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListAccountSummary>(create);
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

  factory ListAccountResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);

  factory ListAccountResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListAccountResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'),
      createEmptyInstance: create)
    ..pc<Account>(1, _omitFieldNames ? '' : 'bankAccounts', $pb.PbFieldType.PM,
        subBuilder: Account.create)
    ..aOM<ListAccountSummary>(2, _omitFieldNames ? '' : 'summary',
        subBuilder: ListAccountSummary.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountResponse clone() => ListAccountResponse()..mergeFromMessage(this);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountResponse copyWith(void Function(ListAccountResponse) updates) =>
      super.copyWith((message) => updates(message as ListAccountResponse))
          as ListAccountResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAccountResponse create() => ListAccountResponse._();

  @$core.override
  ListAccountResponse createEmptyInstance() => create();

  static $pb.PbList<ListAccountResponse> createRepeated() =>
      $pb.PbList<ListAccountResponse>();

  @$core.pragma('dart2js:noInline')
  static ListAccountResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListAccountResponse>(create);
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

  factory ListAccountAuditRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);

  factory ListAccountAuditRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListAccountAuditRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'bankId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountAuditRequest clone() =>
      ListAccountAuditRequest()..mergeFromMessage(this);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountAuditRequest copyWith(
          void Function(ListAccountAuditRequest) updates) =>
      super.copyWith((message) => updates(message as ListAccountAuditRequest))
          as ListAccountAuditRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAccountAuditRequest create() => ListAccountAuditRequest._();

  @$core.override
  ListAccountAuditRequest createEmptyInstance() => create();

  static $pb.PbList<ListAccountAuditRequest> createRepeated() =>
      $pb.PbList<ListAccountAuditRequest>();

  @$core.pragma('dart2js:noInline')
  static ListAccountAuditRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListAccountAuditRequest>(create);
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

  factory ListAccountAuditResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);

  factory ListAccountAuditResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListAccountAuditResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'),
      createEmptyInstance: create)
    ..pc<Account>(1, _omitFieldNames ? '' : 'account', $pb.PbFieldType.PM,
        subBuilder: Account.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountAuditResponse clone() =>
      ListAccountAuditResponse()..mergeFromMessage(this);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListAccountAuditResponse copyWith(
          void Function(ListAccountAuditResponse) updates) =>
      super.copyWith((message) => updates(message as ListAccountAuditResponse))
          as ListAccountAuditResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListAccountAuditResponse create() => ListAccountAuditResponse._();

  @$core.override
  ListAccountAuditResponse createEmptyInstance() => create();

  static $pb.PbList<ListAccountAuditResponse> createRepeated() =>
      $pb.PbList<ListAccountAuditResponse>();

  @$core.pragma('dart2js:noInline')
  static ListAccountAuditResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListAccountAuditResponse>(create);
  static ListAccountAuditResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Account> get account => $_getList(0);
}

class ListGlBankRequest extends $pb.GeneratedMessage {
  factory ListGlBankRequest() => create();

  ListGlBankRequest._();

  factory ListGlBankRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);

  factory ListGlBankRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListGlBankRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListGlBankRequest clone() => ListGlBankRequest()..mergeFromMessage(this);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListGlBankRequest copyWith(void Function(ListGlBankRequest) updates) =>
      super.copyWith((message) => updates(message as ListGlBankRequest))
          as ListGlBankRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListGlBankRequest create() => ListGlBankRequest._();

  @$core.override
  ListGlBankRequest createEmptyInstance() => create();

  static $pb.PbList<ListGlBankRequest> createRepeated() =>
      $pb.PbList<ListGlBankRequest>();

  @$core.pragma('dart2js:noInline')
  static ListGlBankRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListGlBankRequest>(create);
  static ListGlBankRequest? _defaultInstance;
}

class ReadDefaultGlBankRequest extends $pb.GeneratedMessage {
  factory ReadDefaultGlBankRequest() => create();

  ReadDefaultGlBankRequest._();

  factory ReadDefaultGlBankRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);

  factory ReadDefaultGlBankRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ReadDefaultGlBankRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadDefaultGlBankRequest clone() =>
      ReadDefaultGlBankRequest()..mergeFromMessage(this);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadDefaultGlBankRequest copyWith(
          void Function(ReadDefaultGlBankRequest) updates) =>
      super.copyWith((message) => updates(message as ReadDefaultGlBankRequest))
          as ReadDefaultGlBankRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadDefaultGlBankRequest create() => ReadDefaultGlBankRequest._();

  @$core.override
  ReadDefaultGlBankRequest createEmptyInstance() => create();

  static $pb.PbList<ReadDefaultGlBankRequest> createRepeated() =>
      $pb.PbList<ReadDefaultGlBankRequest>();

  @$core.pragma('dart2js:noInline')
  static ReadDefaultGlBankRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ReadDefaultGlBankRequest>(create);
  static ReadDefaultGlBankRequest? _defaultInstance;
}

class GlBank extends $pb.GeneratedMessage {
  factory GlBank({
    $core.int? accountId,
    $core.String? accountNo,
  }) {
    final result = create();
    if (accountId != null) result.accountId = accountId;
    if (accountNo != null) result.accountNo = accountNo;
    return result;
  }

  GlBank._();

  factory GlBank.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);

  factory GlBank.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GlBank',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'accountId', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'accountNo')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GlBank clone() => GlBank()..mergeFromMessage(this);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GlBank copyWith(void Function(GlBank) updates) =>
      super.copyWith((message) => updates(message as GlBank)) as GlBank;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GlBank create() => GlBank._();

  @$core.override
  GlBank createEmptyInstance() => create();

  static $pb.PbList<GlBank> createRepeated() => $pb.PbList<GlBank>();

  @$core.pragma('dart2js:noInline')
  static GlBank getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GlBank>(create);
  static GlBank? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get accountId => $_getIZ(0);

  @$pb.TagNumber(1)
  set accountId($core.int value) => $_setUnsignedInt32(0, value);

  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);

  @$pb.TagNumber(1)
  void clearAccountId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountNo => $_getSZ(1);

  @$pb.TagNumber(2)
  set accountNo($core.String value) => $_setString(1, value);

  @$pb.TagNumber(2)
  $core.bool hasAccountNo() => $_has(1);

  @$pb.TagNumber(2)
  void clearAccountNo() => $_clearField(2);
}

class ListGlBankResponse extends $pb.GeneratedMessage {
  factory ListGlBankResponse({
    $core.Iterable<GlBank>? glBanks,
  }) {
    final result = create();
    if (glBanks != null) result.glBanks.addAll(glBanks);
    return result;
  }

  ListGlBankResponse._();

  factory ListGlBankResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);

  factory ListGlBankResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListGlBankResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'),
      createEmptyInstance: create)
    ..pc<GlBank>(1, _omitFieldNames ? '' : 'glBanks', $pb.PbFieldType.PM,
        subBuilder: GlBank.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListGlBankResponse clone() => ListGlBankResponse()..mergeFromMessage(this);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListGlBankResponse copyWith(void Function(ListGlBankResponse) updates) =>
      super.copyWith((message) => updates(message as ListGlBankResponse))
          as ListGlBankResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListGlBankResponse create() => ListGlBankResponse._();

  @$core.override
  ListGlBankResponse createEmptyInstance() => create();

  static $pb.PbList<ListGlBankResponse> createRepeated() =>
      $pb.PbList<ListGlBankResponse>();

  @$core.pragma('dart2js:noInline')
  static ListGlBankResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListGlBankResponse>(create);
  static ListGlBankResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<GlBank> get glBanks => $_getList(0);
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

  factory ListBankAccountRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);

  factory ListBankAccountRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListBankAccountRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accountNo')
    ..aOS(2, _omitFieldNames ? '' : 'correspondent')
    ..aOS(3, _omitFieldNames ? '' : 'status')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'userId', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListBankAccountRequest clone() =>
      ListBankAccountRequest()..mergeFromMessage(this);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListBankAccountRequest copyWith(
          void Function(ListBankAccountRequest) updates) =>
      super.copyWith((message) => updates(message as ListBankAccountRequest))
          as ListBankAccountRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListBankAccountRequest create() => ListBankAccountRequest._();

  @$core.override
  ListBankAccountRequest createEmptyInstance() => create();

  static $pb.PbList<ListBankAccountRequest> createRepeated() =>
      $pb.PbList<ListBankAccountRequest>();

  @$core.pragma('dart2js:noInline')
  static ListBankAccountRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListBankAccountRequest>(create);
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
    $core.String? status,
  }) {
    final result = create();
    if (bankId != null) result.bankId = bankId;
    if (status != null) result.status = status;
    return result;
  }

  DeleteAccountRequest._();

  factory DeleteAccountRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);

  factory DeleteAccountRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteAccountRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'),
      createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'bankId', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteAccountRequest clone() =>
      DeleteAccountRequest()..mergeFromMessage(this);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteAccountRequest copyWith(void Function(DeleteAccountRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteAccountRequest))
          as DeleteAccountRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteAccountRequest create() => DeleteAccountRequest._();

  @$core.override
  DeleteAccountRequest createEmptyInstance() => create();

  static $pb.PbList<DeleteAccountRequest> createRepeated() =>
      $pb.PbList<DeleteAccountRequest>();

  @$core.pragma('dart2js:noInline')
  static DeleteAccountRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteAccountRequest>(create);
  static DeleteAccountRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get bankId => $_getIZ(0);

  @$pb.TagNumber(1)
  set bankId($core.int value) => $_setUnsignedInt32(0, value);

  @$pb.TagNumber(1)
  $core.bool hasBankId() => $_has(0);

  @$pb.TagNumber(1)
  void clearBankId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);

  @$pb.TagNumber(2)
  set status($core.String value) => $_setString(1, value);

  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);

  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);
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

  factory DeleteAccountResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);

  factory DeleteAccountResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteAccountResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'bankpb'),
      createEmptyInstance: create)
    ..aOM<Account>(1, _omitFieldNames ? '' : 'bankAccount',
        subBuilder: Account.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteAccountResponse clone() =>
      DeleteAccountResponse()..mergeFromMessage(this);

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteAccountResponse copyWith(
          void Function(DeleteAccountResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteAccountResponse))
          as DeleteAccountResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteAccountResponse create() => DeleteAccountResponse._();

  @$core.override
  DeleteAccountResponse createEmptyInstance() => create();

  static $pb.PbList<DeleteAccountResponse> createRepeated() =>
      $pb.PbList<DeleteAccountResponse>();

  @$core.pragma('dart2js:noInline')
  static DeleteAccountResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteAccountResponse>(create);
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

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
