import 'package:broker_mobile/components/charts/pie_chart.dart';
import 'package:broker_mobile/service/position_service.dart';
import 'package:broker_mobile/utils/fmt/fmt.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:broker_mobile/service/balance_service.dart';
import 'package:broker_mobile/service/profile_service.dart';
import 'package:broker_mobile/components/charts/line_chart.dart';
import '../../../proto/reportpb/balance.pb.dart';
import '../../../service/convert_service.dart';
import '../../../utils/theme/custom_theme.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  Future<List<Balance>>? _futureBalances;
  Future<List<Map<String, dynamic>>>? _futureChartData;
  Future<List<Map<String, dynamic>>>? _futureAssetChartData;
  String? systemDate;

  Decimal totalBalance = Decimal.zero;
  Decimal totalTdLongMarketValue = Decimal.zero;
  Decimal totalSdShortMarketValue = Decimal.zero;
  Decimal totalPlValue = Decimal.zero;
  Decimal totalTdEquity = Decimal.zero;
  String plPercentage = "";
  String cashPercentage = "";

  final Map<String, dynamic> queryData = {"dateType": "Trade and Settle"};
  String? selectedRange;

  @override
  void initState() {
    super.initState();
    _initializeData();
  }

  Future<void> _initializeData() async {
    final profileService = ProfileService();
    final profileSystemDate = await profileService.getSystemDate();

    queryData['fromDate'] = profileSystemDate;
    queryData['toDate'] = profileSystemDate;

    systemDate = FormatUtils.formatDateStringtoIcu(profileSystemDate);
    setState(() {
      selectedRange = "1M";
      _futureBalances = _fetchBalancesAndTotals();
      _futureChartData = _fetchChartValues();
      _futureAssetChartData = _fetchAssetChartValues();
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

    final resp = await balanceService.listBalance(
      queryData,
      {'pageNo': 0, 'rowsPerPage': 0},
    );
    try {
      totalBalance = Decimal.parse(resp.summary.tdCashBalance.toString());
      totalTdLongMarketValue =
          Decimal.parse(resp.summary.tdLongMarketValue.toString());
      totalSdShortMarketValue =
          Decimal.parse(resp.summary.sdShortMarketValue.toString());
      totalPlValue = Decimal.parse(resp.summary.plValue.toString());
      totalTdEquity = Decimal.parse(resp.summary.tdEquity.toString());
      plPercentage = resp.summary.plPercent.toString();
      cashPercentage = resp.summary.cashPercent.toString();
    } catch (_) {
      totalBalance = Decimal.zero;
      totalTdLongMarketValue = Decimal.zero;
      totalSdShortMarketValue = Decimal.zero;
      totalPlValue = Decimal.zero;
      totalTdEquity = Decimal.zero;
      plPercentage = "";
      cashPercentage = "";
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

  Future<List<Map<String, dynamic>>> _fetchAssetChartValues() async {
    final positionService = PositionService();

    try {
      final resp = await positionService.getPositionAccountAllocation("Asset");
      return resp.positionAccountAllocations.map((item) {
        return {
          "title": (item.description.isNotEmpty) ? item.description : item.code,
          "percentValue": Decimal.tryParse(item.percentage) ?? Decimal.zero,
          "formattedValue": FormatUtils.formatMoneySuffix(
              ConvertService.safeDouble(item.value),
              showDecimal: true)
        };
      }).toList();
    } catch (e) {
      debugPrint("Error fetching asset chart values: $e");
      return [];
    }
  }

  Future<void> _refreshData() async {
    setState(() {
      _futureBalances = _fetchBalancesAndTotals();
      _futureChartData = _fetchChartValues();
      _futureAssetChartData = _fetchAssetChartValues();
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerRight,
                    child: Text(
                      "${totalPlValue > Decimal.zero ? '+' : ''}${FormatUtils.formatCurrency(totalPlValue)}",
                      style: TextStyle(
                        color: totalPlValue > Decimal.zero
                            ? Colors.greenAccent[400]
                            : totalPlValue < Decimal.zero
                                ? Colors.redAccent
                                : Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: ConvertService.safeDouble(plPercentage) > 0
                        ? Colors.greenAccent[700]
                        : ConvertService.safeDouble(plPercentage) < 0
                            ? Colors.redAccent[700]
                            : Colors.grey[700],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      FormatUtils.formatPercentage(plPercentage),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
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
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: ConvertService.safeDouble(cashPercentage) < 0
                    ? const Color(0xFF3B0000)
                    : ConvertService.safeDouble(cashPercentage) > 0
                        ? const Color(0xFF002B00)
                        : const Color(0xFF2E2E2E),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                FormatUtils.formatPercentage(cashPercentage),
                style: TextStyle(
                  color: ConvertService.safeDouble(cashPercentage) < 0
                      ? Colors.redAccent
                      : ConvertService.safeDouble(cashPercentage) > 0
                          ? Colors.greenAccent
                          : Colors.white70,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
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
          return AppTheme.buildLoadingIndicator();
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

  Widget _buildAssetChart() {
    return Column(
      children: [
        const Text(
          "Asset Allocation",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        if (systemDate != null)
          Text(
            "As of ${systemDate!}",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey[600],
            ),
          ),
        const SizedBox(height: 24),
        FutureBuilder<List<Map<String, dynamic>>>(
          future: _futureAssetChartData,
          builder: (context, snapshot) {
            if (_futureAssetChartData == null ||
                snapshot.connectionState == ConnectionState.waiting) {
              return AppTheme.buildLoadingIndicator();
            }

            if (snapshot.hasError) {
              return const Center(child: Text("Error loading chart"));
            }

            final data = snapshot.data ?? [];

            if (data.isEmpty) {
              return const Center(child: Text("No chart data found"));
            }

            return FlPieChart(data: data);
          },
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _futureBalances == null
            ? AppTheme.buildLoadingIndicator()
            : FutureBuilder<List<Balance>>(
                future: _futureBalances,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return AppTheme.buildLoadingIndicator();
                  }
                  if (snapshot.hasError) {
                    return Center(child: Text("Error: ${snapshot.error}"));
                  }

                  return RefreshIndicator(
                    color: const Color(0xFF1565C0),
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
                        const SizedBox(height: 24),
                        _buildAssetChart()
                      ],
                    ),
                  );
                },
              ),
      ),
    );
  }
}
