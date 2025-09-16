import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:broker_mobile/src/screens/auth/login.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:broker_mobile/env.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppEnv.load();

  // log('Environment loaded: ${AppEnv.grpcClientId}');
  log('gRPC endpoint: ${dotenv.env['BROKER_GRPC_ENDPOINT']}');
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
