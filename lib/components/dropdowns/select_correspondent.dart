import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:broker_mobile/service/common_service.dart';
import '../../session/session.dart';

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
  List<String> _options = [];

  @override
  void initState() {
    super.initState();
    _controller.text = widget.value;
    _service = CommonService();
  }

  @override
  void didUpdateWidget(covariant AutoCompleteCorrespondent oldWidget) {
    super.didUpdateWidget(oldWidget);
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
      _options = response;
      return response
          .where((c) => c.toUpperCase().contains(pattern.toUpperCase()))
          .toList();
    } catch (e) {
      debugPrint("Error fetching correspondents: $e");
      return [];
    }
  }

  void _handleOnBlur(String value) {
    if (widget.freeSolo) {
      widget.onChange(value);
      return;
    }

    if (!_options.contains(value)) {
      _controller.clear();
      widget.onChange('');
    } else {
      widget.onChange(value);
    }
  }

  void _clearField() {
    _controller.clear();
    widget.onChange('');
    FocusScope.of(context).unfocus();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final user = sessionManager.user!;
    final isNotVisible =
        !user.isMultipleAccount || !user.isMultipleActiveAccount;
    if (isNotVisible) return const SizedBox.shrink();

    return TypeAheadField<String>(
      key: ValueKey(_controller.text),
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
        FocusScope.of(context).unfocus();
        setState(() {});
      },
      builder: (context, controller, focusNode) {
        return Focus(
          onFocusChange: (hasFocus) {
            if (!hasFocus) {
              _handleOnBlur(_controller.text);
            }
          },
          child: TextField(
            controller: controller,
            focusNode: focusNode,
            enabled: !widget.disabled,
            decoration: InputDecoration(
              labelText: widget.label ?? 'Correspondent',
              hintText: widget.label ?? 'Correspondent',
              errorText: widget.error ? 'Invalid input' : null,
              suffixIcon: controller.text.isNotEmpty && !widget.disabled
                  ? IconButton(
                      icon: const Icon(Icons.clear, size: 20),
                      onPressed: _clearField,
                    )
                  : null,
            ),
            onChanged: (value) {
              setState(() {});
              if (widget.freeSolo) {
                widget.onChange(value);
                return;
              }
              if (value.isEmpty) {
                widget.onChange('');
                return;
              }
            },
            onEditingComplete: () {
              _handleOnBlur(_controller.text);
            },
          ),
        );
      },
    );
  }
}
