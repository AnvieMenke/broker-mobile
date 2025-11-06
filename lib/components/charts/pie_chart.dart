import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class FlPieChart extends StatefulWidget {
  final List<Map<String, dynamic>> data;

  const FlPieChart({super.key, required this.data});

  @override
  State<FlPieChart> createState() => _FlPieChartState();
}

class _FlPieChartState extends State<FlPieChart> {
  late List<Color> generatedColors;
  late double total;

  @override
  void initState() {
    super.initState();
    generatedColors = _generateColors(widget.data.length);
    total = widget.data.fold<double>(
      0,
      (sum, item) => sum + (item['percentValue'] ?? 0).toDouble(),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.data.isEmpty || total == 0) {
      return const Center(child: Text('No data to display'));
    }

    final width = MediaQuery.of(context).size.width;
    final isWide = width > 600; // move legend to the right on wider screens

    final chart = SizedBox(
      height: 240,
      child: Center(
        child: PieChart(
          PieChartData(
            borderData: FlBorderData(show: false),
            sectionsSpace: 0,
            centerSpaceRadius: 60,
            sections: _buildSections(),
          ),
        ),
      ),
    );

    final legend = _buildLegend();

    return isWide
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: chart),
              const SizedBox(width: 24),
              SizedBox(width: 250, child: legend),
            ],
          )
        : Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              chart,
              const SizedBox(height: 12),
              legend,
            ],
          );
  }

  Widget _buildLegend() {
    return Column(
      children: [
        // Header row
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: const [
              Expanded(
                  flex: 6,
                  child: Text(
                    "Asset",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )),
              Expanded(
                  flex: 3,
                  child: Text(
                    "Percent",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right,
                  )),
              Expanded(
                  flex: 3,
                  child: Text(
                    "Value",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right,
                  )),
            ],
          ),
        ),

        const SizedBox(height: 4),

        // Legend rows
        Column(
          children: widget.data.asMap().entries.map((entry) {
            final i = entry.key;
            final item = entry.value;
            final color = generatedColors[i];
            final percentValue = (item['percentValue'] ?? 0).toDouble();
            final percent = total > 0 ? (percentValue / total) * 100 : 0.0;

            String formattedPercent;
            if (percent % 1 == 0) {
              formattedPercent = '${percent.toStringAsFixed(0)}%';
            } else {
              final rounded = double.parse(percent.toStringAsFixed(2));
              formattedPercent =
                  '${rounded.toStringAsFixed(rounded % 1 == 0 ? 0 : 2)}%';
            }

            final formattedValue = item['formattedValue']?.toString() ?? '';

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                            color: color,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Flexible(
                          child: Text(
                            item['title'] ?? '',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      formattedPercent,
                      textAlign: TextAlign.right,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerRight,
                      child: Text(
                        formattedValue,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  List<PieChartSectionData> _buildSections() {
    return widget.data.asMap().entries.map((entry) {
      final i = entry.key;
      final item = entry.value;
      final value = (item['percentValue'] ?? 0).toDouble();

      return PieChartSectionData(
        color: generatedColors[i],
        value: value,
        radius: 55,
        showTitle: false,
      );
    }).toList();
  }

  List<Color> _generateColors(int count) {
    final random = Random();
    return List.generate(count, (i) {
      final hue = (i * 360 / count + random.nextDouble() * 10) % 360;
      final saturation = 0.55 + random.nextDouble() * 0.15;
      final lightness = 0.5 + random.nextDouble() * 0.2;
      return HSLColor.fromAHSL(1.0, hue, saturation, lightness).toColor();
    });
  }
}
