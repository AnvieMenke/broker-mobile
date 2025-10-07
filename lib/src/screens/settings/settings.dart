import 'package:broker_mobile/components/option/option_grid.dart';
import 'package:broker_mobile/service/user_service.dart';
import 'package:broker_mobile/session/session.dart';
import 'package:broker_mobile/src/screens/settings/app_settings/app_settings.dart';
import 'package:broker_mobile/src/screens/settings/change_password/change_password.dart';
import 'package:broker_mobile/src/screens/settings/user-settings/user_settings.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int _selectedIndex = -1;

  final List<Map<String, dynamic>> _options = [
    {"title": "Logout", "icon": Icons.logout},
    {"title": "User Settings", "icon": Icons.manage_accounts},
    {"title": "Change Password", "icon": Icons.password},
    {"title": "App Setings", "icon": Icons.app_settings_alt},
  ];

  late final List<Widget> _fragments;

  @override
  void initState() {
    super.initState();
    _fragments = [
      const Center(child: Text("Logout")),
      UserSettingsForm(
          name: sessionManager.user!.name,
          email: sessionManager.user!.email,
          role: sessionManager.user!.roleName,
          mobileNo: sessionManager.user!.mobileNo,
          authMethods: sessionManager.user!.authenticationMode,
          onSubmit: ({required mobileNo, required authMethods}) async {
            final service = UserService();
            await service.updateUserSettings(mobileNo, authMethods);
          }),
      ChangePasswordForm(
        email: sessionManager.user!.email,
        onSubmit: ({required oldPassword, required newPassword}) async {
          final service = UserService();
          await service.changePassword(oldPassword, newPassword);
        },
      ),
      AppSettings(),
    ];
  }

  void _handleOptionTap(int index) {
    if (index == 0) {
      sessionManager.logout(null, false);
    } else {
      setState(() => _selectedIndex = index);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isPageSelected = _selectedIndex != -1;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          isPageSelected ? _options[_selectedIndex]["title"] : "Settings",
        ),
        leading: isPageSelected
            ? IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => setState(() => _selectedIndex = -1),
              )
            : null,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: _selectedIndex == -1
            ? OptionGrid(
                options: _options,
                onTap: _handleOptionTap,
              )
            : _fragments[_selectedIndex],
      ),
    );
  }
}
