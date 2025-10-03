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
    final req = ChangePasswordRequest()
      ..oldPassword = oldPassword
      ..newPassword = newPassword;

    try {
      final response = await client.changePassword(req);
      if (response.status == "Failed") {
        throw Exception(response.msg);
      }
      sessionManager.logout(response.msg, true);
    } catch (err, stack) {
      debugPrint("Change password error: $err\n$stack");
      rethrow;
    }
  }
}
