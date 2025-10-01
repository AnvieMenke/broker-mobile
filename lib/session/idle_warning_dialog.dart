import 'dart:async';
import 'package:flutter/material.dart';

class IdleWarningDialog extends StatefulWidget {
  final Duration warningDuration;
  final VoidCallback onStay;
  final VoidCallback onLogout;

  const IdleWarningDialog({
    super.key,
    required this.warningDuration,
    required this.onStay,
    required this.onLogout,
  });

  @override
  State<IdleWarningDialog> createState() => _IdleWarningDialogState();
}

class _IdleWarningDialogState extends State<IdleWarningDialog> {
  late int remainingSeconds;
  Timer? _countdownTimer;

  @override
  void initState() {
    super.initState();
    remainingSeconds = widget.warningDuration.inSeconds;

    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() => remainingSeconds--);
      }
      if (remainingSeconds <= 0) {
        _countdownTimer?.cancel();
        Navigator.of(context).pop(); // close dialog
        widget.onLogout();
      }
    });
  }

  @override
  void dispose() {
    _countdownTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Are you still there?"),
      content: Text(
        "You will be logged out in $remainingSeconds seconds due to inactivity.",
      ),
      actions: [
        TextButton(
          onPressed: () {
            _countdownTimer?.cancel();
            Navigator.of(context).pop(); // close dialog
            widget.onStay();
          },
          child: const Text("Stay Logged In"),
        ),
        TextButton(
          onPressed: () {
            _countdownTimer?.cancel();
            Navigator.of(context).pop(); // close dialog
            widget.onLogout();
          },
          child: const Text("Logout"),
        ),
      ],
    );
  }
}
