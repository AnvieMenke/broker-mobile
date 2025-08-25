import 'dart:developer';
import 'package:flutter/material.dart';
import '../service/auth-service.dart';
import 'main_screen.dart';

class OtpVerificationPage extends StatefulWidget {
  final String email;
  final String password;
  final String sessionKey;
  final String authenticationMode;

  const OtpVerificationPage(
      {super.key,
      required this.email,
      required this.password,
      required this.sessionKey,
      required this.authenticationMode});

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  final _otpController = TextEditingController();
  bool _verifying = false;
  String? _error;

  /// Mask email after 3 characters, keeping domain visible
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
    final otp = _otpController.text.trim();

    if (otp.isEmpty) {
      setState(() => _error = 'Please enter the OTP.');
      return;
    }

    setState(() {
      _verifying = true;
      _error = null;
    });

    try {
      log('email: ${widget.email}, password: ${widget.password}, otp: $otp, sessionKey: ${widget.sessionKey}, authenticationMode: ${widget.authenticationMode}');
      await validateAuthCode(
        email: widget.email,
        password: widget.password,
        authCode: otp,
        authenticationMode:widget.authenticationMode,
        sessionKey: widget.sessionKey,
      );
      setState(() => _verifying = false);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainScreen()),
      );
    } catch (e) {
      setState(() {
        _verifying = false;
        _error = e.toString(); // show the real error
      });

      // Also print it in the debug console
      debugPrint("OTP Verification Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0C1D),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.verified_user_outlined,
                  size: 80, color: Colors.blueAccent),
              const SizedBox(height: 24),
              Text(
                "Enter OTP sent to ${maskEmail(widget.email)}",
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _otpController,
                keyboardType: TextInputType.number,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: '6-digit OTP',
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
              if (_error != null)
                Text(_error!, style: const TextStyle(color: Colors.redAccent)),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _verifying ? null : _verifyOtp,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: _verifying
                    ? const CircularProgressIndicator(color: Colors.white)
                    : const Text('Verify'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
