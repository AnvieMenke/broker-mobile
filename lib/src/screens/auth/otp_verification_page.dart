import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import '../../../service/auth_service.dart';
import '../dashboard/main_screen.dart';
import '../auth/login.dart'; // <-- make sure you have a LoginPage

class OtpVerificationPage extends StatefulWidget {
  final String email;
  final String password;
  final String sessionKey;
  final String authenticationMode;
  final String correspondent;

  const OtpVerificationPage(
      {super.key,
      required this.email,
      required this.password,
      required this.sessionKey,
      required this.authenticationMode,
      required this.correspondent});

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  final _otpController = TextEditingController();
  bool _verifying = false;
  String? _error;

  Timer? _timer;
  int _remainingSeconds = 120; // 2 minutes = 120 seconds

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _otpController.dispose();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        setState(() {
          _remainingSeconds--;
        });
      } else {
        timer.cancel();
      }
    });
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
    if (_remainingSeconds <= 0) {
      setState(() => _error = "OTP expired. Please request a new one.");
      return;
    }

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
        authenticationMode: widget.authenticationMode,
        sessionKey: widget.sessionKey,
        correspondent: widget.correspondent,
      );
      setState(() => _verifying = false);
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MainScreen()),
        );
      });
    } catch (e) {
      setState(() {
        _verifying = false;
        _error = (e is Map && e['message'] != null)
            ? e['message']
            : (e.toString().contains('gRPC Error')
                ? RegExp(r'message: ([^,]+)')
                    .firstMatch(e.toString())
                    ?.group(1)
                    ?.trim()
                : e.toString());
      });
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
              const SizedBox(height: 8),
              Text(
                _remainingSeconds > 0
                    ? "Expires in ${_formatTime(_remainingSeconds)}"
                    : "OTP expired",
                style: TextStyle(
                  color: _remainingSeconds > 0 ? Colors.grey : Colors.red,
                  fontSize: 14,
                ),
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
                onPressed:
                    (_verifying || _remainingSeconds <= 0) ? null : _verifyOtp,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: _verifying
                    ? const CircularProgressIndicator(color: Colors.white)
                    : const Text('Verify'),
              ),
              const SizedBox(height: 20),
              TextButton.icon(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => const LoginPage()),
                  );
                },
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                label: const Text(
                  "Back to Login",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
