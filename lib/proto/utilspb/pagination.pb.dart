//
//  Generated code. Do not modify.
//  source: proto/utilspb/pagination.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Pagination extends $pb.GeneratedMessage {
  factory Pagination({
    $core.int? pageSize,
    $core.int? pageNo,
    $core.String? sortName,
    $core.String? sortDirection,
    $core.Iterable<$core.String>? filterNames,
    $core.Iterable<$core.String>? filterValues,
  }) {
    final result = create();
    if (pageSize != null) result.pageSize = pageSize;
    if (pageNo != null) result.pageNo = pageNo;
    if (sortName != null) result.sortName = sortName;
    if (sortDirection != null) result.sortDirection = sortDirection;
    if (filterNames != null) result.filterNames.addAll(filterNames);
    if (filterValues != null) result.filterValues.addAll(filterValues);
    return result;
  }

  Pagination._();

  factory Pagination.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Pagination.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Pagination', package: const $pb.PackageName(_omitMessageNames ? '' : 'utilspb'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'pageSize', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'pageNo', $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'sortName')
    ..aOS(4, _omitFieldNames ? '' : 'sortDirection')
    ..pPS(5, _omitFieldNames ? '' : 'filterNames')
    ..pPS(6, _omitFieldNames ? '' : 'filterValues')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pagination clone() => Pagination()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Pagination copyWith(void Function(Pagination) updates) => super.copyWith((message) => updates(message as Pagination)) as Pagination;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Pagination create() => Pagination._();
  @$core.override
  Pagination createEmptyInstance() => create();
  static $pb.PbList<Pagination> createRepeated() => $pb.PbList<Pagination>();
  @$core.pragma('dart2js:noInline')
  static Pagination getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pagination>(create);
  static Pagination? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pageSize => $_getIZ(0);
  @$pb.TagNumber(1)
  set pageSize($core.int value) => $_setUnsignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPageSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageSize() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageNo => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageNo($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPageNo() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageNo() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get sortName => $_getSZ(2);
  @$pb.TagNumber(3)
  set sortName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSortName() => $_has(2);
  @$pb.TagNumber(3)
  void clearSortName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get sortDirection => $_getSZ(3);
  @$pb.TagNumber(4)
  set sortDirection($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSortDirection() => $_has(3);
  @$pb.TagNumber(4)
  void clearSortDirection() => $_clearField(4);

  @$pb.TagNumber(5)
  $pb.PbList<$core.String> get filterNames => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<$core.String> get filterValues => $_getList(5);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
