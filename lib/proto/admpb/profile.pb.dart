//
//  Generated code. Do not modify.
//  source: proto/admpb/profile.proto
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

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Profile extends $pb.GeneratedMessage {
  factory Profile({
    $1.Date? systemDate,
    $1.Date? tradeDate,
    $1.Date? settleDate,
    $1.Date? previousDate,
    $core.String? baseCurrency,
    $core.String? versionNo,
    $1.Date? cutOfDate,
    $core.String? participantNo,
    $core.String? correspondent,
    $core.String? debitSign,
    $core.String? creditSign,
    $core.String? profileName,
    $core.String? tradeConfirm,
    $core.String? companyTin,
    $core.String? photo,
    $core.String? companyName,
    $core.String? address,
    $core.String? city,
    $core.String? state,
    $core.String? country,
    $core.String? zip,
    $core.String? telNo,
    $core.String? disclosure,
    $core.String? template,
    $core.String? monthlyStatement,
  }) {
    final result = create();
    if (systemDate != null) result.systemDate = systemDate;
    if (tradeDate != null) result.tradeDate = tradeDate;
    if (settleDate != null) result.settleDate = settleDate;
    if (previousDate != null) result.previousDate = previousDate;
    if (baseCurrency != null) result.baseCurrency = baseCurrency;
    if (versionNo != null) result.versionNo = versionNo;
    if (cutOfDate != null) result.cutOfDate = cutOfDate;
    if (participantNo != null) result.participantNo = participantNo;
    if (correspondent != null) result.correspondent = correspondent;
    if (debitSign != null) result.debitSign = debitSign;
    if (creditSign != null) result.creditSign = creditSign;
    if (profileName != null) result.profileName = profileName;
    if (tradeConfirm != null) result.tradeConfirm = tradeConfirm;
    if (companyTin != null) result.companyTin = companyTin;
    if (photo != null) result.photo = photo;
    if (companyName != null) result.companyName = companyName;
    if (address != null) result.address = address;
    if (city != null) result.city = city;
    if (state != null) result.state = state;
    if (country != null) result.country = country;
    if (zip != null) result.zip = zip;
    if (telNo != null) result.telNo = telNo;
    if (disclosure != null) result.disclosure = disclosure;
    if (template != null) result.template = template;
    if (monthlyStatement != null) result.monthlyStatement = monthlyStatement;
    return result;
  }

  Profile._();

  factory Profile.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Profile.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Profile', package: const $pb.PackageName(_omitMessageNames ? '' : 'admpb'), createEmptyInstance: create)
    ..aOM<$1.Date>(1, _omitFieldNames ? '' : 'systemDate', subBuilder: $1.Date.create)
    ..aOM<$1.Date>(2, _omitFieldNames ? '' : 'tradeDate', subBuilder: $1.Date.create)
    ..aOM<$1.Date>(3, _omitFieldNames ? '' : 'settleDate', subBuilder: $1.Date.create)
    ..aOM<$1.Date>(4, _omitFieldNames ? '' : 'previousDate', subBuilder: $1.Date.create)
    ..aOS(5, _omitFieldNames ? '' : 'baseCurrency')
    ..aOS(6, _omitFieldNames ? '' : 'versionNo')
    ..aOM<$1.Date>(7, _omitFieldNames ? '' : 'cutOfDate', subBuilder: $1.Date.create)
    ..aOS(8, _omitFieldNames ? '' : 'participantNo')
    ..aOS(9, _omitFieldNames ? '' : 'correspondent')
    ..aOS(10, _omitFieldNames ? '' : 'debitSign')
    ..aOS(11, _omitFieldNames ? '' : 'creditSign')
    ..aOS(12, _omitFieldNames ? '' : 'profileName')
    ..aOS(13, _omitFieldNames ? '' : 'tradeConfirm')
    ..aOS(14, _omitFieldNames ? '' : 'companyTin')
    ..aOS(15, _omitFieldNames ? '' : 'photo')
    ..aOS(16, _omitFieldNames ? '' : 'companyName')
    ..aOS(17, _omitFieldNames ? '' : 'address')
    ..aOS(18, _omitFieldNames ? '' : 'city')
    ..aOS(19, _omitFieldNames ? '' : 'state')
    ..aOS(20, _omitFieldNames ? '' : 'country')
    ..aOS(21, _omitFieldNames ? '' : 'zip')
    ..aOS(22, _omitFieldNames ? '' : 'telNo')
    ..aOS(23, _omitFieldNames ? '' : 'disclosure')
    ..aOS(25, _omitFieldNames ? '' : 'template')
    ..aOS(26, _omitFieldNames ? '' : 'monthlyStatement')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Profile clone() => Profile()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Profile copyWith(void Function(Profile) updates) => super.copyWith((message) => updates(message as Profile)) as Profile;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Profile create() => Profile._();
  @$core.override
  Profile createEmptyInstance() => create();
  static $pb.PbList<Profile> createRepeated() => $pb.PbList<Profile>();
  @$core.pragma('dart2js:noInline')
  static Profile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Profile>(create);
  static Profile? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Date get systemDate => $_getN(0);
  @$pb.TagNumber(1)
  set systemDate($1.Date value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSystemDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearSystemDate() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.Date ensureSystemDate() => $_ensure(0);

  @$pb.TagNumber(2)
  $1.Date get tradeDate => $_getN(1);
  @$pb.TagNumber(2)
  set tradeDate($1.Date value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTradeDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearTradeDate() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Date ensureTradeDate() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Date get settleDate => $_getN(2);
  @$pb.TagNumber(3)
  set settleDate($1.Date value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSettleDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearSettleDate() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Date ensureSettleDate() => $_ensure(2);

  @$pb.TagNumber(4)
  $1.Date get previousDate => $_getN(3);
  @$pb.TagNumber(4)
  set previousDate($1.Date value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasPreviousDate() => $_has(3);
  @$pb.TagNumber(4)
  void clearPreviousDate() => $_clearField(4);
  @$pb.TagNumber(4)
  $1.Date ensurePreviousDate() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get baseCurrency => $_getSZ(4);
  @$pb.TagNumber(5)
  set baseCurrency($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasBaseCurrency() => $_has(4);
  @$pb.TagNumber(5)
  void clearBaseCurrency() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get versionNo => $_getSZ(5);
  @$pb.TagNumber(6)
  set versionNo($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasVersionNo() => $_has(5);
  @$pb.TagNumber(6)
  void clearVersionNo() => $_clearField(6);

  @$pb.TagNumber(7)
  $1.Date get cutOfDate => $_getN(6);
  @$pb.TagNumber(7)
  set cutOfDate($1.Date value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasCutOfDate() => $_has(6);
  @$pb.TagNumber(7)
  void clearCutOfDate() => $_clearField(7);
  @$pb.TagNumber(7)
  $1.Date ensureCutOfDate() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.String get participantNo => $_getSZ(7);
  @$pb.TagNumber(8)
  set participantNo($core.String value) => $_setString(7, value);
  @$pb.TagNumber(8)
  $core.bool hasParticipantNo() => $_has(7);
  @$pb.TagNumber(8)
  void clearParticipantNo() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.String get correspondent => $_getSZ(8);
  @$pb.TagNumber(9)
  set correspondent($core.String value) => $_setString(8, value);
  @$pb.TagNumber(9)
  $core.bool hasCorrespondent() => $_has(8);
  @$pb.TagNumber(9)
  void clearCorrespondent() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get debitSign => $_getSZ(9);
  @$pb.TagNumber(10)
  set debitSign($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasDebitSign() => $_has(9);
  @$pb.TagNumber(10)
  void clearDebitSign() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get creditSign => $_getSZ(10);
  @$pb.TagNumber(11)
  set creditSign($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasCreditSign() => $_has(10);
  @$pb.TagNumber(11)
  void clearCreditSign() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get profileName => $_getSZ(11);
  @$pb.TagNumber(12)
  set profileName($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasProfileName() => $_has(11);
  @$pb.TagNumber(12)
  void clearProfileName() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.String get tradeConfirm => $_getSZ(12);
  @$pb.TagNumber(13)
  set tradeConfirm($core.String value) => $_setString(12, value);
  @$pb.TagNumber(13)
  $core.bool hasTradeConfirm() => $_has(12);
  @$pb.TagNumber(13)
  void clearTradeConfirm() => $_clearField(13);

  @$pb.TagNumber(14)
  $core.String get companyTin => $_getSZ(13);
  @$pb.TagNumber(14)
  set companyTin($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasCompanyTin() => $_has(13);
  @$pb.TagNumber(14)
  void clearCompanyTin() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.String get photo => $_getSZ(14);
  @$pb.TagNumber(15)
  set photo($core.String value) => $_setString(14, value);
  @$pb.TagNumber(15)
  $core.bool hasPhoto() => $_has(14);
  @$pb.TagNumber(15)
  void clearPhoto() => $_clearField(15);

  @$pb.TagNumber(16)
  $core.String get companyName => $_getSZ(15);
  @$pb.TagNumber(16)
  set companyName($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasCompanyName() => $_has(15);
  @$pb.TagNumber(16)
  void clearCompanyName() => $_clearField(16);

  @$pb.TagNumber(17)
  $core.String get address => $_getSZ(16);
  @$pb.TagNumber(17)
  set address($core.String value) => $_setString(16, value);
  @$pb.TagNumber(17)
  $core.bool hasAddress() => $_has(16);
  @$pb.TagNumber(17)
  void clearAddress() => $_clearField(17);

  @$pb.TagNumber(18)
  $core.String get city => $_getSZ(17);
  @$pb.TagNumber(18)
  set city($core.String value) => $_setString(17, value);
  @$pb.TagNumber(18)
  $core.bool hasCity() => $_has(17);
  @$pb.TagNumber(18)
  void clearCity() => $_clearField(18);

  @$pb.TagNumber(19)
  $core.String get state => $_getSZ(18);
  @$pb.TagNumber(19)
  set state($core.String value) => $_setString(18, value);
  @$pb.TagNumber(19)
  $core.bool hasState() => $_has(18);
  @$pb.TagNumber(19)
  void clearState() => $_clearField(19);

  @$pb.TagNumber(20)
  $core.String get country => $_getSZ(19);
  @$pb.TagNumber(20)
  set country($core.String value) => $_setString(19, value);
  @$pb.TagNumber(20)
  $core.bool hasCountry() => $_has(19);
  @$pb.TagNumber(20)
  void clearCountry() => $_clearField(20);

  @$pb.TagNumber(21)
  $core.String get zip => $_getSZ(20);
  @$pb.TagNumber(21)
  set zip($core.String value) => $_setString(20, value);
  @$pb.TagNumber(21)
  $core.bool hasZip() => $_has(20);
  @$pb.TagNumber(21)
  void clearZip() => $_clearField(21);

  @$pb.TagNumber(22)
  $core.String get telNo => $_getSZ(21);
  @$pb.TagNumber(22)
  set telNo($core.String value) => $_setString(21, value);
  @$pb.TagNumber(22)
  $core.bool hasTelNo() => $_has(21);
  @$pb.TagNumber(22)
  void clearTelNo() => $_clearField(22);

  @$pb.TagNumber(23)
  $core.String get disclosure => $_getSZ(22);
  @$pb.TagNumber(23)
  set disclosure($core.String value) => $_setString(22, value);
  @$pb.TagNumber(23)
  $core.bool hasDisclosure() => $_has(22);
  @$pb.TagNumber(23)
  void clearDisclosure() => $_clearField(23);

  @$pb.TagNumber(25)
  $core.String get template => $_getSZ(23);
  @$pb.TagNumber(25)
  set template($core.String value) => $_setString(23, value);
  @$pb.TagNumber(25)
  $core.bool hasTemplate() => $_has(23);
  @$pb.TagNumber(25)
  void clearTemplate() => $_clearField(25);

  @$pb.TagNumber(26)
  $core.String get monthlyStatement => $_getSZ(24);
  @$pb.TagNumber(26)
  set monthlyStatement($core.String value) => $_setString(24, value);
  @$pb.TagNumber(26)
  $core.bool hasMonthlyStatement() => $_has(24);
  @$pb.TagNumber(26)
  void clearMonthlyStatement() => $_clearField(26);
}

class ReadProfileRequest extends $pb.GeneratedMessage {
  factory ReadProfileRequest({
    Profile? profile,
  }) {
    final result = create();
    if (profile != null) result.profile = profile;
    return result;
  }

  ReadProfileRequest._();

  factory ReadProfileRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ReadProfileRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadProfileRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'admpb'), createEmptyInstance: create)
    ..aOM<Profile>(1, _omitFieldNames ? '' : 'profile', subBuilder: Profile.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadProfileRequest clone() => ReadProfileRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadProfileRequest copyWith(void Function(ReadProfileRequest) updates) => super.copyWith((message) => updates(message as ReadProfileRequest)) as ReadProfileRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadProfileRequest create() => ReadProfileRequest._();
  @$core.override
  ReadProfileRequest createEmptyInstance() => create();
  static $pb.PbList<ReadProfileRequest> createRepeated() => $pb.PbList<ReadProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static ReadProfileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadProfileRequest>(create);
  static ReadProfileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  Profile get profile => $_getN(0);
  @$pb.TagNumber(1)
  set profile(Profile value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasProfile() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfile() => $_clearField(1);
  @$pb.TagNumber(1)
  Profile ensureProfile() => $_ensure(0);
}

class ReadProfileResponse extends $pb.GeneratedMessage {
  factory ReadProfileResponse({
    Profile? profile,
  }) {
    final result = create();
    if (profile != null) result.profile = profile;
    return result;
  }

  ReadProfileResponse._();

  factory ReadProfileResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ReadProfileResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReadProfileResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'admpb'), createEmptyInstance: create)
    ..aOM<Profile>(1, _omitFieldNames ? '' : 'profile', subBuilder: Profile.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadProfileResponse clone() => ReadProfileResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ReadProfileResponse copyWith(void Function(ReadProfileResponse) updates) => super.copyWith((message) => updates(message as ReadProfileResponse)) as ReadProfileResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReadProfileResponse create() => ReadProfileResponse._();
  @$core.override
  ReadProfileResponse createEmptyInstance() => create();
  static $pb.PbList<ReadProfileResponse> createRepeated() => $pb.PbList<ReadProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static ReadProfileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadProfileResponse>(create);
  static ReadProfileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Profile get profile => $_getN(0);
  @$pb.TagNumber(1)
  set profile(Profile value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasProfile() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfile() => $_clearField(1);
  @$pb.TagNumber(1)
  Profile ensureProfile() => $_ensure(0);
}

class ListProfileRequest extends $pb.GeneratedMessage {
  factory ListProfileRequest() => create();

  ListProfileRequest._();

  factory ListProfileRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListProfileRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListProfileRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'admpb'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListProfileRequest clone() => ListProfileRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListProfileRequest copyWith(void Function(ListProfileRequest) updates) => super.copyWith((message) => updates(message as ListProfileRequest)) as ListProfileRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListProfileRequest create() => ListProfileRequest._();
  @$core.override
  ListProfileRequest createEmptyInstance() => create();
  static $pb.PbList<ListProfileRequest> createRepeated() => $pb.PbList<ListProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static ListProfileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListProfileRequest>(create);
  static ListProfileRequest? _defaultInstance;
}

class ListProfileResponse extends $pb.GeneratedMessage {
  factory ListProfileResponse({
    Profile? profile,
  }) {
    final result = create();
    if (profile != null) result.profile = profile;
    return result;
  }

  ListProfileResponse._();

  factory ListProfileResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListProfileResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListProfileResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'admpb'), createEmptyInstance: create)
    ..aOM<Profile>(1, _omitFieldNames ? '' : 'profile', subBuilder: Profile.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListProfileResponse clone() => ListProfileResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListProfileResponse copyWith(void Function(ListProfileResponse) updates) => super.copyWith((message) => updates(message as ListProfileResponse)) as ListProfileResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListProfileResponse create() => ListProfileResponse._();
  @$core.override
  ListProfileResponse createEmptyInstance() => create();
  static $pb.PbList<ListProfileResponse> createRepeated() => $pb.PbList<ListProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static ListProfileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListProfileResponse>(create);
  static ListProfileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Profile get profile => $_getN(0);
  @$pb.TagNumber(1)
  set profile(Profile value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasProfile() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfile() => $_clearField(1);
  @$pb.TagNumber(1)
  Profile ensureProfile() => $_ensure(0);
}

class ExecuteProfileRequest extends $pb.GeneratedMessage {
  factory ExecuteProfileRequest({
    $core.String? process,
    $1.Date? rollbackDate,
  }) {
    final result = create();
    if (process != null) result.process = process;
    if (rollbackDate != null) result.rollbackDate = rollbackDate;
    return result;
  }

  ExecuteProfileRequest._();

  factory ExecuteProfileRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ExecuteProfileRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExecuteProfileRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'admpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'process')
    ..aOM<$1.Date>(2, _omitFieldNames ? '' : 'rollbackDate', subBuilder: $1.Date.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteProfileRequest clone() => ExecuteProfileRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteProfileRequest copyWith(void Function(ExecuteProfileRequest) updates) => super.copyWith((message) => updates(message as ExecuteProfileRequest)) as ExecuteProfileRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExecuteProfileRequest create() => ExecuteProfileRequest._();
  @$core.override
  ExecuteProfileRequest createEmptyInstance() => create();
  static $pb.PbList<ExecuteProfileRequest> createRepeated() => $pb.PbList<ExecuteProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static ExecuteProfileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExecuteProfileRequest>(create);
  static ExecuteProfileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get process => $_getSZ(0);
  @$pb.TagNumber(1)
  set process($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasProcess() => $_has(0);
  @$pb.TagNumber(1)
  void clearProcess() => $_clearField(1);

  @$pb.TagNumber(2)
  $1.Date get rollbackDate => $_getN(1);
  @$pb.TagNumber(2)
  set rollbackDate($1.Date value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRollbackDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearRollbackDate() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Date ensureRollbackDate() => $_ensure(1);
}

class ExecuteProfileResponse extends $pb.GeneratedMessage {
  factory ExecuteProfileResponse({
    $core.String? message,
  }) {
    final result = create();
    if (message != null) result.message = message;
    return result;
  }

  ExecuteProfileResponse._();

  factory ExecuteProfileResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ExecuteProfileResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExecuteProfileResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'admpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteProfileResponse clone() => ExecuteProfileResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ExecuteProfileResponse copyWith(void Function(ExecuteProfileResponse) updates) => super.copyWith((message) => updates(message as ExecuteProfileResponse)) as ExecuteProfileResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExecuteProfileResponse create() => ExecuteProfileResponse._();
  @$core.override
  ExecuteProfileResponse createEmptyInstance() => create();
  static $pb.PbList<ExecuteProfileResponse> createRepeated() => $pb.PbList<ExecuteProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static ExecuteProfileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExecuteProfileResponse>(create);
  static ExecuteProfileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => $_clearField(1);
}

class SettleDateRequest extends $pb.GeneratedMessage {
  factory SettleDateRequest({
    $1.Date? tradeDate,
  }) {
    final result = create();
    if (tradeDate != null) result.tradeDate = tradeDate;
    return result;
  }

  SettleDateRequest._();

  factory SettleDateRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory SettleDateRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SettleDateRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'admpb'), createEmptyInstance: create)
    ..aOM<$1.Date>(1, _omitFieldNames ? '' : 'tradeDate', subBuilder: $1.Date.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SettleDateRequest clone() => SettleDateRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SettleDateRequest copyWith(void Function(SettleDateRequest) updates) => super.copyWith((message) => updates(message as SettleDateRequest)) as SettleDateRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SettleDateRequest create() => SettleDateRequest._();
  @$core.override
  SettleDateRequest createEmptyInstance() => create();
  static $pb.PbList<SettleDateRequest> createRepeated() => $pb.PbList<SettleDateRequest>();
  @$core.pragma('dart2js:noInline')
  static SettleDateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SettleDateRequest>(create);
  static SettleDateRequest? _defaultInstance;

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
}

class UpdateProfileRequest extends $pb.GeneratedMessage {
  factory UpdateProfileRequest({
    $core.String? participantNo,
    $core.String? correspondent,
    $core.String? debitSign,
    $core.String? creditSign,
    $core.String? monthlyStatement,
  }) {
    final result = create();
    if (participantNo != null) result.participantNo = participantNo;
    if (correspondent != null) result.correspondent = correspondent;
    if (debitSign != null) result.debitSign = debitSign;
    if (creditSign != null) result.creditSign = creditSign;
    if (monthlyStatement != null) result.monthlyStatement = monthlyStatement;
    return result;
  }

  UpdateProfileRequest._();

  factory UpdateProfileRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory UpdateProfileRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateProfileRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'admpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'participantNo')
    ..aOS(2, _omitFieldNames ? '' : 'correspondent')
    ..aOS(3, _omitFieldNames ? '' : 'debitSign')
    ..aOS(4, _omitFieldNames ? '' : 'creditSign')
    ..aOS(5, _omitFieldNames ? '' : 'monthlyStatement')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateProfileRequest clone() => UpdateProfileRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateProfileRequest copyWith(void Function(UpdateProfileRequest) updates) => super.copyWith((message) => updates(message as UpdateProfileRequest)) as UpdateProfileRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateProfileRequest create() => UpdateProfileRequest._();
  @$core.override
  UpdateProfileRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateProfileRequest> createRepeated() => $pb.PbList<UpdateProfileRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateProfileRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateProfileRequest>(create);
  static UpdateProfileRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get participantNo => $_getSZ(0);
  @$pb.TagNumber(1)
  set participantNo($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasParticipantNo() => $_has(0);
  @$pb.TagNumber(1)
  void clearParticipantNo() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get correspondent => $_getSZ(1);
  @$pb.TagNumber(2)
  set correspondent($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasCorrespondent() => $_has(1);
  @$pb.TagNumber(2)
  void clearCorrespondent() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get debitSign => $_getSZ(2);
  @$pb.TagNumber(3)
  set debitSign($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDebitSign() => $_has(2);
  @$pb.TagNumber(3)
  void clearDebitSign() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get creditSign => $_getSZ(3);
  @$pb.TagNumber(4)
  set creditSign($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasCreditSign() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreditSign() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get monthlyStatement => $_getSZ(4);
  @$pb.TagNumber(5)
  set monthlyStatement($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasMonthlyStatement() => $_has(4);
  @$pb.TagNumber(5)
  void clearMonthlyStatement() => $_clearField(5);
}

class UpdateProfileResponse extends $pb.GeneratedMessage {
  factory UpdateProfileResponse({
    Profile? profile,
  }) {
    final result = create();
    if (profile != null) result.profile = profile;
    return result;
  }

  UpdateProfileResponse._();

  factory UpdateProfileResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory UpdateProfileResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateProfileResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'admpb'), createEmptyInstance: create)
    ..aOM<Profile>(1, _omitFieldNames ? '' : 'profile', subBuilder: Profile.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateProfileResponse clone() => UpdateProfileResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateProfileResponse copyWith(void Function(UpdateProfileResponse) updates) => super.copyWith((message) => updates(message as UpdateProfileResponse)) as UpdateProfileResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateProfileResponse create() => UpdateProfileResponse._();
  @$core.override
  UpdateProfileResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateProfileResponse> createRepeated() => $pb.PbList<UpdateProfileResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateProfileResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateProfileResponse>(create);
  static UpdateProfileResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Profile get profile => $_getN(0);
  @$pb.TagNumber(1)
  set profile(Profile value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasProfile() => $_has(0);
  @$pb.TagNumber(1)
  void clearProfile() => $_clearField(1);
  @$pb.TagNumber(1)
  Profile ensureProfile() => $_ensure(0);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
