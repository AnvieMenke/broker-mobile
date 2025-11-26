import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:broker_mobile/service/common_service.dart';
import 'package:broker_mobile/session/session.dart';

class AutoCompleteAccountName extends StatefulWidget {
  final String name;
  final String value;
  final bool disabled;
  final bool freeSolo;
  final bool required;
  final bool error;
  final bool isAllStatus;
  final bool isActive;
  final String correspondent;
  final Function(Map<String, dynamic>) onChange;
  final bool reset;

  const AutoCompleteAccountName({
    super.key,
    required this.name,
    required this.value,
    this.disabled = false,
    this.freeSolo = false,
    this.required = false,
    this.error = false,
    this.isAllStatus = false,
    this.isActive = true,
    this.correspondent = '',
    required this.onChange,
    this.reset = false,
  });

  @override
  State<AutoCompleteAccountName> createState() =>
      _AutoCompleteAccountNameState();
}

class _AutoCompleteAccountNameState extends State<AutoCompleteAccountName> {
  final TextEditingController _controller = TextEditingController();
  late final CommonService _service;
  List<Map<String, dynamic>> _options = [];

  @override
  void initState() {
    super.initState();
    _controller.text = widget.value;
    _service = CommonService();
  }

  @override
  void didUpdateWidget(covariant AutoCompleteAccountName oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value) {
      if (!(widget.freeSolo &&
          _controller.text != oldWidget.value &&
          _controller.text != widget.value)) {
        _controller.text = widget.value;
      }
    }
    if (widget.reset) {
      _controller.clear();
      widget.onChange({'name': widget.name, 'value': ''});
    }
    if (widget.correspondent != oldWidget.correspondent) {
      _options.clear();
      _getOptions('');
      setState(() {});
    }
  }

  Future<List<Map<String, dynamic>>> _getOptions(String input) async {
    try {
      final data = await _service.lazyLoadAccount(
        input,
        'account_name',
        'account_name',
        widget.isActive,
        widget.correspondent,
      );
      _options =
          data.accounts.map((acc) => {'accountName': acc.accountName}).toList();

      return _options;
    } catch (e) {
      debugPrint('Error fetching account name options: $e');
      return [];
    }
  }

  void _handleOnBlur(String value) {
    final exists = _options.any((o) => o['accountName'] == value);

    if (exists) {
      final match = _options.firstWhere((o) => o['accountName'] == value);
      _setPropsValue(match['accountName'] ?? '', match);
      return;
    }

    if (widget.freeSolo) {
      _setPropsValue(value, {});
      return;
    }

    _controller.clear();
    _setPropsValue('', {});
  }

  void _setPropsValue(String value, Map<String, dynamic> data) {
    widget.onChange({
      'name': widget.name,
      'value': value,
      'data': data,
    });
  }

  void _clearField() {
    _controller.clear();
    _setPropsValue('', {});
    widget.onChange({});
    FocusScope.of(context).unfocus();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final user = sessionManager.user!;
    final isNotVisible = (!user.isMultipleAccount ||
        (widget.isActive && !user.isMultipleActiveAccount));
    if (isNotVisible) return const SizedBox.shrink();

    return TypeAheadField<Map<String, dynamic>>(
      key: ValueKey('${widget.correspondent}-${widget.value}'),
      controller: _controller,
      suggestionsCallback: (pattern) async => await _getOptions(pattern),
      itemBuilder: (context, suggestion) {
        return ListTile(
          title: Text(
            suggestion['accountName'] ?? '',
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
        );
      },
      onSelected: (suggestion) {
        _controller.text = suggestion['accountName'] ?? '';
        _setPropsValue(suggestion['accountName'] ?? '', suggestion);
        FocusScope.of(context).unfocus();
        setState(() {});
      },
      builder: (context, controller, focusNode) {
        return Focus(
          onFocusChange: (hasFocus) {
            if (!hasFocus) _handleOnBlur(_controller.text);
          },
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
              'Account Name',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 6),
            TextField(
              controller: controller,
              focusNode: focusNode,
              enabled: !widget.disabled,
              decoration: InputDecoration(
                hintText: 'Account Name',
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
                  _setPropsValue(_controller.text, {});
                  return;
                }
                if (value.isEmpty) {
                  _setPropsValue('', {});
                  widget.onChange({});
                  return;
                }
              },
              onEditingComplete: () => _handleOnBlur(_controller.text),
            ),
          ]),
        );
      },
    );
  }
}
