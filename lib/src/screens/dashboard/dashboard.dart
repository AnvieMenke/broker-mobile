import 'package:broker_mobile/utils/fmt/fmt.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:broker_mobile/service/balance_service.dart';
import 'package:broker_mobile/service/profile_service.dart';
import 'package:broker_mobile/components/charts/line_chart.dart';
import '../../../proto/reportpb/balance.pb.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  Future<List<Balance>>? _futureBalances;
  Future<List<Map<String, dynamic>>>? _futureChartData;

  Decimal totalBalance = Decimal.zero;
  Decimal totalTdLongMarketValue = Decimal.zero;
  Decimal totalSdShortMarketValue = Decimal.zero;

  final Map<String, dynamic> queryData = {"dateType": "Trade and Settle"};
  String? selectedRange;

  @override
  void initState() {
    super.initState();
    _initializeData();
  }

  Future<void> _initializeData() async {
    final profileService = ProfileService();
    final systemDate = await profileService.getSystemDate();

    queryData['fromDate'] = systemDate;
    queryData['toDate'] = systemDate;

    setState(() {
      selectedRange = "1M";
      _futureBalances = _fetchBalancesAndTotals();
      _futureChartData = _fetchChartValues();
    });
  }

  Map<String, dynamic> _getPeriodParams(String? period) {
    if (period == null || period == "All Time" || period.isEmpty) {
      return {"periodRange": 0, "periodType": ""};
    }

    final type = period.endsWith("Y") ? "YEAR" : "MONTH";
    final range = int.tryParse(period.replaceAll(RegExp(r'[^0-9]'), '')) ?? 0;

    return {"periodRange": range, "periodType": type};
  }

  Future<List<Balance>> _fetchBalancesAndTotals() async {
    final balanceService = BalanceService();
    final params = _getPeriodParams(selectedRange);

    final resp = await balanceService.listBalance(
      {...queryData, ...params},
      {'pageNo': 0, 'rowsPerPage': 0},
    );

    try {
      totalBalance = Decimal.parse(resp.summary.tdCashBalance.toString());
      totalTdLongMarketValue =
          Decimal.parse(resp.summary.tdLongMarketValue.toString());
      totalSdShortMarketValue =
          Decimal.parse(resp.summary.sdShortMarketValue.toString());
    } catch (_) {
      totalBalance = Decimal.zero;
      totalTdLongMarketValue = Decimal.zero;
      totalSdShortMarketValue = Decimal.zero;
    }

    return resp.balances;
  }

  Future<List<Map<String, dynamic>>> _fetchChartValues() async {
    if (selectedRange == null) return [];

    final balanceService = BalanceService();
    final params = _getPeriodParams(selectedRange);

    try {
      final resp = await balanceService.listDashboardBalance({...params});

      return resp.dashboardBalances.map((item) {
        final date = item.date;
        final formattedDate =
            "${FormatUtils.formatMonthAbbreviation(date.month)} ${date.day} ${date.year}";
        final yValue = double.tryParse(item.tdCashBalance.toString()) ?? 0.0;

        return {"x": formattedDate, "y": yValue};
      }).toList();
    } catch (_) {
      return [];
    }
  }

  Future<void> _refreshData() async {
    setState(() {
      _futureBalances = _fetchBalancesAndTotals();
      _futureChartData = _fetchChartValues();
    });
  }

  Widget _buildSummaryCard() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Account Summary",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const Divider(height: 20),
            Text(
              FormatUtils.formatCurrency(totalBalance),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildMarketValue(
                  icon: FontAwesomeIcons.arrowTrendUp,
                  color: Colors.green,
                  label: "Long Market Value",
                  value: totalTdLongMarketValue,
                ),
                _buildMarketValue(
                  icon: FontAwesomeIcons.arrowTrendDown,
                  color: Colors.red,
                  label: "Short Market Value",
                  value: totalSdShortMarketValue,
                  alignRight: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMarketValue({
    required IconData icon,
    required Color color,
    required String label,
    required Decimal value,
    bool alignRight = false,
  }) {
    return Row(
      children: [
        Icon(icon, size: 14, color: color),
        const SizedBox(width: 4),
        Text(
          "$label\n${FormatUtils.formatCurrency(value)}",
          textAlign: alignRight ? TextAlign.right : TextAlign.left,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildPeriodRangeSelector() {
    final ranges = [
      "All Time",
      "1M",
      "3M",
      "6M",
      "9M",
      "1Y",
      "3Y",
      "5Y",
      "7Y",
      "9Y"
    ];

    return Column(
      children: [
        const Text(
          "Account Balance Overview",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 24),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 6,
          runSpacing: 6,
          children: ranges.map((range) {
            final isSelected = range == selectedRange;
            return GestureDetector(
              onTap: () {
                if (!isSelected) {
                  setState(() {
                    selectedRange = range;
                    _futureChartData = _fetchChartValues();
                  });
                }
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.blue : Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  range,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: isSelected
                        ? Colors.white
                        : Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.color
                            ?.withValues(alpha: 0.8),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget _buildLineChart() {
    return FutureBuilder<List<Map<String, dynamic>>>(
      future: _futureChartData,
      builder: (context, snapshot) {
        if (_futureChartData == null ||
            snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return const Center(child: Text("Error loading chart"));
        }

        final data = snapshot.data ?? [];
        if (data.isEmpty) {
          return const Center(child: Text("No chart data found"));
        }

        return LineChartWidget(
          data: data,
          xValueKey: 'x',
          yValueKey: 'y',
          yLabelFormatter: FormatUtils.formatMoneySuffix,
          xLabelFormatter: (v) => v,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _futureBalances == null
            ? const Center(child: CircularProgressIndicator())
            : FutureBuilder<List<Balance>>(
                future: _futureBalances,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.hasError) {
                    return Center(child: Text("Error: ${snapshot.error}"));
                  }

                  return RefreshIndicator(
                    onRefresh: _refreshData,
                    child: ListView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(16),
                      children: [
                        _buildSummaryCard(),
                        const SizedBox(height: 20),
                        _buildPeriodRangeSelector(),
                        const SizedBox(height: 12),
                        _buildLineChart(),
                      ],
                    ),
                  );
                },
              ),
      ),
    );
  }
}
