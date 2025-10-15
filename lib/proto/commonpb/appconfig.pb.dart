//
//  Generated code. Do not modify.
//  source: proto/commonpb/appconfig.proto
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

class AppConfig extends $pb.GeneratedMessage {
  factory AppConfig({
    $core.String? photo,
    $core.bool? isOnboarding,
    $core.bool? isMargin,
    $core.bool? isCash,
    $core.String? cashMinAmt,
    $core.String? marginMinAmt,
    $core.String? brokerName,
  }) {
    final result = create();
    if (photo != null) result.photo = photo;
    if (isOnboarding != null) result.isOnboarding = isOnboarding;
    if (isMargin != null) result.isMargin = isMargin;
    if (isCash != null) result.isCash = isCash;
    if (cashMinAmt != null) result.cashMinAmt = cashMinAmt;
    if (marginMinAmt != null) result.marginMinAmt = marginMinAmt;
    if (brokerName != null) result.brokerName = brokerName;
    return result;
  }

  AppConfig._();

  factory AppConfig.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory AppConfig.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AppConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'commonpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'photo')
    ..aOB(2, _omitFieldNames ? '' : 'isOnboarding')
    ..aOB(3, _omitFieldNames ? '' : 'isMargin')
    ..aOB(4, _omitFieldNames ? '' : 'isCash')
    ..aOS(5, _omitFieldNames ? '' : 'cashMinAmt')
    ..aOS(6, _omitFieldNames ? '' : 'marginMinAmt')
    ..aOS(7, _omitFieldNames ? '' : 'brokerName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppConfig clone() => AppConfig()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AppConfig copyWith(void Function(AppConfig) updates) => super.copyWith((message) => updates(message as AppConfig)) as AppConfig;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AppConfig create() => AppConfig._();
  @$core.override
  AppConfig createEmptyInstance() => create();
  static $pb.PbList<AppConfig> createRepeated() => $pb.PbList<AppConfig>();
  @$core.pragma('dart2js:noInline')
  static AppConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AppConfig>(create);
  static AppConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get photo => $_getSZ(0);
  @$pb.TagNumber(1)
  set photo($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPhoto() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhoto() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isOnboarding => $_getBF(1);
  @$pb.TagNumber(2)
  set isOnboarding($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIsOnboarding() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsOnboarding() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isMargin => $_getBF(2);
  @$pb.TagNumber(3)
  set isMargin($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsMargin() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsMargin() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isCash => $_getBF(3);
  @$pb.TagNumber(4)
  set isCash($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasIsCash() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsCash() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get cashMinAmt => $_getSZ(4);
  @$pb.TagNumber(5)
  set cashMinAmt($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCashMinAmt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCashMinAmt() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get marginMinAmt => $_getSZ(5);
  @$pb.TagNumber(6)
  set marginMinAmt($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMarginMinAmt() => $_has(5);
  @$pb.TagNumber(6)
  void clearMarginMinAmt() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get brokerName => $_getSZ(6);
  @$pb.TagNumber(7)
  set brokerName($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasBrokerName() => $_has(6);
  @$pb.TagNumber(7)
  void clearBrokerName() => $_clearField(7);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
