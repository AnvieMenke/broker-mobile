import 'dart:async';
import 'package:broker_mobile/router.dart';
import 'package:broker_mobile/service/auth_service.dart';
import 'package:broker_mobile/session/session_user.dart';
import 'package:flutter/material.dart';
import 'idle_timer_manager.dart';
import 'package:broker_mobile/env.dart';

class SessionManager with WidgetsBindingObserver {
  String? _accessToken;
  String? _refreshToken;
  SessionUser? _user;
  SessionUser? get user => _user;
  Timer? _refreshTimer;

  final Duration _refreshBefore = const Duration(minutes: 1);

  final void Function(String? logoutReason) onLogout;
  late final IdleTimerManager _idleTimerManager;

  SessionManager({
    required this.onLogout,
  }) {
    final idleTimeoutDuration = Duration(minutes: AppEnv.idleTimeOutMinutes);
    _idleTimerManager = IdleTimerManager(
      idleTimeout: idleTimeoutDuration, // show warning after x idle
      warningDuration: const Duration(seconds: 30), // show countdown
      onIdleLogout: (showNotification) {
        logout(
          showNotification ? "Logged out due to inactivity." : null,
          false,
        );
      },
    );
  }

  void init() {
    WidgetsBinding.instance.addObserver(this);
  }

  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _refreshTimer?.cancel();
    _idleTimerManager.stop();
  }

  void startSession(String token, String refreshToken) {
    _accessToken = token;
    _refreshToken = refreshToken;
    _user = SessionUser.fromToken(token);

    _scheduleRefresh();

    final ctx = navigatorKey.currentContext;
    if (ctx != null) _idleTimerManager.start(ctx);
  }

  void clearSession() {
    _accessToken = null;
    _refreshToken = null;
    _user = null;
    _refreshTimer?.cancel();
    _idleTimerManager.stop();
  }

  String get token => _accessToken ?? "";
  bool get isAuthenticated =>
      _accessToken != null &&
      _user?.tokenExpiry?.isAfter(DateTime.now()) == true;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _checkExpiry();

      if (isAuthenticated) {
        final ctx = navigatorKey.currentContext;
        if (ctx != null) _idleTimerManager.checkIdle(ctx);
      }
    }
  }

  void userActivityDetected() {
    if (isAuthenticated) {
      final ctx = navigatorKey.currentContext;
      if (ctx != null) _idleTimerManager.notifyUserActivity(ctx);
    }
  }

  void _scheduleRefresh() {
    _refreshTimer?.cancel();
    if (_user?.tokenExpiry == null) return;

    final now = DateTime.now();
    final refreshAt = _user!.tokenExpiry!.subtract(_refreshBefore);
    var duration = refreshAt.difference(now);

    if (duration.isNegative) {
      _checkExpiry();
      return;
    }

    const maxWait = Duration(hours: 12);
    if (duration > maxWait) {
      duration = maxWait;
    }

    _refreshTimer = Timer(duration, () async {
      await _refresh();
    });
  }

  Future<void> _refresh() async {
    if (_refreshToken == null) {
      return logout("Invalid session. Please log in again.", true);
    }

    final auth = await refreshToken(_refreshToken!);
    if (auth == null) {
      return logout("Invalid session. Please log in again.", true);
    }

    _accessToken = auth.accessToken;
    _refreshToken = auth.refreshToken;
    _user = SessionUser.fromToken(auth.accessToken);

    _scheduleRefresh();
  }

  void _checkExpiry() {
    if (_user?.tokenExpiry == null) return;
    final now = DateTime.now();
    if (now.isAfter(_user!.tokenExpiry!)) {
      logout("Your session expired. Please log in again.", true);
    } else {
      _scheduleRefresh();
    }
  }

  void logout(String? logoutReason, bool isInvalidSession) {
    if (isAuthenticated) {
      if (!isInvalidSession) {
        logoutUser();
      }
      onLogout(logoutReason);
    }
    clearSession();
  }

  void updateUserSettings(
      String mobileNo, AuthenticationMode authenticationMode) {
    _user?.mobileNo = mobileNo;
    _user?.authenticationMode = authenticationMode;
  }

  void updateUserAuthenticator(bool isEnabled) {
    _user?.authenticationMode.authenticator = isEnabled;
  }
}
