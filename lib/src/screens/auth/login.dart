import 'package:broker_mobile/components/buttons/button.dart';
import 'package:broker_mobile/components/fields/field_password.dart';
import 'package:broker_mobile/src/screens/auth/otp_verification_page.dart';
import 'package:broker_mobile/utils/fmt/fmt.dart';
import 'package:flutter/material.dart';
import '../../../service/auth_service.dart';
import 'package:broker_mobile/components/messages/notification.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String _selectedAuthMethod = "Email";

  bool _loading = false;
  String? _error;

  List<String> _correspondents = [];
  String? _selectedCorrespondent;
  bool _showCorrespondentDropdown = false;
  String _session = "";

  void _handleLogin() async {
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
          email, password, _selectedCorrespondent ?? '', _selectedAuthMethod);
      _session = response.sessionKey;

      setState(() {
        _loading = false;
        _error = null;
        _correspondents = response.correspondents;
      });

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
        const Icon(Icons.lock_outline, size: 80, color: Colors.blueAccent),
        const SizedBox(height: 24),
        const Text(
          'Login',
          style: TextStyle(fontSize: 28),
        ),
        const SizedBox(height: 32),
        TextField(
          controller: _emailController,
          decoration: InputDecoration(
            hintText: 'Email',
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
