import 'package:broker_mobile/router.dart';
import 'package:broker_mobile/service/health_check_service.dart';
import 'package:flutter/material.dart';
import 'package:broker_mobile/env.dart';
import 'maintenance_screen.dart';
import 'navigator.dart';
import 'utils/theme/custom_theme.dart';
import 'package:broker_mobile/session/session.dart';
import 'package:broker_mobile/session/activity_listener.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppEnv.load();
  AppTheme.setSystemUIOverlayStyle();
  sessionManager.init();
  // Load saved theme before runApp
  await themeManager.loadTheme();
  final isHealthy = await HealthCheckService().checkService();

  if (!isHealthy) {
    runApp(const MaterialApp(
      home: MaintenanceScreen(),
      debugShowCheckedModeBanner: false,
    ));
    return;
  }

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
        debugShowCheckedModeBanner: false,
        title: 'SAS Wealth Management',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: themeManager.themeMode,
        navigatorKey: navigatorKey,
        initialRoute: '/splash',
        onGenerateRoute: generateRoute,
      ),
    );
  }
}
