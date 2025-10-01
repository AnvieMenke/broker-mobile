import 'package:broker_mobile/session/session_guard.dart';
import 'package:flutter/material.dart';
import 'package:broker_mobile/src/screens/auth/login.dart';
import 'package:broker_mobile/env.dart';
import 'custom_theme.dart';
import 'package:broker_mobile/session/session_manager.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final sessionManager = SessionManager(
  onLogout: (logoutReason) async {
    final ctx = navigatorKey.currentContext;
    if (ctx != null) {
      Navigator.of(ctx).pushAndRemoveUntil(
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

          ScaffoldMessenger.of(navigatorKey.currentContext!)
              .showSnackBar(SnackBar(
            content: Text(
              cleanReason,
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.red,
          ));
        }
      });
    }
  },
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppEnv.load();
  AppTheme.setSystemUIOverlayStyle();
  sessionManager.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Broker App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      navigatorKey: navigatorKey,
      home: SessionGuard(
        manager: sessionManager,
        child: const LoginPage(),
      ),
    );
  }
}
