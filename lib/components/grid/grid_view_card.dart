import 'package:flutter/material.dart';

class GridField {
  final String keyName;
  final String label;
  final String value;
  final String? type;
  final bool visible;
  final bool floatRight;
  final bool hideLabel;

  const GridField({
    required this.keyName,
    required this.label,
    required this.value,
    this.type,
    this.visible = true,
    this.floatRight = false,
    this.hideLabel = false,
  });

  Widget get displayValue {
    if (type == 'bool') {
      final normalized = value.toLowerCase();
      final text = (normalized == 'true' || normalized == '1') ? "✔" : "✖";
      return Text(text);
    } else if (type == 'status') {
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
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );
    }

    return Text(value);
  }
}

class GridItem {
  final String title;
  final List<GridField> fields;
  final List<GridItem> children;

  const GridItem({
    required this.title,
    this.fields = const [],
    this.children = const [],
  });

  factory GridItem.fromMap(Map<String, dynamic> map) {
    final title = map['title']?.toString() ?? '';

    final rawChildren = map['children'];
    final parsedChildren = <GridItem>[];
    if (rawChildren is List) {
      for (final c in rawChildren) {
        if (c is Map<String, dynamic>) {
          parsedChildren.add(GridItem.fromMap(c));
        } else if (c is GridItem) {
          parsedChildren.add(c);
        }
      }
    }

    final parsedFields = <GridField>[];
    map.forEach((k, v) {
      if (k == 'title' || k == 'children') return;

      if (v is Map && v.containsKey("value")) {
        parsedFields.add(GridField(
          keyName: k,
          label: v["label"]?.toString() ?? "",
          value: v["value"]?.toString() ?? "",
          type: v["type"]?.toString(),
          visible: v["visible"] as bool? ?? true,
          floatRight: v["floatRight"] as bool? ?? false,
          hideLabel: v["hideLabel"] as bool? ?? false,
        ));
      } else {
        parsedFields.add(GridField(
          keyName: k,
          label: k,
          value: v?.toString() ?? "",
          visible: true,
        ));
      }
    });

    return GridItem(
      title: title,
      fields: parsedFields,
      children: parsedChildren,
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
          title: Text(item.title),
          content: SizedBox(
            width: double.maxFinite,
            height: 400,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  if (item.children.isNotEmpty) ...[
                    const SizedBox(height: 12),
                    Text("Children:", style: textTheme.titleSmall),
                    ...item.children.map(
                      (c) => Padding(
                        padding: const EdgeInsets.only(left: 8, top: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              c.title,
                              style: textTheme.bodyMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ...c.fields.map(
                              (f) => Row(
                                children: [
                                  Text("${f.label}: ",
                                      style: textTheme.bodySmall),
                                  f.displayValue,
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.title,
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                PopupMenuButton(
                  icon: const Icon(Icons.more_horiz),
                  itemBuilder: (context) => mergedActions,
                ),
              ],
            ),
            const SizedBox(height: 8),
            ...item.fields.where((f) => f.visible).map(
                  (f) => Row(
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
                      f.displayValue,
                    ],
                  ),
                ),
            if (item.children.isNotEmpty) ...[
              const Divider(),
              Column(
                children: item.children
                    .map((child) => _GridChildRow(child: child))
                    .toList(),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _GridChildRow extends StatelessWidget {
  final GridItem child;

  const _GridChildRow({required this.child});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 16,
            backgroundColor: Colors.grey.shade200,
            child: Text(
              child.title.isNotEmpty ? child.title[0] : '?',
              style: const TextStyle(color: Colors.black),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: child.fields
                  .where((f) => f.visible)
                  .map(
                    (f) => Row(
                      children: [
                        Text("${f.keyName}: ", style: textTheme.bodySmall),
                        f.displayValue,
                      ],
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
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
  final int maxPageButtonsToShow;
  final List<PopupMenuEntry> Function(BuildContext, GridItem)? actionsBuilder;

  const GridWithPagination({
    super.key,
    required this.items,
    required this.pagination,
    required this.onPageChange,
    this.maxPageButtonsToShow = 5,
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
    final pagesToShow =
        _pageRange(currentPage, totalPages, maxPageButtonsToShow);

    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.all(12.0),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              final actions = actionsBuilder != null
                  ? actionsBuilder!(context, item)
                  : null;

              return GridViewCard(
                item: item,
                actions: actions,
              );
            },
          ),
        ),
        Container(
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
              Row(
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
                        ? () => onPageChange(pagination.copyWith(
                            pageNo: currentPage - 1, reload: true))
                        : null,
                  ),
                  ...pagesToShow.map((p) => Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2),
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: p == currentPage
                                  ? Colors.blueAccent
                                  : Theme.of(context).colorScheme.surface,
                              foregroundColor: p == currentPage
                                  ? Theme.of(context).colorScheme.onPrimary
                                  : Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.color,
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                            onPressed: p == currentPage
                                ? null
                                : () => onPageChange(pagination.copyWith(
                                    pageNo: p, reload: true)),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text('${p + 1}'),
                            ),
                          ),
                        ),
                      )),
                  IconButton(
                    tooltip: 'Next',
                    icon: const Icon(Icons.chevron_right),
                    onPressed: currentPage < totalPages - 1
                        ? () => onPageChange(pagination.copyWith(
                            pageNo: currentPage + 1, reload: true))
                        : null,
                  ),
                  IconButton(
                    tooltip: 'Last',
                    icon: const Icon(Icons.last_page),
                    onPressed: currentPage < totalPages - 1
                        ? () => onPageChange(pagination.copyWith(
                            pageNo: totalPages - 1, reload: true))
                        : null,
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
