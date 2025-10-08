import 'package:flutter/material.dart';

enum ButtonVariant { primary, destructive }

class Button extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool isDisabled;
  final Color? backgroundColor;
  final Color foregroundColor;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final ButtonVariant variant;

  Color getBackgroundColor() {
    switch (variant) {
      case ButtonVariant.destructive:
        return Colors.redAccent;
      default:
        return backgroundColor ?? Colors.blueAccent;
    }
  }

  const Button({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
    this.isDisabled = false,
    this.variant = ButtonVariant.primary,
    this.backgroundColor = Colors.blueAccent,
    this.foregroundColor = Colors.white,
    this.borderRadius = 10,
    this.padding = const EdgeInsets.symmetric(vertical: 14),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith((states) {
            final baseColor = getBackgroundColor();
            if (states.contains(WidgetState.disabled)) {
              return baseColor.withValues(alpha: 0.6); // Slightly darker
            }
            return baseColor;
          }),
          foregroundColor: WidgetStateProperty.resolveWith((states) {
            return states.contains(WidgetState.disabled)
                ? foregroundColor.withValues(alpha: 0.6)
                : foregroundColor;
          }),
          textStyle: WidgetStateProperty.all(
            const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          padding: WidgetStateProperty.all(padding),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
        onPressed: isLoading || isDisabled ? null : onPressed,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Opacity(
              opacity: isLoading ? 0.7 : 1,
              child: Text(label),
            ),
            if (isLoading)
              const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
