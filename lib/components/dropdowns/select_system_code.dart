import 'package:flutter/material.dart';
import 'package:broker_mobile/service/common_service.dart';

class SelectSystemCode extends StatefulWidget {
  final String? value;
  final String type;
  final String? subType;
  final String? orderBy;
  final String label;
  final String placeholder;
  final bool disabled;
  final String? error;
  final String? msg;
  final void Function(Map<String, dynamic>?) onChange;

  const SelectSystemCode({
    super.key,
    required this.type,
    required this.label,
    required this.placeholder,
    required this.onChange,
    this.value,
    this.subType,
    this.orderBy,
    this.disabled = false,
    this.error,
    this.msg,
  });

  @override
  State<SelectSystemCode> createState() => _SelectSystemCodeState();
}

class _SelectSystemCodeState extends State<SelectSystemCode> {
  final CommonService _service = CommonService();
  List<dynamic> systemCodes = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _getSystemCodes();
  }

  @override
  void didUpdateWidget(covariant SelectSystemCode oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.type != widget.type ||
        oldWidget.subType != widget.subType ||
        oldWidget.orderBy != widget.orderBy) {
      _getSystemCodes();
    }
  }

  Future<void> _getSystemCodes() async {
    setState(() => isLoading = true);

    try {
      final codes = await _service.listSystemCode(
        widget.type,
        widget.subType,
        widget.orderBy,
      );
      setState(() => systemCodes = codes.toList());
    } catch (e) {
      debugPrint("Error fetching system codes: $e");
    } finally {
      if (mounted) setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final dropdownValue = (widget.value != null && widget.value!.isNotEmpty)
        ? widget.value
        : "";

    return isLoading
        ? const LinearProgressIndicator()
        : DropdownButtonFormField<String>(
      value: dropdownValue,
      isExpanded: true,
      decoration: InputDecoration(
        labelText: widget.label,
        border: const OutlineInputBorder(),
        errorText: widget.error != null ? widget.msg : null,
      ),
      onChanged: widget.disabled
          ? null
          : (selectedCode) {
        if (selectedCode == null || selectedCode.isEmpty) {
          widget.onChange(null);
          return;
        }

        final matches = systemCodes
            .where((o) => o.code == selectedCode)
            .toList();
        final data = matches.isNotEmpty ? matches.first : null;

        if (data != null) {
          widget.onChange({
            "data": {
              "code": data.code ?? "",
              "description": data.description ?? "",
              "subType": data.subType ?? "",
              "note": data.note ?? "",
            }
          });
        }
      },
      items: [
        DropdownMenuItem<String>(
          value: "",
          child: Text(
            widget.placeholder,
            style: const TextStyle(color: Colors.grey),
          ),
        ),
        ...systemCodes.map((systemCode) {
          return DropdownMenuItem<String>(
            value: systemCode.code ?? "",
            child: Text(systemCode.description ?? ""),
          );
        }),
      ],
    );
  }
}
