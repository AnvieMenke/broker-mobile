import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:broker_mobile/service/common_service.dart';

class AutoCompleteBranch extends StatefulWidget {
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

  const AutoCompleteBranch({
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
  State<AutoCompleteBranch> createState() =>
      _AutoCompleteBranchState();
}

class _AutoCompleteBranchState
    extends State<AutoCompleteBranch> {
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
        final data = await _service.accessibleBranch(
          input,
          widget.correspondent,
          widget.isAllStatus,
        );

        return data.map<Map<String, String>>((acc) {
          return {
            'branch': acc.branch,
          };
        }).toList();
      } else {
        final data = await _service.lazyLoadAccount(
          input,
          'branch',
          'branch',
          widget.isActive,
          widget.correspondent,
        );

        return data.accounts.map<Map<String, String>>((acc) {
          return {
            'branch': acc.branch,
          };
        }).toList();
      }
    } catch (e) {
      debugPrint('Error fetching branch options: $e');
      return [];
    }
  }

  void _handleOnBlur(String value) {
    if (widget.freeSolo) {
      _setPropsValue(value, {});
      return;
    }

    final match = _options.firstWhere(
          (o) => o['branch'] == value,
      orElse: () => {},
    );

    if (match.isNotEmpty) {
      _setPropsValue(match['branch'] ?? '', match);
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
            suggestion['branch'] ?? '',
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
        );
      },
      onSelected: (suggestion) {
        final val = suggestion['branch'] ?? '';
        _controller.text = val;
        _setPropsValue(val, suggestion);
      },
      builder: (context, controller, focusNode) {
        return TextField(
          controller: _controller,
          focusNode: focusNode,
          enabled: !widget.disabled,
          decoration: InputDecoration(
            labelText: 'Branch',
            hintText: 'Branch',
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
