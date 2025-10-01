import 'dart:async';
import 'package:flutter/material.dart';
import 'idle_warning_dialog.dart';

/// Handles idle timeout logic (detecting inactivity, showing warning, auto logout).
class IdleTimerManager {
  final Duration idleTimeout; // e.g. 15 minutes
  final Duration warningDuration; // e.g. 30 seconds
  final VoidCallback onIdleLogout; // what to do when logout is confirmed

  Timer? _idleTimer;

  IdleTimerManager({
    required this.idleTimeout,
    required this.warningDuration,
    required this.onIdleLogout,
  });

  void start(BuildContext context) {
    _reset(context);
  }

  void stop() {
    _idleTimer?.cancel();
  }

  void notifyUserActivity(BuildContext context) {
    _reset(context);
  }

  void _reset(BuildContext context) {
    _idleTimer?.cancel();
    _idleTimer = Timer(idleTimeout, () => _showWarning(context));
  }

  void _showWarning(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => IdleWarningDialog(
        warningDuration: warningDuration,
        onStay: () => _reset(context),
        onLogout: onIdleLogout,
      ),
    );
  }
}
