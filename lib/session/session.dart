import 'package:flutter/material.dart';
import 'package:broker_mobile/src/screens/auth/login.dart';
import 'package:broker_mobile/session/session_manager.dart';
import 'package:broker_mobile/session/theme_manager.dart';

import '../navigator.dart';

final sessionManager = SessionManager(
  onLogout: (logoutReason) async {
    final navigator = navigatorKey.currentState;
    if (navigator != null && navigator.mounted) {
      navigator.pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => const LoginPage()),
        (route) => false,
      );

      // show snackbar after navigation
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (logoutReason != null && logoutReason.isNotEmpty) {
          var cleanReason = logoutReason.replaceFirst("access is invalid:", "");
          if (cleanReason.contains('token is expired by')) {
            cleanReason = "Your session expired. Please log in again.";
          }

          Color notificationColor = Colors.red;
          if (cleanReason.contains('success')) {
            notificationColor = Colors.green;
          }

          ScaffoldMessenger.of(navigatorKey.currentContext!)
              .showSnackBar(SnackBar(
            content: Text(
              cleanReason,
              style: const TextStyle(color: Colors.white),
            ),
            backgroundColor: notificationColor,
          ));
        }
      });
    }
  },
);

final themeManager = ThemeManager();
