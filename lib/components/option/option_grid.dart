import 'package:broker_mobile/components/option/option_card.dart';
import 'package:flutter/material.dart';

class OptionGrid extends StatelessWidget {
  final List<Map<String, dynamic>> options;
  final void Function(int index) onTap;
  final double maxWidth;
  final double maxCrossAxisExtent;

  const OptionGrid({
    super.key,
    required this.options,
    required this.onTap,
    this.maxWidth = 800,
    this.maxCrossAxisExtent = 200,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: GridView.builder(
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: maxCrossAxisExtent,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
            childAspectRatio: 1,
          ),
          itemCount: options.length,
          itemBuilder: (context, index) {
            final item = options[index];
            return OptionCard(
              title: item["title"] as String,
              icon: item["icon"] as IconData,
              onTap: () => onTap(index),
            );
          },
        ),
      ),
    );
  }
}
