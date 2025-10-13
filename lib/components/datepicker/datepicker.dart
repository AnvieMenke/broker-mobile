import 'package:flutter/material.dart';

class CustomDatePicker extends StatefulWidget {
  final Function(String type, DateTime? from, DateTime? to)? onApply;

  const CustomDatePicker({super.key, this.onApply});

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  String selectedRecent = "Past 10 days";
  DateTime? fromDate;
  DateTime? toDate;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  Future<void> _selectDate(
    BuildContext context,
    bool isFromDate,
    void Function(void Function()) innerSetState,
    DateTime? tempFromDate,
    DateTime? tempToDate,
    void Function(DateTime?, DateTime?) onChange,
  ) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 5),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      innerSetState(() {
        if (isFromDate) {
          tempFromDate = picked;
        } else {
          tempToDate = picked;
        }
        onChange(tempFromDate, tempToDate);
      });
    }
  }

  void _apply(String type, DateTime? from, DateTime? to) async {
    Navigator.of(context).pop();
    await Future.delayed(const Duration(milliseconds: 120));
    if (!mounted) return;

    final now = DateTime.now();
    DateTime? computedFrom;
    DateTime? computedTo;

    if (type == "Custom") {
      computedFrom = from;
      computedTo = to;
    } else {
      switch (type) {
        case "Past 10 days":
          computedTo = DateTime(now.year, now.month, now.day);
          computedFrom = computedTo.subtract(const Duration(days: 10));
          break;
        case "Past 30 days":
          computedTo = DateTime(now.year, now.month, now.day);
          computedFrom = computedTo.subtract(const Duration(days: 30));
          break;
        case "Past 60 days":
          computedTo = DateTime(now.year, now.month, now.day);
          computedFrom = computedTo.subtract(const Duration(days: 60));
          break;
        case "Past 90 days":
          computedTo = DateTime(now.year, now.month, now.day);
          computedFrom = computedTo.subtract(const Duration(days: 90));
          break;

        case "Q1 (Jan - Mar)":
          computedFrom = DateTime(now.year, 1, 1);
          computedTo = DateTime(now.year, 3, 31);
          break;
        case "Q2 (Apr - Jun)":
          computedFrom = DateTime(now.year, 4, 1);
          computedTo = DateTime(now.year, 6, 30);
          break;
        case "Q3 (July - Sept)":
          computedFrom = DateTime(now.year, 7, 1);
          computedTo = DateTime(now.year, 9, 30);
          break;
        case "Q4 (Oct - Dec)":
          computedFrom = DateTime(now.year, 10, 1);
          computedTo = DateTime(now.year, 12, 31);
          break;
      }
    }

    setState(() {
      selectedRecent = type == "Custom" ? "Custom Range" : type;
      fromDate = computedFrom;
      toDate = computedTo;
    });

    widget.onApply?.call(type, computedFrom, computedTo);
  }

  @override
  Widget build(BuildContext context) {
    String tempSelectedRecent = selectedRecent;
    DateTime? tempFromDate = fromDate;
    DateTime? tempToDate = toDate;

    void updateTempDates(DateTime? from, DateTime? to) {
      tempFromDate = from;
      tempToDate = to;
    }

    return PopupMenuButton<int>(
      offset: const Offset(0, 45),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      itemBuilder: (context) => [
        PopupMenuItem<int>(
          enabled: false,
          child: StatefulBuilder(
            builder: (context, setInnerState) {
              return SizedBox(
                width: 280,
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: 400),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TabBar(
                        controller: _tabController,
                        labelColor: Colors.green,
                        tabs: const [
                          Tab(text: "Recent"),
                          Tab(text: "Custom"),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ...[
                                    "Past 10 days",
                                    "Past 30 days",
                                    "Past 60 days",
                                    "Past 90 days",
                                    "Q1 (Jan - Mar)",
                                    "Q2 (Apr - Jun)",
                                    "Q3 (July - Sept)",
                                    "Q4 (Oct - Dec)",
                                  ].map(
                                    (item) => RadioListTile<String>(
                                      title: Text(item),
                                      value: item,
                                      groupValue: tempSelectedRecent,
                                      onChanged: (value) {
                                        setInnerState(() {
                                          tempSelectedRecent = value!;
                                        });
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        selectedRecent = tempSelectedRecent;
                                        fromDate = null;
                                        toDate = null;
                                      });
                                      _apply(tempSelectedRecent, null, null);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.green,
                                      minimumSize: const Size.fromHeight(40),
                                    ),
                                    child: const Text("Apply"),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Select any 93 days period going back 5 years",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  const SizedBox(height: 16),
                                  const Text("From Date"),
                                  InkWell(
                                    onTap: () => _selectDate(
                                      context,
                                      true,
                                      setInnerState,
                                      tempFromDate,
                                      tempToDate,
                                      updateTempDates,
                                    ),
                                    child: InputDecorator(
                                      decoration: const InputDecoration(
                                        hintText: "mm/dd/yyyy",
                                        border: OutlineInputBorder(),
                                        isDense: true,
                                      ),
                                      child: Text(
                                        tempFromDate == null
                                            ? ''
                                            : "${tempFromDate!.month}/${tempFromDate!.day}/${tempFromDate!.year}",
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  const Text("To Date"),
                                  InkWell(
                                    onTap: () => _selectDate(
                                      context,
                                      false,
                                      setInnerState,
                                      tempFromDate,
                                      tempToDate,
                                      updateTempDates,
                                    ),
                                    child: InputDecorator(
                                      decoration: const InputDecoration(
                                        hintText: "mm/dd/yyyy",
                                        border: OutlineInputBorder(),
                                        isDense: true,
                                      ),
                                      child: Text(
                                        tempToDate == null
                                            ? ''
                                            : "${tempToDate!.month}/${tempToDate!.day}/${tempToDate!.year}",
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      OutlinedButton(
                                        onPressed: () {
                                          setInnerState(() {
                                            tempFromDate = null;
                                            tempToDate = null;
                                          });
                                        },
                                        style: OutlinedButton.styleFrom(
                                          foregroundColor: Colors.green,
                                          side: const BorderSide(
                                              color: Colors.green),
                                        ),
                                        child: const Text("Clear"),
                                      ),
                                      ElevatedButton(
                                        onPressed: (tempFromDate != null &&
                                                tempToDate != null)
                                            ? () {
                                                setState(() {
                                                  selectedRecent =
                                                      "Custom Range";
                                                  fromDate = tempFromDate;
                                                  toDate = tempToDate;
                                                });
                                                _apply(
                                                    "Custom", fromDate, toDate);
                                              }
                                            : null,
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              (tempFromDate != null &&
                                                      tempToDate != null)
                                                  ? Colors.green
                                                  : Colors.grey,
                                        ),
                                        child: const Text("Apply"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black54),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              selectedRecent == "Custom Range"
                  ? "${fromDate != null ? "${fromDate!.month}/${fromDate!.day}/${fromDate!.year}" : ''} - ${toDate != null ? "${toDate!.month}/${toDate!.day}/${toDate!.year}" : ''}"
                  : selectedRecent,
            ),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}
