import 'dart:async';
import 'package:broker_mobile/components/buttons/button.dart';
import 'package:broker_mobile/components/fields/field_otp.dart';
import 'package:broker_mobile/utils/fmt/fmt.dart';
import 'package:flutter/material.dart';
import '../../../service/auth_service.dart';
import '../auth/login.dart';

class OtpVerificationPage extends StatefulWidget {
  final String email;
  final String password;
  final String sessionKey;
  final String authenticationMode;
  final String correspondent;
  final DateTime expiryTime;

  const OtpVerificationPage({
    super.key,
    required this.email,
    required this.password,
    required this.sessionKey,
    required this.authenticationMode,
    required this.correspondent,
    required this.expiryTime,
  });

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  final _formKey = GlobalKey<FormState>();
  String _otp = '';
  bool _verifying = false;
  String? _error;

  Timer? _ticker;
  late DateTime _currentExpiryTime;
  late String _sessionKey;

  @override
  void initState() {
    super.initState();

    _currentExpiryTime = widget.expiryTime;
    _sessionKey = widget.sessionKey;

    // use ticker just to update UI every second
    _ticker = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _ticker?.cancel();
    super.dispose();
  }

  int get _remainingSeconds {
    final diff = _currentExpiryTime.difference(DateTime.now()).inSeconds;
    return diff > 0 ? diff : 0;
  }

  String _formatTime(int seconds) {
    final minutes = (seconds ~/ 60).toString().padLeft(2, '0');
    final secs = (seconds % 60).toString().padLeft(2, '0');
    return "$minutes:$secs";
  }

  String maskEmail(String email) {
    final parts = email.split('@');
    if (parts.length != 2) return email;

    final name = parts[0];
    final domain = parts[1];

    final visible = name.length <= 3 ? name : name.substring(0, 3);
    final masked = name.length > 3 ? '*' * (name.length - 3) : '';

    return '$visible$masked@$domain';
  }

  void _verifyOtp() async {
    if (_formKey.currentState?.validate() ?? false) {
      try {
        setState(() {
          _verifying = true;
          _error = null;
        });

        await validateAuthCode(
          email: widget.email,
          password: widget.password,
          authCode: _otp,
          authenticationMode: widget.authenticationMode,
          sessionKey: _sessionKey,
          correspondent: widget.correspondent,
        );

        WidgetsBinding.instance.addPostFrameCallback((_) {
          Navigator.of(context).pushReplacementNamed('/home');
        });
      } catch (err) {
        setState(() {
          _error = FormatUtils.cleanErrorMessage(err);
        });
      } finally {
        setState(() => _verifying = false);
      }
    }
  }

  void _resendCode() async {
    setState(() {
      _currentExpiryTime = DateTime.now().add(const Duration(minutes: 2));
      _error = null;
      _otp = '';
    });

    try {
      final resp = await loginWeb(
        widget.email,
        widget.password,
        widget.correspondent,
        widget.authenticationMode,
      );

      setState(() {
        _sessionKey = resp.sessionKey;
      });
    } catch (err) {
      setState(() {
        _error = FormatUtils.cleanErrorMessage(err);
      });
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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.verified_user_outlined,
                  size: 80,
                  color: Colors.blueAccent,
                ),
                const SizedBox(height: 24),
                Text(
                  "Enter OTP sent to ${maskEmail(widget.email)}",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      FieldOtp(onChanged: (value) => _otp = value),
                      if (_error != null)
                        Text(
                          _error!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.redAccent),
                        ),
                      Text(
                        _remainingSeconds > 0
                            ? "Expires in ${_formatTime(_remainingSeconds)}"
                            : "OTP expired. Please request a new one",
                        style: TextStyle(
                          color:
                              _remainingSeconds > 0 ? Colors.grey : Colors.red,
                          fontSize: 14,
                        ),
                      ),
                      if (_remainingSeconds <= 0)
                        TextButton(
                          onPressed: _resendCode,
                          child: const Text(
                            "Resend Code",
                            style: TextStyle(color: Colors.blueAccent),
                          ),
                        ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: 100,
                        child: Button(
                          label: "Verify",
                          isLoading: _verifying,
                          isDisabled: _remainingSeconds <= 0,
                          onPressed: _verifyOtp,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                TextButton.icon(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => const LoginPage()),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Theme.of(context).textTheme.bodyMedium?.color,
                  ),
                  label: Text(
                    "Back to Login",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
