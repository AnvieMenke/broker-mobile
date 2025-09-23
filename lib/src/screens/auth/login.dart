
import 'package:broker_mobile/src/screens/auth/otp_verification_page.dart';
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
  bool _loading = false;
  String? _error;

  List<String> _correspondents = [];
  String? _selectedCorrespondent;
  bool _showCorrespondentDropdown = false;
  String _session = "";

  void _handleLogin() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text;
    const authenticationMode = 'email';

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
      final response =
          await loginWeb(email, password, _selectedCorrespondent ?? '');
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
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OtpVerificationPage(
              email: email,
              password: password,
              sessionKey: _session,
              authenticationMode: authenticationMode,
              correspondent: _selectedCorrespondent ?? '',
            ),
          ),
        );
      });
    } catch (e) {
      setState(() {
        _loading = false;
        _error = (e is Map && e['message'] != null)
            ? e['message']
            : (e.toString().contains('gRPC Error')
                ? RegExp(r'message: ([^,]+)')
                    .firstMatch(e.toString())
                    ?.group(1)
                    ?.trim()
                : e.toString());
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0C1D),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.lock_outline,
                  size: 80, color: Colors.blueAccent),
              const SizedBox(height: 24),
              const Text(
                'Login',
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
              const SizedBox(height: 32),
              TextField(
                controller: _emailController,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: const Color(0xFF1E1B2E),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: const Color(0xFF1E1B2E),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
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
                      child:
                          Text(c, style: const TextStyle(color: Colors.white)),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedCorrespondent = value;
                    });
                  },
                  decoration: InputDecoration(
                    labelText: "Select Correspondent",
                    labelStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: const Color(0xFF1E1B2E),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  dropdownColor: const Color(0xFF1E1B2E),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _selectedCorrespondent == null
                        ? null
                        : () {
                            _handleLogin();
                          },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child:
                        const Text('Continue', style: TextStyle(fontSize: 16)),
                  ),
                ),
              ],
              if (!_showCorrespondentDropdown)
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _loading ? null : _handleLogin,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: _loading
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text('Login', style: TextStyle(fontSize: 16)),
                  ),
                ),
            ],
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
