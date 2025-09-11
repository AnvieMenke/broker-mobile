import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:broker_mobile/service/common_service.dart';

class AutoCompleteAccountNo extends StatefulWidget {
  final String name;
  final String value;
  final bool disabled;
  final bool freeSolo;
  final bool required;
  final bool error;
  final bool isAccessibleOnly;
  final bool isAllStatus;
  final bool isActive;
  final String type;
  final String correspondent;
  final Function(Map<String, dynamic>) onChange;
  final bool reset;

  const AutoCompleteAccountNo({
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
    this.type = '',
    this.correspondent = '',
    required this.onChange,
    this.reset = false,
  });

  @override
  State<AutoCompleteAccountNo> createState() => _AutoCompleteAccountNoState();
}

class _AutoCompleteAccountNoState extends State<AutoCompleteAccountNo> {
  final TextEditingController _controller = TextEditingController();
  late final CommonService _service;

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

  Future<List<Map<String, dynamic>>> _getOptions(String input) async {
    try {
      if (widget.isAccessibleOnly) {
        final data = await _service.accessibleAccountNo(
          widget.correspondent,
          widget.isAllStatus,
          widget.type,
        );

        return data.map((acc) {
          return {
            'accountNo': acc.accountNo,
            'correspondent': acc.correspondent,
          };
        }).toList();
      } else {
        final data = await _service.lazyLoadAccount(
          input,
          'account_no',
          'account_no',
          widget.isActive,
          widget.correspondent,
        );

        return data.accounts.map((acc) {
          return {
            'accountNo': acc.accountNo,
            'correspondent': acc.correspondent,
            'broker': acc.broker,
          };
        }).toList();
      }
    } catch (e) {
      debugPrint('Error fetching account options: $e');
      return [];
    }
  }

  void _handleOnBlur(String value, List<Map<String, dynamic>> options) {
    final data = options.firstWhere(
      (o) => o['accountNo'] == value,
      orElse: () => {},
    );

    if (data.isNotEmpty) {
      _setPropsValue(
          data['accountNo'], data, data['correspondent'], data['broker']);
      return;
    }

    if (widget.freeSolo) {
      _setPropsValue(value, {}, '', '');
      return;
    }

    _controller.clear();
    _setPropsValue('', {});
  }

  void _setPropsValue(String value, Map<String, dynamic> data,
      [String correspondent = '', String broker = '']) {
    final result = {
      'name': widget.name,
      'value': value,
      'data': data,
      'correspondent': correspondent,
      'broker': broker,
    };
    widget.onChange(result);
  }

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<Map<String, dynamic>>(
      suggestionsCallback: (pattern) async {
        final options = await _getOptions(pattern);

        if (widget.value.isNotEmpty &&
            !options.any((o) => o['accountNo'] == widget.value)) {
          options.insert(0, {
            'accountNo': widget.value,
            'correspondent': '',
            'broker': '',
          });
        }

        return options;
      },
      itemBuilder: (context, suggestion) {
        return ListTile(
          title: Text(
            suggestion['accountNo'] ?? '',
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
        );
      },
      onSelected: (suggestion) {
        _controller.text = suggestion['accountNo'] ?? '';
        _setPropsValue(
          suggestion['accountNo'] ?? '',
          suggestion,
          suggestion['correspondent'] ?? '',
          suggestion['broker'] ?? '',
        );
      },
      builder: (context, _, focusNode) {
        return TextField(
          controller: _controller,
          focusNode: focusNode,
          enabled: !widget.disabled,
          decoration: InputDecoration(
            labelText: 'Account No',
            hintText: 'Account No',
            errorText: widget.error ? 'Invalid input' : null,
            border: const OutlineInputBorder(),
          ),
          onChanged: (value) {
            if (widget.freeSolo) _setPropsValue(value, {});
          },
          onEditingComplete: () async {
            final opts = await _getOptions(_controller.text);
            _handleOnBlur(_controller.text, opts);
          },
        );
      },
    );
  }
}
