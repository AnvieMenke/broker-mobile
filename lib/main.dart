import 'dart:io';
import 'package:broker_mobile/router.dart';
import 'package:broker_mobile/service/health_check_service.dart';
import 'package:flutter/material.dart';
import 'package:broker_mobile/env.dart';
import 'maintenance_screen.dart';
import 'navigator.dart';
import 'utils/theme/custom_theme.dart';
import 'package:broker_mobile/session/session.dart';
import 'package:broker_mobile/session/activity_listener.dart';
import 'package:flutter/foundation.dart';

bool isApplePlatform() {
  if (kIsWeb) return false;
  return Platform.isIOS || Platform.isMacOS;
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppEnv.load();
  AppTheme.setSystemUIOverlayStyle();
  sessionManager.init();
  // Load saved theme before runApp
  await themeManager.loadTheme();
  final isHealthy = await HealthCheckService().checkService();
  final initialRoute = isApplePlatform() ? '/' : '/splash';
  if (!isHealthy) {
    runApp(const MaterialApp(
      home: MaintenanceScreen(),
      debugShowCheckedModeBanner: false,
    ));
    return;
  }

  runApp(MyApp(initialRoute: initialRoute));
}

class MyApp extends StatefulWidget {
  final String initialRoute;

  const MyApp({super.key, required this.initialRoute});

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
        themeMode: themeManager.themeMode,
        navigatorKey: navigatorKey,
        initialRoute: widget.initialRoute,
        onGenerateRoute: generateRoute,
      ),
    );
  }
}
