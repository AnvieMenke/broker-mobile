import 'package:broker_mobile/components/buttons/button.dart';
import 'package:broker_mobile/components/containers/page_container.dart';
import 'package:broker_mobile/components/fields/field_otp.dart';
import 'package:broker_mobile/components/messages/confirmation.dart';
import 'package:broker_mobile/components/messages/notification.dart';
import 'package:broker_mobile/service/user_service.dart';
import 'package:broker_mobile/utils/fmt/fmt.dart';
import 'package:flutter/material.dart';

class AuthenticatorPage extends StatefulWidget {
  const AuthenticatorPage({super.key});

  @override
  State<AuthenticatorPage> createState() => _AuthenticatorPageState();
}

class _AuthenticatorPageState extends State<AuthenticatorPage> {
  final _formKey = GlobalKey<FormState>();
  final _otpController = TextEditingController();
  String _qrCodeUrl = '';
  bool _hasAuthenticator = false;

  bool _isSubmitting = false;
  String? _errorMessage;

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final data = await UserService().getUserOtpAuthUrl();
    setState(() {
      _qrCodeUrl = data.url;
      _hasAuthenticator = data.hasAuthenticator;
    });
  }

  Future<void> _handleSubmit() async {
    setState(() => _errorMessage = null);

    if (_formKey.currentState?.validate() ?? false) {
      setState(() => _isSubmitting = true);
      try {
        await UserService().updateUserOtpAuth(_otpController.text);
        Notify.success('Authenticator setup successful.');
      } catch (err) {
        setState(() {
          _errorMessage = FormatUtils.cleanErrorMessage(err);
        });
      } finally {
        setState(() => _isSubmitting = false);
      }
    }
  }

  Future<void> _removeAuthenticator() async {
    final confirmed = await confirmation(
      context,
      message: 'Are you sure you want to remove your MFA setup?',
    );

    if (confirmed) {
      await UserService().removeUserOtpAuth();
      Notify.success('MFA setup removed successfully.');

      if (!mounted) return;
      if (Navigator.of(context).canPop()) {
        Navigator.of(context).pop();
      } else {
        Navigator.of(context).pushReplacementNamed('/settings');
      }
    }
  }

  String description() {
    final intro = _hasAuthenticator
        ? "You already have an active authenticator. To reconnect or add a new device, scan the QR code using your authenticator app."
        : "Scan the QR code with your authenticator app.";

    return "$intro Then enter the validation code to complete the setup and click submit.";
  }

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      title: "Authenticator Setup",
      page: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Setup 2-Factor Authenticator for Login",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
          ),
          const SizedBox(height: 8),
          Text(description()),
          const SizedBox(height: 24),

          // QR Code Display (optional)
          if (_qrCodeUrl.isNotEmpty)
            Center(
              child: Image.network(
                _qrCodeUrl,
                width: 200,
                height: 200,
                errorBuilder: (_, __, ___) =>
                    const Text('Failed to load QR code.'),
              ),
            ),

          const SizedBox(height: 32),
          Form(
            key: _formKey,
            child: Column(
              children: [
                FieldOtp(
                  controller: _otpController,
                  onCompleted: (value) => _otpController.text = value,
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
                Row(
                  children: [
                    Expanded(
                      child: Button(
                        label: "Remove Authenticator",
                        variant: ButtonVariant.destructive,
                        isLoading: _isSubmitting,
                        onPressed: _removeAuthenticator,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Button(
                        label: "Submit",
                        isLoading: _isSubmitting,
                        onPressed: _handleSubmit,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
