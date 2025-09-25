import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:broker_mobile/service/common_service.dart';

class AutoCompleteMasterAccountNo extends StatefulWidget {
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

  const AutoCompleteMasterAccountNo({
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
  State<AutoCompleteMasterAccountNo> createState() =>
      _AutoCompleteMasterAccountNoState();
}

class _AutoCompleteMasterAccountNoState
    extends State<AutoCompleteMasterAccountNo> {
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
        final data = await _service.accessibleMasterAccountNo(
          input,
          widget.correspondent,
          widget.isAllStatus,
        );

        return data.map<Map<String, String>>((acc) {
          return {
            'masterAccountNo': acc.masterAccountNo,
            'accountName': acc.accountName,
          };
        }).toList();
      } else {
        final data = await _service.lazyLoadAccount(
          input,
          'master_account_no',
          'master_account_no',
          widget.isActive,
          widget.correspondent,
        );

        return data.accounts.map<Map<String, String>>((acc) {
          return {
            'masterAccountNo': acc.accountNo,
            'accountName': acc.accountName,
            'correspondent': acc.correspondent,
          };
        }).toList();
      }
    } catch (e) {
      debugPrint('Error fetching account options: $e');
      return [];
    }
  }

  void _handleOnBlur(String value) {
    if (widget.freeSolo) {
      _setPropsValue(value, {});
      return;
    }

    final match = _options.firstWhere(
      (o) => o['masterAccountNo'] == value,
      orElse: () => {},
    );

    if (match.isNotEmpty) {
      _setPropsValue(match['masterAccountNo'] ?? '', match);
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
            suggestion['masterAccountNo'] ?? '',
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          subtitle: Text(suggestion['accountName'] ?? ''),
        );
      },
      onSelected: (suggestion) {
        final val = suggestion['masterAccountNo'] ?? '';
        _controller.text = val;
        _setPropsValue(val, suggestion);
      },
      builder: (context, controller, focusNode) {
        return TextField(
          controller: _controller,
          focusNode: focusNode,
          enabled: !widget.disabled,
          decoration: InputDecoration(
            labelText: 'Master Account No',
            hintText: 'Master Account No',
            errorText: widget.error ? 'Invalid input' : null,
            border: const OutlineInputBorder(),
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
