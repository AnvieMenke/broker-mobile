import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:broker_mobile/service/common_service.dart';
import '../../session/session.dart';

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
  List<Map<String, dynamic>> _options = [];

  @override
  void initState() {
    super.initState();
    _controller.text = widget.value;
    _service = CommonService();
  }

  @override
  void didUpdateWidget(covariant AutoCompleteMasterAccountNo oldWidget) {
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
        final data = await _service.accessibleMasterAccountNo(
          input,
          widget.correspondent,
          widget.isAllStatus,
        );
        _options = data
            .map((acc) => {
                  'masterAccountNo': acc.masterAccountNo,
                  'accountName': acc.accountName,
                })
            .toList();
      } else {
        final data = await _service.lazyLoadAccount(
          input,
          'master_account_no',
          'master_account_no',
          widget.isActive,
          widget.correspondent,
        );
        _options = data.accounts
            .map((acc) => {
                  'masterAccountNo': acc.accountNo,
                  'accountName': acc.accountName,
                  'correspondent': acc.correspondent,
                  'accountId': acc.accountId,
                })
            .toList();
      }
      return _options;
    } catch (e) {
      debugPrint('Error fetching master accounts: $e');
      return [];
    }
  }

  void _handleOnBlur(String value) {
    final exists = _options.any((o) => o['masterAccountNo'] == value);

    if (exists) {
      final match = _options.firstWhere((o) => o['masterAccountNo'] == value);
      _setPropsValue(
        match['masterAccountNo'] ?? '',
        match,
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

  void _setPropsValue(String value, Map<String, dynamic> data) {
    widget.onChange({
      'name': widget.name,
      'value': value,
      'data': data,
    });
  }

  void _clearField() {
    _controller.clear();
    widget.onChange({});
    _setPropsValue('', {});
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
              'Master Account No',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 6),
            TextField(
              controller: controller,
              focusNode: focusNode,
              enabled: !widget.disabled,
              decoration: InputDecoration(
                hintText: 'Master Account No',
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
