import 'dart:developer';

import 'package:broker_mobile/service/auth-service.dart';
import 'package:flutter/material.dart';
import 'package:broker_mobile/src/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:broker_mobile/env.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppEnv.load();
  await loadCachedToken();
  log('Environment loaded: ${AppEnv.grpcClientId}');
  final prefs = await SharedPreferences.getInstance();
  // You can now use prefs safely
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Broker App',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const LoginPage(),
    );
  }
}
