import 'package:broker_mobile/components/containers/page_list_container.dart';
import 'package:broker_mobile/components/grid/grid_view_card.dart';
import 'package:broker_mobile/service/convert_service.dart';
import 'package:broker_mobile/utils/fmt/fmt.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:broker_mobile/service/balance_service.dart';
import 'package:broker_mobile/service/profile_service.dart';
import '../../../components/dropdowns/select_account_no.dart';
import '../../../proto/reportpb/balance.pb.dart';
import '../../../utils/theme/custom_theme.dart';

class AccountSummaryPage extends StatefulWidget {
  const AccountSummaryPage({super.key});

  @override
  AccountSummaryState createState() => AccountSummaryState();
}

class AccountSummaryState extends State<AccountSummaryPage> {
  Future<List<Balance>>? _futureBalances;
  final FocusScopeNode _focusScopeNode = FocusScopeNode();

  late Map<String, dynamic> queryData = {
    "dateType": "Trade and Settle",
    "accountNo": "",
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
      'pageNo': pagination.pageNo,
      'rowsPerPage': pagination.rowsPerPage,
    });

    setState(() {
      pagination = pagination.copyWith(
        totalRows: resp.summary.totalRows,
        reload: false,
      );
    });

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
                                  "${ConvertService.safeDouble(acct.unrealizedPlValue) > 0 ? '+' : ''}"
                                  "${FormatUtils.formatCurrency(acct.unrealizedPlValue)} "
                                  "(${FormatUtils.formatPercentage(acct.unrealizedPlPercent)})",
                                  style: TextStyle(
                                    color: ConvertService.safeDouble(
                                                acct.unrealizedPlValue) >
                                            0
                                        ? Colors.greenAccent[400]
                                        : ConvertService.safeDouble(
                                                    acct.unrealizedPlValue) <
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
                      color:
                          ConvertService.safeDouble(acct.accountValuePercent) <
                                  0
                              ? const Color(0xFF3B0000)
                              : ConvertService.safeDouble(
                                          acct.accountValuePercent) >
                                      0
                                  ? const Color(0xFF002B00)
                                  : const Color(0xFF2E2E2E),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      FormatUtils.formatPercentage(acct.accountValuePercent),
                      style: TextStyle(
                        color: ConvertService.safeDouble(
                                    acct.accountValuePercent) <
                                0
                            ? Colors.redAccent
                            : ConvertService.safeDouble(
                                        acct.accountValuePercent) >
                                    0
                                ? Colors.greenAccent
                                : Colors.white70,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Position Cost ${FormatUtils.formatCurrency(acct.positionCost)}",
                                style: const TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.centerRight,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "YTD Profit ${FormatUtils.formatCurrency(acct.ytdPlValue)} "
                                  "(${FormatUtils.formatPercentage(acct.ytdPlPercent)})",
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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

  @override
  Widget build(BuildContext context) {
    return FocusScope(
      node: _focusScopeNode,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => _focusScopeNode.unfocus(),
        child: PageListContainer(
          title: "Summary",
          onRefresh: _refreshData,
          page: _futureBalances == null
              ? AppTheme.buildLoadingIndicator()
              : FutureBuilder<List<Balance>>(
                  future: _futureBalances,
                  builder: (context, snapshot) {
                    Widget body;
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      body = AppTheme.buildLoadingIndicator();
                    } else {
                      body = GridWithPagination(
                        items: _buildGridItems(snapshot.data!),
                        pagination: pagination,
                        onPageChange: _onPageChange,
                        onRefresh: _refreshData,
                        disableActions: true,
                      );
                    }
                    return Scaffold(
                      body: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 2),
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 400),
                              child: AutoCompleteAccountNo(
                                name: "accountNo",
                                value: queryData["accountNo"],
                                isAllStatus: true,
                                type: "Client",
                                isMainFilter: true,
                                onChange: (map) => setState(() {
                                  if (map['data'] != null &&
                                      map['data']['accountNo'] != null) {
                                    queryData = {
                                      ...queryData,
                                      "accountNo": map['data']?['accountNo']
                                              as String? ??
                                          '',
                                    };
                                    _futureBalances = _listBalance();
                                  }
                                }),
                                onClear: (map) => setState(() {
                                  queryData["accountNo"] = "";
                                  _futureBalances = _listBalance();
                                }),
                              ),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Expanded(child: body),
                        ],
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
