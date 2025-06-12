//
//  Generated code. Do not modify.
//  source: proto/authpb/auth.proto
//
// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../usrpb/useraccess.pb.dart' as $2;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class LoginRequest extends $pb.GeneratedMessage {
  factory LoginRequest({
    $core.String? email,
    $core.String? password,
    $core.String? clientId,
    $core.String? authenticationMode,
  }) {
    final result = create();
    if (email != null) result.email = email;
    if (password != null) result.password = password;
    if (clientId != null) result.clientId = clientId;
    if (authenticationMode != null) result.authenticationMode = authenticationMode;
    return result;
  }

  LoginRequest._();

  factory LoginRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LoginRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoginRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'authpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..aOS(3, _omitFieldNames ? '' : 'clientId')
    ..aOS(4, _omitFieldNames ? '' : 'authenticationMode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginRequest clone() => LoginRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginRequest copyWith(void Function(LoginRequest) updates) => super.copyWith((message) => updates(message as LoginRequest)) as LoginRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginRequest create() => LoginRequest._();
  @$core.override
  LoginRequest createEmptyInstance() => create();
  static $pb.PbList<LoginRequest> createRepeated() => $pb.PbList<LoginRequest>();
  @$core.pragma('dart2js:noInline')
  static LoginRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginRequest>(create);
  static LoginRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get clientId => $_getSZ(2);
  @$pb.TagNumber(3)
  set clientId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasClientId() => $_has(2);
  @$pb.TagNumber(3)
  void clearClientId() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get authenticationMode => $_getSZ(3);
  @$pb.TagNumber(4)
  set authenticationMode($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAuthenticationMode() => $_has(3);
  @$pb.TagNumber(4)
  void clearAuthenticationMode() => $_clearField(4);
}

class LoginWebRequest extends $pb.GeneratedMessage {
  factory LoginWebRequest({
    $core.String? email,
    $core.String? password,
    $core.String? authenticationMode,
    $core.String? clientId,
  }) {
    final result = create();
    if (email != null) result.email = email;
    if (password != null) result.password = password;
    if (authenticationMode != null) result.authenticationMode = authenticationMode;
    if (clientId != null) result.clientId = clientId;
    return result;
  }

  LoginWebRequest._();

  factory LoginWebRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LoginWebRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoginWebRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'authpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..aOS(3, _omitFieldNames ? '' : 'authenticationMode')
    ..aOS(4, _omitFieldNames ? '' : 'clientId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginWebRequest clone() => LoginWebRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginWebRequest copyWith(void Function(LoginWebRequest) updates) => super.copyWith((message) => updates(message as LoginWebRequest)) as LoginWebRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginWebRequest create() => LoginWebRequest._();
  @$core.override
  LoginWebRequest createEmptyInstance() => create();
  static $pb.PbList<LoginWebRequest> createRepeated() => $pb.PbList<LoginWebRequest>();
  @$core.pragma('dart2js:noInline')
  static LoginWebRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginWebRequest>(create);
  static LoginWebRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get authenticationMode => $_getSZ(2);
  @$pb.TagNumber(3)
  set authenticationMode($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAuthenticationMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearAuthenticationMode() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get clientId => $_getSZ(3);
  @$pb.TagNumber(4)
  set clientId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasClientId() => $_has(3);
  @$pb.TagNumber(4)
  void clearClientId() => $_clearField(4);
}

class LoginWebResponse extends $pb.GeneratedMessage {
  factory LoginWebResponse({
    $core.String? sessionKey,
  }) {
    final result = create();
    if (sessionKey != null) result.sessionKey = sessionKey;
    return result;
  }

  LoginWebResponse._();

  factory LoginWebResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LoginWebResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoginWebResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'authpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionKey')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginWebResponse clone() => LoginWebResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginWebResponse copyWith(void Function(LoginWebResponse) updates) => super.copyWith((message) => updates(message as LoginWebResponse)) as LoginWebResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginWebResponse create() => LoginWebResponse._();
  @$core.override
  LoginWebResponse createEmptyInstance() => create();
  static $pb.PbList<LoginWebResponse> createRepeated() => $pb.PbList<LoginWebResponse>();
  @$core.pragma('dart2js:noInline')
  static LoginWebResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginWebResponse>(create);
  static LoginWebResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionKey($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSessionKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionKey() => $_clearField(1);
}

class LoginUserRequest extends $pb.GeneratedMessage {
  factory LoginUserRequest({
    $core.String? iToken,
    $core.int? iUser,
    $core.String? clientId,
  }) {
    final result = create();
    if (iToken != null) result.iToken = iToken;
    if (iUser != null) result.iUser = iUser;
    if (clientId != null) result.clientId = clientId;
    return result;
  }

  LoginUserRequest._();

  factory LoginUserRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LoginUserRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoginUserRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'authpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'iToken')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'iUser', $pb.PbFieldType.OU3)
    ..aOS(3, _omitFieldNames ? '' : 'clientId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginUserRequest clone() => LoginUserRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginUserRequest copyWith(void Function(LoginUserRequest) updates) => super.copyWith((message) => updates(message as LoginUserRequest)) as LoginUserRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginUserRequest create() => LoginUserRequest._();
  @$core.override
  LoginUserRequest createEmptyInstance() => create();
  static $pb.PbList<LoginUserRequest> createRepeated() => $pb.PbList<LoginUserRequest>();
  @$core.pragma('dart2js:noInline')
  static LoginUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginUserRequest>(create);
  static LoginUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set iToken($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasIToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearIToken() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get iUser => $_getIZ(1);
  @$pb.TagNumber(2)
  set iUser($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasIUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearIUser() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get clientId => $_getSZ(2);
  @$pb.TagNumber(3)
  set clientId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasClientId() => $_has(2);
  @$pb.TagNumber(3)
  void clearClientId() => $_clearField(3);
}

/// LoginResponse, response will be empty for web user, api user doesn't need auth code
class LoginResponse extends $pb.GeneratedMessage {
  factory LoginResponse({
    $core.String? accessToken,
    $core.String? refreshToken,
    $core.Iterable<$2.UserAccess>? userAccesses,
  }) {
    final result = create();
    if (accessToken != null) result.accessToken = accessToken;
    if (refreshToken != null) result.refreshToken = refreshToken;
    if (userAccesses != null) result.userAccesses.addAll(userAccesses);
    return result;
  }

  LoginResponse._();

  factory LoginResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory LoginResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LoginResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'authpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accessToken')
    ..aOS(2, _omitFieldNames ? '' : 'refreshToken')
    ..pc<$2.UserAccess>(3, _omitFieldNames ? '' : 'userAccesses', $pb.PbFieldType.PM, subBuilder: $2.UserAccess.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginResponse clone() => LoginResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LoginResponse copyWith(void Function(LoginResponse) updates) => super.copyWith((message) => updates(message as LoginResponse)) as LoginResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LoginResponse create() => LoginResponse._();
  @$core.override
  LoginResponse createEmptyInstance() => create();
  static $pb.PbList<LoginResponse> createRepeated() => $pb.PbList<LoginResponse>();
  @$core.pragma('dart2js:noInline')
  static LoginResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginResponse>(create);
  static LoginResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessToken($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get refreshToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set refreshToken($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$2.UserAccess> get userAccesses => $_getList(2);
}

class RefreshTokenRequest extends $pb.GeneratedMessage {
  factory RefreshTokenRequest({
    $core.String? refreshToken,
    $core.String? clientId,
  }) {
    final result = create();
    if (refreshToken != null) result.refreshToken = refreshToken;
    if (clientId != null) result.clientId = clientId;
    return result;
  }

  RefreshTokenRequest._();

  factory RefreshTokenRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory RefreshTokenRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RefreshTokenRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'authpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'refreshToken')
    ..aOS(2, _omitFieldNames ? '' : 'clientId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RefreshTokenRequest clone() => RefreshTokenRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RefreshTokenRequest copyWith(void Function(RefreshTokenRequest) updates) => super.copyWith((message) => updates(message as RefreshTokenRequest)) as RefreshTokenRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RefreshTokenRequest create() => RefreshTokenRequest._();
  @$core.override
  RefreshTokenRequest createEmptyInstance() => create();
  static $pb.PbList<RefreshTokenRequest> createRepeated() => $pb.PbList<RefreshTokenRequest>();
  @$core.pragma('dart2js:noInline')
  static RefreshTokenRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RefreshTokenRequest>(create);
  static RefreshTokenRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get refreshToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set refreshToken($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRefreshToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearRefreshToken() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get clientId => $_getSZ(1);
  @$pb.TagNumber(2)
  set clientId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasClientId() => $_has(1);
  @$pb.TagNumber(2)
  void clearClientId() => $_clearField(2);
}

class ValidateCodeRequest extends $pb.GeneratedMessage {
  factory ValidateCodeRequest({
    $core.String? email,
    $core.String? password,
    $core.String? code,
    $core.String? authenticationMode,
    $core.String? sessionKey,
    $core.String? clientId,
  }) {
    final result = create();
    if (email != null) result.email = email;
    if (password != null) result.password = password;
    if (code != null) result.code = code;
    if (authenticationMode != null) result.authenticationMode = authenticationMode;
    if (sessionKey != null) result.sessionKey = sessionKey;
    if (clientId != null) result.clientId = clientId;
    return result;
  }

  ValidateCodeRequest._();

  factory ValidateCodeRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ValidateCodeRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidateCodeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'authpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..aOS(2, _omitFieldNames ? '' : 'password')
    ..aOS(3, _omitFieldNames ? '' : 'code')
    ..aOS(4, _omitFieldNames ? '' : 'authenticationMode')
    ..aOS(5, _omitFieldNames ? '' : 'sessionKey')
    ..aOS(6, _omitFieldNames ? '' : 'clientId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ValidateCodeRequest clone() => ValidateCodeRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ValidateCodeRequest copyWith(void Function(ValidateCodeRequest) updates) => super.copyWith((message) => updates(message as ValidateCodeRequest)) as ValidateCodeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidateCodeRequest create() => ValidateCodeRequest._();
  @$core.override
  ValidateCodeRequest createEmptyInstance() => create();
  static $pb.PbList<ValidateCodeRequest> createRepeated() => $pb.PbList<ValidateCodeRequest>();
  @$core.pragma('dart2js:noInline')
  static ValidateCodeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateCodeRequest>(create);
  static ValidateCodeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get code => $_getSZ(2);
  @$pb.TagNumber(3)
  set code($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCode() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get authenticationMode => $_getSZ(3);
  @$pb.TagNumber(4)
  set authenticationMode($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAuthenticationMode() => $_has(3);
  @$pb.TagNumber(4)
  void clearAuthenticationMode() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.String get sessionKey => $_getSZ(4);
  @$pb.TagNumber(5)
  set sessionKey($core.String value) => $_setString(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSessionKey() => $_has(4);
  @$pb.TagNumber(5)
  void clearSessionKey() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get clientId => $_getSZ(5);
  @$pb.TagNumber(6)
  set clientId($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasClientId() => $_has(5);
  @$pb.TagNumber(6)
  void clearClientId() => $_clearField(6);
}

class ValidateCodeResponse extends $pb.GeneratedMessage {
  factory ValidateCodeResponse({
    $core.String? accessToken,
    $core.String? refreshToken,
    $core.Iterable<$2.UserAccess>? userAccesses,
  }) {
    final result = create();
    if (accessToken != null) result.accessToken = accessToken;
    if (refreshToken != null) result.refreshToken = refreshToken;
    if (userAccesses != null) result.userAccesses.addAll(userAccesses);
    return result;
  }

  ValidateCodeResponse._();

  factory ValidateCodeResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory ValidateCodeResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidateCodeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'authpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'accessToken')
    ..aOS(2, _omitFieldNames ? '' : 'refreshToken')
    ..pc<$2.UserAccess>(3, _omitFieldNames ? '' : 'userAccesses', $pb.PbFieldType.PM, subBuilder: $2.UserAccess.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ValidateCodeResponse clone() => ValidateCodeResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ValidateCodeResponse copyWith(void Function(ValidateCodeResponse) updates) => super.copyWith((message) => updates(message as ValidateCodeResponse)) as ValidateCodeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidateCodeResponse create() => ValidateCodeResponse._();
  @$core.override
  ValidateCodeResponse createEmptyInstance() => create();
  static $pb.PbList<ValidateCodeResponse> createRepeated() => $pb.PbList<ValidateCodeResponse>();
  @$core.pragma('dart2js:noInline')
  static ValidateCodeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidateCodeResponse>(create);
  static ValidateCodeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessToken($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get refreshToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set refreshToken($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<$2.UserAccess> get userAccesses => $_getList(2);
}

class RefreshAccessRequest extends $pb.GeneratedMessage {
  factory RefreshAccessRequest({
    $core.String? email,
  }) {
    final result = create();
    if (email != null) result.email = email;
    return result;
  }

  RefreshAccessRequest._();

  factory RefreshAccessRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory RefreshAccessRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RefreshAccessRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'authpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RefreshAccessRequest clone() => RefreshAccessRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RefreshAccessRequest copyWith(void Function(RefreshAccessRequest) updates) => super.copyWith((message) => updates(message as RefreshAccessRequest)) as RefreshAccessRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RefreshAccessRequest create() => RefreshAccessRequest._();
  @$core.override
  RefreshAccessRequest createEmptyInstance() => create();
  static $pb.PbList<RefreshAccessRequest> createRepeated() => $pb.PbList<RefreshAccessRequest>();
  @$core.pragma('dart2js:noInline')
  static RefreshAccessRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RefreshAccessRequest>(create);
  static RefreshAccessRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => $_clearField(1);
}

class RefreshAccessResponse extends $pb.GeneratedMessage {
  factory RefreshAccessResponse({
    $core.Iterable<$2.UserAccess>? userAccesses,
  }) {
    final result = create();
    if (userAccesses != null) result.userAccesses.addAll(userAccesses);
    return result;
  }

  RefreshAccessResponse._();

  factory RefreshAccessResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory RefreshAccessResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RefreshAccessResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'authpb'), createEmptyInstance: create)
    ..pc<$2.UserAccess>(1, _omitFieldNames ? '' : 'userAccesses', $pb.PbFieldType.PM, subBuilder: $2.UserAccess.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RefreshAccessResponse clone() => RefreshAccessResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RefreshAccessResponse copyWith(void Function(RefreshAccessResponse) updates) => super.copyWith((message) => updates(message as RefreshAccessResponse)) as RefreshAccessResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RefreshAccessResponse create() => RefreshAccessResponse._();
  @$core.override
  RefreshAccessResponse createEmptyInstance() => create();
  static $pb.PbList<RefreshAccessResponse> createRepeated() => $pb.PbList<RefreshAccessResponse>();
  @$core.pragma('dart2js:noInline')
  static RefreshAccessResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RefreshAccessResponse>(create);
  static RefreshAccessResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$2.UserAccess> get userAccesses => $_getList(0);
}

class AccountEmailAuthRequest extends $pb.GeneratedMessage {
  factory AccountEmailAuthRequest({
    $core.String? email,
    $core.int? accountId,
  }) {
    final result = create();
    if (email != null) result.email = email;
    if (accountId != null) result.accountId = accountId;
    return result;
  }

  AccountEmailAuthRequest._();

  factory AccountEmailAuthRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory AccountEmailAuthRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AccountEmailAuthRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'authpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'accountId', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountEmailAuthRequest clone() => AccountEmailAuthRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountEmailAuthRequest copyWith(void Function(AccountEmailAuthRequest) updates) => super.copyWith((message) => updates(message as AccountEmailAuthRequest)) as AccountEmailAuthRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountEmailAuthRequest create() => AccountEmailAuthRequest._();
  @$core.override
  AccountEmailAuthRequest createEmptyInstance() => create();
  static $pb.PbList<AccountEmailAuthRequest> createRepeated() => $pb.PbList<AccountEmailAuthRequest>();
  @$core.pragma('dart2js:noInline')
  static AccountEmailAuthRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountEmailAuthRequest>(create);
  static AccountEmailAuthRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get accountId => $_getIZ(1);
  @$pb.TagNumber(2)
  set accountId($core.int value) => $_setUnsignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountId() => $_clearField(2);
}

class AccountEmailAuthResponse extends $pb.GeneratedMessage {
  factory AccountEmailAuthResponse({
    $core.String? externalAuthId,
  }) {
    final result = create();
    if (externalAuthId != null) result.externalAuthId = externalAuthId;
    return result;
  }

  AccountEmailAuthResponse._();

  factory AccountEmailAuthResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory AccountEmailAuthResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AccountEmailAuthResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'authpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'externalAuthId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountEmailAuthResponse clone() => AccountEmailAuthResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AccountEmailAuthResponse copyWith(void Function(AccountEmailAuthResponse) updates) => super.copyWith((message) => updates(message as AccountEmailAuthResponse)) as AccountEmailAuthResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountEmailAuthResponse create() => AccountEmailAuthResponse._();
  @$core.override
  AccountEmailAuthResponse createEmptyInstance() => create();
  static $pb.PbList<AccountEmailAuthResponse> createRepeated() => $pb.PbList<AccountEmailAuthResponse>();
  @$core.pragma('dart2js:noInline')
  static AccountEmailAuthResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountEmailAuthResponse>(create);
  static AccountEmailAuthResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get externalAuthId => $_getSZ(0);
  @$pb.TagNumber(1)
  set externalAuthId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasExternalAuthId() => $_has(0);
  @$pb.TagNumber(1)
  void clearExternalAuthId() => $_clearField(1);
}

class EmailAuthCodeRequest extends $pb.GeneratedMessage {
  factory EmailAuthCodeRequest({
    $core.String? email,
  }) {
    final result = create();
    if (email != null) result.email = email;
    return result;
  }

  EmailAuthCodeRequest._();

  factory EmailAuthCodeRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory EmailAuthCodeRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmailAuthCodeRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'authpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EmailAuthCodeRequest clone() => EmailAuthCodeRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EmailAuthCodeRequest copyWith(void Function(EmailAuthCodeRequest) updates) => super.copyWith((message) => updates(message as EmailAuthCodeRequest)) as EmailAuthCodeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EmailAuthCodeRequest create() => EmailAuthCodeRequest._();
  @$core.override
  EmailAuthCodeRequest createEmptyInstance() => create();
  static $pb.PbList<EmailAuthCodeRequest> createRepeated() => $pb.PbList<EmailAuthCodeRequest>();
  @$core.pragma('dart2js:noInline')
  static EmailAuthCodeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmailAuthCodeRequest>(create);
  static EmailAuthCodeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => $_clearField(1);
}

class EmailAuthCodeResponse extends $pb.GeneratedMessage {
  factory EmailAuthCodeResponse({
    $core.String? externalAuthId,
  }) {
    final result = create();
    if (externalAuthId != null) result.externalAuthId = externalAuthId;
    return result;
  }

  EmailAuthCodeResponse._();

  factory EmailAuthCodeResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory EmailAuthCodeResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EmailAuthCodeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'authpb'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'externalAuthId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EmailAuthCodeResponse clone() => EmailAuthCodeResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EmailAuthCodeResponse copyWith(void Function(EmailAuthCodeResponse) updates) => super.copyWith((message) => updates(message as EmailAuthCodeResponse)) as EmailAuthCodeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EmailAuthCodeResponse create() => EmailAuthCodeResponse._();
  @$core.override
  EmailAuthCodeResponse createEmptyInstance() => create();
  static $pb.PbList<EmailAuthCodeResponse> createRepeated() => $pb.PbList<EmailAuthCodeResponse>();
  @$core.pragma('dart2js:noInline')
  static EmailAuthCodeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmailAuthCodeResponse>(create);
  static EmailAuthCodeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get externalAuthId => $_getSZ(0);
  @$pb.TagNumber(1)
  set externalAuthId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasExternalAuthId() => $_has(0);
  @$pb.TagNumber(1)
  void clearExternalAuthId() => $_clearField(1);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
