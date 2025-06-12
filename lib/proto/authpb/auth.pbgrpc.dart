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

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../google/protobuf/empty.pb.dart' as $1;
import 'auth.pb.dart' as $0;

export 'auth.pb.dart';

@$pb.GrpcServiceName('authpb.AuthService')
class AuthServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$login = $grpc.ClientMethod<$0.LoginRequest, $0.LoginResponse>(
      '/authpb.AuthService/Login',
      ($0.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoginResponse.fromBuffer(value));
  static final _$loginWeb = $grpc.ClientMethod<$0.LoginWebRequest, $0.LoginWebResponse>(
      '/authpb.AuthService/LoginWeb',
      ($0.LoginWebRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoginWebResponse.fromBuffer(value));
  static final _$loginuser = $grpc.ClientMethod<$0.LoginUserRequest, $0.LoginResponse>(
      '/authpb.AuthService/Loginuser',
      ($0.LoginUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoginResponse.fromBuffer(value));
  static final _$refreshToken = $grpc.ClientMethod<$0.RefreshTokenRequest, $0.LoginResponse>(
      '/authpb.AuthService/RefreshToken',
      ($0.RefreshTokenRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoginResponse.fromBuffer(value));
  static final _$validateCode = $grpc.ClientMethod<$0.ValidateCodeRequest, $0.ValidateCodeResponse>(
      '/authpb.AuthService/ValidateCode',
      ($0.ValidateCodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ValidateCodeResponse.fromBuffer(value));
  static final _$refreshAccess = $grpc.ClientMethod<$0.RefreshAccessRequest, $0.RefreshAccessResponse>(
      '/authpb.AuthService/RefreshAccess',
      ($0.RefreshAccessRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RefreshAccessResponse.fromBuffer(value));
  static final _$accountEmailAuth = $grpc.ClientMethod<$0.AccountEmailAuthRequest, $0.AccountEmailAuthResponse>(
      '/authpb.AuthService/AccountEmailAuth',
      ($0.AccountEmailAuthRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.AccountEmailAuthResponse.fromBuffer(value));
  static final _$emailAuthCode = $grpc.ClientMethod<$0.EmailAuthCodeRequest, $0.EmailAuthCodeResponse>(
      '/authpb.AuthService/EmailAuthCode',
      ($0.EmailAuthCodeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EmailAuthCodeResponse.fromBuffer(value));
  static final _$logout = $grpc.ClientMethod<$1.Empty, $1.Empty>(
      '/authpb.AuthService/Logout',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  AuthServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.LoginResponse> login($0.LoginRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$0.LoginWebResponse> loginWeb($0.LoginWebRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$loginWeb, request, options: options);
  }

  $grpc.ResponseFuture<$0.LoginResponse> loginuser($0.LoginUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$loginuser, request, options: options);
  }

  $grpc.ResponseFuture<$0.LoginResponse> refreshToken($0.RefreshTokenRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refreshToken, request, options: options);
  }

  $grpc.ResponseFuture<$0.ValidateCodeResponse> validateCode($0.ValidateCodeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$validateCode, request, options: options);
  }

  $grpc.ResponseFuture<$0.RefreshAccessResponse> refreshAccess($0.RefreshAccessRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$refreshAccess, request, options: options);
  }

  $grpc.ResponseFuture<$0.AccountEmailAuthResponse> accountEmailAuth($0.AccountEmailAuthRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$accountEmailAuth, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmailAuthCodeResponse> emailAuthCode($0.EmailAuthCodeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$emailAuthCode, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> logout($1.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$logout, request, options: options);
  }
}

@$pb.GrpcServiceName('authpb.AuthService')
abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'authpb.AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.LoginResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.LoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LoginWebRequest, $0.LoginWebResponse>(
        'LoginWeb',
        loginWeb_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginWebRequest.fromBuffer(value),
        ($0.LoginWebResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LoginUserRequest, $0.LoginResponse>(
        'Loginuser',
        loginuser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginUserRequest.fromBuffer(value),
        ($0.LoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RefreshTokenRequest, $0.LoginResponse>(
        'RefreshToken',
        refreshToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RefreshTokenRequest.fromBuffer(value),
        ($0.LoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ValidateCodeRequest, $0.ValidateCodeResponse>(
        'ValidateCode',
        validateCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ValidateCodeRequest.fromBuffer(value),
        ($0.ValidateCodeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RefreshAccessRequest, $0.RefreshAccessResponse>(
        'RefreshAccess',
        refreshAccess_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RefreshAccessRequest.fromBuffer(value),
        ($0.RefreshAccessResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AccountEmailAuthRequest, $0.AccountEmailAuthResponse>(
        'AccountEmailAuth',
        accountEmailAuth_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AccountEmailAuthRequest.fromBuffer(value),
        ($0.AccountEmailAuthResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EmailAuthCodeRequest, $0.EmailAuthCodeResponse>(
        'EmailAuthCode',
        emailAuthCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmailAuthCodeRequest.fromBuffer(value),
        ($0.EmailAuthCodeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $1.Empty>(
        'Logout',
        logout_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.LoginResponse> login_Pre($grpc.ServiceCall $call, $async.Future<$0.LoginRequest> $request) async {
    return login($call, await $request);
  }

  $async.Future<$0.LoginWebResponse> loginWeb_Pre($grpc.ServiceCall $call, $async.Future<$0.LoginWebRequest> $request) async {
    return loginWeb($call, await $request);
  }

  $async.Future<$0.LoginResponse> loginuser_Pre($grpc.ServiceCall $call, $async.Future<$0.LoginUserRequest> $request) async {
    return loginuser($call, await $request);
  }

  $async.Future<$0.LoginResponse> refreshToken_Pre($grpc.ServiceCall $call, $async.Future<$0.RefreshTokenRequest> $request) async {
    return refreshToken($call, await $request);
  }

  $async.Future<$0.ValidateCodeResponse> validateCode_Pre($grpc.ServiceCall $call, $async.Future<$0.ValidateCodeRequest> $request) async {
    return validateCode($call, await $request);
  }

  $async.Future<$0.RefreshAccessResponse> refreshAccess_Pre($grpc.ServiceCall $call, $async.Future<$0.RefreshAccessRequest> $request) async {
    return refreshAccess($call, await $request);
  }

  $async.Future<$0.AccountEmailAuthResponse> accountEmailAuth_Pre($grpc.ServiceCall $call, $async.Future<$0.AccountEmailAuthRequest> $request) async {
    return accountEmailAuth($call, await $request);
  }

  $async.Future<$0.EmailAuthCodeResponse> emailAuthCode_Pre($grpc.ServiceCall $call, $async.Future<$0.EmailAuthCodeRequest> $request) async {
    return emailAuthCode($call, await $request);
  }

  $async.Future<$1.Empty> logout_Pre($grpc.ServiceCall $call, $async.Future<$1.Empty> $request) async {
    return logout($call, await $request);
  }

  $async.Future<$0.LoginResponse> login($grpc.ServiceCall call, $0.LoginRequest request);
  $async.Future<$0.LoginWebResponse> loginWeb($grpc.ServiceCall call, $0.LoginWebRequest request);
  $async.Future<$0.LoginResponse> loginuser($grpc.ServiceCall call, $0.LoginUserRequest request);
  $async.Future<$0.LoginResponse> refreshToken($grpc.ServiceCall call, $0.RefreshTokenRequest request);
  $async.Future<$0.ValidateCodeResponse> validateCode($grpc.ServiceCall call, $0.ValidateCodeRequest request);
  $async.Future<$0.RefreshAccessResponse> refreshAccess($grpc.ServiceCall call, $0.RefreshAccessRequest request);
  $async.Future<$0.AccountEmailAuthResponse> accountEmailAuth($grpc.ServiceCall call, $0.AccountEmailAuthRequest request);
  $async.Future<$0.EmailAuthCodeResponse> emailAuthCode($grpc.ServiceCall call, $0.EmailAuthCodeRequest request);
  $async.Future<$1.Empty> logout($grpc.ServiceCall call, $1.Empty request);
}
