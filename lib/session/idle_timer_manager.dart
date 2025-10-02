import 'dart:async';
import 'package:flutter/material.dart';
import 'idle_warning_dialog.dart';

/// Handles idle timeout logic with timestamp-based tracking.
class IdleTimerManager {
  final Duration idleTimeout;
  final Duration warningDuration;
  final void Function(bool showNotification) onIdleLogout;

  DateTime _lastActive = DateTime.now();
  Timer? _warningTimer;
  bool _warningShowing = false;

  IdleTimerManager({
    required this.idleTimeout,
    required this.warningDuration,
    required this.onIdleLogout,
  });

  void start(BuildContext context) {
    _lastActive = DateTime.now();
    _scheduleWarning(context);
  }

  void stop() {
    _warningTimer?.cancel();
  }

  void notifyUserActivity(BuildContext context) {
    _lastActive = DateTime.now();
    _scheduleWarning(context);
  }

  /// Checks idle based on timestamp (for app resume)
  void checkIdle(BuildContext context) {
    _scheduleWarning(context);
  }

  void _scheduleWarning(BuildContext context) {
    if (_warningShowing) return;

    _warningTimer?.cancel();
    final elapsed = DateTime.now().difference(_lastActive);
    final remaining = idleTimeout - elapsed;

    if (remaining <= Duration.zero) {
      // already timed out
      onIdleLogout(true);
      return;
    }

    final warningDelay = remaining - warningDuration;
    if (warningDelay <= Duration.zero) {
      _showWarning(context);
    } else {
      _warningTimer = Timer(warningDelay, () => _showWarning(context));
    }
  }

  void _showWarning(BuildContext context) {
    if (_warningShowing) return;
    _warningShowing = true;

    _warningTimer?.cancel();
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => IdleWarningDialog(
        warningDuration: idleTimeout - DateTime.now().difference(_lastActive),
        onStay: () {
          _warningShowing = false;
          notifyUserActivity(context);
        },
        onLogout: (showNotification) {
          _warningShowing = false;
          onIdleLogout(showNotification);
        },
      ),
    );
  }
}
