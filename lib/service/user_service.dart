import 'package:broker_mobile/google/protobuf/empty.pb.dart';
import 'package:broker_mobile/proto/usrpb/administrator.pbgrpc.dart';
import 'package:broker_mobile/server/grpc_client_factory.dart';
import 'package:broker_mobile/service/convert_service.dart';
import 'package:broker_mobile/session/session.dart';
import 'package:broker_mobile/session/session_user.dart';
import 'package:flutter/material.dart';

class UserService {
  final _service = GrpcClientFactory.create(UserServiceClient.new);

  Future<void> changePassword(String oldPassword, String newPassword) async {
    final client = GrpcClientFactory.create(UserServiceClient.new);
    final payload = ChangePasswordRequest()
      ..oldPassword = oldPassword
      ..newPassword = newPassword;

    try {
      final response = await client.changePassword(payload);
      if (response.status == "Failed") {
        throw Exception(response.msg);
      }
      sessionManager.logout(response.msg, true);
    } catch (err, stack) {
      debugPrint("Change password error: $err\n$stack");
      rethrow;
    }
  }

  Future<void> updateUserSettings(
      String mobileNo, AuthenticationMode authenticationMode) async {
    List<String> authMethods = [];
    if (authenticationMode.text) {
      authMethods.add("Text");
    }
    if (authenticationMode.email) {
      authMethods.add("Email");
    }
    if (authenticationMode.authenticator) {
      authMethods.add("Authenticator");
    }

    final payload = UpdateUserSettingsRequest()
      ..mobileNo = mobileNo
      ..authenticationMode = authMethods.join(",");

    try {
      await _service.updateUserSettings(payload);
      sessionManager.updateUserSettings(mobileNo, authenticationMode);
    } catch (err, stack) {
      debugPrint("Update user settings error: $err\n$stack");
      rethrow;
    }
  }

  Future<GetUserOtpAuthUrlResponse> getUserOtpAuthUrl() async {
    try {
      final payload = Empty();
      final result = await _service.getUserOtpAuthUrl(payload);

      return result;
    } catch (err, stack) {
      debugPrint("Get user OTP URL error: $err\n$stack");
      rethrow;
    }
  }

  Future<void> updateUserOtpAuth(String validationCode) async {
    try {
      final payload = UpdateUserOtpAuthRequest()
        ..validationCode = validationCode;

      await _service.updateUserOtpAuth(payload);
      sessionManager.updateUserAuthenticator(true);
    } catch (err, stack) {
      debugPrint("Update user OTP error: $err\n$stack");
      rethrow;
    }
  }

  Future<void> removeUserOtpAuth() async {
    try {
      final payload = EmptyRequest();
      await _service.removeUserOtpAuth(payload);
      sessionManager.updateUserAuthenticator(false);
    } catch (err, stack) {
      debugPrint("Remove user OTP error: $err\n$stack");
      rethrow;
    }
  }

  Future<ForgotPasswordCheckEmailResponse> forgotPasswordCheckEmail(
    String email,
    String correspondent,
  ) async {
    try {
      final payload = ForgotPasswordCheckEmailRequest()
        ..email = email
        ..correspondent = correspondent;

      final response = await _service.forgotPasswordCheckEmail(payload);

      return response;
    } catch (err, stack) {
      debugPrint("Forgot password check email error: $err\n$stack");
      rethrow;
    }
  }

  Future<void> forgotPassword(
    String email,
    correspondent,
    externalAuthId,
    otp,
    newPassword,
  ) async {
    final req = ForgotPasswordRequest()
      ..email = email
      ..correspondent = correspondent
      ..externalAuthId = externalAuthId
      ..code = ConvertService.safeInt(otp)
      ..newPassword = newPassword;

    try {
      await _service.forgotPassword(req);
    } catch (error) {
      rethrow;
    }
  }
}
