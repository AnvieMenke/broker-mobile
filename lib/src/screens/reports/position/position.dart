import 'package:broker_mobile/components/containers/page_list_container.dart';
import 'package:broker_mobile/utils/fmt/fmt.dart';
import 'package:flutter/material.dart';
import 'package:broker_mobile/components/grid/grid_view_card.dart';
import '../../../../components/datepicker/datepicker.dart';
import '../../../../components/dropdowns/select_account_no.dart';
import '../../../../components/dropdowns/select_correspondent.dart';
import '../../../../components/dropdowns/select_master_account_no.dart';
import '../../../../service/position_service.dart';
import '../../../../service/convert_service.dart';
import '../../../../service/profile_service.dart';
import '../../../../components/dropdowns/select_system_code.dart';
import '../../../../components/dropdowns/select_rep.dart';
import '../../../../components/dropdowns/select_branch.dart';
import '../../../../components/dropdowns/select_symbol.dart';
import '../../../../utils/financial_modeling_prep/financial_modeling_prep.dart';
import '../../../../utils/theme/custom_theme.dart';

class PositionPage extends StatefulWidget {
  const PositionPage({super.key});

  @override
  PositionPageState createState() => PositionPageState();
}

class PositionPageState extends State<PositionPage> {
  Future<List<GridItem>>? _futureRequests;
  final FocusScopeNode _focusScopeNode = FocusScopeNode();

  late Map<String, dynamic> queryData = {
    "correspondent": "",
    "accountNo": "",
    "masterAccountNo": "",
    "rep": "",
    "branch": "",
    "assetType": "",
    "symbol": "",
  };

  late final ValueNotifier<int> queryDataNotifier;

  GridPagination pagination = GridPagination(
    pageNo: 0,
    rowsPerPage: 100,
    totalRows: 0,
    reload: true,
  );

  @override
  void initState() {
    super.initState();
    queryDataNotifier = ValueNotifier(0);
    _init();
  }

  @override
  void dispose() {
    _focusScopeNode.dispose();
    super.dispose();
  }

  void _init() async {
    final profileService = ProfileService();
    final systemDate = await profileService.getSystemDate();
    setState(() {
      queryData['fromDate'] = systemDate;
      queryData['toDate'] = systemDate;
      _futureRequests = _listPosition();
    });
  }

  void _updateQueryData() {
    queryDataNotifier.value++;
  }

  Future<List<GridItem>> _listPosition() async {
    final positionService = PositionService();
    final resp = await positionService.listPosition(queryData, {
      'pageNo': pagination.pageNo,
      'rowsPerPage': pagination.rowsPerPage,
    });

    setState(() {
      pagination = pagination.copyWith(
        totalRows: resp.summary.totalRows,
        reload: false,
      );
    });

    // Group positions by accountNo
    final Map<String, List> grouped = {};
    for (var e in resp.positions) {
      grouped.putIfAbsent(e.accountNo, () => []).add(e);
    }

    List<GridItem> items = [];

    grouped.forEach((accountNo, positions) {
      // Create subItems list from all positions of this account
      final subItems = positions.where((e) => e != null).map((e) {
        final symbol = e.symbol ?? '';
        final symbolAvatar = e.assetType == 'O'
            ? (RegExp(r'^[A-Z]+').firstMatch(symbol)?.group(0) ?? '')
            : symbol;
        final tdQty = e.tdQty ?? 0;
        final tdMarketValue = e.tdMarketValue ?? 0;
        final plValue = e.unrealizedPlValue ?? 0;
        final plPercent = e.unrealizedPlPercent ?? 0;

        return {
          "positionSummary": {
            "value": LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SymbolAvatar(
                              symbol: symbolAvatar,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          symbol,
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSurface,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 4),
                                      InkWell(
                                        borderRadius: BorderRadius.circular(20),
                                        onTap: () {
                                          showModalBottomSheet(
                                            context: context,
                                            shape: const RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                      top: Radius.circular(16)),
                                            ),
                                            builder: (context) => Padding(
                                              padding: const EdgeInsets.all(16),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    symbol,
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 12),
                                                  RichText(
                                                    text: TextSpan(
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.copyWith(
                                                            fontSize: 14,
                                                            color: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyMedium
                                                                ?.color,
                                                          ),
                                                      children: [
                                                        const TextSpan(
                                                            text: 'TD Qty: '),
                                                        TextSpan(
                                                          text: FormatUtils
                                                              .formatQty(tdQty),
                                                          style: TextStyle(
                                                            color: ConvertService
                                                                        .safeDouble(
                                                                            tdQty) >
                                                                    0
                                                                ? Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyMedium
                                                                    ?.color
                                                                : ConvertService.safeDouble(
                                                                            tdQty) <
                                                                        0
                                                                    ? Colors
                                                                        .redAccent
                                                                    : Theme.of(
                                                                            context)
                                                                        .textTheme
                                                                        .bodyMedium
                                                                        ?.color,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.copyWith(
                                                            fontSize: 14,
                                                            color: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyMedium
                                                                ?.color,
                                                          ),
                                                      children: [
                                                        const TextSpan(
                                                            text:
                                                                'Market Value: '),
                                                        TextSpan(
                                                          text: FormatUtils
                                                              .formatCurrency(
                                                                  tdMarketValue),
                                                          style: TextStyle(
                                                            color: ConvertService
                                                                        .safeDouble(
                                                                            tdMarketValue) >
                                                                    0
                                                                ? Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyMedium
                                                                    ?.color
                                                                : ConvertService.safeDouble(
                                                                            tdMarketValue) <
                                                                        0
                                                                    ? Colors
                                                                        .redAccent
                                                                    : Theme.of(
                                                                            context)
                                                                        .textTheme
                                                                        .bodyMedium
                                                                        ?.color,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.copyWith(
                                                            fontSize: 14,
                                                            color: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyMedium
                                                                ?.color,
                                                          ),
                                                      children: [
                                                        const TextSpan(
                                                            text:
                                                                'Unrealized P/L: '),
                                                        TextSpan(
                                                          text: FormatUtils
                                                              .formatCurrency(
                                                                  plValue),
                                                          style: TextStyle(
                                                            color: ConvertService
                                                                        .safeDouble(
                                                                            plValue) >
                                                                    0
                                                                ? Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyMedium
                                                                    ?.color
                                                                : ConvertService.safeDouble(
                                                                            plValue) <
                                                                        0
                                                                    ? Colors
                                                                        .redAccent
                                                                    : Theme.of(
                                                                            context)
                                                                        .textTheme
                                                                        .bodyMedium
                                                                        ?.color,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.copyWith(
                                                            fontSize: 14,
                                                            color: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodyMedium
                                                                ?.color,
                                                          ),
                                                      children: [
                                                        const TextSpan(
                                                            text: 'P/L: '),
                                                        TextSpan(
                                                          text: FormatUtils
                                                              .formatPercentage(
                                                                  plPercent),
                                                          style: TextStyle(
                                                            color: ConvertService
                                                                        .safeDouble(
                                                                            plPercent) >
                                                                    0
                                                                ? Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyMedium
                                                                    ?.color
                                                                : ConvertService.safeDouble(
                                                                            plPercent) <
                                                                        0
                                                                    ? Colors
                                                                        .redAccent
                                                                    : Theme.of(
                                                                            context)
                                                                        .textTheme
                                                                        .bodyMedium
                                                                        ?.color,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(height: 12),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              context),
                                                      child:
                                                          const Text("Close"),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.transparent,
                                          ),
                                          child: const Icon(
                                            Icons.info_outline,
                                            color: Colors.grey,
                                            size: 16,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "${FormatUtils.formatQty(tdQty)} shares",
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              alignment: Alignment.centerRight,
                              child: Text(
                                FormatUtils.formatCurrency(tdMarketValue),
                                style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.onSurface,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            const SizedBox(height: 4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Flexible(
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "${ConvertService.safeDouble(plValue) > 0 ? '+' : ''}${FormatUtils.formatCurrency(plValue)}",
                                      style: TextStyle(
                                        color:
                                            ConvertService.safeDouble(plValue) >
                                                    0
                                                ? Colors.greenAccent[400]
                                                : ConvertService.safeDouble(
                                                            plValue) <
                                                        0
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
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 3),
                                  decoration: BoxDecoration(
                                    color:
                                        ConvertService.safeDouble(plPercent) > 0
                                            ? Colors.greenAccent[700]
                                            : ConvertService.safeDouble(
                                                        plPercent) <
                                                    0
                                                ? Colors.redAccent[700]
                                                : Colors.grey[700],
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      FormatUtils.formatPercentage(plPercent),
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
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          },
        };
      }).toList();

      // Add GridItem per account
      items.add(GridItem.fromMap({
        "accountNo": {
          "label": "Account No",
          "value": accountNo,
          "visible": true,
          "gridPosition": "title",
        },
        "correspondent": {
          "label": "Correspondent",
          "value": positions.first.correspondent,
          "visible": false,
        },
        "rep": {
          "label": "Rep",
          "value": positions.first.rep,
          "visible": false,
        },
        "branch": {
          "label": "Branch",
          "value": positions.first.branch,
          "visible": false,
        },
        "date": {
          "label": "Date",
          "value": positions.first.date,
          "type": "date",
          "visible": true,
          "gridPosition": "subTitle",
        },
        "assetType": {
          "label": "Asset Type",
          "value": positions.first.assetType,
          "visible": false,
        },
        "subItems": subItems,
      }));
    });

    return items;
  }

  void _onPageChange(GridPagination newPagination) {
    setState(() {
      pagination = newPagination;
      _futureRequests = _listPosition();
    });
  }

  Future<void> _refresh() async {
    setState(() {
      _futureRequests = _listPosition();
    });
    await _futureRequests;
  }

  Future<void> openFilterDialog() async {
    _focusScopeNode.unfocus();
    String selectedCorrespondent = queryData["correspondent"];
    String selectedRep = queryData["rep"];
    String selectedBranch = queryData["branch"];
    String selectedAssetType = queryData["assetType"];
    String selectedMasterAccountNo = queryData["masterAccountNo"];

    final value = await showDialog<bool>(
      context: context,
      builder: (context) {
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () => FocusScope.of(context).unfocus(),
          child: AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            title: const Text("Filter by:"),
            content: StatefulBuilder(
              builder: (context, setState) {
                return SingleChildScrollView(
                  child: Wrap(
                    runSpacing: 16,
                    children: [
                      AutoCompleteCorrespondent(
                        name: "correspondent",
                        value: selectedCorrespondent,
                        label: "Correspondent",
                        isAllStatus: true,
                        type: "",
                        onChange: (value) =>
                            setState(() => selectedCorrespondent = value),
                      ),
                      AutoCompleteMasterAccountNo(
                        name: "masterAccountNo",
                        value: selectedMasterAccountNo,
                        isAllStatus: true,
                        correspondent: queryData["correspondent"],
                        onChange: (map) => setState(() {
                          selectedMasterAccountNo =
                              map['data']?['masterAccountNo'] as String? ?? '';
                        }),
                      ),
                      AutoCompleteRepAdvisor(
                        name: "rep",
                        value: selectedRep,
                        isAllStatus: true,
                        correspondent: selectedCorrespondent,
                        onChange: (map) => setState(() {
                          selectedRep = map['data']['rep'] ?? '';
                        }),
                      ),
                      AutoCompleteBranch(
                        name: "branch",
                        value: selectedBranch,
                        isAllStatus: true,
                        correspondent: selectedCorrespondent,
                        onChange: (map) => setState(() {
                          selectedBranch = map['data']['branch'] ?? '';
                        }),
                      ),
                      SelectSystemCode(
                        label: "Asset Type",
                        placeholder: "Select Asset Type",
                        value: selectedAssetType,
                        type: "Asset Type",
                        onChange: (map) => setState(() {
                          selectedAssetType = map?['data']['code'] ?? '';
                        }),
                      ),
                    ],
                  ),
                );
              },
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text("Cancel"),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    queryData = {
                      ...queryData,
                      "correspondent": selectedCorrespondent,
                      "masterAccountNo": selectedMasterAccountNo,
                      "rep": selectedRep,
                      "branch": selectedBranch,
                      "assetType": selectedAssetType,
                    };
                    _updateQueryData();
                  });
                  Navigator.pop(context, true);
                },
                child: const Text("Search"),
              ),
            ],
          ),
        );
      },
    );

    _focusScopeNode.unfocus();

    if (value == true) {
      setState(() {
        _futureRequests = _listPosition();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return FocusScope(
      node: _focusScopeNode,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => _focusScopeNode.unfocus(),
        child: PageListContainer(
          title: "Position",
          openFilterDialog: openFilterDialog,
          onRefresh: _refresh,
          page: _futureRequests == null
              ? AppTheme.buildLoadingIndicator()
              : FutureBuilder<List<GridItem>>(
                  future: _futureRequests,
                  builder: (context, snapshot) {
                    Widget body;
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      body = AppTheme.buildLoadingIndicator();
                    } else {
                      body = GridWithPagination(
                        items: snapshot.data ?? [],
                        pagination: pagination,
                        onPageChange: _onPageChange,
                        onRefresh: _refresh,
                        hidePageInfo: true,
                        disableGridSystem: true,
                      );
                    }

                    return Scaffold(
                      body: Column(
                        children: [
                          ValueListenableBuilder(
                            valueListenable: queryDataNotifier,
                            builder: (_, __, ___) {
                              final activeFilters = queryData.entries
                                  .where((e) =>
                                      e.value != null &&
                                      e.value.toString().isNotEmpty &&
                                      e.value.toString() != "0")
                                  .toList();

                              if (activeFilters.isEmpty) {
                                return const SizedBox.shrink();
                              }

                              return Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                child: Wrap(
                                  spacing: 6,
                                  runSpacing: 6,
                                  children: activeFilters.where((entry) {
                                    if (entry.value is bool) {
                                      return entry.value == true;
                                    }

                                    if (entry.value == null ||
                                        entry.value.toString().isEmpty) {
                                      return false;
                                    }
                                    return true;
                                  }).map((entry) {
                                    return [
                                      "fromDate",
                                      "toDate",
                                      "symbol",
                                      "accountNo",
                                    ].contains(entry.key)
                                        ? const SizedBox.shrink()
                                        : Chip(
                                            label: Text(
                                              entry.value is bool
                                                  ? ConvertService.camelToTitle(
                                                          entry.key)
                                                      .replaceAll("Is ", "")
                                                  : "${ConvertService.camelToTitle(entry.key)}: ${entry.value}",
                                              style:
                                                  const TextStyle(fontSize: 9),
                                            ),
                                            deleteIcon: const Icon(Icons.close),
                                            onDeleted: () {
                                              setState(() {
                                                queryData[entry.key] =
                                                    entry.value is bool
                                                        ? false
                                                        : "";
                                                _updateQueryData();
                                                _futureRequests =
                                                    _listPosition();
                                              });
                                            },
                                          );
                                  }).toList(),
                                ),
                              );
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 2),
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 400),
                              child: AutoCompleteAccountNo(
                                name: "accountNo",
                                value: queryData["accountNo"],
                                isAllStatus: true,
                                correspondent: queryData["correspondent"],
                                type: "Client",
                                isMainFilter: true,
                                onChange: (map) => setState(() {
                                  if (map['data'] != null &&
                                      map['data']['accountNo'] != null) {
                                    queryData["accountNo"] =
                                        map['data']?['accountNo'] as String? ??
                                            '';
                                    _updateQueryData();
                                    _futureRequests = _listPosition();
                                  }
                                }),
                                onClear: (map) => setState(() {
                                  queryData["accountNo"] = "";
                                  _updateQueryData();
                                  _futureRequests = _listPosition();
                                }),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 12),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 150,
                                    child: AutoCompleteSymbol(
                                      name: "symbol",
                                      value: queryData['symbol'],
                                      onClear: (map) => setState(() {
                                        queryData["symbol"] = "";
                                        _updateQueryData();
                                        _refresh();
                                      }),
                                      onChange: (map) => setState(() {
                                        if (map['data'] != null &&
                                            map['data']['symbol'] != null) {
                                          queryData["symbol"] =
                                              map['data']['symbol'] as String;
                                          _updateQueryData();
                                          _refresh();
                                        }
                                      }),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  CustomDatePicker(
                                    initialFromDate:
                                        queryData['fromDate'] != null
                                            ? DateTime.tryParse(
                                                queryData['fromDate'])
                                            : null,
                                    initialToDate: queryData['toDate'] != null
                                        ? DateTime.tryParse(queryData['toDate'])
                                        : null,
                                    onApply: (range, from, to) {
                                      _focusScopeNode.unfocus();
                                      setState(() {
                                        queryData['fromDate'] = from != null
                                            ? ConvertService.dateToString(from)
                                            : queryData['fromDate'];
                                        queryData['toDate'] = to != null
                                            ? ConvertService.dateToString(to)
                                            : queryData['toDate'];
                                        _updateQueryData();
                                        _futureRequests = _listPosition();
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
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
