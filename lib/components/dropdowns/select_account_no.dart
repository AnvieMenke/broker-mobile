import 'package:broker_mobile/service/convert_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:broker_mobile/service/common_service.dart';
import '../../session/session.dart';

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
  final Function(Map<String, dynamic>)? onClear;
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
    this.onClear,
    this.reset = false,
  });

  @override
  State<AutoCompleteAccountNo> createState() => _AutoCompleteAccountNoState();
}

class _AutoCompleteAccountNoState extends State<AutoCompleteAccountNo> {
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
  void didUpdateWidget(covariant AutoCompleteAccountNo oldWidget) {
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
      if (widget.isAccessibleOnly) {
        final data = await _service.accessibleAccountNo(
          input,
          widget.correspondent,
          widget.isAllStatus,
          widget.type,
        );
        _options = data
            .map((acc) => {
                  'accountNo': acc.accountNo,
                  'correspondent': acc.correspondent,
                  'accountName': acc.accountName,
                  'accountId': acc.accountId,
                })
            .toList();
      } else {
        final data = await _service.lazyLoadAccount(
          input,
          'account_no',
          'account_no',
          widget.isActive,
          widget.correspondent,
        );
        _options = data.accounts
            .map((acc) => {
                  'accountId': acc.accountId,
                  'accountNo': acc.accountNo,
                  'correspondent': acc.correspondent,
                  'broker': acc.broker,
                  'accountName': acc.accountName,
                })
            .toList();
      }
      return _options;
    } catch (e) {
      debugPrint('Error fetching accounts: $e');
      return [];
    }
  }

  void _handleOnBlur(String value) {
    if (widget.value == _controller.text) return;
    final exists = _options.any((o) => o['accountNo'] == value);

    if (exists) {
      final match = _options.firstWhere((o) => o['accountNo'] == value);
      _setPropsValue(
        match['accountNo'],
        match,
        match['correspondent'] ?? '',
        match['broker'] ?? '',
        ConvertService.safeInt(match['accountId']),
      );
      return;
    }

    if (widget.freeSolo) {
      _setPropsValue(value, {});
      return;
    }

    _controller.clear();
    _setPropsValue('', {});
  }

  void _setPropsValue(String value, Map<String, dynamic> data,
      [String correspondent = '', String broker = '', int accountId = 0]) {
    widget.onChange({
      'name': widget.name,
      'value': value,
      'data': data,
      'correspondent': correspondent,
      'broker': broker,
      'accountId': accountId,
    });
  }

  void _clearField() {
    final hadValue = widget.value.isNotEmpty;
    _controller.clear();
    widget.onChange({});
    _setPropsValue('', {});
    if (hadValue && widget.onClear != null) {
      widget.onClear!({
        'name': widget.name,
        'value': '',
        'data': {},
      });
    }
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
            suggestion['accountNo'] ?? '',
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          subtitle: Text(suggestion['accountName'] ?? ''),
        );
      },
      onSelected: (suggestion) {
        _controller.text = suggestion['accountNo'] ?? '';
        _setPropsValue(
          suggestion['accountNo'] ?? '',
          suggestion,
          suggestion['correspondent'] ?? '',
          suggestion['broker'] ?? '',
          ConvertService.safeInt(suggestion['accountId']),
        );
        FocusScope.of(context).unfocus();
        setState(() {});
      },
      builder: (context, controller, focusNode) {
        return Focus(
          onFocusChange: (hasFocus) {
            if (!hasFocus) _handleOnBlur(_controller.text);
          },
          child: TextField(
            controller: controller,
            focusNode: focusNode,
            enabled: !widget.disabled,
            decoration: InputDecoration(
              labelText: 'Account No',
              hintText: 'Account No',
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
                _setPropsValue(controller.text, {});
                return;
              }
              if (value.isEmpty) {
                _setPropsValue('', {});
                widget.onChange({});
              }
            },
            onEditingComplete: () => _handleOnBlur(_controller.text),
          ),
        );
      },
    );
  }
}
