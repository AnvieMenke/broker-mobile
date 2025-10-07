import 'package:broker_mobile/session/session.dart';
import 'package:flutter/material.dart';

class AppSettings extends StatefulWidget {
  const AppSettings({super.key});

  @override
  State<AppSettings> createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  late ThemeMode _themeMode;

  @override
  void initState() {
    super.initState();
    _themeMode = themeManager.themeMode; // load current theme
    themeManager.addListener(_onThemeChanged);
  }

  @override
  void dispose() {
    themeManager.removeListener(_onThemeChanged);
    super.dispose();
  }

  void _onThemeChanged() {
    setState(() {
      _themeMode = themeManager.themeMode;
    });
  }

  void _toggleTheme(bool isDark) {
    themeManager.setTheme(isDark ? ThemeMode.dark : ThemeMode.light);
  }

  bool _isDarkMode(BuildContext context) {
    if (_themeMode == ThemeMode.system) {
      final brightness = MediaQuery.of(context).platformBrightness;
      return brightness == Brightness.dark;
    }
    return _themeMode == ThemeMode.dark;
  }

  @override
  Widget build(BuildContext context) {
    final isDark = _isDarkMode(context);

    return Scaffold(
      body: ListView(
        children: [
          // Dark mode option
          SwitchListTile(
            secondary: Icon(isDark ? Icons.dark_mode : Icons.light_mode),
            title: Text(isDark ? "Dark Mode" : "Light Mode"),
            value: isDark,
            onChanged: _toggleTheme,
          ),

          // const Divider(),

          // // Language option
          // ListTile(
          //   leading: const Icon(Icons.language),
          //   title: const Text("Language"),
          //   subtitle: const Text("English"), // you can make this dynamic
          //   trailing: const Icon(Icons.chevron_right),
          //   onTap: () {
          //
          //   },
          // ),
        ],
      ),
    );
  }
}
