import 'package:flutter/material.dart';

class CustomDatePicker extends StatefulWidget {
  final Function(String type, DateTime? from, DateTime? to)? onApply;
  final String? initialRecent;
  final DateTime? initialFromDate;
  final DateTime? initialToDate;
  final bool isDateRange;

  const CustomDatePicker({
    super.key,
    this.onApply,
    this.initialRecent,
    this.initialFromDate,
    this.initialToDate,
    this.isDateRange = false,
  });

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late String selectedRecent;
  DateTime? fromDate;
  DateTime? toDate;

  @override
  void initState() {
    super.initState();
    _initController();
    selectedRecent = widget.initialRecent ?? "Past 10 days";
    fromDate = widget.initialFromDate;
    toDate = widget.initialToDate;

    if (fromDate != null && toDate != null) {
      selectedRecent = widget.isDateRange ? "Custom Range" : "Selected Date";
    }
  }

  void _initController() {
    _tabController =
        TabController(length: widget.isDateRange ? 2 : 1, vsync: this);
  }

  @override
  void didUpdateWidget(covariant CustomDatePicker oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isDateRange != widget.isDateRange) {
      _tabController.dispose();
      _initController();
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(
    BuildContext context,
    bool isFromDate,
    void Function(void Function()) innerSetState,
    DateTime? tempFromDate,
    DateTime? tempToDate,
    void Function(DateTime?, DateTime?) onChange,
  ) async {
    final currentDate = DateTime.now();
    DateTime initial = isFromDate ? (tempFromDate ?? currentDate) : (tempToDate ?? currentDate);
    if (initial.isAfter(currentDate)) {
      initial = currentDate;
    }
    final picked = await showDatePicker(
      context: context,
      initialDate: initial,
      firstDate: DateTime(currentDate.year - 5),
      lastDate: currentDate,
    );

    if (picked != null) {
      innerSetState(() {
        if (widget.isDateRange) {
          if (isFromDate) {
            tempFromDate = picked;
          } else {
            tempToDate = picked;
          }
        } else {
          tempFromDate = picked;
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

    if (!widget.isDateRange) {
      computedFrom = from;
      computedTo = from;
    } else if (type == "Custom") {
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
      selectedRecent = widget.isDateRange
          ? (type == "Custom" ? "Custom Range" : type)
          : "Selected Date";
      fromDate = computedFrom;
      toDate = computedTo;
    });

    widget.onApply?.call(selectedRecent, computedFrom, computedTo);
  }

  @override
  Widget build(BuildContext context) {
    final presetLabels = [
      "Past 10 days",
      "Past 30 days",
      "Past 60 days",
      "Past 90 days",
      "Q1 (Jan - Mar)",
      "Q2 (Apr - Jun)",
      "Q3 (July - Sept)",
      "Q4 (Oct - Dec)",
    ];

    String displayText = selectedRecent;
    if (!presetLabels.contains(selectedRecent)) {
      if (fromDate != null && toDate != null) {
        if (fromDate!.isAtSameMomentAs(toDate!)) {
          displayText = "${fromDate!.month}/${fromDate!.day}/${fromDate!.year}";
        } else {
          displayText =
              "${fromDate!.month}/${fromDate!.day}/${fromDate!.year} - ${toDate!.month}/${toDate!.day}/${toDate!.year}";
        }
      }
    }

    String tempSelectedRecent = selectedRecent;
    DateTime? tempFromDate = fromDate;
    DateTime? tempToDate = toDate;

    void updateTempDates(DateTime? from, DateTime? to) {
      tempFromDate = from;
      tempToDate = to;
    }

    final recentItems = presetLabels;

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
                child: DefaultTabController(
                  length: widget.isDateRange ? 2 : 1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (widget.isDateRange)
                        TabBar(
                          controller: _tabController,
                          labelColor: const Color(0xFF1565C0),
                          tabs: const [
                            Tab(text: "Recent"),
                            Tab(text: "Custom"),
                          ],
                        ),
                      SizedBox(
                        height: widget.isDateRange ? 420 : 180,
                        child: TabBarView(
                          controller: _tabController,
                          children: widget.isDateRange
                              ? [
                                  SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        ...recentItems.map((item) {
                                          final isSelected =
                                              tempSelectedRecent == item;
                                          return InkWell(
                                            onTap: () {
                                              setInnerState(() {
                                                tempSelectedRecent = item;
                                              });
                                            },
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 12,
                                                      horizontal: 24),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: 20,
                                                    height: 20,
                                                    decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      border: Border.all(
                                                        color: isSelected
                                                            ? Colors.blue
                                                            : Colors.grey,
                                                        width: 2,
                                                      ),
                                                    ),
                                                    child: isSelected
                                                        ? Center(
                                                            child: Container(
                                                              width: 10,
                                                              height: 10,
                                                              decoration:
                                                                  const BoxDecoration(
                                                                shape: BoxShape
                                                                    .circle,
                                                                color:
                                                                    Colors.blue,
                                                              ),
                                                            ),
                                                          )
                                                        : null,
                                                  ),
                                                  const SizedBox(width: 12),
                                                  Expanded(child: Text(item)),
                                                ],
                                              ),
                                            ),
                                          );
                                        }),
                                        const SizedBox(height: 8),
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              selectedRecent =
                                                  tempSelectedRecent;
                                              fromDate = null;
                                              toDate = null;
                                            });
                                            _apply(
                                                tempSelectedRecent, null, null);
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xFF1565C0),
                                            minimumSize:
                                                const Size.fromHeight(40),
                                            foregroundColor: Colors.white,
                                          ),
                                          child: const Text("Apply"),
                                        ),
                                      ],
                                    ),
                                  ),
                                  _buildCustomTab(
                                      context,
                                      setInnerState,
                                      tempFromDate,
                                      tempToDate,
                                      updateTempDates),
                                ]
                              : [
                                  _buildCustomTab(
                                      context,
                                      setInnerState,
                                      tempFromDate,
                                      tempToDate,
                                      updateTempDates),
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
        height: 44,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.grey[900]?.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.shade400, width: 0.8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Text(
                displayText,
                style: const TextStyle(fontSize: 12),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(width: 6),
            const Icon(Icons.arrow_drop_down, size: 18),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomTab(
    BuildContext context,
    void Function(void Function()) setInnerState,
    DateTime? tempFromDate,
    DateTime? tempToDate,
    void Function(DateTime?, DateTime?) updateTempDates,
  ) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text(widget.isDateRange ? "From Date" : "Select Date"),
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
                      : "${tempFromDate.month}/${tempFromDate.day}/${tempFromDate.year}",
                ),
              ),
            ),
            if (widget.isDateRange) ...[
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
                        : "${tempToDate.month}/${tempToDate.day}/${tempToDate.year}",
                  ),
                ),
              ),
            ],
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: OutlinedButton.styleFrom(
                    foregroundColor: const Color(0xFF1565C0),
                    side: const BorderSide(color: Color(0xFF1565C0)),
                  ),
                  child: const Text("Close"),
                ),
                ElevatedButton(
                  onPressed: tempFromDate != null
                      ? () {
                          setState(() {
                            selectedRecent = widget.isDateRange
                                ? "Custom Range"
                                : "Selected Date";
                            fromDate = tempFromDate;
                            toDate =
                                widget.isDateRange ? tempToDate : tempFromDate;
                          });
                          _apply("Custom", fromDate, toDate);
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: tempFromDate != null
                        ? const Color(0xFF1565C0)
                        : Colors.grey,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Apply"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
