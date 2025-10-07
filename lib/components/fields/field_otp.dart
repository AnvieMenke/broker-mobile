import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class FieldOtp extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String)? onCompleted;
  final void Function(String)? onChanged;
  final bool autoFocus;
  final int length;
  final double maxWidth;
  final String? Function(String?)? validator;

  const FieldOtp({
    super.key,
    required this.controller,
    this.onCompleted,
    this.onChanged,
    this.autoFocus = true,
    this.length = 6,
    this.maxWidth = 300,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: PinCodeTextField(
          appContext: context,
          controller: controller,
          length: length,
          autoFocus: autoFocus,
          animationType: AnimationType.scale,
          keyboardType: TextInputType.number,
          cursorColor: Colors.white,
          validator: validator ??
              (v) => v == null || v.isEmpty || v.length != length
                  ? "Your validation code must be exactly $length digits."
                  : null,
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
          onChanged: onChanged ?? (_) {},
          onCompleted: onCompleted,
        ),
      ),
    );
  }
}
