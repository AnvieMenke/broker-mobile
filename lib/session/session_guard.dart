import 'package:broker_mobile/src/screens/auth/login.dart';
import 'package:broker_mobile/src/screens/dashboard/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:broker_mobile/session/session_manager.dart';

class SessionGuard extends StatefulWidget {
  final Widget child;
  final SessionManager manager;

  const SessionGuard({super.key, required this.child, required this.manager});

  @override
  State<SessionGuard> createState() => _SessionGuardState();
}

class _SessionGuardState extends State<SessionGuard> {
  @override
  void initState() {
    super.initState();
    widget.manager.init();
  }

  @override
  void dispose() {
    widget.manager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (settings) {
        if (!widget.manager.isAuthenticated) {
          return MaterialPageRoute(builder: (_) => const LoginPage());
        }

        if (settings.name == '/home') {
          return MaterialPageRoute(builder: (_) => const MainScreen());
        }

        // fallback
        return MaterialPageRoute(builder: (_) => const MainScreen());
      },
    );
  }
}
