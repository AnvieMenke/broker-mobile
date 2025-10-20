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
  final Function(Map<String, dynamic>) onClear;
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
    required this.onClear,
    this.reset = false,
  });

  @override
  State<AutoCompleteSymbol> createState() => _AutoCompleteSymbolState();
}

class _AutoCompleteSymbolState extends State<AutoCompleteSymbol> {
  final TextEditingController _controller = TextEditingController();
  final SuggestionsController<Map<String, String>> _suggestionsController =
      SuggestionsController<Map<String, String>>();

  late final AdmService _service;
  List<Map<String, String>> _options = [];
  bool _isSelecting = false;

  @override
  void initState() {
    super.initState();
    _controller.text = widget.value;
    _service = AdmService();

    if (widget.reset) {
      _clearField();
    }
  }

  Future<List<Map<String, String>>> _getOptions(String input) async {
    if (_isSelecting) return [];

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

    _clearField();
  }

  void _setPropsValue(String value, Map<String, String> data) {
    widget.onChange({
      'name': widget.name,
      'value': value,
      'data': data,
    });
  }

  void _clearField() {
    final hadValue = widget.value.isNotEmpty;

    _controller.clear();
    _suggestionsController.close();
    _setPropsValue('', {});

    if (hadValue) {
      widget.onClear({
        'name': widget.name,
        'value': '',
        'data': {},
      });
    }

    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return TypeAheadField<Map<String, String>>(
      controller: _controller,
      suggestionsController: _suggestionsController,
      suggestionsCallback: (pattern) async {
        final query = pattern.isEmpty ? '' : pattern;
        _options = await _getOptions(query);
        return _options;
      },
      itemBuilder: (context, suggestion) {
        return ListTile(
          title: Text(
            suggestion['symbol'] ?? '',
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          subtitle: Text(suggestion['cusip'] ?? ''),
        );
      },
      onSelected: (suggestion) async {
        _isSelecting = true;
        final val = suggestion['symbol'] ?? '';
        _controller.text = val;
        _setPropsValue(val, suggestion);
        await Future.delayed(const Duration(milliseconds: 300));
        _isSelecting = false;
        setState(() {});
      },
      builder: (context, controller, focusNode) {
        return ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 42),
          child: IntrinsicHeight(
            child: TextField(
              controller: _controller,
              focusNode: focusNode,
              enabled: !widget.disabled,
              style: const TextStyle(fontSize: 14),
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(
                    _controller.text.isNotEmpty
                        ? Icons.close_rounded
                        : Icons.search,
                    size: 18,
                  ),
                  tooltip:
                      _controller.text.isNotEmpty ? 'Clear' : 'Search symbol',
                  onPressed: widget.disabled
                      ? null
                      : _controller.text.isNotEmpty
                          ? _clearField
                          : null,
                ),
                hintText: 'Symbol',
                hintStyle: const TextStyle(fontSize: 14),
                isDense: true,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                filled: true,
                fillColor: Colors.grey[900]?.withValues(alpha: 0.1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide.none,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide:
                      BorderSide(color: Colors.grey.shade400, width: 0.8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                    width: 1.2,
                  ),
                ),
              ),
              onTap: () async {
                if (_controller.text.isEmpty) {
                  final results = await _getOptions('');
                  _options = results;
                  _suggestionsController.suggestions = results;
                  _suggestionsController.open();
                }
              },
              onChanged: (value) {
                if (widget.freeSolo) {
                  _setPropsValue(value, {});
                }
                setState(() {});
              },
              onEditingComplete: () {
                _handleOnBlur(_controller.text);
              },
            ),
          ),
        );
      },
    );
  }
}
