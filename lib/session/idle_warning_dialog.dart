import 'dart:async';
import 'package:flutter/material.dart';

class IdleWarningDialog extends StatefulWidget {
  final Duration warningDuration;
  final VoidCallback onStay;
  final void Function(bool showNotification) onLogout;

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
    const second1 = Duration(seconds: 1);
    remainingSeconds = widget.warningDuration.inSeconds + second1.inSeconds;
    if (remainingSeconds < 0) {
      remainingSeconds = 0;
    }

    _countdownTimer = Timer.periodic(second1, (timer) {
      if (mounted) {
        setState(() => remainingSeconds--);
      }
      if (remainingSeconds <= 0) {
        _countdownTimer?.cancel();
        Navigator.of(context).pop(); // close dialog
        widget.onLogout(true);
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
            widget.onLogout(false);
          },
          child: const Text("Logout"),
        ),
      ],
    );
  }
}
