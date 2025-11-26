//
//  Generated code. Do not modify.
//  source: proto/admpb/contactus.proto
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

class ContactUs extends $pb.GeneratedMessage {
  factory ContactUs({
    $core.int? contactUsId,
    $core.int? usrId,
    $core.String? subject,
    $core.String? description,
    $core.String? pageName,
    $core.String? pageComponent,
    $core.String? status,
    $1.Date? targetDate,
    $1.Date? completionDate,
    $core.String? type,
    $core.String? priorityLevel,
    $core.String? cc,
    $2.Timestamp? createdAt,
    $core.String? createdBy,
    $2.Timestamp? modifiedAt,
    $core.String? modifiedBy,
  }) {
    final result = create();
    if (contactUsId != null) result.contactUsId = contactUsId;
    if (usrId != null) result.usrId = usrId;
    if (subject != null) result.subject = subject;
    if (description != null) result.description = description;
    if (pageName != null) result.pageName = pageName;
    if (pageComponent != null) result.pageComponent = pageComponent;
    if (status != null) result.status = status;
    if (targetDate != null) result.targetDate = targetDate;
    if (completionDate != null) result.completionDate = completionDate;
    if (type != null) result.type = type;
    if (priorityLevel != null) result.priorityLevel = priorityLevel;
    if (cc != null) result.cc = cc;
    if (createdAt != null) result.createdAt = createdAt;
    if (createdBy != null) result.createdBy = createdBy;
    if (modifiedAt != null) result.modifiedAt = modifiedAt;
    if (modifiedBy != null) result.modifiedBy = modifiedBy;
    return result;
  }

  ContactUs._();

  factory ContactUs.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ContactUs.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ContactUs', package: const $pb.PackageName(_omitMessageNames ? '' : 'admpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'contactUsId', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'usrId', $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'subject')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..aOS(5, _omitFieldNames ? '' : 'pageName')
    ..aOS(6, _omitFieldNames ? '' : 'pageComponent')
    ..aOS(7, _omitFieldNames ? '' : 'status')
    ..aOM<$1.Date>(8, _omitFieldNames ? '' : 'targetDate', subBuilder: $1.Date.create)
    ..aOM<$1.Date>(9, _omitFieldNames ? '' : 'completionDate', subBuilder: $1.Date.create)
    ..aOS(10, _omitFieldNames ? '' : 'type')
    ..aOS(11, _omitFieldNames ? '' : 'priorityLevel')
    ..aOS(12, _omitFieldNames ? '' : 'cc')
    ..aOM<$2.Timestamp>(13, _omitFieldNames ? '' : 'createdAt', subBuilder: $2.Timestamp.create)
    ..aOS(14, _omitFieldNames ? '' : 'createdBy')
    ..aOM<$2.Timestamp>(15, _omitFieldNames ? '' : 'modifiedAt', subBuilder: $2.Timestamp.create)
    ..aOS(16, _omitFieldNames ? '' : 'modifiedBy')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContactUs clone() => ContactUs()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ContactUs copyWith(void Function(ContactUs) updates) => super.copyWith((message) => updates(message as ContactUs)) as ContactUs;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContactUs create() => ContactUs._();
  @$core.override
  ContactUs createEmptyInstance() => create();
  static $pb.PbList<ContactUs> createRepeated() => $pb.PbList<ContactUs>();
  @$core.pragma('dart2js:noInline')
  static ContactUs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContactUs>(create);
  static ContactUs? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get contactUsId => $_getIZ(0);
  @$pb.TagNumber(1)
  set contactUsId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasContactUsId() => $_has(0);
  @$pb.TagNumber(1)
  void clearContactUsId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get usrId => $_getIZ(1);
  @$pb.TagNumber(2)
  set usrId($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasUsrId() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsrId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get subject => $_getSZ(2);
  @$pb.TagNumber(3)
  set subject($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSubject() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubject() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get pageName => $_getSZ(4);
  @$pb.TagNumber(5)
  set pageName($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasPageName() => $_has(4);
  @$pb.TagNumber(5)
  void clearPageName() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get pageComponent => $_getSZ(5);
  @$pb.TagNumber(6)
  set pageComponent($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasPageComponent() => $_has(5);
  @$pb.TagNumber(6)
  void clearPageComponent() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get status => $_getSZ(6);
  @$pb.TagNumber(7)
  set status($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearStatus() => $_clearField(7);

  @$pb.TagNumber(8)
  $1.Date get targetDate => $_getN(7);
  @$pb.TagNumber(8)
  set targetDate($1.Date value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasTargetDate() => $_has(7);
  @$pb.TagNumber(8)
  void clearTargetDate() => $_clearField(8);
  @$pb.TagNumber(8)
  $1.Date ensureTargetDate() => $_ensure(7);

  @$pb.TagNumber(9)
  $1.Date get completionDate => $_getN(8);
  @$pb.TagNumber(9)
  set completionDate($1.Date value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasCompletionDate() => $_has(8);
  @$pb.TagNumber(9)
  void clearCompletionDate() => $_clearField(9);
  @$pb.TagNumber(9)
  $1.Date ensureCompletionDate() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.String get type => $_getSZ(9);
  @$pb.TagNumber(10)
  set type($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasType() => $_has(9);
  @$pb.TagNumber(10)
  void clearType() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.String get priorityLevel => $_getSZ(10);
  @$pb.TagNumber(11)
  set priorityLevel($core.String value) => $_setString(10, value);
  @$pb.TagNumber(11)
  $core.bool hasPriorityLevel() => $_has(10);
  @$pb.TagNumber(11)
  void clearPriorityLevel() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get cc => $_getSZ(11);
  @$pb.TagNumber(12)
  set cc($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasCc() => $_has(11);
  @$pb.TagNumber(12)
  void clearCc() => $_clearField(12);

  @$pb.TagNumber(13)
  $2.Timestamp get createdAt => $_getN(12);
  @$pb.TagNumber(13)
  set createdAt($2.Timestamp value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasCreatedAt() => $_has(12);
  @$pb.TagNumber(13)
  void clearCreatedAt() => $_clearField(13);
  @$pb.TagNumber(13)
  $2.Timestamp ensureCreatedAt() => $_ensure(12);

  @$pb.TagNumber(14)
  $core.String get createdBy => $_getSZ(13);
  @$pb.TagNumber(14)
  set createdBy($core.String value) => $_setString(13, value);
  @$pb.TagNumber(14)
  $core.bool hasCreatedBy() => $_has(13);
  @$pb.TagNumber(14)
  void clearCreatedBy() => $_clearField(14);

  @$pb.TagNumber(15)
  $2.Timestamp get modifiedAt => $_getN(14);
  @$pb.TagNumber(15)
  set modifiedAt($2.Timestamp value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasModifiedAt() => $_has(14);
  @$pb.TagNumber(15)
  void clearModifiedAt() => $_clearField(15);
  @$pb.TagNumber(15)
  $2.Timestamp ensureModifiedAt() => $_ensure(14);

  @$pb.TagNumber(16)
  $core.String get modifiedBy => $_getSZ(15);
  @$pb.TagNumber(16)
  set modifiedBy($core.String value) => $_setString(15, value);
  @$pb.TagNumber(16)
  $core.bool hasModifiedBy() => $_has(15);
  @$pb.TagNumber(16)
  void clearModifiedBy() => $_clearField(16);
}

class UpdateContactUsResponse extends $pb.GeneratedMessage {
  factory UpdateContactUsResponse({
    ContactUs? contactUs,
  }) {
    final result = create();
    if (contactUs != null) result.contactUs = contactUs;
    return result;
  }

  UpdateContactUsResponse._();

  factory UpdateContactUsResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory UpdateContactUsResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateContactUsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'admpb'), createEmptyInstance: create)
    ..aOM<ContactUs>(1, _omitFieldNames ? '' : 'contactUs', subBuilder: ContactUs.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateContactUsResponse clone() => UpdateContactUsResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  UpdateContactUsResponse copyWith(void Function(UpdateContactUsResponse) updates) => super.copyWith((message) => updates(message as UpdateContactUsResponse)) as UpdateContactUsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateContactUsResponse create() => UpdateContactUsResponse._();
  @$core.override
  UpdateContactUsResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateContactUsResponse> createRepeated() => $pb.PbList<UpdateContactUsResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateContactUsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateContactUsResponse>(create);
  static UpdateContactUsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ContactUs get contactUs => $_getN(0);
  @$pb.TagNumber(1)
  set contactUs(ContactUs value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasContactUs() => $_has(0);
  @$pb.TagNumber(1)
  void clearContactUs() => $_clearField(1);
  @$pb.TagNumber(1)
  ContactUs ensureContactUs() => $_ensure(0);
}

class ListContactUsRequest extends $pb.GeneratedMessage {
  factory ListContactUsRequest({
    $core.int? usrId,
    $core.String? status,
    $core.String? subject,
    $1.Date? fromDate,
    $1.Date? toDate,
    $3.Pagination? pagination,
    $core.int? contactUsId,
  }) {
    final result = create();
    if (usrId != null) result.usrId = usrId;
    if (status != null) result.status = status;
    if (subject != null) result.subject = subject;
    if (fromDate != null) result.fromDate = fromDate;
    if (toDate != null) result.toDate = toDate;
    if (pagination != null) result.pagination = pagination;
    if (contactUsId != null) result.contactUsId = contactUsId;
    return result;
  }

  ListContactUsRequest._();

  factory ListContactUsRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListContactUsRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListContactUsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'admpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'usrId', $pb.PbFieldType.OU3)
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..aOS(3, _omitFieldNames ? '' : 'subject')
    ..aOM<$1.Date>(4, _omitFieldNames ? '' : 'fromDate', subBuilder: $1.Date.create)
    ..aOM<$1.Date>(5, _omitFieldNames ? '' : 'toDate', subBuilder: $1.Date.create)
    ..aOM<$3.Pagination>(6, _omitFieldNames ? '' : 'pagination', subBuilder: $3.Pagination.create)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'contactUsId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListContactUsRequest clone() => ListContactUsRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListContactUsRequest copyWith(void Function(ListContactUsRequest) updates) => super.copyWith((message) => updates(message as ListContactUsRequest)) as ListContactUsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListContactUsRequest create() => ListContactUsRequest._();
  @$core.override
  ListContactUsRequest createEmptyInstance() => create();
  static $pb.PbList<ListContactUsRequest> createRepeated() => $pb.PbList<ListContactUsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListContactUsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListContactUsRequest>(create);
  static ListContactUsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get usrId => $_getIZ(0);
  @$pb.TagNumber(1)
  set usrId($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUsrId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsrId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get subject => $_getSZ(2);
  @$pb.TagNumber(3)
  set subject($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSubject() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubject() => $_clearField(3);

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
  $3.Pagination get pagination => $_getN(5);
  @$pb.TagNumber(6)
  set pagination($3.Pagination value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasPagination() => $_has(5);
  @$pb.TagNumber(6)
  void clearPagination() => $_clearField(6);
  @$pb.TagNumber(6)
  $3.Pagination ensurePagination() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.int get contactUsId => $_getIZ(6);
  @$pb.TagNumber(7)
  set contactUsId($core.int value) => $_setUnsignedInt32(6, value);
  @$pb.TagNumber(7)
  $core.bool hasContactUsId() => $_has(6);
  @$pb.TagNumber(7)
  void clearContactUsId() => $_clearField(7);
}

class ListContactUsResponse extends $pb.GeneratedMessage {
  factory ListContactUsResponse({
    $core.Iterable<ContactUs>? contactUs,
    ListContactUsSummary? summary,
  }) {
    final result = create();
    if (contactUs != null) result.contactUs.addAll(contactUs);
    if (summary != null) result.summary = summary;
    return result;
  }

  ListContactUsResponse._();

  factory ListContactUsResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListContactUsResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListContactUsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'admpb'), createEmptyInstance: create)
    ..pc<ContactUs>(1, _omitFieldNames ? '' : 'contactUs', $pb.PbFieldType.PM, subBuilder: ContactUs.create)
    ..aOM<ListContactUsSummary>(2, _omitFieldNames ? '' : 'summary', subBuilder: ListContactUsSummary.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListContactUsResponse clone() => ListContactUsResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListContactUsResponse copyWith(void Function(ListContactUsResponse) updates) => super.copyWith((message) => updates(message as ListContactUsResponse)) as ListContactUsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListContactUsResponse create() => ListContactUsResponse._();
  @$core.override
  ListContactUsResponse createEmptyInstance() => create();
  static $pb.PbList<ListContactUsResponse> createRepeated() => $pb.PbList<ListContactUsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListContactUsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListContactUsResponse>(create);
  static ListContactUsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ContactUs> get contactUs => $_getList(0);

  @$pb.TagNumber(2)
  ListContactUsSummary get summary => $_getN(1);
  @$pb.TagNumber(2)
  set summary(ListContactUsSummary value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSummary() => $_has(1);
  @$pb.TagNumber(2)
  void clearSummary() => $_clearField(2);
  @$pb.TagNumber(2)
  ListContactUsSummary ensureSummary() => $_ensure(1);
}

class ListContactUsSummary extends $pb.GeneratedMessage {
  factory ListContactUsSummary({
    $core.int? totalRows,
  }) {
    final result = create();
    if (totalRows != null) result.totalRows = totalRows;
    return result;
  }

  ListContactUsSummary._();

  factory ListContactUsSummary.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ListContactUsSummary.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListContactUsSummary', package: const $pb.PackageName(_omitMessageNames ? '' : 'admpb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'totalRows', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListContactUsSummary clone() => ListContactUsSummary()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListContactUsSummary copyWith(void Function(ListContactUsSummary) updates) => super.copyWith((message) => updates(message as ListContactUsSummary)) as ListContactUsSummary;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListContactUsSummary create() => ListContactUsSummary._();
  @$core.override
  ListContactUsSummary createEmptyInstance() => create();
  static $pb.PbList<ListContactUsSummary> createRepeated() => $pb.PbList<ListContactUsSummary>();
  @$core.pragma('dart2js:noInline')
  static ListContactUsSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListContactUsSummary>(create);
  static ListContactUsSummary? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get totalRows => $_getIZ(0);
  @$pb.TagNumber(1)
  set totalRows($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTotalRows() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalRows() => $_clearField(1);
}

class CreateContactUsResponse extends $pb.GeneratedMessage {
  factory CreateContactUsResponse({
    ContactUs? contactUs,
  }) {
    final result = create();
    if (contactUs != null) result.contactUs = contactUs;
    return result;
  }

  CreateContactUsResponse._();

  factory CreateContactUsResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory CreateContactUsResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateContactUsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'admpb'), createEmptyInstance: create)
    ..aOM<ContactUs>(1, _omitFieldNames ? '' : 'contactUs', subBuilder: ContactUs.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateContactUsResponse clone() => CreateContactUsResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateContactUsResponse copyWith(void Function(CreateContactUsResponse) updates) => super.copyWith((message) => updates(message as CreateContactUsResponse)) as CreateContactUsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateContactUsResponse create() => CreateContactUsResponse._();
  @$core.override
  CreateContactUsResponse createEmptyInstance() => create();
  static $pb.PbList<CreateContactUsResponse> createRepeated() => $pb.PbList<CreateContactUsResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateContactUsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateContactUsResponse>(create);
  static CreateContactUsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  ContactUs get contactUs => $_getN(0);
  @$pb.TagNumber(1)
  set contactUs(ContactUs value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasContactUs() => $_has(0);
  @$pb.TagNumber(1)
  void clearContactUs() => $_clearField(1);
  @$pb.TagNumber(1)
  ContactUs ensureContactUs() => $_ensure(0);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
