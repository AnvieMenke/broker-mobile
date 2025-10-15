import 'package:broker_mobile/components/containers/page_container.dart';
import 'package:flutter/material.dart';
import 'package:broker_mobile/session/session.dart';
import 'package:local_auth/local_auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppSettingsPage extends StatefulWidget {
  const AppSettingsPage({super.key});

  @override
  State<AppSettingsPage> createState() => _AppSettingsPageState();
}

class _AppSettingsPageState extends State<AppSettingsPage> {
  late ThemeMode _themeMode;
  final _storage = const FlutterSecureStorage();
  final _auth = LocalAuthentication();

  bool _biometricAvailable = false;
  bool _useBiometrics = false;

  @override
  void initState() {
    super.initState();
    _themeMode = themeManager.themeMode; // Load current theme
    themeManager.addListener(_onThemeChanged);
    _loadBiometricSettings();
  }

  Future<void> _loadBiometricSettings() async {
    final canCheck = await _auth.canCheckBiometrics;
    final stored = await _storage.read(key: 'use_biometrics');

    setState(() {
      _biometricAvailable = canCheck;
      _useBiometrics = stored == 'true';
    });
  }

  Future<void> _toggleBiometrics(bool requestedEnable) async {
    if (!_biometricAvailable) return;

    if (requestedEnable) {
      try {
        final authenticated = await _auth.authenticate(
          localizedReason: 'Authenticate to enable biometrics',
          options: const AuthenticationOptions(
            biometricOnly: true,
            stickyAuth: true,
          ),
        );

        if (authenticated) {
          // Only enable if scan succeeds
          setState(() => _useBiometrics = true);
          await _storage.write(key: 'use_biometrics', value: 'true');
        } else {
          // Scan failed or canceled → keep toggle OFF
          setState(() => _useBiometrics = false);
        }
      } catch (e) {
        setState(() => _useBiometrics = false);
      }
    } else {
      setState(() => _useBiometrics = false);
      await _storage.write(key: 'use_biometrics', value: 'false');
    }
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

    return PageContainer(
      title: "App Settings",
      page: Column(
        children: [
          // Dark mode toggle
          SwitchListTile(
            secondary: Icon(isDark ? Icons.dark_mode : Icons.light_mode),
            title: Text(isDark ? "Dark Mode" : "Light Mode"),
            value: isDark,
            onChanged: _toggleTheme,
          ),

          // Biometric toggle
          if (_biometricAvailable)
            SwitchListTile(
              secondary: const Icon(Icons.fingerprint),
              title: const Text("Enable Biometric Login"),
              value: _useBiometrics,
              onChanged: _toggleBiometrics,
            ),

          // Add more settings here if needed
          // ListTile(
          //   leading: const Icon(Icons.language),
          //   title: const Text("Language"),
          //   subtitle: const Text("English"),
          //   trailing: const Icon(Icons.chevron_right),
          //   onTap: () {},
          // ),
        ],
      ),
    );
  }
}
