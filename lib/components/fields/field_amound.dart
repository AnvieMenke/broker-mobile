import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class ThousandsSeparatorInputFormatter extends TextInputFormatter {
  final int maxDecimalDigits;
  final String locale;
  late final NumberFormat _formatter;

  ThousandsSeparatorInputFormatter(
      {this.maxDecimalDigits = 2, this.locale = 'en_US'}) {
    _formatter = NumberFormat('#,##0', locale);
  }

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final selectionFromRight = newValue.text.length - newValue.selection.end;

    String newText = newValue.text.replaceAll(',', '');
    if (newText.isEmpty) return newValue.copyWith(text: '');

    final firstDotIndex = newText.indexOf('.');
    if (firstDotIndex >= 0) {
      final before = newText.substring(0, firstDotIndex + 1);
      final after = newText.substring(firstDotIndex + 1).replaceAll('.', '');
      newText = before + after;
    }

    final parts = newText.split('.');
    String integerPart = parts[0].replaceAll(RegExp('[^0-9]'), '');
    String decimalPart =
        parts.length > 1 ? parts[1].replaceAll(RegExp('[^0-9]'), '') : '';

    if (decimalPart.length > maxDecimalDigits) {
      decimalPart = decimalPart.substring(0, maxDecimalDigits);
    }

    final hasTrailingDot = newValue.text.endsWith('.') && decimalPart.isEmpty;

    int leadingZeros = 0;
    while (
        leadingZeros < integerPart.length && integerPart[leadingZeros] == '0') {
      leadingZeros++;
    }
    final prefixZeros = integerPart.substring(0, leadingZeros);
    final rest = integerPart.substring(leadingZeros);

    String formattedInt;
    if (rest.isEmpty) {
      formattedInt = prefixZeros.isEmpty ? '0' : prefixZeros;
    } else {
      try {
        final formattedRest = _formatter.format(int.parse(rest));
        formattedInt = prefixZeros + formattedRest;
      } catch (_) {
        formattedInt = integerPart;
      }
    }

    String result;
    if (hasTrailingDot) {
      result = '$formattedInt.';
    } else if (decimalPart.isNotEmpty) {
      result = '$formattedInt.$decimalPart';
    } else {
      result = formattedInt;
    }

    int caretIndex = result.length - selectionFromRight;
    if (caretIndex < 0) caretIndex = 0;
    if (caretIndex > result.length) caretIndex = result.length;

    return TextEditingValue(
      text: result,
      selection: TextSelection.collapsed(offset: caretIndex),
    );
  }
}

class FieldAmount extends StatefulWidget {
  final String? initial;
  final String? prefixText;
  final int maxDecimalDigits;
  final ValueChanged<String>? onChangedRaw;
  final InputDecoration? decoration;

  const FieldAmount({
    super.key,
    this.initial,
    this.prefixText,
    this.maxDecimalDigits = 2,
    this.onChangedRaw,
    this.decoration,
  });

  @override
  FieldAmountState createState() => FieldAmountState();
}

class FieldAmountState extends State<FieldAmount> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;
  late final ThousandsSeparatorInputFormatter _formatter;
  final _intFormat = NumberFormat('#,##0', 'en_US');

  @override
  void initState() {
    super.initState();
    _formatter = ThousandsSeparatorInputFormatter(
        maxDecimalDigits: widget.maxDecimalDigits);
    _controller =
        TextEditingController(text: _formatForDisplay(widget.initial ?? ''));
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  String _formatForDisplay(String raw) {
    if (raw.isEmpty) return '';
    String s = raw.replaceAll(',', '');
    final firstDot = s.indexOf('.');
    if (firstDot >= 0) {
      final before = s.substring(0, firstDot + 1);
      final after = s.substring(firstDot + 1).replaceAll('.', '');
      s = before + after;
    }
    final parts = s.split('.');
    String intPart = parts[0].replaceAll(RegExp('[^0-9]'), '');
    String decPart =
        parts.length > 1 ? parts[1].replaceAll(RegExp('[^0-9]'), '') : '';
    if (decPart.length > widget.maxDecimalDigits) {
      decPart = decPart.substring(0, widget.maxDecimalDigits);
    }

    intPart = intPart.replaceFirst(RegExp(r'^0+'), '');
    if (intPart.isEmpty) intPart = '0';

    String formattedInt;
    try {
      formattedInt = _intFormat.format(int.parse(intPart));
    } catch (_) {
      formattedInt = intPart;
    }

    return decPart.isNotEmpty ? '$formattedInt.$decPart' : formattedInt;
  }

  void _onFocusChange() {
    if (!_focusNode.hasFocus) {
      final current = _controller.text;
      if (current.isEmpty) return;

      String raw = current.replaceAll(',', '');
      final parts = raw.split('.');
      String intPart = parts[0].replaceAll(RegExp('[^0-9]'), '');
      String decPart =
          parts.length > 1 ? parts[1].replaceAll(RegExp('[^0-9]'), '') : '';
      intPart = intPart.replaceFirst(RegExp(r'^0+'), '');
      if (intPart.isEmpty) intPart = '0';
      if (decPart.length > widget.maxDecimalDigits) {
        decPart = decPart.substring(0, widget.maxDecimalDigits);
      }

      String formattedInt;
      try {
        formattedInt = _intFormat.format(int.parse(intPart));
      } catch (_) {
        formattedInt = intPart;
      }

      final newText =
          decPart.isNotEmpty ? '$formattedInt.$decPart' : formattedInt;
      if (newText != current) {
        _controller.text = newText;
      }

      widget.onChangedRaw?.call(newText.replaceAll(',', ''));
    }
  }

  @override
  Widget build(BuildContext context) {
    final InputDecoration mergedDecoration = widget.decoration != null
        ? (widget.prefixText != null
            ? widget.decoration!.copyWith(prefixText: widget.prefixText)
            : widget.decoration!)
        : InputDecoration(prefixText: widget.prefixText);

    return TextFormField(
      controller: _controller,
      focusNode: _focusNode,
      decoration: mergedDecoration,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[\d.]')),
        _formatter,
      ],
      onTap: () {
        final t = _controller.text.trim();
        if (t == '0' || t == '0.0' || t == '0.00') _controller.clear();
      },
      onChanged: (value) {
        widget.onChangedRaw?.call(value.replaceAll(',', ''));
      },
    );
  }
}
