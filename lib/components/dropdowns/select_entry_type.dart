import 'package:flutter/material.dart';
import 'package:broker_mobile/service/common_service.dart';
import 'package:broker_mobile/proto/commonpb/list.pb.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class MultiSelectEntryType extends StatefulWidget {
  final String name;
  final List<String> value;
  final bool disabled;
  final bool required;
  final Function(Map<String, dynamic>) onChange;

  final String? screenType;
  final String? correspondent;
  final String? accountNo;
  final String? status;
  final String? note;

  const MultiSelectEntryType({
    super.key,
    required this.name,
    required this.value,
    this.disabled = false,
    this.required = false,
    required this.onChange,
    this.screenType = '',
    this.correspondent = '',
    this.accountNo = '',
    this.status = '',
    this.note = '',
  });

  @override
  State<MultiSelectEntryType> createState() => _MultiSelectEntryTypeState();
}

class _MultiSelectEntryTypeState extends State<MultiSelectEntryType> {
  late final CommonService _service;
  List<Map<String, String>> _options = [];
  List<String> _selectedValues = [];

  @override
  void initState() {
    super.initState();
    _service = CommonService();
    _selectedValues = List.from(widget.value);
    _loadOptions();
  }

  Future<void> _loadOptions() async {
    try {
      final data = await _service.listEntryType(
        '',
        widget.screenType,
        widget.correspondent,
        widget.accountNo,
        widget.status,
        widget.note,
      );

      final excludeData = await _service.listSystemCode(
        "Entry Type Exceptions",
        "Mobile",
        "",
      );

      final excludeCodes = excludeData.map((e) => e.code).toSet();

      final filteredEntryTypes = data.entryTypes
          .where((res) => !excludeCodes.contains(res.entryType))
          .toList();

      filteredEntryTypes.add(
        AdmEntryType(
          entryType: "NON TRD",
          entryTypeDescription: "Non Trade Entry",
        ),
      );

      final uniqueEntryTypes =
          {for (var e in filteredEntryTypes) e.entryType: e}.values.toList();

      setState(() {
        _options = uniqueEntryTypes.map<Map<String, String>>((res) {
          return {
            'entryType': res.entryType,
            'entryTypeDescription': res.entryTypeDescription,
          };
        }).toList();
      });
    } catch (e) {
      debugPrint('Error fetching entry types: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[900]?.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: Colors.grey.shade400, width: 0.8),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        child: Center(
          child: MultiSelectDialogField<Map<String, String>>(
            items: _options
                .map(
                  (opt) => MultiSelectItem<Map<String, String>>(
                    opt,
                    "${opt['entryType']} - ${opt['entryTypeDescription']}",
                  ),
                )
                .toList(),
            title: const Text("Entry Type"),
            searchable: true,
            searchHint: "Search entry type...",
            initialValue: _options
                .where((opt) => _selectedValues.contains(opt['entryType']))
                .toList(),
            buttonIcon: const Icon(Icons.arrow_drop_down, size: 18),
            buttonText: Text(
              _selectedValues.isEmpty
                  ? "Entry Type"
                  : _selectedValues.map((v) {
                      final match = _options.firstWhere(
                        (opt) => opt['entryType'] == v,
                        orElse: () => {
                          'entryType': v,
                          'entryTypeDescription': '',
                        },
                      );
                      return match['entryType'] ?? '';
                    }).join(', '),
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 12),
            ),
            decoration: const BoxDecoration(
              border: Border.fromBorderSide(BorderSide.none),
            ),
            confirmText: Text(
              "OK",
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
            cancelText: Text(
              "CANCEL",
              style: TextStyle(color: Theme.of(context).colorScheme.secondary),
            ),
            itemsTextStyle: TextStyle(
              color: Theme.of(context).textTheme.bodyLarge?.color,
            ),
            selectedItemsTextStyle: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
            onConfirm: (selected) {
              final values = selected.map((e) => e['entryType'] ?? '').toList();
              setState(() => _selectedValues = values);
              widget.onChange({
                'name': widget.name,
                'value': values,
                'data': selected,
              });
            },
            chipDisplay: MultiSelectChipDisplay.none(),
          ),
        ),
      ),
    );
  }
}
