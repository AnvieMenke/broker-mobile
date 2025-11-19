import 'package:broker_mobile/components/buttons/button.dart';
import 'package:broker_mobile/session/session_user.dart';
import 'package:broker_mobile/utils/fmt/fmt.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:broker_mobile/components/messages/notification.dart';

class UserSettingsForm extends StatefulWidget {
  final String name;
  final String email;
  final String role;
  final String mobileNo;
  final AuthenticationMode authenticationMode;

  final Future<void> Function({
    required String mobileNo,
    required AuthenticationMode authMethods,
  }) onSubmit;

  const UserSettingsForm({
    super.key,
    required this.name,
    required this.email,
    required this.role,
    required this.mobileNo,
    required this.authenticationMode,
    required this.onSubmit,
  });

  @override
  State<UserSettingsForm> createState() => _UserSettingsFormState();
}

class _UserSettingsFormState extends State<UserSettingsForm> {
  final _formKey = GlobalKey<FormState>();

  String _mobileNo = '';
  bool _isSubmitting = false;
  String? _errorMessage;

  late Map<String, bool> _authMethods;

  @override
  void initState() {
    super.initState();

    _mobileNo = widget.mobileNo.replaceAll(" ", "");
    _authMethods = {
      "Text": widget.authenticationMode.text,
      "Email": widget.authenticationMode.email,
      "Authenticator": widget.authenticationMode.authenticator,
    };
  }

  bool _validateAuthMethodSelection() {
    return _authMethods.values.any((v) => v);
  }

  Future<void> _handleSubmit() async {
    setState(() => _errorMessage = null);

    if (_formKey.currentState?.validate() ?? false) {
      if (!_validateAuthMethodSelection()) {
        setState(() {
          _errorMessage =
              "Please select at least one method to receive authentication code.";
        });
        return;
      }

      setState(() => _isSubmitting = true);
      try {
        final authenticationMode = AuthenticationMode(
          text: _authMethods["Text"] ?? false,
          email: _authMethods["Email"] ?? false,
          authenticator: _authMethods["Authenticator"] ?? false,
        );

        await widget.onSubmit(
          mobileNo: _mobileNo,
          authMethods: authenticationMode,
        );
        Notify.success('Changes saved successfully.');
      } catch (err) {
        setState(() {
          _errorMessage = FormatUtils.cleanErrorMessage(err);
        });
      } finally {
        setState(() => _isSubmitting = false);
      }
    }
  }

  Widget _buildAuthMethodCheckboxes() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _authMethods.entries.map((entry) {
        final isReadOnly = entry.key == "Authenticator";
        return CheckboxListTile(
          title: Text(entry.key),
          value: entry.value,
          onChanged: isReadOnly
              ? null
              : (val) {
                  setState(() {
                    _authMethods[entry.key] = val ?? false;
                  });
                },
          controlAffinity: ListTileControlAffinity.leading,
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Read-only fields
          const Text(
            'Name',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 6),
          TextFormField(
            initialValue: widget.name,
            readOnly: true,
            decoration: InputDecoration(
              hintText: 'Name',
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            'Email',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 6),
          TextFormField(
            initialValue: widget.email,
            readOnly: true,
            decoration: const InputDecoration(hintText: "Email"),
          ),
          const SizedBox(height: 12),
          const Text(
            'Role',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 6),
          TextFormField(
            initialValue: widget.role,
            readOnly: true,
            decoration: const InputDecoration(hintText: "Role"),
          ),
          const SizedBox(height: 12),
          const Text(
            'Mobile Number',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 6),
          // Mobile number
          IntlPhoneField(
            initialValue: widget.mobileNo,
            decoration: const InputDecoration(hintText: 'Mobile Number'),
            onChanged: (phone) {
              _mobileNo = phone.completeNumber;
            },
          ),
          const SizedBox(height: 16),

          // Auth method checkboxes
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Send Authentication Code Via:",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          _buildAuthMethodCheckboxes(),
          const SizedBox(height: 16),

          // Error message
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
            onPressed: _handleSubmit,
            isLoading: _isSubmitting,
          )
        ],
      ),
    );
  }
}
