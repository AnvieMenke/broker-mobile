import 'dart:convert';

import 'package:broker_mobile/components/buttons/button.dart';
import 'package:broker_mobile/components/fields/field_password.dart';
import 'package:broker_mobile/src/screens/auth/otp_verification_page.dart';
import 'package:broker_mobile/utils/fmt/fmt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:broker_mobile/components/messages/notification.dart';
import '../../../service/auth_service.dart';
import '../../../service/common_service.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _commonService = CommonService();
  final _storage = const FlutterSecureStorage();

  String _selectedAuthMethod = "Email";
  bool _loading = false;
  String? _error;

  List<String> _correspondents = [];
  String? _selectedCorrespondent;
  bool _showCorrespondentDropdown = false;
  String _session = "";

  String configPhoto = "";

  @override
  void initState() {
    super.initState();
    _loadAppConfig();
    _loadSavedCredentials();
  }

  Future<void> _loadAppConfig() async {
    try {
      final config = await _commonService.getAppConfig();
      setState(() {
        configPhoto = config.photo;
      });
    } catch (e) {
      debugPrint("❌ Failed to load AppConfig: $e");
    }
  }

  Future<void> _loadSavedCredentials() async {
    final savedEmail = await _storage.read(key: 'email');
    final savedPassword = await _storage.read(key: 'password');

    if (savedEmail != null && savedPassword != null) {
      setState(() {
        _emailController.text = savedEmail;
        _passwordController.text = savedPassword;
      });
    }
  }

  void _handleLogin({bool auto = false}) async {
    final email = _emailController.text.trim();
    final password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      setState(() {
        _error = 'Please enter both email and password.';
      });
      return;
    }

    setState(() {
      _loading = true;
      _error = null;
    });

    try {
      final response = await loginWeb(
        email,
        password,
        _selectedCorrespondent ?? '',
        _selectedAuthMethod,
      );
      _session = response.sessionKey;

      setState(() {
        _loading = false;
        _error = null;
        _correspondents = response.correspondents;
      });

      final savedEmail = await _storage.read(key: 'email');
      final savedPassword = await _storage.read(key: 'password');
      final neverSave = await _storage.read(key: 'never_save');

      if ((savedEmail == null || savedPassword == null) &&
          neverSave != 'true') {
        if (!mounted) return;
        final saveChoice = await showDialog<String>(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text('Save Password?'),
            content:
                const Text('Do you want to save your password for next time?'),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(ctx, 'save'),
                  child: const Text('Save')),
              TextButton(
                  onPressed: () => Navigator.pop(ctx, 'not_this_time'),
                  child: const Text('Not this time')),
              TextButton(
                  onPressed: () => Navigator.pop(ctx, 'never'),
                  child: const Text('Never')),
            ],
          ),
        );

        if (saveChoice == 'save') {
          await _storage.write(key: 'email', value: email);
          await _storage.write(key: 'password', value: password);
        } else if (saveChoice == 'never') {
          await _storage.write(key: 'never_save', value: 'true');
        }
      }

      if (_correspondents.length > 1) {
        Notify.info(
          'The email you entered has multiple accounts. Please select a correspondent.',
        );
        setState(() {
          _showCorrespondentDropdown = true;
          _selectedCorrespondent = null;
        });
        return;
      }

      _selectedCorrespondent = _correspondents.first;
      final expiryTime = DateTime.now().add(const Duration(seconds: 120));
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OtpVerificationPage(
              email: email,
              password: password,
              sessionKey: _session,
              authenticationMode: _selectedAuthMethod,
              correspondent: _selectedCorrespondent ?? '',
              expiryTime: expiryTime,
            ),
          ),
        );
      });
    } catch (e) {
      setState(() {
        _loading = false;
        _error = FormatUtils.cleanErrorMessage(e);
      });
    }
  }

  Widget _buildAuthMethodRadios() {
    return Align(
      alignment: Alignment.centerLeft,
      child: RadioGroup<String>(
        groupValue: _selectedAuthMethod,
        onChanged: (val) {
          setState(() {
            _selectedAuthMethod = val ?? "Email";
          });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Send code authentication via:"),
            Wrap(
              alignment: WrapAlignment.start,
              children: const [
                _AuthOption(value: "Text", label: "Text"),
                _AuthOption(value: "Email", label: "Email"),
                _AuthOption(value: "Authenticator", label: "Authenticator"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        configPhoto.isNotEmpty
            ? Image.memory(
                base64Decode(
                  configPhoto
                      .replaceAll(RegExp(r'data:image/[^;]+;base64,'), '')
                      .trim(),
                ),
                width: 100,
                height: 100,
              )
            : Image.asset(
                'assets/images/sas_logo.png',
                width: 100,
                height: 100,
                fit: BoxFit.contain,
              ),
        const SizedBox(height: 24),
        const Text(
          'Login Account',
          style: TextStyle(fontSize: 28),
        ),
        const SizedBox(height: 32),
        TextField(
          controller: _emailController,
          decoration: InputDecoration(
            hintText: 'Email',
            labelText: 'Email',
          ),
        ),
        const SizedBox(height: 16),
        FieldPassword(
          controller: _passwordController,
          label: "Password",
          validator: (v) =>
              v == null || v.isEmpty ? "password is required" : null,
        ),
        const SizedBox(height: 16),
        _buildAuthMethodRadios(),
        const SizedBox(height: 24),
        if (_error != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text(
              _error!,
              style: const TextStyle(color: Colors.redAccent),
            ),
          ),
        if (_showCorrespondentDropdown) ...[
          const SizedBox(height: 16),
          DropdownButtonFormField<String>(
            initialValue: _selectedCorrespondent,
            items: _correspondents.map((c) {
              return DropdownMenuItem(
                value: c,
                child: Text(c),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                _selectedCorrespondent = value;
              });
            },
            decoration: InputDecoration(
              labelText: "Correspondent",
            ),
          ),
          const SizedBox(height: 16),
          Button(
              label: 'Continue', onPressed: _handleLogin, isLoading: _loading),
        ],
        if (!_showCorrespondentDropdown)
          Button(label: 'Login', onPressed: _handleLogin, isLoading: _loading),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: _buildLoginForm(),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}

class _AuthOption extends StatelessWidget {
  final String value;
  final String label;

  const _AuthOption({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Radio<String>(value: value),
        Text(label),
      ],
    );
  }
}
