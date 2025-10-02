import 'package:broker_mobile/components/option/option_grid.dart';
import 'package:broker_mobile/session/session.dart';
import 'package:broker_mobile/src/screens/account/app_settings/app_settings.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
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
      const Center(child: Text("User Settings")),
      const Center(child: Text("Change Password")),
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
          isPageSelected ? _options[_selectedIndex]["title"] : "Account",
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
