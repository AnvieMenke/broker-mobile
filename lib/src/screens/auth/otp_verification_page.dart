import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../service/auth_service.dart';
import '../dashboard/main_screen.dart';
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
  final _otpController = TextEditingController();
  bool _verifying = false;
  String? _error;

  Timer? _ticker;

  @override
  void initState() {
    super.initState();

    // use ticker just to update UI every second
    _ticker = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {}); // trigger rebuild, remaining time is recalculated
    });
  }

  @override
  void dispose() {
    _ticker?.cancel();
    _otpController.dispose();
    super.dispose();
  }

  int get _remainingSeconds {
    final diff = widget.expiryTime.difference(DateTime.now()).inSeconds;
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
    }
  }

  @override
  Widget build(BuildContext context) {
    final seconds = _remainingSeconds;

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
                const SizedBox(height: 8),
                Text(
                  seconds > 0
                      ? "Expires in ${_formatTime(seconds)}"
                      : "OTP expired",
                  style: TextStyle(
                    color: seconds > 0 ? Colors.grey : Colors.red,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 16),

                PinCodeTextField(
                  controller: _otpController,
                  appContext: context,
                  length: 6,
                  autoFocus: true,
                  animationType: AnimationType.scale,
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.white,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(8),
                    fieldHeight: 55,
                    fieldWidth: 45,
                    activeFillColor: Colors.blueAccent,
                    inactiveFillColor: Colors.grey,
                    activeColor: Colors.blueAccent,
                    selectedColor: Colors.blueAccent,
                    inactiveColor: Colors.grey,
                  ),
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  enableActiveFill: true,
                  onChanged: (value) {},
                  onCompleted: (value) {
                    _otpController.text = value;
                  },
                ),

                const SizedBox(height: 16),
                if (_error != null)
                  Text(
                    _error!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.redAccent),
                  ),
                const SizedBox(height: 16),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: (_verifying || seconds <= 0) ? null : _verifyOtp,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    child: _verifying
                        ? const SizedBox(
                      height: 20,
                      width: 20,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                      ),
                    )
                        : const Text(
                      'Verify',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
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
