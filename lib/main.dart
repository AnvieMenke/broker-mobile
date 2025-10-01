import 'package:broker_mobile/session/session_guard.dart';
import 'package:flutter/material.dart';
import 'package:broker_mobile/src/screens/auth/login.dart';
import 'package:broker_mobile/env.dart';
import 'utils/theme/custom_theme.dart';
import 'package:broker_mobile/session/session.dart';
import 'package:broker_mobile/session/activity_listener.dart';

final navigatorKey = GlobalKey<NavigatorState>();

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
    return ActivityListener(
      onActivity: () {
        sessionManager.userActivityDetected();
      },
      child: MaterialApp(
        title: 'Broker App',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        navigatorKey: navigatorKey,
        home: SessionGuard(
          manager: sessionManager,
          child: const LoginPage(),
        ),
      ),
    );
  }
}
