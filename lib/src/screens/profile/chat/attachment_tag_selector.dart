import 'package:flutter/material.dart';

class AttachmentTagSelector extends StatelessWidget {
  final List<String> tags;
  final String? selectedTag;
  final ValueChanged<String> onSelected;

  const AttachmentTagSelector({
    super.key,
    required this.tags,
    required this.selectedTag,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Wrap(
      spacing: 6,
      runSpacing: 6,
      children: tags.map((tag) {
        final selected = selectedTag == tag;

        return ChoiceChip(
          label: Text(
            tag,
            style: const TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
          selected: selected,
          onSelected: (_) => onSelected(tag),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: const VisualDensity(
            horizontal: -2,
            vertical: -2,
          ),
          labelPadding: const EdgeInsets.symmetric(horizontal: 4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          selectedColor: theme.colorScheme.primaryContainer,
          backgroundColor: theme.colorScheme.surface,
          side: BorderSide(
            color: selected ? theme.colorScheme.primary : theme.dividerColor,
          ),
          showCheckmark: false,
        );
      }).toList(),
    );
  }
}
