import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:broker_mobile/service/common_service.dart';
import '../../session/session.dart';

class AutoCompleteRepAdvisor extends StatefulWidget {
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

  const AutoCompleteRepAdvisor({
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
  State<AutoCompleteRepAdvisor> createState() => _AutoCompleteRepAdvisorState();
}

class _AutoCompleteRepAdvisorState extends State<AutoCompleteRepAdvisor> {
  final TextEditingController _controller = TextEditingController();
  late final CommonService _service;

  List<Map<String, dynamic>> _options = [];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _controller.text = widget.value;
    _service = CommonService();
    _loadOptions();
  }

  @override
  void didUpdateWidget(covariant AutoCompleteRepAdvisor oldWidget) {
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
      _loadOptions();
    }
  }

  Future<void> _loadOptions() async {
    try {
      setState(() => _isLoading = true);

      final data = await _service.lazyRepAdvisor(
        '',
        'rep',
        'rep',
        widget.isActive,
        widget.correspondent,
      );

      _options = data.repAdvisors
          .map((rep) => {
                'rep': rep.repCode,
                'firstName': rep.firstName,
                'lastName': rep.lastName
              })
          .toList();
    } catch (e) {
      debugPrint('Error fetching rep advisor options: $e');
      _options = [];
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  List<Map<String, dynamic>> _filterOptions(String pattern) {
    if (pattern.isEmpty) return _options;

    final input = pattern.toLowerCase();

    return _options.where((option) {
      final rep = (option['rep'] ?? '').toString().toLowerCase();
      final firstName = (option['firstName'] ?? '').toString().toLowerCase();
      final lastName = (option['lastName'] ?? '').toString().toLowerCase();

      return rep.contains(input) ||
          firstName.contains(input) ||
          lastName.contains(input);
    }).toList();
  }

  void _handleOnBlur(String value) {
    final exists = _options.any((o) => o['rep'] == value);

    if (exists) {
      final match = _options.firstWhere((o) => o['rep'] == value);
      _setPropsValue(match['rep'] ?? '', match);
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
      suggestionsCallback: (pattern) async {
        return _filterOptions(pattern);
      },
      itemBuilder: (context, suggestion) {
        return ListTile(
          title: Text(
            suggestion['rep'] ?? '',
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            '${suggestion['firstName'] ?? ''} ${suggestion['lastName'] ?? ''}'
                .trim(),
          ),
        );
      },
      onSelected: (suggestion) {
        _controller.text = suggestion['rep'] ?? '';
        _setPropsValue(suggestion['rep'] ?? '', suggestion);
        FocusScope.of(context).unfocus();
        setState(() {});
      },
      builder: (context, controller, focusNode) {
        return Focus(
          onFocusChange: (hasFocus) {
            if (!hasFocus) _handleOnBlur(_controller.text);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Rep/Advisor',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 6),
              TextField(
                controller: controller,
                focusNode: focusNode,
                enabled: !widget.disabled,
                decoration: InputDecoration(
                  hintText: 'Rep/Advisor',
                  errorText: widget.error ? 'Invalid input' : null,
                  suffixIcon: controller.text.isNotEmpty && !widget.disabled
                      ? IconButton(
                          icon: const Icon(Icons.clear, size: 20),
                          onPressed: _clearField,
                        )
                      : _isLoading
                          ? const Padding(
                              padding: EdgeInsets.all(12),
                              child: SizedBox(
                                width: 16,
                                height: 16,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              ),
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
            ],
          ),
        );
      },
    );
  }
}
