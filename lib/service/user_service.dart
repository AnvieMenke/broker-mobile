import 'package:broker_mobile/google/protobuf/empty.pb.dart';
import 'package:broker_mobile/proto/usrpb/administrator.pbgrpc.dart';
import 'package:broker_mobile/session/session.dart';
import 'package:flutter/material.dart';
import '../server/auth_interceptor.dart';
import 'package:grpc/grpc_connection_interface.dart';
import '../server/grpc_client.dart';

class UserService {
  ClientChannelBase _createChannel() {
    return getGrpcChannel();
  }

  UserServiceClient _usrSvc() {
    final channel = _createChannel();

    final client = UserServiceClient(
      channel,
      options: CallOptions(timeout: Duration(seconds: 30)),
      interceptors: [AuthInterceptor()],
    );

    return client;
  }

  Future<void> changePassword(String oldPassword, String newPassword) async {
    final client = _usrSvc();
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
    final client = _usrSvc();
    final authenticationMode = authMethods.join(",");
    final payload = UpdateUserSettingsRequest()
      ..mobileNo = mobileNo
      ..authenticationMode = authenticationMode;

    try {
      await client.updateUserSettings(payload);

      sessionManager.updateUserSettings(mobileNo, authenticationMode);
    } catch (err, stack) {
      debugPrint("Update user settings error: $err\n$stack");
      rethrow;
    }
  }

  Future<GetUserOtpAuthUrlResponse> getUserOtpAuthUrl() async {
    try {
      final client = _usrSvc();
      final payload = Empty();
      final result = await client.getUserOtpAuthUrl(payload);

      return result;
    } catch (err, stack) {
      debugPrint("Get user OTP URL error: $err\n$stack");
      rethrow;
    }
  }

  Future<void> updateUserOtpAuth(String validationCode) async {
    try {
      final client = _usrSvc();
      final payload = UpdateUserOtpAuthRequest()
        ..validationCode = validationCode;

      await client.updateUserOtpAuth(payload);
    } catch (err, stack) {
      debugPrint("Update user OTP error: $err\n$stack");
      rethrow;
    }
  }

  Future<void> removeUserOtpAuth() async {
    try {
      final client = _usrSvc();
      final payload = EmptyRequest();
      await client.removeUserOtpAuth(payload);
    } catch (err, stack) {
      debugPrint("Remove user OTP error: $err\n$stack");
      rethrow;
    }
  }
}
