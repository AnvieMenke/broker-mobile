import 'dart:async';
import 'package:broker_mobile/proto/authpb/auth.pb.dart';
import 'package:flutter/material.dart';
import 'package:jwt_decode/jwt_decode.dart';

final navigatorKey = GlobalKey<NavigatorState>();

class SessionManager with WidgetsBindingObserver {
  String? _accessToken;
  String? _refreshToken;
  DateTime? _expiry;

  Timer? _refreshTimer;
  final Duration _refreshBefore = const Duration(seconds: 30);

  final VoidCallback onLogout;
  final Future<LoginResponse?> Function(String refreshToken) onRefresh;

  SessionManager({
    required this.onLogout,
    required this.onRefresh,
  });

  void init() {
    WidgetsBinding.instance.addObserver(this);
  }

  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _refreshTimer?.cancel();
  }

  void startSession(String token, String refreshToken) {
    _accessToken = token;
    _refreshToken = refreshToken;
    _expiry = _parseExpiry(token);
    _scheduleRefresh();
  }

  void clearSession() {
    _accessToken = null;
    _refreshToken = null;
    _expiry = null;
    _refreshTimer?.cancel();
  }

  String? get token => _accessToken;
  bool get isAuthenticated =>
      _accessToken != null && _expiry?.isAfter(DateTime.now()) == true;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _checkExpiry();
    }
  }

  void _scheduleRefresh() {
    _refreshTimer?.cancel();
    if (_expiry == null) return;

    final now = DateTime.now();
    final refreshAt = _expiry!.subtract(_refreshBefore);
    var duration = refreshAt.difference(now);

    if (duration.isNegative) {
      // Already expired, force check
      _checkExpiry();
      return;
    }

    // Cap how far in the future we’ll wait
    const maxWait = Duration(hours: 12); // check at least twice a day
    if (duration > maxWait) {
      duration = maxWait;
    }

    _refreshTimer = Timer(duration, () async {
      await _refresh();
    });
  }

  Future<void> _refresh() async {
    if (_refreshToken == null) return logout();

    final auth = await onRefresh(_refreshToken!);
    if (auth == null) {
      logout();
      return;
    }

    _accessToken = auth.accessToken;
    _refreshToken = auth.refreshToken;
    _expiry = _parseExpiry(auth.accessToken);
    _scheduleRefresh();
  }

  void _checkExpiry() {
    if (_expiry == null) return;
    final now = DateTime.now();
    if (now.isAfter(_expiry!)) {
      logout();
    } else {
      _scheduleRefresh();
    }
  }

  void logout() {
    clearSession();
    onLogout();
  }

  DateTime? _parseExpiry(String jwt) {
    try {
      Map<String, dynamic> payload = Jwt.parseJwt(jwt);
      final exp = payload['exp'];
      if (exp is int) {
        return DateTime.fromMillisecondsSinceEpoch(exp * 1000);
      }
    } catch (_) {}
    return null;
  }
}
