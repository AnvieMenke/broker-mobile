import 'package:flutter/material.dart';
import '../../utils/fmt/fmt.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter_html/flutter_html.dart';

class GridField {
  final String keyName;
  final String label;
  final String value;
  final String? type;
  final bool visible;
  final bool floatRight;
  final bool hideLabel;
  final String gridPosition;
  final bool addAvatar;

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
  });

  Widget get displayValue {
    switch (type) {
      case 'bool':
        final normalized = value.toLowerCase();
        final text = (normalized == 'true' || normalized == '1') ? "✔" : "✖";
        return Text(text);

      case 'status':
        Color bg;
        switch (value.toLowerCase()) {
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
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        );
      case 'date':
        final text = FormatUtils.formatPbDate(value);
        return Text(text);
      case 'qty':
        final text = FormatUtils.formatQty(value);
        final qtyValue = Decimal.tryParse(value) ?? Decimal.zero;
        final color = qtyValue < Decimal.zero ? Colors.red : null;

        return Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: color,
          ),
        );

      case 'amount':
        final text = FormatUtils.formatCurrency(value);
        final amtValue = Decimal.tryParse(value) ?? Decimal.zero;
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
        final text = FormatUtils.formatCurrency(value);

        return Text(text);
      case 'note':
        return Html(
          data: value,
          style: {
            "p": Style(
              margin: Margins.all(0),
              fontSize: FontSize(12),
            ),
            "b": Style(
              fontWeight: FontWeight.bold,
            ),
          },
        );
      default:
        return Text(value);
    }
  }
}

class GridItem {
  final GridField? titleField;
  final GridField? subTitleField;
  final GridField? rightField;
  final List<GridField> fields;

  const GridItem({
    this.titleField,
    this.subTitleField,
    this.rightField,
    this.fields = const [],
  });

  factory GridItem.fromMap(Map<String, dynamic> map) {
    GridField? extractedTitleField;
    GridField? extractedSubTitleField;
    GridField? extractedRightField;

    final parsedFields = <GridField>[];

    map.forEach((k, v) {
      if (v is Map && v.containsKey("value")) {
        final field = GridField(
          keyName: k,
          label: v["label"]?.toString() ?? "",
          value: v["value"]?.toString() ?? "",
          type: v["type"]?.toString(),
          visible: v["visible"] as bool? ?? true,
          floatRight: v["floatRight"] as bool? ?? false,
          hideLabel: v["hideLabel"] as bool? ?? false,
          gridPosition: v["gridPosition"]?.toString() ?? "body",
          addAvatar: v["addAvatar"] as bool? ?? false,
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
          value: v?.toString() ?? "",
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
    );
  }
}

class GridViewCard extends StatelessWidget {
  final GridItem item;
  final List<PopupMenuEntry>? actions;

  const GridViewCard({
    super.key,
    required this.item,
    this.actions,
  });

  void _showDetails(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) {
        final textTheme = Theme.of(ctx).textTheme;

        return AlertDialog(
          title: const Text("Details"),
          content: ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 400,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  ...item.fields.map(
                    (f) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Row(
                        children: [
                          Text("${f.label}: ", style: textTheme.bodyMedium),
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

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: PopupMenuButton(
                        icon: const Icon(Icons.more_horiz),
                        itemBuilder: (context) => mergedActions,
                      ),
                    ),
                    if (item.rightField != null)
                      DefaultTextStyle(
                        style: textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                        child: item.rightField!.displayValue,
                      ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            ...item.fields
                .where((f) => f.visible && f.gridPosition == "body")
                .map(
                  (f) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Row(
                      mainAxisAlignment: f.floatRight
                          ? MainAxisAlignment.spaceBetween
                          : MainAxisAlignment.start,
                      children: [
                        if (!f.hideLabel)
                          Text(
                            "${f.label}: ",
                            style: textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        else
                          const SizedBox.shrink(),
                        if (f.addAvatar && f.value.isNotEmpty) ...[
                          CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.blue.shade100,
                            child: Text(
                              f.value[0].toUpperCase(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              f.value,
                              style: textTheme.bodyMedium,
                            ),
                          ),
                        ] else
                          f.displayValue,
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

// ---------------------- Pagination additions ----------------------

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

  const GridWithPagination({
    super.key,
    required this.items,
    required this.pagination,
    required this.onPageChange,
    this.actionsBuilder,
  });

  List<int> _pageRange(int currentPage, int totalPages, int maxButtons) {
    if (totalPages <= maxButtons) {
      return List.generate(totalPages, (i) => i);
    }

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

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(2, 2, 2, 20),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;

          final breakpoints = [
            {'width': 1200, 'columns': 4, 'maxButtons': 9},
            {'width': 900, 'columns': 3, 'maxButtons': 7},
            {'width': 600, 'columns': 2, 'maxButtons': 5},
          ];

          int columns = 1;
          int maxPageButtons = 3;

          for (final bp in breakpoints) {
            if (width >= bp['width']!) {
              columns = bp['columns']!;
              maxPageButtons = bp['maxButtons']!;
              break;
            }
          }

          final pagesToShow =
              _pageRange(currentPage, totalPages, maxPageButtons);

          return Column(
            children: [
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: items.map((item) {
                  final actions = actionsBuilder != null
                      ? actionsBuilder!(context, item)
                      : null;
                  final cardWidth = (width - (columns - 1) * 8) / columns;
                  return SizedBox(
                    width: cardWidth,
                    child: GridViewCard(item: item, actions: actions),
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

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                totalRows == 0
                    ? "No results"
                    : "Showing $start-${end.clamp(0, totalRows)} of $totalRows",
                style: Theme.of(context).textTheme.bodyMedium,
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
                        onPageChange(pagination.copyWith(
                          pageNo: 0,
                          rowsPerPage: newRowsPerPage,
                          reload: true,
                        ));
                      }
                    },
                    underline: const SizedBox(),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    tooltip: 'First',
                    icon: const Icon(Icons.first_page),
                    onPressed: currentPage > 0
                        ? () => onPageChange(
                            pagination.copyWith(pageNo: 0, reload: true))
                        : null,
                  ),
                  IconButton(
                    tooltip: 'Previous',
                    icon: const Icon(Icons.chevron_left),
                    onPressed: currentPage > 0
                        ? () => onPageChange(
                              pagination.copyWith(
                                  pageNo: currentPage - 1, reload: true),
                            )
                        : null,
                  ),
                  ...pagesToShow.map(
                    (p) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: p == currentPage
                              ? Colors.blueAccent
                              : Theme.of(context).colorScheme.surface,
                          foregroundColor: p == currentPage
                              ? Colors.white
                              : Theme.of(context).textTheme.bodyMedium?.color,
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 8),
                          minimumSize: const Size(30, 30),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                        onPressed: p == currentPage
                            ? null
                            : () => onPageChange(
                                  pagination.copyWith(pageNo: p, reload: true),
                                ),
                        child: Text(
                          '${p + 1}',
                          style: const TextStyle(fontSize: 12),
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
                                  pageNo: currentPage + 1, reload: true),
                            )
                        : null,
                  ),
                  IconButton(
                    tooltip: 'Last',
                    icon: const Icon(Icons.last_page),
                    onPressed: currentPage < totalPages - 1
                        ? () => onPageChange(
                              pagination.copyWith(
                                  pageNo: totalPages - 1, reload: true),
                            )
                        : null,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
