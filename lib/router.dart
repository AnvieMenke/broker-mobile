import 'package:broker_mobile/src/screens/profile/feedback/feedback.dart';
import 'package:broker_mobile/src/screens/profile/profile_page.dart';
import 'package:broker_mobile/src/screens/reports/activity/activity.dart';
import 'package:broker_mobile/src/screens/reports/margin/buying_power.dart';
import 'package:broker_mobile/src/screens/reports/margin/call_log.dart';
import 'package:broker_mobile/src/screens/reports/position/position.dart';
import 'package:flutter/material.dart';
import 'package:broker_mobile/session/session.dart';
import 'package:broker_mobile/src/screens/auth/login.dart';
import 'package:broker_mobile/src/screens/dashboard/main_screen.dart';
import 'package:broker_mobile/src/screens/profile/app_settings/app_settings_page.dart';
import 'package:broker_mobile/src/screens/profile/user-settings/user_settings_page.dart';
import 'package:broker_mobile/src/screens/profile/change_password/change_password_page.dart';
import 'package:broker_mobile/src/screens/profile/authenticator/authenticator_page.dart';
import 'package:broker_mobile/src/screens/summary/summary.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  final routes = <String, WidgetBuilder>{
    '/home': (_) => const MainScreen(),
    '/profile': (_) => const ProfilePage(),
    '/summary': (_) => const AccountSummaryPage(),
    '/reports/activity': (_) => const ActivityPage(),
    '/reports/position': (_) => const PositionPage(),
    '/reports/margin-call': (_) => const CallLogPage(),
    '/reports/buying-power': (_) => const BuyingPowerPage(),
    '/profile/app': (_) => const AppSettingsPage(),
    '/profile/user': (_) => const UserSettingsPage(),
    '/profile/change-password': (_) => const ChangePasswordPage(),
    '/profile/authenticator': (_) => const AuthenticatorPage(),
    '/profile/feedback': (_) => const FeedbackPage(),
  };

  // Redirect to login if not authenticated or accessing root
  if (settings.name == '/' || !sessionManager.isAuthenticated) {
    return MaterialPageRoute(builder: (_) => const LoginPage());
  }

  final builder = routes[settings.name];
  if (builder != null) {
    return MaterialPageRoute(builder: builder);
  }

  // Fallback: 404
  return MaterialPageRoute(
    builder: (_) => const Scaffold(
      body: Center(child: Text('404 - Page not found')),
    ),
  );
}
