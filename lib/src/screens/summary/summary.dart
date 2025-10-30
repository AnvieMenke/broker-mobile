import 'package:broker_mobile/components/containers/page_list_container.dart';
import 'package:broker_mobile/components/grid/grid_view_card.dart';
import 'package:broker_mobile/service/convert_service.dart';
import 'package:broker_mobile/utils/fmt/fmt.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:broker_mobile/service/balance_service.dart';
import 'package:broker_mobile/service/profile_service.dart';
import '../../../proto/reportpb/balance.pb.dart';
import '../../../utils/theme/custom_theme.dart';

class AccountSummaryPage extends StatefulWidget {
  const AccountSummaryPage({super.key});

  @override
  AccountSummaryState createState() => AccountSummaryState();
}

class AccountSummaryState extends State<AccountSummaryPage> {
  Future<List<Balance>>? _futureBalances;
  late Decimal totalBalance = Decimal.zero;
  late Decimal totalTdLongMarketValue = Decimal.zero;
  late Decimal totalSdShortMarketValue = Decimal.zero;
  Decimal totalPlValue = Decimal.zero;
  Decimal totalTdEquity = Decimal.zero;
  String plPercentage = "";
  String cashPercentage = "";

  final Map<String, dynamic> queryData = {
    "dateType": "Trade and Settle",
  };

  GridPagination pagination = GridPagination(
    pageNo: 0,
    rowsPerPage: 10,
    totalRows: 0,
    reload: true,
  );

  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() async {
    final profileService = ProfileService();
    final previousDate = await profileService.getPreviousDate();

    setState(() {
      queryData['fromDate'] = previousDate;
      queryData['toDate'] = previousDate;
      _futureBalances = _listBalance();
    });
  }

  Future<List<Balance>> _listBalance() async {
    final balanceService = BalanceService();
    final resp = await balanceService.listBalance(queryData, {
      'pageNo': pagination.pageNo,
      'rowsPerPage': pagination.rowsPerPage,
    });

    setState(() {
      pagination = pagination.copyWith(
        totalRows: resp.summary.totalRows,
        reload: false,
      );
    });

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
    } catch (e) {
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

  Future<void> _refreshData() async {
    setState(() {
      _futureBalances = _listBalance();
    });
    await _futureBalances;
  }

  void _onPageChange(GridPagination newPagination) {
    setState(() {
      pagination = newPagination;
      _futureBalances = _listBalance();
    });
  }

  List<GridItem> _buildGridItems(List<Balance> balances) {
    return balances.map((acct) {
      return GridItem.fromMap({
        "widget": {
          "value": ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "${acct.accountName}\n${acct.accountNo}",
                          style: const TextStyle(fontSize: 12),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            FormatUtils.formatCurrency(acct.tdCashBalance),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              FittedBox(
                                fit: BoxFit.scaleDown,
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "${ConvertService.safeDouble(acct.plValue) > 0 ? '+' : ''}${FormatUtils.formatCurrency(acct.plValue)} (${FormatUtils.formatPercentage(acct.plPercent)})",
                                  style: TextStyle(
                                    color: ConvertService.safeDouble(
                                                acct.plValue) >
                                            0
                                        ? Colors.greenAccent[400]
                                        : ConvertService.safeDouble(
                                                    acct.plValue) <
                                                0
                                            ? Colors.redAccent
                                            : Colors.grey,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(FontAwesomeIcons.arrowTrendUp,
                              size: 14, color: Colors.green),
                          const SizedBox(width: 4),
                          Text(
                            "Long Market Value\n${FormatUtils.formatCurrency(acct.tdLongMarketValue)}",
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(FontAwesomeIcons.arrowTrendDown,
                              size: 14, color: Colors.red),
                          const SizedBox(width: 4),
                          Text(
                            "Short Market Value\n${FormatUtils.formatCurrency(acct.sdShortMarketValue)}",
                            textAlign: TextAlign.right,
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: ConvertService.safeDouble(acct.cashPercent) < 0
                          ? const Color(0xFF3B0000)
                          : ConvertService.safeDouble(acct.cashPercent) > 0
                              ? const Color(0xFF002B00)
                              : const Color(0xFF2E2E2E),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      FormatUtils.formatPercentage(acct.cashPercent),
                      style: TextStyle(
                        color: ConvertService.safeDouble(acct.cashPercent) < 0
                            ? Colors.redAccent
                            : ConvertService.safeDouble(acct.cashPercent) > 0
                                ? Colors.greenAccent
                                : Colors.white70,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        },
      });
    }).toList();
  }

  // Widget _buildTotalCard() {
  //   return Center(
  //     child: ConstrainedBox(
  //       constraints: const BoxConstraints(maxWidth: 400),
  //       child: Card(
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(8),
  //         ),
  //         elevation: 2,
  //         child: Padding(
  //           padding: const EdgeInsets.all(16),
  //           child: Column(
  //             children: [
  //               const Text(
  //                 "Total",
  //                 style: TextStyle(
  //                   fontWeight: FontWeight.bold,
  //                   fontSize: 16,
  //                 ),
  //               ),
  //               const Divider(height: 20),
  //               Text(
  //                 FormatUtils.formatCurrency(totalBalance),
  //                 style: const TextStyle(
  //                   fontWeight: FontWeight.bold,
  //                   fontSize: 24,
  //                 ),
  //               ),
  //               const SizedBox(height: 12),
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   Flexible(
  //                     child: FittedBox(
  //                       fit: BoxFit.scaleDown,
  //                       alignment: Alignment.centerRight,
  //                       child: Text(
  //                         "${totalPlValue > Decimal.zero ? '+' : ''}${FormatUtils.formatCurrency(totalPlValue)}",
  //                         style: TextStyle(
  //                           color: totalPlValue > Decimal.zero
  //                               ? Colors.greenAccent[400]
  //                               : totalPlValue < Decimal.zero
  //                                   ? Colors.redAccent
  //                                   : Colors.grey,
  //                           fontWeight: FontWeight.w600,
  //                           fontSize: 13,
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                   const SizedBox(width: 8),
  //                   Container(
  //                     padding: const EdgeInsets.symmetric(
  //                         horizontal: 8, vertical: 3),
  //                     decoration: BoxDecoration(
  //                       color: ConvertService.safeDouble(plPercentage) > 0
  //                           ? Colors.greenAccent[700]
  //                           : ConvertService.safeDouble(plPercentage) < 0
  //                               ? Colors.redAccent[700]
  //                               : Colors.grey[700],
  //                       borderRadius: BorderRadius.circular(20),
  //                     ),
  //                     child: FittedBox(
  //                       fit: BoxFit.scaleDown,
  //                       child: Text(
  //                         FormatUtils.formatPercentage(plPercentage),
  //                         style: const TextStyle(
  //                           color: Colors.white,
  //                           fontSize: 12,
  //                           fontWeight: FontWeight.w500,
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //               const SizedBox(height: 12),
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: [
  //                   Row(
  //                     children: [
  //                       const Icon(
  //                         FontAwesomeIcons.arrowTrendUp,
  //                         size: 14,
  //                         color: Colors.green,
  //                       ),
  //                       const SizedBox(width: 4),
  //                       Text(
  //                         "Long Market Value\n${FormatUtils.formatCurrency(totalTdLongMarketValue)}",
  //                         style: const TextStyle(fontSize: 12),
  //                       ),
  //                     ],
  //                   ),
  //                   Row(
  //                     children: [
  //                       const Icon(
  //                         FontAwesomeIcons.arrowTrendDown,
  //                         size: 14,
  //                         color: Colors.red,
  //                       ),
  //                       const SizedBox(width: 4),
  //                       Text(
  //                         "Short Market Value\n${FormatUtils.formatCurrency(totalSdShortMarketValue)}",
  //                         textAlign: TextAlign.right,
  //                         style: const TextStyle(fontSize: 12),
  //                       ),
  //                     ],
  //                   ),
  //                 ],
  //               ),
  //               const SizedBox(height: 12),
  //               Container(
  //                 padding:
  //                     const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
  //                 decoration: BoxDecoration(
  //                   color: ConvertService.safeDouble(cashPercentage) < 0
  //                       ? const Color(0xFF3B0000)
  //                       : ConvertService.safeDouble(cashPercentage) > 0
  //                           ? const Color(0xFF002B00)
  //                           : const Color(0xFF2E2E2E),
  //                   borderRadius: BorderRadius.circular(8),
  //                 ),
  //                 child: Text(
  //                   FormatUtils.formatPercentage(cashPercentage),
  //                   style: TextStyle(
  //                     color: ConvertService.safeDouble(cashPercentage) < 0
  //                         ? Colors.redAccent
  //                         : ConvertService.safeDouble(cashPercentage) > 0
  //                             ? Colors.greenAccent
  //                             : Colors.white70,
  //                     fontSize: 12,
  //                     fontWeight: FontWeight.w500,
  //                   ),
  //                 ),
  //               )
  //             ],
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return PageListContainer(
      title: "Account Summary",
      onRefresh: _refreshData,
      page: _futureBalances == null
          ? AppTheme.buildLoadingIndicator()
          : FutureBuilder<List<Balance>>(
              future: _futureBalances,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return AppTheme.buildLoadingIndicator();
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text("Error: ${snapshot.error}"),
                  );
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return RefreshIndicator(
                    color: const Color(0xFF1565C0),
                    onRefresh: _refreshData,
                    child: ListView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      children: const [
                        SizedBox(height: 200),
                        Center(
                          child: Text(
                            "No data found",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  );
                }
                final items = _buildGridItems(snapshot.data!);
                return Scaffold(
                  body: Column(
                    children: [
                      // _buildTotalCard(),
                      const SizedBox(height: 12),
                      Expanded(
                        child: GridWithPagination(
                          items: items,
                          pagination: pagination,
                          onPageChange: _onPageChange,
                          onRefresh: _refreshData,
                          disableActions: true,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
