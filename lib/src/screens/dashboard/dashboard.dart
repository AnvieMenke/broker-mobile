import 'package:broker_mobile/utils/fmt/fmt.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:broker_mobile/service/balance_service.dart';
import 'package:broker_mobile/service/profile_service.dart';

import '../../../proto/reportpb/balance.pb.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
  Future<List<Balance>>? _futureBalances;
  late Decimal totalBalance = Decimal.zero;

  final Map<String, dynamic> queryData = {
    "dateType": "Trade and Settle",
  };

  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() async {
    final profileService = ProfileService();
    final systemDate = await profileService.getSystemDate();

    setState(() {
      queryData['fromDate'] = systemDate;
      queryData['toDate'] = systemDate;
      _futureBalances = _listBalance();
    });
  }

  Future<List<Balance>> _listBalance() async {
    final balanceService = BalanceService();
    final resp = await balanceService.listBalance(queryData, {
      'pageNo': 0,
      'rowsPerPage': 10,
    });

    try {
      totalBalance = Decimal.parse(resp.summary.tdCashBalance.toString());
    } catch (e) {
      totalBalance = Decimal.zero;
    }

    return resp.balances;
  }

  Future<void> _refreshData() async {
    setState(() {
      _futureBalances = _listBalance();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_futureBalances == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: FutureBuilder<List<Balance>>(
          future: _futureBalances,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(
                child: Text("Error: ${snapshot.error}"),
              );
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return RefreshIndicator(
                onRefresh: _refreshData,
                child: ListView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  children: const [
                    SizedBox(height: 200),
                    Center(
                      child:
                          Text("No data found", style: TextStyle(fontSize: 20)),
                    ),
                  ],
                ),
              );
            }

            final items = snapshot.data!;

            return RefreshIndicator(
              onRefresh: _refreshData,
              child: ListView(
                padding: const EdgeInsets.all(12),
                children: [
                  Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 400),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              const Text(
                                "Account Balance Summary",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              const Divider(height: 20),
                              Text(
                                FormatUtils.formatCurrency(totalBalance),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              const Text(
                                "Total",
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  ...items.map((acct) {
                    return Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 600),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 2,
                          margin: const EdgeInsets.only(bottom: 12),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "${acct.accountName}\n${acct.accountNo}",
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                    ),
                                    Text(
                                      FormatUtils.formatCurrency(
                                          acct.sdCashBalance),
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                            FontAwesomeIcons.arrowTrendUp,
                                            size: 14,
                                            color: Colors.green),
                                        const SizedBox(width: 4),
                                        Text(
                                          "Long Market Value\n${FormatUtils.formatCurrency(acct.tdLongMarketValue)}",
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                            FontAwesomeIcons.arrowTrendDown,
                                            size: 14,
                                            color: Colors.red),
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
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
