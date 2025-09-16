import 'package:flutter/material.dart';

class GridField {
  final String keyName;
  final String value;
  final String? type;
  final bool visible;
  final bool floatRight;
  final bool hideLabel;

  const GridField({
    required this.keyName,
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
          value: v["value"]?.toString() ?? "",
          type: v["type"]?.toString(),
          visible: v["visible"] as bool? ?? true,
          floatRight: v["floatRight"] as bool? ?? false,
          hideLabel: v["hideLabel"] as bool? ?? false,
        ));
      } else {
        parsedFields.add(GridField(
          keyName: k,
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
                          Text("${f.keyName}: ", style: textTheme.bodyMedium),
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
                                  Text("${f.keyName}: ",
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
        onTap: () => Future.delayed(
          Duration.zero,
          () => _showDetails(context),
        ),
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
                          "${f.keyName}: ",
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
