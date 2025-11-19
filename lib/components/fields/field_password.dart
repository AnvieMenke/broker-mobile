import 'package:flutter/material.dart';

class FieldPassword extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final String? Function(String?)? validator;
  final bool? autoFocus;
  final bool? showLabelText;

  const FieldPassword({
    super.key,
    required this.controller,
    required this.label,
    this.validator,
    this.autoFocus,
    this.showLabelText = true,
  });

  @override
  State<FieldPassword> createState() => _FieldPasswordState();
}

class _FieldPasswordState extends State<FieldPassword> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _obscure,
      autofocus: widget.autoFocus ?? false,
      decoration: InputDecoration(
        labelText: (widget.showLabelText == true) ? widget.label : null,
        suffixIcon: IconButton(
          icon: Icon(
            _obscure ? Icons.visibility_off : Icons.visibility,
          ),
          onPressed: () {
            setState(() {
              _obscure = !_obscure;
            });
          },
        ),
      ),
      validator: widget.validator,
    );
  }
}
