import 'package:flutter/material.dart';
import 'package:broker_mobile/service/common_service.dart';

class SelectPage extends StatefulWidget {
  final String? value;
  final String label;
  final String placeholder;
  final bool disabled;
  final String? error;
  final String? msg;
  final InputBorder? border;
  final void Function(Map<String, dynamic>?) onChange;

  const SelectPage({
    super.key,
    this.value,
    required this.label,
    required this.placeholder,
    this.disabled = false,
    this.error,
    this.msg,
    this.border,
    required this.onChange,
  });

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  final CommonService _service = CommonService();
  List<dynamic> pages = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    _getPages();
  }

  @override
  void didUpdateWidget(covariant SelectPage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      _getPages();
    }
  }

  Future<void> _getPages() async {
    setState(() => isLoading = true);

    try {
      final result = await _service.listPage();
      setState(() => pages = result.pages.toList());
    } catch (e) {
      debugPrint("Error fetching pages: $e");
    } finally {
      if (mounted) setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final dropdownValue =
        (widget.value != null && widget.value!.isNotEmpty) ? widget.value : "";

    return isLoading
        ? const LinearProgressIndicator()
        : Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              widget.label,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 6),
            DropdownButtonFormField<String>(
              initialValue: dropdownValue,
              isExpanded: true,
              decoration: InputDecoration(
                errorText: widget.error != null ? widget.msg : null,
                border: widget.border,
              ),
              onChanged: widget.disabled
                  ? null
                  : (selectedPage) {
                      if (selectedPage == null || selectedPage.isEmpty) {
                        widget.onChange(null);
                        return;
                      }

                      final matches = pages
                          .where((o) => o.pageName == selectedPage)
                          .toList();
                      final data = matches.isNotEmpty ? matches.first : null;

                      if (data != null) {
                        widget.onChange({
                          "data": {
                            "pageName": data.pageName ?? "",
                            "pageComponent": data.component ?? "",
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
                ...pages.map((page) {
                  return DropdownMenuItem<String>(
                    value: page.pageName ?? "",
                    child: Text(page.pageName ?? ""),
                  );
                }),
              ],
            ),
          ]);
  }
}
