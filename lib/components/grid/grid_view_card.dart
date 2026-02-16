import 'package:flutter/material.dart';
import '../../utils/fmt/fmt.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter_html/flutter_html.dart';

class GridField {
  final String keyName;
  final String label;
  final dynamic value;
  final String? type;
  final bool visible;
  final bool floatRight;
  final bool hideLabel;
  final String gridPosition;
  final bool addAvatar;
  final bool hideDetails;

  const GridField({
    required this.keyName,
    required this.label,
    required this.value,
    this.type,
    this.visible = true,
    this.floatRight = false,
    this.hideLabel = false,
    this.gridPosition = "body",
    this.addAvatar = false,
    this.hideDetails = false,
  });

  Widget get displayValue {
    if (value is Widget) return value as Widget;

    final strValue = value?.toString() ?? "";

    switch (type) {
      case 'bool':
        final normalized = strValue.toLowerCase();
        final text = (normalized == 'true' || normalized == '1') ? "✔" : "✖";
        return Text(text);

      case 'status':
        Color bg;
        switch (strValue.toLowerCase()) {
          case 'pending':
            bg = Colors.orange;
            break;
          case 'approved':
          case 'active':
            bg = Colors.lightGreen;
            break;
          case 'canceled':
          case 'denied':
            bg = Colors.red;
            break;
          default:
            bg = Colors.grey;
        }
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: bg,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Text(
            strValue,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        );

      case 'date':
        final text = FormatUtils.formatPbDate(strValue);
        return Text(text);

      case 'dateTime':
        final text = FormatUtils.formatPbDateTime(strValue);
        return Text(text);

      case 'qty':
        final text = FormatUtils.formatQty(strValue);
        final qtyValue = Decimal.tryParse(strValue) ?? Decimal.zero;
        final color = qtyValue < Decimal.zero ? Colors.red : null;
        return Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: color,
          ),
        );

      case 'amount':
        final text = FormatUtils.formatCurrency(strValue);
        final amtValue = Decimal.tryParse(strValue) ?? Decimal.zero;
        final color = amtValue < Decimal.zero
            ? Colors.red
            : (amtValue > Decimal.zero ? Colors.green : Colors.grey);
        return Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: color,
          ),
        );

      case 'price':
        final text = FormatUtils.formatCurrency(strValue);
        return Text(text);

      case 'note':
        return Container(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Html(
            data: strValue,
            style: {
              "p": Style(
                margin: Margins.all(0),
                fontSize: FontSize(12),
                maxLines: 1,
                textOverflow: TextOverflow.ellipsis,
              ),
              "b": Style(
                fontWeight: FontWeight.bold,
              ),
            },
          ),
        );

      default:
        return Text(strValue);
    }
  }
}

class GridItem {
  final GridField? titleField;
  final GridField? subTitleField;
  final GridField? rightField;
  final List<GridField> fields;
  final List<GridItem>? subItems;

  const GridItem({
    this.titleField,
    this.subTitleField,
    this.rightField,
    this.fields = const [],
    this.subItems,
  });

  factory GridItem.fromMap(Map<String, dynamic> map) {
    GridField? extractedTitleField;
    GridField? extractedSubTitleField;
    GridField? extractedRightField;

    final parsedFields = <GridField>[];
    List<GridItem>? subItems;

    map.forEach((k, v) {
      if (k == 'subItems' && v is List) {
        subItems = v.map((sub) => GridItem.fromMap(sub)).toList();
        return;
      }

      if (v is Map && v.containsKey("value")) {
        final field = GridField(
          keyName: k,
          label: v["label"]?.toString() ?? "",
          value: v["value"],
          type: v["type"]?.toString(),
          visible: v["visible"] as bool? ?? true,
          floatRight: v["floatRight"] as bool? ?? false,
          hideLabel: v["hideLabel"] as bool? ?? false,
          gridPosition: v["gridPosition"]?.toString() ?? "body",
          addAvatar: v["addAvatar"] as bool? ?? false,
          hideDetails: v["hideDetails"] as bool? ?? false,
        );

        if (field.gridPosition == "title") {
          extractedTitleField = field;
        } else if (field.gridPosition == "subTitle") {
          extractedSubTitleField = field;
        } else if (field.gridPosition == "rightTitle") {
          extractedRightField = field;
        }

        parsedFields.add(field);
      } else {
        final field = GridField(
          keyName: k,
          label: k,
          value: v,
          gridPosition: "body",
        );
        parsedFields.add(field);
      }
    });

    return GridItem(
      titleField: extractedTitleField,
      subTitleField: extractedSubTitleField,
      rightField: extractedRightField,
      fields: parsedFields,
      subItems: subItems,
    );
  }
}

class GridViewCard extends StatelessWidget {
  final GridItem item;
  final List<PopupMenuEntry>? actions;
  final bool isSubItem;
  final bool disableActions;

  const GridViewCard({
    super.key,
    required this.item,
    this.actions,
    this.isSubItem = false,
    this.disableActions = false,
  });

  void _showDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) {
        final textTheme = Theme.of(ctx).textTheme;
        return AlertDialog(
          title: const Text("Details"),
          content: ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 400),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  ...item.fields.where((f) => !f.hideDetails).map(
                        (f) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Text(
                                "${f.label}: ",
                                style: textTheme.bodyMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              f.displayValue,
                            ],
                          ),
                        ),
                      ),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              child: const Text("Close"),
              onPressed: () => Navigator.pop(ctx),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final defaultActions = <PopupMenuEntry>[
      PopupMenuItem(
        value: "view_details",
        child: const Text("View Details"),
        onTap: () {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _showDetails(context);
          });
        },
      ),
    ];

    final mergedActions = [
      ...defaultActions,
      if (actions != null) ...actions!,
    ];

    final bodyFields = item.fields
        .where((f) => f.visible && f.gridPosition == "body")
        .toList();

    final content = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (item.titleField != null)
                    DefaultTextStyle(
                      style: textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      child: item.titleField!.displayValue,
                    ),
                  if (item.subTitleField != null)
                    DefaultTextStyle(
                      style: textTheme.bodySmall!.copyWith(
                        color: Colors.grey[600],
                      ),
                      child: item.subTitleField!.displayValue,
                    ),
                ],
              ),
            ),
            if (item.rightField != null)
              DefaultTextStyle(
                style: textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                ),
                child: item.rightField!.displayValue,
              ),
            if (!isSubItem && !disableActions)
              Align(
                alignment: Alignment.centerRight,
                child: PopupMenuButton(
                  icon: const Icon(Icons.more_horiz),
                  itemBuilder: (context) => mergedActions,
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        Column(
          children: () {
            final rows = <Widget>[];
            for (int i = 0; i < bodyFields.length; i++) {
              final f = bodyFields[i];
              if (f.floatRight) continue;

              GridField? rightField;
              if (i + 1 < bodyFields.length && bodyFields[i + 1].floatRight) {
                rightField = bodyFields[i + 1];
              }

              if (f.value is Widget) {
                rows.add(f.value);
              } else {
                rows.add(
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (!f.hideLabel)
                                Text(
                                  "${f.label}: ",
                                  style: textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              if (f.addAvatar && f.value.isNotEmpty) ...[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CircleAvatar(
                                      radius: 16,
                                      backgroundColor: Colors.blue.shade100,
                                      child: Text(
                                        f.value[0].toUpperCase(),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Flexible(
                                      child: Text(
                                        f.value,
                                        style: textTheme.bodyMedium,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ] else
                                f.displayValue,
                            ],
                          ),
                        ),
                        if (rightField != null)
                          Expanded(
                            flex: 2,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  if (!rightField.hideLabel)
                                    Text(
                                      "${rightField.label}: ",
                                      style: textTheme.bodyMedium?.copyWith(
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  rightField.displayValue,
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                );
              }
            }
            return rows;
          }(),
        ),
        if (item.subItems != null && item.subItems!.isNotEmpty) ...[
          const Divider(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: item.subItems!.asMap().entries.map((entry) {
              final index = entry.key;
              final sub = entry.value;
              final isEven = index % 2 == 0;

              final backgroundColor = isEven
                  ? Theme.of(context)
                      .colorScheme
                      .surface
                      .withValues(alpha: 0.03)
                  : Theme.of(context)
                      .colorScheme
                      .surface
                      .withValues(alpha: 0.15);

              return Container(
                color: backgroundColor,
                child: GridViewCard(
                  item: sub,
                  isSubItem: true,
                  disableActions: disableActions,
                ),
              );
            }).toList(),
          ),
        ],
      ],
    );

    if (isSubItem) {
      return SizedBox(width: double.infinity, child: content);
    } else {
      return Card(
        margin: const EdgeInsets.symmetric(vertical: 1.5),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: content,
        ),
      );
    }
  }
}

// ---------------------- Pagination ----------------------

class GridPagination {
  int pageNo;
  int rowsPerPage;
  int totalRows;
  bool reload;

  GridPagination({
    this.pageNo = 0,
    this.rowsPerPage = 10,
    this.totalRows = 0,
    this.reload = false,
  });

  GridPagination copyWith({
    int? pageNo,
    int? rowsPerPage,
    int? totalRows,
    bool? reload,
  }) {
    return GridPagination(
      pageNo: pageNo ?? this.pageNo,
      rowsPerPage: rowsPerPage ?? this.rowsPerPage,
      totalRows: totalRows ?? this.totalRows,
      reload: reload ?? this.reload,
    );
  }
}

class GridWithPagination extends StatelessWidget {
  final List<GridItem> items;
  final GridPagination pagination;
  final void Function(GridPagination newPagination) onPageChange;
  final List<PopupMenuEntry> Function(BuildContext, GridItem)? actionsBuilder;
  final Future<void> Function()? onRefresh;
  final bool hidePageInfo;
  final bool disableGridSystem;
  final bool disableActions;

  const GridWithPagination({
    super.key,
    required this.items,
    required this.pagination,
    required this.onPageChange,
    this.actionsBuilder,
    this.onRefresh,
    this.hidePageInfo = false,
    this.disableGridSystem = false,
    this.disableActions = false,
  });

  List<int> _pageRange(int currentPage, int totalPages, int maxButtons) {
    if (totalPages <= maxButtons) return List.generate(totalPages, (i) => i);

    int half = maxButtons ~/ 2;
    int start = currentPage - half;
    int end = currentPage + half;

    if (start < 0) {
      start = 0;
      end = maxButtons - 1;
    }
    if (end > totalPages - 1) {
      end = totalPages - 1;
      start = totalPages - maxButtons;
    }

    return List.generate(end - start + 1, (i) => start + i);
  }

  @override
  Widget build(BuildContext context) {
    final int rowsPerPage = pagination.rowsPerPage;
    final int totalRows = pagination.totalRows;
    final int currentPage = pagination.pageNo;
    final int totalPages =
        (rowsPerPage > 0) ? (totalRows / rowsPerPage).ceil() : 0;
    final int start = (totalRows == 0) ? 0 : (currentPage * rowsPerPage) + 1;
    final int end = start + items.length - 1;

    Widget gridContent;

    if (items.isEmpty) {
      gridContent = Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/no_data.png',
                width: 80,
                height: 80,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 16),
              Text(
                "No data found",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Colors.grey),
              ),
            ],
          ),
        ),
      );
    } else {
      gridContent = LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          int columns = 1;
          int maxPageButtons = 3;

          if (!disableGridSystem) {
            final breakpoints = [
              {'width': 1200, 'columns': 4, 'maxButtons': 9},
              {'width': 900, 'columns': 3, 'maxButtons': 7},
              {'width': 600, 'columns': 2, 'maxButtons': 5},
            ];

            for (final bp in breakpoints) {
              if (width >= bp['width']!) {
                columns = bp['columns']!;
                maxPageButtons = bp['maxButtons']!;
                break;
              }
            }
          }

          final pagesToShow =
              _pageRange(currentPage, totalPages, maxPageButtons);

          return Column(
            children: [
              Wrap(
                alignment: disableGridSystem
                    ? WrapAlignment.center
                    : WrapAlignment.start,
                spacing: 8,
                runSpacing: 8,
                children: items.map((item) {
                  final actions = actionsBuilder != null
                      ? actionsBuilder!(context, item)
                      : null;

                  double cardWidth;
                  if (disableGridSystem) {
                    cardWidth = width > 420 ? 400 : width - 20;
                  } else {
                    cardWidth = (width - (columns - 1) * 8) / columns;
                  }

                  return SizedBox(
                    width: cardWidth,
                    child: GridViewCard(
                      item: item,
                      actions: actions,
                      disableActions: disableActions,
                    ),
                  );
                }).toList(),
              ),
              if (totalRows > 10)
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: _buildPaginationControls(
                    context,
                    currentPage,
                    totalPages,
                    start,
                    end,
                    totalRows,
                    pagesToShow,
                  ),
                ),
            ],
          );
        },
      );
    }

    return RefreshIndicator(
      color: const Color(0xFF1565C0),
      onRefresh: onRefresh ?? () async {},
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.fromLTRB(2, 2, 2, 20),
        child: ConstrainedBox(
          constraints: const BoxConstraints(minHeight: 300),
          child: gridContent,
        ),
      ),
    );
  }

  Widget _buildPaginationControls(
    BuildContext context,
    int currentPage,
    int totalPages,
    int start,
    int end,
    int totalRows,
    List<int> pagesToShow,
  ) {
    final rowsPerPage = pagination.rowsPerPage;

    const double buttonWidth = 40;
    const int maxButtons = 7;
    final double maxScrollWidth = buttonWidth * maxButtons;
    final double navWidth = maxScrollWidth + (40 * 4);

    final ScrollController scrollController = ScrollController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (scrollController.hasClients) {
        final double targetOffset =
            (currentPage - 2).clamp(0, totalPages) * buttonWidth;
        scrollController.jumpTo(
          targetOffset.clamp(
            0,
            scrollController.position.maxScrollExtent,
          ),
        );
      }
    });

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!hidePageInfo)
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: navWidth),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        totalRows == 0
                            ? "No results"
                            : "Showing $start-${end.clamp(0, totalRows)} of $totalRows",
                        style: Theme.of(context).textTheme.bodyMedium,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text("Rows per page: "),
                        DropdownButton<int>(
                          value: rowsPerPage,
                          items: [5, 10, 20, 50, 100].map((rowPerPage) {
                            return DropdownMenuItem<int>(
                              value: rowPerPage,
                              child: Text('$rowPerPage'),
                            );
                          }).toList(),
                          onChanged: (newRowsPerPage) {
                            if (newRowsPerPage != null) {
                              onPageChange(
                                pagination.copyWith(
                                  pageNo: 0,
                                  rowsPerPage: newRowsPerPage,
                                  reload: true,
                                ),
                              );
                            }
                          },
                          underline: const SizedBox(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          const SizedBox(height: 8),
          Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: navWidth),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    tooltip: 'First',
                    icon: const Icon(Icons.first_page),
                    onPressed: currentPage > 0
                        ? () => onPageChange(
                              pagination.copyWith(pageNo: 0, reload: true),
                            )
                        : null,
                  ),
                  IconButton(
                    tooltip: 'Previous',
                    icon: const Icon(Icons.chevron_left),
                    onPressed: currentPage > 0
                        ? () => onPageChange(
                              pagination.copyWith(
                                pageNo: currentPage - 1,
                                reload: true,
                              ),
                            )
                        : null,
                  ),
                  Flexible(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: maxScrollWidth),
                      child: SingleChildScrollView(
                        controller: scrollController,
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            totalPages,
                            (p) => Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 2),
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: p == currentPage
                                      ? Colors.blueAccent
                                      : Theme.of(context).colorScheme.surface,
                                  foregroundColor: p == currentPage
                                      ? Colors.white
                                      : Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.color,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 4,
                                    horizontal: 8,
                                  ),
                                  minimumSize: const Size(30, 30),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                                onPressed: p == currentPage
                                    ? null
                                    : () => onPageChange(
                                          pagination.copyWith(
                                            pageNo: p,
                                            reload: true,
                                          ),
                                        ),
                                child: Text(
                                  '${p + 1}',
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    tooltip: 'Next',
                    icon: const Icon(Icons.chevron_right),
                    onPressed: currentPage < totalPages - 1
                        ? () => onPageChange(
                              pagination.copyWith(
                                pageNo: currentPage + 1,
                                reload: true,
                              ),
                            )
                        : null,
                  ),
                  IconButton(
                    tooltip: 'Last',
                    icon: const Icon(Icons.last_page),
                    onPressed: currentPage < totalPages - 1
                        ? () => onPageChange(
                              pagination.copyWith(
                                pageNo: totalPages - 1,
                                reload: true,
                              ),
                            )
                        : null,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
