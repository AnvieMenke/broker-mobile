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

  // Load saved theme before runApp
  await themeManager.loadTheme();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    themeManager.addListener(_onThemeChanged);
  }

  @override
  void dispose() {
    themeManager.removeListener(_onThemeChanged);
    super.dispose();
  }

  void _onThemeChanged() {
    setState(() {}); // Rebuild when theme changes
  }

  @override
  Widget build(BuildContext context) {
    return ActivityListener(
      onActivity: sessionManager.userActivityDetected,
      child: MaterialApp(
        title: 'Broker App',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: themeManager.themeMode, // Use persisted theme here
        navigatorKey: navigatorKey,
        home: SessionGuard(
          manager: sessionManager,
          child: const LoginPage(),
        ),
      ),
    );
  }
}
