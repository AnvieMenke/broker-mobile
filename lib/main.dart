import 'package:broker_mobile/service/auth_service.dart';
import 'package:broker_mobile/session/session_guard.dart';
import 'package:flutter/material.dart';
import 'package:broker_mobile/src/screens/auth/login.dart';
import 'package:broker_mobile/env.dart';
import 'custom_theme.dart';
import 'package:broker_mobile/session/session_manager.dart';

final navigatorKey = GlobalKey<NavigatorState>();

final sessionManager = SessionManager(
  onLogout: () {
    // When expired or manual logout
    navigatorKey.currentState?.pushAndRemoveUntil(
      MaterialPageRoute(builder: (_) => const LoginPage()),
      (route) => false,
    );
  },
  onRefresh: (String refreshT) async {
    return await refreshToken(refreshT);
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
