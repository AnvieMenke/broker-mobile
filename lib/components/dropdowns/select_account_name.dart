import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:broker_mobile/service/common_service.dart';

class AutoCompleteAccountName extends StatefulWidget {
  final String name;
  final String value;
  final bool disabled;
  final bool freeSolo;
  final bool required;
  final bool error;
  final bool isAccessibleOnly;
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
    this.isAccessibleOnly = false,
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
  List<Map<String, String>> _options = [];

  @override
  void initState() {
    super.initState();
    _controller.text = widget.value;
    _service = CommonService();

    if (widget.reset) {
      _controller.clear();
      widget.onChange({'name': widget.name, 'value': ''});
    }
  }

  Future<List<Map<String, String>>> _getOptions(String input) async {
    try {
      if (widget.isAccessibleOnly) {
        final data = await _service.accessibleAccountName(
          input,
          widget.correspondent,
          widget.isAllStatus,
        );

        return data.map<Map<String, String>>((accountName) {
          return {
            'accountName': accountName,
          };
        }).toList();
      } else {
        final data = await _service.lazyLoadAccount(
          input,
          'account_name',
          'account_name',
          widget.isActive,
          widget.correspondent,
        );

        return data.accounts.map<Map<String, String>>((acc) {
          return {
            'account_name': acc.accountName,
          };
        }).toList();
      }
    } catch (e) {
      debugPrint('Error fetching account name options: $e');
      return [];
    }
  }

  void _handleOnBlur(String value) {
    if (widget.freeSolo) {
      _setPropsValue(value, {});
      return;
    }

    final match = _options.firstWhere(
      (o) => o['accountName'] == value,
      orElse: () => {},
    );

    if (match.isNotEmpty) {
      _setPropsValue(match['accountName'] ?? '', match);
      return;
    }

    _controller.clear();
    _setPropsValue('', {});
  }

  void _setPropsValue(String value, Map<String, String> data) {
    widget.onChange({
      'name': widget.name,
      'value': value,
      'data': data,
    });
  }

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<Map<String, String>>(
      suggestionsCallback: (pattern) async {
        _options = await _getOptions(pattern);

        return _options;
      },
      itemBuilder: (context, suggestion) {
        return ListTile(
          title: Text(
            suggestion['accountName'] ?? '',
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
        );
      },
      onSelected: (suggestion) {
        final val = suggestion['accountName'] ?? '';
        _controller.text = val;
        _setPropsValue(val, suggestion);
      },
      builder: (context, controller, focusNode) {
        return TextField(
          controller: _controller,
          focusNode: focusNode,
          enabled: !widget.disabled,
          decoration: InputDecoration(
            labelText: 'Account Name',
            hintText: 'Account Name',
            errorText: widget.error ? 'Invalid input' : null,
          ),
          onChanged: (value) {
            controller.text = value;
            if (widget.freeSolo) {
              _setPropsValue(value, {});
            }
          },
          onEditingComplete: () {
            _handleOnBlur(_controller.text);
          },
        );
      },
    );
  }
}
