import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:broker_mobile/service/adm_service.dart';

class AutoCompleteSymbol extends StatefulWidget {
  final String name;
  final String value;
  final bool disabled;
  final bool freeSolo;
  final bool required;
  final bool error;
  final String assetType;
  final bool isActive;

  final Function(Map<String, dynamic>) onChange;
  final bool reset;

  const AutoCompleteSymbol({
    super.key,
    required this.name,
    required this.value,
    this.disabled = false,
    this.freeSolo = false,
    this.required = false,
    this.error = false,
    this.assetType = '',
    this.isActive = true,
    required this.onChange,
    this.reset = false,
  });

  @override
  State<AutoCompleteSymbol> createState() => _AutoCompleteSymbolState();
}

class _AutoCompleteSymbolState extends State<AutoCompleteSymbol> {
  final TextEditingController _controller = TextEditingController();
  late final AdmService _service;
  List<Map<String, String>> _options = [];

  @override
  void initState() {
    super.initState();
    _controller.text = widget.value;
    _service = AdmService();

    if (widget.reset) {
      _controller.clear();
      widget.onChange({'name': widget.name, 'value': ''});
    }
  }

  Future<List<Map<String, String>>> _getOptions(String input) async {
    try {
      final data = await _service.lazyLoadSecurities(
        input,
        widget.assetType,
        50,
        widget.isActive,
      );

      return data.securities.map<Map<String, String>>((security) {
        return {
          'symbol': security.symbol,
          'cusip': security.cusip,
        };
      }).toList();
    } catch (e) {
      debugPrint('Error fetching securities options: $e');
      return [];
    }
  }

  void _handleOnBlur(String value) {
    if (widget.freeSolo) {
      _setPropsValue(value, {});
      return;
    }

    final match = _options.firstWhere(
      (o) => o['symbol'] == value,
      orElse: () => {},
    );

    if (match.isNotEmpty) {
      _setPropsValue(match['symbol'] ?? '', match);
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
            suggestion['symbol'] ?? '',
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          subtitle: Text(suggestion['cusip'] ?? ''),
        );
      },
      onSelected: (suggestion) {
        final val = suggestion['symbol'] ?? '';
        _controller.text = val;
        _setPropsValue(
          val,
          suggestion,
        );
      },
      builder: (context, controller, focusNode) {
        return TextField(
          controller: _controller,
          focusNode: focusNode,
          enabled: !widget.disabled,
          decoration: InputDecoration(
            labelText: 'Symbol',
            hintText: 'Symbol',
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
