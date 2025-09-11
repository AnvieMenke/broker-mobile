import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:broker_mobile/service/common-service.dart';

class AutoCompleteCorrespondent extends StatefulWidget {
  final String name;
  final String value;
  final bool disabled;
  final bool freeSolo;
  final bool required;
  final String? label;
  final bool error;
  final bool isAllStatus;
  final String type;
  final Function(String) onChange;

  const AutoCompleteCorrespondent({
    super.key,
    required this.name,
    required this.value,
    this.disabled = false,
    this.freeSolo = false,
    this.required = false,
    this.label,
    this.error = false,
    required this.isAllStatus,
    required this.type,
    required this.onChange,
  });

  @override
  State<AutoCompleteCorrespondent> createState() =>
      _AutoCompleteCorrespondentState();
}

class _AutoCompleteCorrespondentState extends State<AutoCompleteCorrespondent> {
  final TextEditingController _controller = TextEditingController();
  late final CommonService _service;

  @override
  void initState() {
    super.initState();
    _controller.text = widget.value;
    _service = CommonService();
  }

  @override
  void didUpdateWidget(covariant AutoCompleteCorrespondent oldWidget) {
    super.didUpdateWidget(oldWidget);
    // ✅ Update the text field if parent-provided value changes
    if (widget.value != oldWidget.value && widget.value != _controller.text) {
      _controller.text = widget.value;
    }
  }

  Future<List<String>> _getOptions(String pattern) async {
    try {
      final response = await _service.accessibleCorrespondent(
        isAllStatus: widget.isAllStatus,
        type: widget.type,
      );

      return response
          .where((c) => c.toUpperCase().contains(pattern.toUpperCase()))
          .toList();
    } catch (e) {
      debugPrint("Error fetching correspondents: $e");
      return [];
    }
  }

  void _handleOnBlur(String value, List<String> options) {
    if (widget.freeSolo) {
      widget.onChange(value);
      return;
    }

    if (options.contains(value)) {
      widget.onChange(value);
      return;
    }

    _controller.clear();
    widget.onChange('');
  }

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<String>(
      controller: _controller,
      suggestionsCallback: (pattern) async => _getOptions(pattern),
      itemBuilder: (context, suggestion) => ListTile(
        title: Text(
          suggestion,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),
      onSelected: (suggestion) {
        _controller.text = suggestion;
        widget.onChange(suggestion);
      },
      builder: (context, controller, focusNode) {
        return TextField(
          controller: controller,
          focusNode: focusNode,
          enabled: !widget.disabled,
          decoration: InputDecoration(
            labelText: widget.label ?? 'Correspondent',
            hintText: widget.label ?? 'Correspondent',
            errorText: widget.error ? 'Invalid input' : null,
            border: const OutlineInputBorder(),
          ),
          onChanged: (value) {
            if (widget.freeSolo) {
              widget.onChange(value);
            }
          },
          onEditingComplete: () async {
            final options = await _getOptions(_controller.text);
            _handleOnBlur(_controller.text, options);
          },
        );
      },
    );
  }
}
