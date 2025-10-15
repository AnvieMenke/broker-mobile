import 'package:broker_mobile/components/containers/page_container.dart';
import 'package:broker_mobile/env.dart';
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

  void _onThemeChanged() {
    setState(() {
      _themeMode = themeManager.themeMode;
    });
  }

  @override
  void dispose() {
    themeManager.removeListener(_onThemeChanged);
    super.dispose();
  }

  Widget _buildThemeOption({
    required ThemeMode value,
    required String label,
    required IconData icon,
  }) {
    final isSelected = _themeMode == value;
    final isSystem = value == ThemeMode.system;

    final brightness = isSystem
        ? WidgetsBinding.instance.platformDispatcher.platformBrightness
        : (value == ThemeMode.dark ? Brightness.dark : Brightness.light);

    final iconColor =
        brightness == Brightness.dark ? Colors.white : Colors.black;

    final textColor = value == ThemeMode.dark
        ? Colors.white
        : (isSystem
            ? (brightness == Brightness.dark ? Colors.white : Colors.black)
            : Colors.black);

    return GestureDetector(
      onTap: () => themeManager.setTheme(value),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: brightness == Brightness.dark
              ? Colors.grey[850]
              : Colors.grey[200],
          border: Border.all(
            color: isSelected
                ? Theme.of(context).colorScheme.primary
                : Colors.grey.shade400,
            width: isSelected ? 3 : 1,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 48, color: iconColor),
            const SizedBox(height: 8),
            Text(
              label,
              style: TextStyle(
                color: textColor,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            const SizedBox(height: 4),
            Icon(
              isSelected ? Icons.radio_button_checked : Icons.radio_button_off,
              color: isSelected
                  ? Theme.of(context).colorScheme.primary
                  : Colors.grey,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      title: "App Settings",
      page: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  "Display",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.color_lens),
                title: Text("Theme Mode"),
              ),
              Row(
                children: [
                  Expanded(
                    child: _buildThemeOption(
                      value: ThemeMode.light,
                      label: 'Light',
                      icon: Icons.wb_sunny,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: _buildThemeOption(
                      value: ThemeMode.system,
                      label: 'System',
                      icon: Icons.brightness_auto,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: _buildThemeOption(
                      value: ThemeMode.dark,
                      label: 'Dark',
                      icon: Icons.nightlight_round,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              _biometricAvailable && AppEnv.enableBiometrics
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Divider(thickness: 1),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Text(
                            "Security",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SwitchListTile(
                          secondary: const Icon(Icons.fingerprint),
                          title: const Text("Enable Biometric Login"),
                          value: _useBiometrics,
                          onChanged: _toggleBiometrics,
                        ),
                      ],
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
