import 'package:broker_mobile/components/buttons/button.dart';
import 'package:broker_mobile/components/fields/field_password.dart';
import 'package:broker_mobile/utils/fmt/fmt.dart';
import 'package:flutter/material.dart';

class ChangePasswordForm extends StatefulWidget {
  final String email;
  final Future<void> Function({
    required String oldPassword,
    required String newPassword,
  }) onSubmit;

  // returns `null` if success, otherwise an error string

  const ChangePasswordForm({
    super.key,
    required this.email,
    required this.onSubmit,
  });

  @override
  State<ChangePasswordForm> createState() => _ChangePasswordFormState();
}

class _ChangePasswordFormState extends State<ChangePasswordForm> {
  final _formKey = GlobalKey<FormState>();
  final _oldPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _isSubmitting = false;
  String? _errorMessage;

  @override
  void dispose() {
    _oldPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }
    if (value.length < 8) {
      return "Password must be at least 8 characters long";
    }
    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return "Password must contain at least one lowercase letter";
    }
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return "Password must contain at least one uppercase letter";
    }
    if (!RegExp(r'[0-9]').hasMatch(value)) {
      return "Password must contain at least one number";
    }
    if (!RegExp(r'[!@#$%-_]').hasMatch(value)) {
      return "Password must contain at least one special character (!@#\$%-_)";
    }
    if (value.contains(" ")) {
      return "Password cannot contain white spaces";
    }
    return null;
  }

  Future<void> _handleSubmit() async {
    setState(() {
      _errorMessage = null;
    });
    if (_formKey.currentState?.validate() ?? false) {
      setState(() => _isSubmitting = true);
      try {
        await widget.onSubmit(
          oldPassword: _oldPasswordController.text,
          newPassword: _newPasswordController.text,
        );
      } catch (err) {
        setState(() {
          _errorMessage = FormatUtils.cleanErrorMessage(err);
        });
      } finally {
        setState(() => _isSubmitting = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Note: You will be logged out after changing password.",
          style: TextStyle(color: Colors.red),
        ),
        const SizedBox(height: 16),
        Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Email',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 6),
              TextFormField(
                initialValue: widget.email,
                readOnly: true,
                decoration: const InputDecoration(hintText: "Email"),
              ),
              const SizedBox(height: 12),
              const Text(
                'Old Password',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 6),
              FieldPassword(
                controller: _oldPasswordController,
                label: "Old Password",
                showLabelText: false,
                validator: (v) =>
                    v == null || v.isEmpty ? "Old password is required" : null,
              ),
              const SizedBox(height: 12),
              const Text(
                'New Password',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 6),
              FieldPassword(
                controller: _newPasswordController,
                label: "New Password",
                showLabelText: false,
                validator: _validatePassword,
              ),
              const SizedBox(height: 12),
              const Text(
                'Confirm Password',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 6),
              FieldPassword(
                controller: _confirmPasswordController,
                label: "Confirm New Password",
                showLabelText: false,
                validator: (v) {
                  if (v == null || v.isEmpty) {
                    return "Confirm password is required";
                  }
                  if (v != _newPasswordController.text) {
                    return "Passwords do not match";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              if (_errorMessage != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    _errorMessage!,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              Button(
                  label: "Submit",
                  isLoading: _isSubmitting,
                  onPressed: _handleSubmit),
            ],
          ),
        ),
      ],
    );
  }
}
