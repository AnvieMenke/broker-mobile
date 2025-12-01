import 'dart:math';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:broker_mobile/utils/fmt/fmt.dart';

class LineChartWidget extends StatefulWidget {
  final List<Map<String, dynamic>> data;
  final String xValueKey;
  final String yValueKey;
  final String? labelKey;
  final List<Color>? gradientColors;
  final String Function(num)? yLabelFormatter;
  final String Function(String)? xLabelFormatter;
  final bool scaleToThousands;

  const LineChartWidget({
    super.key,
    required this.data,
    required this.xValueKey,
    required this.yValueKey,
    this.labelKey,
    this.gradientColors,
    this.yLabelFormatter,
    this.xLabelFormatter,
    this.scaleToThousands = false,
  });

  @override
  State<LineChartWidget> createState() => _LineChartWidgetState();
}

class _LineChartWidgetState extends State<LineChartWidget> {
  List<Color> get _colors =>
      widget.gradientColors ?? [Colors.cyan, Colors.blue];

  num _scale(num value) => widget.scaleToThousands ? value / 1000 : value;

  List<FlSpot> get _spots => List.generate(
        widget.data.length,
        (i) => FlSpot(
          i.toDouble(),
          _scale(widget.data[i][widget.yValueKey] as num).toDouble(),
        ),
      );

  double _getMinY() =>
      widget.data.map((e) => e[widget.yValueKey] as num).reduce(min).toDouble();

  double _getMaxY() =>
      widget.data.map((e) => e[widget.yValueKey] as num).reduce(max).toDouble();

  _YScale _computeYScale() {
    double minY = _getMinY();
    double maxY = _getMaxY();

    if (minY == maxY) {
      minY = minY;
      maxY = maxY;
    }

    final interval = (maxY - minY) == 0 ? 1.0 : (maxY - minY) / 5;

    return _YScale(
      minY,
      maxY,
      interval,
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final aspectRatio = width < 400
            ? 1.2
            : width < 800
                ? 1.6
                : 1.8;

        return AspectRatio(
          aspectRatio: aspectRatio,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 40, 24, 12),
            child: LineChart(_mainData()),
          ),
        );
      },
    );
  }

  Widget _bottomTitle(double value, TitleMeta meta) {
    const textStyle = TextStyle(fontWeight: FontWeight.w600, fontSize: 11);
    String text = '';

    final index = value.toInt();
    if (index >= 0 && index < widget.data.length) {
      final rawX = widget.data[index][widget.xValueKey]?.toString() ?? '';
      text =
          widget.xLabelFormatter != null ? widget.xLabelFormatter!(rawX) : rawX;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 6,
      angle: -0.4,
      child: Text(
        text,
        style: textStyle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  LineChartData _mainData() {
    final yScale = _computeYScale();
    final minY = yScale.minY;
    final maxY = yScale.maxY;
    final yInterval = yScale.interval;
    final yIntervalTextBuffer = yInterval * 0.6;

    return LineChartData(
      lineTouchData: LineTouchData(
        enabled: true,
        touchTooltipData: LineTouchTooltipData(
          fitInsideHorizontally: true,
          fitInsideVertically: true,
          getTooltipItems: (spots) => spots.map((spot) {
            final index = spot.spotIndex;
            final yRaw = widget.data[index][widget.yValueKey];
            final xRaw = widget.data[index][widget.xValueKey];
            final yDisplay = FormatUtils.formatCurrency(yRaw);
            final xDisplay = widget.xLabelFormatter != null
                ? widget.xLabelFormatter!(xRaw.toString())
                : xRaw.toString();

            return LineTooltipItem(
              '$xDisplay\n$yDisplay',
              const TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
            );
          }).toList(),
        ),
      ),
      gridData: FlGridData(show: false),
      titlesData: FlTitlesData(
        rightTitles:
            const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 36,
            interval: max(
              1,
              (widget.data.length / 6).ceilToDouble(),
            ),
            getTitlesWidget: _bottomTitle,
          ),
        ),
        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 50,
            interval: yInterval,
            getTitlesWidget: (value, meta) {
              if (!(value == maxY || value == minY) &&
                  (((value - minY).abs() < yIntervalTextBuffer ||
                      (value - maxY).abs() < yIntervalTextBuffer))) {
                return const SizedBox.shrink();
              }

              final label = widget.yLabelFormatter != null
                  ? widget.yLabelFormatter!(
                      widget.scaleToThousands ? value * 1000 : value)
                  : value.toStringAsFixed(0);

              return SideTitleWidget(
                axisSide: meta.axisSide,
                space: 8,
                child: Text(label, style: const TextStyle(fontSize: 11)),
              );
            },
          ),
        ),
      ),
      borderData: FlBorderData(show: false),
      clipData: const FlClipData.none(),
      minX: 0,
      maxX: max(0, widget.data.length - 1).toDouble(),
      minY: minY,
      maxY: maxY,
      lineBarsData: [
        LineChartBarData(
          spots: _spots,
          isCurved: true,
          preventCurveOverShooting: true,
          gradient: LinearGradient(colors: _colors),
          barWidth: 3,
          isStrokeCapRound: true,
          isStrokeJoinRound: true,
          dotData: const FlDotData(show: false),
          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: _colors.map((c) => c.withValues(alpha: 0.2)).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class _YScale {
  final double minY;
  final double maxY;
  final double interval;

  _YScale(this.minY, this.maxY, this.interval);
}
