import 'dart:async';
import 'package:broker_mobile/components/buttons/button.dart';
import 'package:broker_mobile/components/fields/field_otp.dart';
import 'package:broker_mobile/components/fields/field_password.dart';
import 'package:broker_mobile/service/auth_service.dart';
import 'package:broker_mobile/utils/fmt/fmt.dart';
import 'package:flutter/material.dart';
import '../../../service/user_service.dart';
import '../auth/login.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final userService = UserService();
  final _emailController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _verifying = false;
  bool _validating = false;
  bool _showCorrespondentDropdown = false;
  bool _showOtpAndPassword = false;

  late var externalAuthId = "";

  String? _selectedCorrespondent;
  String? _otp;
  List<String> _correspondents = [];

  Timer? _ticker;
  DateTime? _expiryTime;

  @override
  void dispose() {
    _ticker?.cancel();
    _emailController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  int get _remainingSeconds {
    if (_expiryTime == null) return 0;
    final diff = _expiryTime!.difference(DateTime.now()).inSeconds;
    return diff > 0 ? diff : 0;
  }

  String _formatTime(int seconds) {
    final minutes = (seconds ~/ 60).toString().padLeft(2, '0');
    final secs = (seconds % 60).toString().padLeft(2, '0');
    return "$minutes:$secs";
  }

  Future<void> _validateEmail() async {
    final email = _emailController.text.trim();

    if (!_formKey.currentState!.validate()) return;

    try {
      setState(() {
        _validating = true;
      });
      final resp = await userService.forgotPasswordCheckEmail(
        email,
        _selectedCorrespondent ?? '',
      );
      _correspondents = resp.correspondents;

      if (_correspondents.length > 1) {
        setState(() {
          _showCorrespondentDropdown = true;
          _validating = false;
        });
        return;
      }

      _selectedCorrespondent =
          _correspondents.isNotEmpty ? _correspondents.first : null;
      setState(() {
        _showCorrespondentDropdown = false;
        _showOtpAndPassword = true;
        _validating = false;
      });
    } catch (err) {
      setState(() {
        _validating = false;
      });
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            FormatUtils.cleanErrorMessage(err),
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }

  Future<void> _sendOtp() async {
    try {
      setState(() {
        _expiryTime = DateTime.now().add(const Duration(minutes: 2));
      });

      _ticker?.cancel();
      _ticker = Timer.periodic(const Duration(seconds: 1), (_) {
        setState(() {});
      });

      final response = await emailAuthCode(
          _emailController.text.trim(), _selectedCorrespondent ?? '');
      externalAuthId = response.externalAuthId;
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "OTP sent successfully",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 3),
        ),
      );
    } catch (err) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            FormatUtils.cleanErrorMessage(err),
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }

  Future<void> _resendCode() async {
    await _sendOtp();
  }

  Future<void> _verifyOtpAndResetPassword() async {
    if (!_formKey.currentState!.validate()) return;

    final newPass = _newPasswordController.text;

    setState(() {
      _verifying = true;
    });

    try {
      await userService.forgotPassword(_emailController.text,
          _selectedCorrespondent, externalAuthId, _otp, newPass);

      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            "Password reset successfully. Please login with your new password.",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 3),
        ),
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const LoginPage()),
      );
    } catch (err) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            FormatUtils.cleanErrorMessage(err),
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 3),
        ),
      );
    } finally {
      setState(() => _verifying = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 400),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const Icon(Icons.lock_reset,
                      size: 80, color: Colors.blueAccent),
                  const SizedBox(height: 16),
                  const Text(
                    "Forgot Password",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 32),
                  TextFormField(
                    controller: _emailController,
                    decoration: const InputDecoration(labelText: "Email"),
                    validator: (v) {
                      if (v == null || v.isEmpty) {
                        return "Email is required";
                      }
                      final emailRegex = RegExp(
                          r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
                      if (!emailRegex.hasMatch(v.trim())) {
                        return "Please enter a valid email format";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  if (_showCorrespondentDropdown)
                    DropdownButtonFormField<String>(
                      initialValue: _selectedCorrespondent,
                      items: _correspondents
                          .map(
                              (c) => DropdownMenuItem(value: c, child: Text(c)))
                          .toList(),
                      onChanged: (val) {
                        setState(() => _selectedCorrespondent = val);
                      },
                      decoration:
                          const InputDecoration(labelText: "Correspondent"),
                      validator: (v) {
                        if (v == null || v.isEmpty) {
                          return "Please select a correspondent";
                        }
                        return null;
                      },
                    ),
                  const SizedBox(height: 16),
                  if (!_showOtpAndPassword)
                    Button(
                      label: _showCorrespondentDropdown
                          ? "Continue"
                          : "Validate Email",
                      isLoading: _validating,
                      onPressed: _validateEmail,
                    ),
                  if (_showOtpAndPassword) ...[
                    FieldPassword(
                        controller: _newPasswordController,
                        label: "New Password",
                        validator: (v) {
                          if (v == null || v.isEmpty) {
                            return "Password is required";
                          }
                          if (!RegExp(r'[A-Z]').hasMatch(v)) {
                            return "Password must contain at least\none uppercase letter";
                          }
                          if (!RegExp(r'\d').hasMatch(v)) {
                            return "Password must contain at least\none number";
                          }
                          if (v.length < 8) {
                            return "Password must be at least 8 characters";
                          }
                          return null;
                        }),
                    const SizedBox(height: 12),
                    FieldPassword(
                      controller: _confirmPasswordController,
                      label: "Confirm Password",
                      validator: (v) {
                        if (v == null || v.isEmpty) {
                          return "Please confirm your password";
                        }
                        if (v != _newPasswordController.text) {
                          return "Passwords do not match";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    if (_expiryTime == null)
                      Button(
                        label: "Send OTP",
                        onPressed: _sendOtp,
                      ),
                    if (_expiryTime != null) ...[
                      const SizedBox(height: 12),
                      FieldOtp(onChanged: (val) => _otp = val),
                      if (_remainingSeconds <= 0)
                        TextButton(
                          onPressed: _resendCode,
                          child: const Text("Resend Code"),
                        ),
                      Text(
                        _remainingSeconds > 0
                            ? "OTP expires in ${_formatTime(_remainingSeconds)}"
                            : "OTP expired. Please resend.",
                        style: TextStyle(
                          color:
                              _remainingSeconds > 0 ? Colors.grey : Colors.red,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Button(
                        label: "Reset Password",
                        isLoading: _verifying,
                        isDisabled: _remainingSeconds <= 0,
                        onPressed: _verifyOtpAndResetPassword,
                      ),
                    ],
                  ],
                  const SizedBox(height: 24),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => const LoginPage()),
                      );
                    },
                    icon: const Icon(Icons.arrow_back),
                    label: const Text("Back to Login"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
