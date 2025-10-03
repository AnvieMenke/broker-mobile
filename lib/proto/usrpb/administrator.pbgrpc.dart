//
//  Generated code. Do not modify.
//  source: proto/usrpb/administrator.proto
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
import 'administrator.pb.dart' as $0;

export 'administrator.pb.dart';

@$pb.GrpcServiceName('usrpb.UserService')
class UserServiceClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  static final _$createAdministrator = $grpc.ClientMethod<$0.Administrator, $0.CreateAdministratorResponse>(
      '/usrpb.UserService/CreateAdministrator',
      ($0.Administrator value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateAdministratorResponse.fromBuffer(value));
  static final _$updateAdministrator = $grpc.ClientMethod<$0.Administrator, $0.UpdateAdministratorResponse>(
      '/usrpb.UserService/UpdateAdministrator',
      ($0.Administrator value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateAdministratorResponse.fromBuffer(value));
  static final _$changePassword = $grpc.ClientMethod<$0.ChangePasswordRequest, $0.ChangePasswordResponse>(
      '/usrpb.UserService/ChangePassword',
      ($0.ChangePasswordRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChangePasswordResponse.fromBuffer(value));
  static final _$acceptClientNotice = $grpc.ClientMethod<$1.Empty, $1.Empty>(
      '/usrpb.UserService/AcceptClientNotice',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$listAdministrator = $grpc.ClientMethod<$0.ListAdministratorRequest, $0.ListAdministratorResponse>(
      '/usrpb.UserService/ListAdministrator',
      ($0.ListAdministratorRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListAdministratorResponse.fromBuffer(value));
  static final _$createAccess = $grpc.ClientMethod<$0.Access, $0.CreateAccessResponse>(
      '/usrpb.UserService/CreateAccess',
      ($0.Access value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateAccessResponse.fromBuffer(value));
  static final _$deleteAccess = $grpc.ClientMethod<$0.DeleteAccessRequest, $0.EmptyRequest>(
      '/usrpb.UserService/DeleteAccess',
      ($0.DeleteAccessRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value));
  static final _$listAccountAccess = $grpc.ClientMethod<$0.ListAccountAccessRequest, $0.ListAccountAccessResponse>(
      '/usrpb.UserService/ListAccountAccess',
      ($0.ListAccountAccessRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ListAccountAccessResponse.fromBuffer(value));
  static final _$forgotPasswordCheckEmail = $grpc.ClientMethod<$0.ForgotPasswordCheckEmailRequest, $0.ForgotPasswordCheckEmailResponse>(
      '/usrpb.UserService/ForgotPasswordCheckEmail',
      ($0.ForgotPasswordCheckEmailRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ForgotPasswordCheckEmailResponse.fromBuffer(value));
  static final _$forgotPassword = $grpc.ClientMethod<$0.ForgotPasswordRequest, $1.Empty>(
      '/usrpb.UserService/ForgotPassword',
      ($0.ForgotPasswordRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$updateUserSettings = $grpc.ClientMethod<$0.UpdateUserSettingsRequest, $0.UpdateUserSettingsResponse>(
      '/usrpb.UserService/UpdateUserSettings',
      ($0.UpdateUserSettingsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UpdateUserSettingsResponse.fromBuffer(value));
  static final _$lazyUsers = $grpc.ClientMethod<$0.LazyUsersRequest, $0.LazyUsersResponse>(
      '/usrpb.UserService/LazyUsers',
      ($0.LazyUsersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LazyUsersResponse.fromBuffer(value));
  static final _$currentUserDetails = $grpc.ClientMethod<$1.Empty, $0.CurrentUserDetailsResponse>(
      '/usrpb.UserService/CurrentUserDetails',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CurrentUserDetailsResponse.fromBuffer(value));
  static final _$getUserOtpAuthUrl = $grpc.ClientMethod<$1.Empty, $0.GetUserOtpAuthUrlResponse>(
      '/usrpb.UserService/GetUserOtpAuthUrl',
      ($1.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetUserOtpAuthUrlResponse.fromBuffer(value));
  static final _$updateUserOtpAuth = $grpc.ClientMethod<$0.UpdateUserOtpAuthRequest, $1.Empty>(
      '/usrpb.UserService/UpdateUserOtpAuth',
      ($0.UpdateUserOtpAuthRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));
  static final _$removeUserOtpAuth = $grpc.ClientMethod<$0.EmptyRequest, $0.EmptyRequest>(
      '/usrpb.UserService/RemoveUserOtpAuth',
      ($0.EmptyRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value));
  static final _$updateLanguage = $grpc.ClientMethod<$0.UpdateLanguageRequest, $0.EmptyRequest>(
      '/usrpb.UserService/UpdateLanguage',
      ($0.UpdateLanguageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value));
  static final _$changeRole = $grpc.ClientMethod<$0.ChangeRoleRequest, $1.Empty>(
      '/usrpb.UserService/ChangeRole',
      ($0.ChangeRoleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Empty.fromBuffer(value));

  UserServiceClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.CreateAdministratorResponse> createAdministrator($0.Administrator request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createAdministrator, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateAdministratorResponse> updateAdministrator($0.Administrator request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateAdministrator, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChangePasswordResponse> changePassword($0.ChangePasswordRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changePassword, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> acceptClientNotice($1.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$acceptClientNotice, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListAdministratorResponse> listAdministrator($0.ListAdministratorRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAdministrator, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateAccessResponse> createAccess($0.Access request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createAccess, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyRequest> deleteAccess($0.DeleteAccessRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteAccess, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListAccountAccessResponse> listAccountAccess($0.ListAccountAccessRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAccountAccess, request, options: options);
  }

  $grpc.ResponseFuture<$0.ForgotPasswordCheckEmailResponse> forgotPasswordCheckEmail($0.ForgotPasswordCheckEmailRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$forgotPasswordCheckEmail, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> forgotPassword($0.ForgotPasswordRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$forgotPassword, request, options: options);
  }

  $grpc.ResponseFuture<$0.UpdateUserSettingsResponse> updateUserSettings($0.UpdateUserSettingsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUserSettings, request, options: options);
  }

  $grpc.ResponseFuture<$0.LazyUsersResponse> lazyUsers($0.LazyUsersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$lazyUsers, request, options: options);
  }

  $grpc.ResponseFuture<$0.CurrentUserDetailsResponse> currentUserDetails($1.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$currentUserDetails, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetUserOtpAuthUrlResponse> getUserOtpAuthUrl($1.Empty request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserOtpAuthUrl, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> updateUserOtpAuth($0.UpdateUserOtpAuthRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUserOtpAuth, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyRequest> removeUserOtpAuth($0.EmptyRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeUserOtpAuth, request, options: options);
  }

  $grpc.ResponseFuture<$0.EmptyRequest> updateLanguage($0.UpdateLanguageRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateLanguage, request, options: options);
  }

  $grpc.ResponseFuture<$1.Empty> changeRole($0.ChangeRoleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeRole, request, options: options);
  }
}

@$pb.GrpcServiceName('usrpb.UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'usrpb.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Administrator, $0.CreateAdministratorResponse>(
        'CreateAdministrator',
        createAdministrator_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Administrator.fromBuffer(value),
        ($0.CreateAdministratorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Administrator, $0.UpdateAdministratorResponse>(
        'UpdateAdministrator',
        updateAdministrator_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Administrator.fromBuffer(value),
        ($0.UpdateAdministratorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChangePasswordRequest, $0.ChangePasswordResponse>(
        'ChangePassword',
        changePassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ChangePasswordRequest.fromBuffer(value),
        ($0.ChangePasswordResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $1.Empty>(
        'AcceptClientNotice',
        acceptClientNotice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListAdministratorRequest, $0.ListAdministratorResponse>(
        'ListAdministrator',
        listAdministrator_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListAdministratorRequest.fromBuffer(value),
        ($0.ListAdministratorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Access, $0.CreateAccessResponse>(
        'CreateAccess',
        createAccess_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Access.fromBuffer(value),
        ($0.CreateAccessResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteAccessRequest, $0.EmptyRequest>(
        'DeleteAccess',
        deleteAccess_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteAccessRequest.fromBuffer(value),
        ($0.EmptyRequest value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListAccountAccessRequest, $0.ListAccountAccessResponse>(
        'ListAccountAccess',
        listAccountAccess_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListAccountAccessRequest.fromBuffer(value),
        ($0.ListAccountAccessResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ForgotPasswordCheckEmailRequest, $0.ForgotPasswordCheckEmailResponse>(
        'ForgotPasswordCheckEmail',
        forgotPasswordCheckEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ForgotPasswordCheckEmailRequest.fromBuffer(value),
        ($0.ForgotPasswordCheckEmailResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ForgotPasswordRequest, $1.Empty>(
        'ForgotPassword',
        forgotPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ForgotPasswordRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateUserSettingsRequest, $0.UpdateUserSettingsResponse>(
        'UpdateUserSettings',
        updateUserSettings_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateUserSettingsRequest.fromBuffer(value),
        ($0.UpdateUserSettingsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LazyUsersRequest, $0.LazyUsersResponse>(
        'LazyUsers',
        lazyUsers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LazyUsersRequest.fromBuffer(value),
        ($0.LazyUsersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.CurrentUserDetailsResponse>(
        'CurrentUserDetails',
        currentUserDetails_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.CurrentUserDetailsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.Empty, $0.GetUserOtpAuthUrlResponse>(
        'GetUserOtpAuthUrl',
        getUserOtpAuthUrl_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Empty.fromBuffer(value),
        ($0.GetUserOtpAuthUrlResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateUserOtpAuthRequest, $1.Empty>(
        'UpdateUserOtpAuth',
        updateUserOtpAuth_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateUserOtpAuthRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EmptyRequest, $0.EmptyRequest>(
        'RemoveUserOtpAuth',
        removeUserOtpAuth_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyRequest.fromBuffer(value),
        ($0.EmptyRequest value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateLanguageRequest, $0.EmptyRequest>(
        'UpdateLanguage',
        updateLanguage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UpdateLanguageRequest.fromBuffer(value),
        ($0.EmptyRequest value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChangeRoleRequest, $1.Empty>(
        'ChangeRole',
        changeRole_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ChangeRoleRequest.fromBuffer(value),
        ($1.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateAdministratorResponse> createAdministrator_Pre($grpc.ServiceCall $call, $async.Future<$0.Administrator> $request) async {
    return createAdministrator($call, await $request);
  }

  $async.Future<$0.UpdateAdministratorResponse> updateAdministrator_Pre($grpc.ServiceCall $call, $async.Future<$0.Administrator> $request) async {
    return updateAdministrator($call, await $request);
  }

  $async.Future<$0.ChangePasswordResponse> changePassword_Pre($grpc.ServiceCall $call, $async.Future<$0.ChangePasswordRequest> $request) async {
    return changePassword($call, await $request);
  }

  $async.Future<$1.Empty> acceptClientNotice_Pre($grpc.ServiceCall $call, $async.Future<$1.Empty> $request) async {
    return acceptClientNotice($call, await $request);
  }

  $async.Future<$0.ListAdministratorResponse> listAdministrator_Pre($grpc.ServiceCall $call, $async.Future<$0.ListAdministratorRequest> $request) async {
    return listAdministrator($call, await $request);
  }

  $async.Future<$0.CreateAccessResponse> createAccess_Pre($grpc.ServiceCall $call, $async.Future<$0.Access> $request) async {
    return createAccess($call, await $request);
  }

  $async.Future<$0.EmptyRequest> deleteAccess_Pre($grpc.ServiceCall $call, $async.Future<$0.DeleteAccessRequest> $request) async {
    return deleteAccess($call, await $request);
  }

  $async.Future<$0.ListAccountAccessResponse> listAccountAccess_Pre($grpc.ServiceCall $call, $async.Future<$0.ListAccountAccessRequest> $request) async {
    return listAccountAccess($call, await $request);
  }

  $async.Future<$0.ForgotPasswordCheckEmailResponse> forgotPasswordCheckEmail_Pre($grpc.ServiceCall $call, $async.Future<$0.ForgotPasswordCheckEmailRequest> $request) async {
    return forgotPasswordCheckEmail($call, await $request);
  }

  $async.Future<$1.Empty> forgotPassword_Pre($grpc.ServiceCall $call, $async.Future<$0.ForgotPasswordRequest> $request) async {
    return forgotPassword($call, await $request);
  }

  $async.Future<$0.UpdateUserSettingsResponse> updateUserSettings_Pre($grpc.ServiceCall $call, $async.Future<$0.UpdateUserSettingsRequest> $request) async {
    return updateUserSettings($call, await $request);
  }

  $async.Future<$0.LazyUsersResponse> lazyUsers_Pre($grpc.ServiceCall $call, $async.Future<$0.LazyUsersRequest> $request) async {
    return lazyUsers($call, await $request);
  }

  $async.Future<$0.CurrentUserDetailsResponse> currentUserDetails_Pre($grpc.ServiceCall $call, $async.Future<$1.Empty> $request) async {
    return currentUserDetails($call, await $request);
  }

  $async.Future<$0.GetUserOtpAuthUrlResponse> getUserOtpAuthUrl_Pre($grpc.ServiceCall $call, $async.Future<$1.Empty> $request) async {
    return getUserOtpAuthUrl($call, await $request);
  }

  $async.Future<$1.Empty> updateUserOtpAuth_Pre($grpc.ServiceCall $call, $async.Future<$0.UpdateUserOtpAuthRequest> $request) async {
    return updateUserOtpAuth($call, await $request);
  }

  $async.Future<$0.EmptyRequest> removeUserOtpAuth_Pre($grpc.ServiceCall $call, $async.Future<$0.EmptyRequest> $request) async {
    return removeUserOtpAuth($call, await $request);
  }

  $async.Future<$0.EmptyRequest> updateLanguage_Pre($grpc.ServiceCall $call, $async.Future<$0.UpdateLanguageRequest> $request) async {
    return updateLanguage($call, await $request);
  }

  $async.Future<$1.Empty> changeRole_Pre($grpc.ServiceCall $call, $async.Future<$0.ChangeRoleRequest> $request) async {
    return changeRole($call, await $request);
  }

  $async.Future<$0.CreateAdministratorResponse> createAdministrator($grpc.ServiceCall call, $0.Administrator request);
  $async.Future<$0.UpdateAdministratorResponse> updateAdministrator($grpc.ServiceCall call, $0.Administrator request);
  $async.Future<$0.ChangePasswordResponse> changePassword($grpc.ServiceCall call, $0.ChangePasswordRequest request);
  $async.Future<$1.Empty> acceptClientNotice($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$0.ListAdministratorResponse> listAdministrator($grpc.ServiceCall call, $0.ListAdministratorRequest request);
  $async.Future<$0.CreateAccessResponse> createAccess($grpc.ServiceCall call, $0.Access request);
  $async.Future<$0.EmptyRequest> deleteAccess($grpc.ServiceCall call, $0.DeleteAccessRequest request);
  $async.Future<$0.ListAccountAccessResponse> listAccountAccess($grpc.ServiceCall call, $0.ListAccountAccessRequest request);
  $async.Future<$0.ForgotPasswordCheckEmailResponse> forgotPasswordCheckEmail($grpc.ServiceCall call, $0.ForgotPasswordCheckEmailRequest request);
  $async.Future<$1.Empty> forgotPassword($grpc.ServiceCall call, $0.ForgotPasswordRequest request);
  $async.Future<$0.UpdateUserSettingsResponse> updateUserSettings($grpc.ServiceCall call, $0.UpdateUserSettingsRequest request);
  $async.Future<$0.LazyUsersResponse> lazyUsers($grpc.ServiceCall call, $0.LazyUsersRequest request);
  $async.Future<$0.CurrentUserDetailsResponse> currentUserDetails($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$0.GetUserOtpAuthUrlResponse> getUserOtpAuthUrl($grpc.ServiceCall call, $1.Empty request);
  $async.Future<$1.Empty> updateUserOtpAuth($grpc.ServiceCall call, $0.UpdateUserOtpAuthRequest request);
  $async.Future<$0.EmptyRequest> removeUserOtpAuth($grpc.ServiceCall call, $0.EmptyRequest request);
  $async.Future<$0.EmptyRequest> updateLanguage($grpc.ServiceCall call, $0.UpdateLanguageRequest request);
  $async.Future<$1.Empty> changeRole($grpc.ServiceCall call, $0.ChangeRoleRequest request);
}
