import 'dart:convert';

import 'package:broker_mobile/components/buttons/button.dart';
import 'package:broker_mobile/components/fields/field_password.dart';
import 'package:broker_mobile/src/screens/auth/forgot_password.dart';
import 'package:broker_mobile/src/screens/auth/otp_verification_page.dart';
import 'package:broker_mobile/utils/fmt/fmt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:broker_mobile/components/messages/notification.dart';
import '../../../service/auth_service.dart';

class SavedAccount {
  final String email;
  final String password;

  SavedAccount({required this.email, required this.password});

  Map<String, dynamic> toJson() => {
        'email': email,
        'password': password,
      };

  factory SavedAccount.fromJson(Map<String, dynamic> json) => SavedAccount(
        email: json['email'],
        password: json['password'],
      );
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _storage = const FlutterSecureStorage();

  String _selectedAuthMethod = "Email";
  bool _loading = false;
  String? _error;

  List<String> _correspondents = [];
  String? _selectedCorrespondent;
  bool _showCorrespondentDropdown = false;
  String _session = "";

  String configPhoto = "";

  List<SavedAccount> _savedAccounts = [];
  OverlayEntry? _overlayEntry;
  final LayerLink _layerLink = LayerLink();

  @override
  void initState() {
    super.initState();
    _loadSavedCredentials();
  }

  Future<void> _loadSavedCredentials() async {
    final savedAccountsJson = await _storage.read(key: 'accounts');
    final lastUsedEmail = await _storage.read(key: 'last_used_email');

    if (savedAccountsJson != null) {
      final decoded = jsonDecode(savedAccountsJson) as List<dynamic>;
      _savedAccounts =
          decoded.map((accJson) => SavedAccount.fromJson(accJson)).toList();

      if (lastUsedEmail != null) {
        final last = _savedAccounts.firstWhere(
          (acc) => acc.email == lastUsedEmail,
          orElse: () => _savedAccounts.isNotEmpty
              ? _savedAccounts.first
              : SavedAccount(email: '', password: ''),
        );
        _emailController.text = last.email;
        _passwordController.text = last.password;
      }
      setState(() {});
    }
  }

  Future<void> _saveAccount(String email, String password) async {
    List<SavedAccount> savedAccounts = List.from(_savedAccounts);
    if (!savedAccounts.any((acc) => acc.email == email)) {
      savedAccounts.add(SavedAccount(email: email, password: password));
      await _storage.write(
        key: 'accounts',
        value: jsonEncode(savedAccounts.map((a) => a.toJson()).toList()),
      );
      setState(() {
        _savedAccounts = savedAccounts;
      });
    }
  }

  void _showSuggestions() {
    _overlayEntry?.remove();
    _overlayEntry = _createOverlay();
    Overlay.of(context).insert(_overlayEntry!);
  }

  void _hideSuggestions() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  OverlayEntry _createOverlay() {
    final filtered = _savedAccounts
        .where((acc) => acc.email
            .toLowerCase()
            .contains(_emailController.text.toLowerCase()))
        .toList();

    return OverlayEntry(
      builder: (context) => Positioned(
        left: 24,
        right: 24,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: const Offset(0, 60),
          child: Material(
            elevation: 4.0,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 150),
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children: filtered
                    .map(
                      (acc) => ListTile(
                        title: Text(acc.email),
                        onTap: () {
                          _emailController.text = acc.email;
                          _passwordController.text = acc.password;
                          _hideSuggestions();
                        },
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
      ),
    );
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

      if (_correspondents.length > 1 && _selectedCorrespondent == null) {
        Notify.info(
          'The email you entered has multiple accounts. Please select a correspondent.',
        );
        setState(() {
          _showCorrespondentDropdown = true;
        });
        return;
      }

      _selectedCorrespondent ??= _correspondents.first;

      final accountAlreadySaved = _savedAccounts
          .any((acc) => acc.email == email && acc.password == password);

      if (accountAlreadySaved) {
        await _storage.write(key: 'last_used_email', value: email);
      }

      if (!accountAlreadySaved) {
        final neverSave = await _storage.read(key: 'never_save');
        if (neverSave != 'true') {
          if (!mounted) return;
          final saveChoice = await showDialog<String>(
            context: context,
            builder: (ctx) => AlertDialog(
              title: const Text('Save Password?'),
              content: const Text(
                  'Do you want to save your password for next time?'),
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
            await _saveAccount(email, password);
          } else if (saveChoice == 'never') {
            await _storage.write(key: 'never_save', value: 'true');
          }
        }
      }

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

  Widget _buildEmailField() {
    return CompositedTransformTarget(
      link: _layerLink,
      child: TextField(
        controller: _emailController,
        decoration: const InputDecoration(
          hintText: 'Email',
          labelText: 'Email',
        ),
        onChanged: (value) {
          _showSuggestions();
        },
        onTap: () {
          if (_overlayEntry == null) _showSuggestions();
        },
      ),
    );
  }

  Widget _buildLoginForm() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/sas_logo.png',
          width: 100,
          height: 100,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 16),
        const Text(
          'Login Account',
          style: TextStyle(fontSize: 28),
        ),
        const SizedBox(height: 32),
        _buildEmailField(),
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
        ],
        const SizedBox(height: 16),
        Button(
          label: _showCorrespondentDropdown ? 'Continue' : 'Login',
          onPressed:
              (_showCorrespondentDropdown && _selectedCorrespondent == null)
                  ? null
                  : _handleLogin,
          isLoading: _loading,
        ),
        const SizedBox(height: 8),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const ForgotPasswordPage(),
              ),
            );
          },
          child: const Text(
            'Forgot Password?',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _overlayEntry?.remove();
        _overlayEntry = null;
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
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
