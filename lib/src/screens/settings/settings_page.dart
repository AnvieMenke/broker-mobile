import 'package:broker_mobile/components/containers/page_container.dart';
import 'package:broker_mobile/components/option/option_grid.dart';
import 'package:broker_mobile/session/session.dart';
import 'package:flutter/material.dart';

const List<Map<String, dynamic>> _options = [
  {"title": "Logout", "icon": Icons.logout, "route": "/"},
  {
    "title": "User Settings",
    "icon": Icons.manage_accounts,
    "route": "/settings/user"
  },
  {
    "title": "Change Password",
    "icon": Icons.password,
    "route": "/settings/change-password"
  },
  {
    "title": "App Settings",
    "icon": Icons.app_settings_alt,
    "route": "/settings/app"
  },
  {
    "title": "Authenticator",
    "icon": Icons.key,
    "route": "/settings/authenticator"
  },
];

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  void handleOptionTap(BuildContext context, int index) {
    final route = _options[index]["route"] as String?;

    if (route == null) return;

    if (route == "/") {
      sessionManager.logout(null, false);
    }

    Navigator.of(context).pushNamed(route);
  }

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      title: "Settings",
      showBack: false,
      page: OptionGrid(
        options: _options,
        onTap: (index) => handleOptionTap(context, index),
      ),
    );
  }
}
