import 'package:flutter/material.dart';

Future<bool> confirmation(
  BuildContext context, {
  required String message,
  String title = 'Confirmation',
  String confirmText = 'Yes',
  String cancelText = 'Cancel',
}) async {
  final result = await showDialog<bool>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(cancelText),
        ),
        ElevatedButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: Text(confirmText),
        ),
      ],
    ),
  );

  return result ?? false; // if dismissed, treat as "cancel"
}
