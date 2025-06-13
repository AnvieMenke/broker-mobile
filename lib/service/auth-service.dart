import 'dart:convert';
import 'dart:developer';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import 'package:broker_mobile/env.dart';
import 'package:broker_mobile/proto/authpb/auth.pbgrpc.dart';
import 'package:broker_mobile/proto/usrpb/useraccess.pb.dart';
import 'package:broker_mobile/proto/usrpb/useraccess.pbgrpc.dart';

import '../google/protobuf/empty.pb.dart';
import '../src/common/auth_interceptor.dart';
import '../src/common/grpc_client.dart'; // Use only this for gRPC

const _tokenKey = 'id_token';
const _refreshTokenKey = 'refresh_token';
const _logoutMessageKey = 'STORAGE_LOGOUT_MESSAGE';

ClientChannelBase _createChannel() {
  return getGrpcChannel();
}

final _serviceNoAuth = AuthServiceClient(
  _createChannel(),
  interceptors: [AuthInterceptor()],
);

Map<String, dynamic>? _userAccess;

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

Future<Map<String, dynamic>?> getCurrentUser() async {
  final token = await getToken();
  if (token == null || JwtDecoder.isExpired(token)) return null;

  final decoded = JwtDecoder.decode(token);
  final prefs = await SharedPreferences.getInstance();
  if (decoded.containsKey('AccountId')) {
    await prefs.setString('account_id', decoded['AccountId'].toString());
  }
  return decoded;
}

Future<Map<String, dynamic>?> getUserAccess() async {
  await refreshAccess();
  final prefs = await SharedPreferences.getInstance();
  final accessJson = prefs.getString('access');
  _userAccess = accessJson != null ? json.decode(accessJson) : null;
  return _userAccess;
}

Future<void> refreshToken(Map<String, String> authHeaders) async {
  log("auth ${AppEnv.grpcClientId}");
  final user = await getCurrentUser();
  if (user == null) return;

  final nowSec = DateTime.now().millisecondsSinceEpoch ~/ 1000;
  final exp = (user['exp'] as int?) ?? 0;
  if (nowSec > exp) return;

  final refreshCheck = DateTime.now().add(Duration(minutes: 60)).millisecondsSinceEpoch ~/ 1000;
  if (refreshCheck < exp) return;

  final prefs = await SharedPreferences.getInstance();
  final req = RefreshTokenRequest()
    ..refreshToken = prefs.getString(_refreshTokenKey) ?? ''
    ..clientId = AppEnv.grpcClientId;

  final client = AuthServiceClient(
    _createChannel(),
    options: CallOptions(metadata: authHeaders),
  );

  try {
    final resp = await client.refreshToken(req);
    await _setTokens(resp.accessToken, resp.refreshToken, resp.userAccesses);
  } catch (e) {
    print('refreshToken error: $e');
  }
}

Future<List<UserAccess>?> refreshAccess() async {
  final user = await getCurrentUser();
  if (user == null) return null;

  final nowSec = DateTime.now().millisecondsSinceEpoch ~/ 1000;
  final exp = (user['exp'] as int?) ?? 0;
  if (nowSec > exp) return null;

  final token = await getToken();
  final service = AuthServiceClient(
    _createChannel(),
    options: CallOptions(metadata: {'Authorization': token ?? ''}),
  );

  final resp = await service.refreshAccess(
    RefreshAccessRequest()..email = user['Username'],
  );

  return resp.userAccesses;
}

Future<LoginWebResponse> loginWeb(String email, String password) {

  final req = LoginWebRequest()
    ..email = email
    ..password = password
    ..authenticationMode = 'email'
    ..clientId = AppEnv.grpcClientId;
  return _serviceNoAuth.loginWeb(req);
}

Future<void> _setTokens(String at, String rt, List<UserAccess> userAccesses) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString(_tokenKey, at);
  await prefs.setString(_refreshTokenKey, rt);
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
    print('Logout service call failed: $e');
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
}