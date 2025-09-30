import 'package:broker_mobile/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import 'package:broker_mobile/env.dart';
import 'package:broker_mobile/proto/authpb/auth.pbgrpc.dart';
// import 'package:broker_mobile/proto/usrpb/useraccess.pb.dart';
// import 'package:broker_mobile/proto/usrpb/useraccess.pbgrpc.dart';

import '../google/protobuf/empty.pb.dart';
import '../server/auth_interceptor.dart';
import '../server/grpc_client.dart';

const _tokenKey = 'id_token';
const _logoutMessageKey = 'STORAGE_LOGOUT_MESSAGE';

ClientChannelBase _createChannel() {
  return getGrpcChannel();
}

final _serviceNoAuth = AuthServiceClient(
  _createChannel(),
  interceptors: [AuthInterceptor()],
);

/// Call this once at app start to initialize the cached token
Future<void> loadCachedToken() async {
  final prefs = await SharedPreferences.getInstance();
  AuthService.cachedToken = prefs.getString(_tokenKey);
}

Future<String?> getToken() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString(_tokenKey);
}

Future<String?> getLogoutMessage() async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString(_logoutMessageKey);
}

Future<void> removeLogoutMessage() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.remove(_logoutMessageKey);
}

Future<LoginResponse?> refreshToken(
  String refreshToken,
) async {
  try {
    final req = RefreshTokenRequest()
      ..refreshToken = refreshToken
      ..clientId = AppEnv.grpcClientId;

    final client = AuthServiceClient(
      _createChannel(),
      interceptors: [AuthInterceptor()],
    );

    final resp = await client.refreshToken(req);
    await _setTokens(
      resp.accessToken,
    );
    return resp;
  } catch (e) {
    debugPrint('refreshToken error: $e');
    return null;
  }
}

Future<LoginWebResponse> loginWeb(
    String email, String password, String correspondent) {
  final req = LoginWebRequest()
    ..email = email
    ..password = password
    ..authenticationMode = 'email'
    ..clientId = AppEnv.grpcClientId
    ..correspondent = correspondent;

  return _serviceNoAuth.loginWeb(req);
}

Future<void> _setTokens(String at) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString(_tokenKey, at);
  AuthService.cachedToken = at;
}

Future<void> logout([String? msg]) async {
  final token = await getToken();
  String? message = msg;
  if (message?.contains('access is invalid') == true || token == null) {
    AuthService.cachedToken = null;
    return _logoutUser(message);
  }

  final service = AuthServiceClient(
    _createChannel(),
    options: CallOptions(metadata: {'Authorization': token}),
  );

  try {
    await service.logout(Empty());
  } catch (e) {
    debugPrint('Logout service call failed: $e');
  }

  AuthService.cachedToken = null;
  await _logoutUser(message);
}

Future<void> _logoutUser(String? message) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.clear();

  if (message != null && !message.contains('Logged Out')) {
    final stored = message.contains('token is expired by')
        ? 'session logged out.'
        : message;
    await prefs.setString(_logoutMessageKey, stored);
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
    final response = await _serviceNoAuth.validateCode(req);
    sessionManager.startSession(response.accessToken, response.refreshToken);

    await _setTokens(
      response.accessToken,
    );
  } catch (error) {
    rethrow;
  }
}

class AuthService {
  static String? cachedToken;

  static void setToken(String? token) {
    cachedToken = token;
    // Optionally, persist to storage if needed
  }

  static void logout([String? reason]) {
    cachedToken = null;
    // Optionally, clear from storage and handle logout logic
  }

  static Future<Map<String, dynamic>?> getCurrentUser() async {
    final token = await getToken();
    if (token == null || JwtDecoder.isExpired(token)) return null;

    final decoded = JwtDecoder.decode(token);
    final prefs = await SharedPreferences.getInstance();
    if (decoded.containsKey('AccountId')) {
      await prefs.setString('account_id', decoded['AccountId'].toString());
    }
    return decoded;
  }
}
