import 'package:flutter/material.dart';

class ModeSelector extends StatelessWidget {
  final String value;
  final ValueChanged<String> onChanged;

  const ModeSelector({
    super.key,
    required this.value,
    required this.onChanged,
  });

  PopupMenuItem<String> menu(String value) {
    return PopupMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      tooltip: "Select Mode",
      onSelected: onChanged,
      itemBuilder: (_) => [
        menu("All"),
        menu("User Guide"),
        menu("Field Definition"),
        const PopupMenuDivider(),
        menu("Data Scan"),
        menu("Account Attachment"),
        menu("Ask AI"),
      ],
      child: Container(
        width: 180,
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 7,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).dividerColor,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            const Icon(
              Icons.tune,
              size: 18,
            ),
            const SizedBox(width: 6),
            Expanded(
              child: Text(
                value,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(width: 2),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}
