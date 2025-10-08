import 'package:broker_mobile/google/protobuf/empty.pb.dart';
import 'package:broker_mobile/proto/usrpb/administrator.pbgrpc.dart';
import 'package:broker_mobile/server/grpc_client_factory.dart';
import 'package:broker_mobile/session/session.dart';
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
      String mobileNo, List<String> authMethods) async {
    final authenticationMode = authMethods.join(",");
    final payload = UpdateUserSettingsRequest()
      ..mobileNo = mobileNo
      ..authenticationMode = authenticationMode;

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
    } catch (err, stack) {
      debugPrint("Update user OTP error: $err\n$stack");
      rethrow;
    }
  }

  Future<void> removeUserOtpAuth() async {
    try {
      final payload = EmptyRequest();
      await _service.removeUserOtpAuth(payload);
    } catch (err, stack) {
      debugPrint("Remove user OTP error: $err\n$stack");
      rethrow;
    }
  }
}
