import 'package:broker_mobile/server/grpc_client_factory.dart';
import 'package:broker_mobile/session/session.dart';
import 'package:flutter/cupertino.dart';
import 'package:broker_mobile/env.dart';
import 'package:broker_mobile/proto/authpb/auth.pbgrpc.dart';
import 'common_service.dart';

import '../google/protobuf/empty.pb.dart';

final _service = GrpcClientFactory.create(AuthServiceClient.new);

final _commonService = CommonService();

Future<LoginResponse?> refreshToken(
  String refreshToken,
) async {
  if (!sessionManager.isAuthenticated) {
    return null;
  }
  try {
    final req = RefreshTokenRequest()
      ..refreshToken = refreshToken
      ..clientId = AppEnv.grpcClientId;

    final resp = await _service.refreshToken(req);
    return resp;
  } catch (e) {
    debugPrint('refreshToken error: $e');
    return null;
  }
}

Future<LoginWebResponse> loginWeb(String email, String password,
    String correspondent, String authenticationMode) {
  try {
    final req = LoginWebRequest()
      ..email = email
      ..password = password
      ..authenticationMode = authenticationMode
      ..clientId = AppEnv.grpcClientId
      ..correspondent = correspondent;

    final response = _service.loginWeb(req);
    return response;
  } catch (err, stack) {
    debugPrint("Login error: $err\n$stack");
    rethrow;
  }
}

Future<void> logoutUser() async {
  try {
    await _service.logout(Empty());
  } catch (e) {
    debugPrint('Logout service call failed: $e');
  }
}

Future<void> validateAuthCode({
  required String email,
  required String password,
  required String authCode,
  required String authenticationMode,
  required String sessionKey,
  required String correspondent,
}) async {
  final req = ValidateCodeRequest()
    ..email = email
    ..password = password
    ..code = authCode
    ..authenticationMode = authenticationMode
    ..sessionKey = sessionKey
    ..clientId = AppEnv.grpcClientId
    ..correspondent = correspondent;

  try {
    final response = await _service.validateCode(req);
    final mobileAppConfigResponse =
        await _commonService.getMobileAppConfig(correspondent);
    sessionManager.startSession(response.accessToken, response.refreshToken,mobileAppConfigResponse.mobileLogo, mobileAppConfigResponse.brokerName);
  } catch (error) {
    rethrow;
  }
}

Future<EmailAuthCodeResponse> emailAuthCode(
  String email,
  correspondent,
) async {
  final req = EmailAuthCodeRequest()
    ..email = email
    ..correspondent = correspondent;

  try {
    final response = await _service.emailAuthCode(req);
    return response;
  } catch (error) {
    rethrow;
  }
}
