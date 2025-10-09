import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/services.dart';

class FieldOtp extends StatelessWidget {
  final void Function(String)? onCompleted;
  final void Function(String)? onChanged;
  final bool autoFocus;
  final int length;
  final double maxWidth;
  final String? Function(String?)? validator;

  const FieldOtp({
    super.key,
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
          length: length,
          autoFocus: autoFocus,
          animationType: AnimationType.scale,
          keyboardType: TextInputType.number,
          backgroundColor: Colors.transparent,
          validator: validator ??
              (v) => v == null || v.isEmpty || v.length != length
                  ? "Your validation code must be exactly $length digits."
                  : null,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly, // ✅ allows only 0–9
          ],
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(8),
            fieldHeight: 55,
            fieldWidth: 45,
            activeFillColor: Colors.transparent,
            inactiveFillColor: Colors.transparent,
            activeColor: Colors.blueAccent,
            selectedColor: Colors.blueAccent.shade700,
            inactiveColor: Colors.grey,
            selectedFillColor: Colors.blueAccent.shade100,
            errorBorderColor: Colors.redAccent,
          ),
          textStyle: const TextStyle(
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
