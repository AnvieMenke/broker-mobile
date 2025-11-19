import 'package:broker_mobile/components/containers/page_list_container.dart';
import 'package:broker_mobile/service/activity_service.dart';
import 'package:flutter/material.dart';
import 'package:broker_mobile/components/grid/grid_view_card.dart';
import '../../../../components/dropdowns/select_account_no.dart';
import '../../../../components/dropdowns/select_correspondent.dart';
import '../../../../components/dropdowns/select_master_account_no.dart';
import '../../../../service/convert_service.dart';
import '../../../../service/profile_service.dart';
import '../../../../components/dropdowns/select_system_code.dart';
import '../../../../components/dropdowns/select_rep.dart';
import '../../../../components/dropdowns/select_branch.dart';
import '../../../../components/dropdowns/select_symbol.dart';
import '../../../../components/dropdowns/select_entry_type.dart';
import '../../../../utils/fmt/fmt.dart';
import '../../../../utils/theme/custom_theme.dart';
import '../../../../components/datepicker/datepicker.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  ActivityPageState createState() => ActivityPageState();
}

class ActivityPageState extends State<ActivityPage> {
  Future<List<GridItem>>? _futureRequests;

  late Map<String, dynamic> queryData = {
    "correspondent": "",
    "accountNo": "",
    "masterAccountNo": "",
    "rep": "",
    "branch": "",
    "assetType": "",
    "symbol": "",
    "entryType": "",
    "description": "",
  };

  List<String> selectedEntryTypes = [];
  late final ValueNotifier<int> queryDataNotifier;
  final FocusScopeNode _focusScopeNode = FocusScopeNode();

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
    final previousDate = await profileService.getPreviousDate();
    setState(() {
      queryData['fromDate'] = previousDate;
      queryData['toDate'] = previousDate;
      _futureRequests = _listActivity();
    });
  }

  void _updateQueryData() {
    queryDataNotifier.value++;
  }

  Future<List<GridItem>> _listActivity() async {
    final activityService = ActivityService();
    final resp = await activityService.listActivity(queryData, {
      'pageNo': pagination.pageNo,
      'rowsPerPage': pagination.rowsPerPage,
    });

    setState(() {
      pagination = pagination.copyWith(
        totalRows: resp.summary.totalRows,
        reload: false,
      );
    });

    // Group activities by accountNo
    final Map<String, List> grouped = {};
    for (var e in resp.activities) {
      grouped.putIfAbsent(e.accountNo, () => []).add(e);
    }

    List<GridItem> items = [];

    grouped.forEach((accountNo, activities) {
      // Create subItems list for each account
      final subItems = activities.where((e) => e != null).map((e) {
        final entryType = e.entryType ?? '';
        final entryTypeDesc = e.entryTypeDescription ?? '';
        final date = e.systemDate ?? '';
        final netAmt = e.netAmt ?? 0;
        final symbol = e.symbol ?? '';
        final qty = e.qty ?? 0;
        final price = e.price ?? 0;
        final grossAmt = e.grossAmt ?? 0;
        final fees = e.fees ?? 0;
        final symbolDescription = e.symbolDescription ?? '';
        final description = e.description ?? '';

        return {
          "activityDetails": {
            "value": LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Flexible(
                                        child: Text(
                                          "$entryType $entryTypeDesc",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          ),
                                          overflow: TextOverflow.ellipsis,
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
                                                top: Radius.circular(16),
                                              ),
                                            ),
                                            builder: (context) => Padding(
                                              padding: const EdgeInsets.all(16),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "$entryType $entryTypeDesc",
                                                    style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 12),
                                                  Text(
                                                    "Date: ${FormatUtils.formatPbDate(date)}",
                                                    style: const TextStyle(
                                                        fontSize: 14),
                                                  ),
                                                  if (symbol.isNotEmpty) ...[
                                                    Text(
                                                      "Symbol: $symbol",
                                                      style: const TextStyle(
                                                          fontSize: 14),
                                                    ),
                                                    Text(
                                                      "Symbol Description: $symbolDescription",
                                                      style: const TextStyle(
                                                          fontSize: 14),
                                                    ),
                                                  ],
                                                  if (ConvertService.safeDouble(
                                                          qty) !=
                                                      0) ...[
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
                                                              text: 'Qty: '),
                                                          TextSpan(
                                                            text: FormatUtils
                                                                .formatQty(qty),
                                                            style: TextStyle(
                                                              color: ConvertService
                                                                          .safeDouble(
                                                                              qty) >
                                                                      0
                                                                  ? Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodyMedium
                                                                      ?.color
                                                                  : ConvertService.safeDouble(
                                                                              qty) <
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
                                                  ],
                                                  if (ConvertService.safeDouble(
                                                          price) !=
                                                      0) ...[
                                                    Text(
                                                      "Price: ${FormatUtils.formatCurrencySymbol(price)}",
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
                                                    )
                                                  ],
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
                                                              'Gross Amount: ',
                                                        ),
                                                        TextSpan(
                                                          text: FormatUtils
                                                              .formatCurrency(
                                                                  grossAmt),
                                                          style: TextStyle(
                                                            color: ConvertService
                                                                        .safeDouble(
                                                                            grossAmt) >
                                                                    0
                                                                ? Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyMedium
                                                                    ?.color
                                                                : ConvertService.safeDouble(
                                                                            grossAmt) <
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
                                                            text: 'Fees: '),
                                                        TextSpan(
                                                          text: FormatUtils
                                                              .formatCurrency(
                                                                  fees),
                                                          style: TextStyle(
                                                            color: ConvertService
                                                                        .safeDouble(
                                                                            fees) >
                                                                    0
                                                                ? Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyMedium
                                                                    ?.color
                                                                : ConvertService.safeDouble(
                                                                            fees) <
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
                                                                'Net Amount: '),
                                                        TextSpan(
                                                          text: FormatUtils
                                                              .formatCurrency(
                                                                  netAmt),
                                                          style: TextStyle(
                                                            color: ConvertService
                                                                        .safeDouble(
                                                                            netAmt) >
                                                                    0
                                                                ? Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodyMedium
                                                                    ?.color
                                                                : ConvertService.safeDouble(
                                                                            netAmt) <
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
                                                  if (description
                                                      .isNotEmpty) ...[
                                                    Text(
                                                      "Description: $description",
                                                      style: const TextStyle(
                                                          fontSize: 14),
                                                    ),
                                                  ],
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
                                          padding: const EdgeInsets.all(6),
                                          child: const Icon(
                                            Icons.info_outline,
                                            color: Colors.grey,
                                            size: 14,
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
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              FormatUtils.formatCurrency(netAmt),
                              style: TextStyle(
                                color: ConvertService.safeDouble(netAmt) > 0
                                    ? Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.color
                                    : ConvertService.safeDouble(netAmt) < 0
                                        ? Colors.redAccent
                                        : Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.color,
                              ),
                            ),
                          ),
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
          "value": activities.first.correspondent,
          "visible": false,
        },
        "rep": {
          "label": "Rep",
          "value": activities.first.rep,
          "visible": false,
        },
        "branch": {
          "label": "Branch",
          "value": activities.first.branch,
          "visible": false,
        },
        "date": {
          "label": "Date",
          "value": activities.first.systemDate,
          "type": "date",
          "visible": true,
          "gridPosition": "subTitle",
        },
        "marginType": {
          "label": "Margin Type",
          "value": activities.first.marginType,
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
      _futureRequests = _listActivity();
    });
  }

  Future<void> _refresh() async {
    setState(() {
      _futureRequests = _listActivity();
    });
    await _futureRequests;
  }

  Future<void> openFilterDialog() async {
    _focusScopeNode.unfocus();
    String selectedCorrespondent = queryData["correspondent"];
    String selectedMasterAccountNo = queryData["masterAccountNo"];
    String selectedRep = queryData["rep"];
    String selectedBranch = queryData["branch"];
    String selectedAssetType = queryData["assetType"];
    String description = queryData["description"] ?? "";

    final TextEditingController descriptionController =
        TextEditingController(text: description);

    final result = await showDialog<bool>(
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
                        onChange: (value) => setState(() {
                          selectedCorrespondent = value;
                        }),
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
                        correspondent: queryData["correspondent"],
                        onChange: (map) => setState(() {
                          selectedRep = map['data']?['rep'] as String? ?? '';
                        }),
                      ),
                      AutoCompleteBranch(
                        name: "branch",
                        value: selectedBranch,
                        isAllStatus: true,
                        correspondent: queryData["correspondent"],
                        onChange: (map) => setState(() {
                          selectedBranch =
                              map['data']?['branch'] as String? ?? '';
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
                      const Text(
                        'Description',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 6),
                      TextField(
                        controller: descriptionController,
                        decoration:
                            const InputDecoration(hintText: "Description"),
                        onChanged: (value) => description = value,
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
                      "description": description,
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

    if (result == true) {
      setState(() {
        _futureRequests = _listActivity();
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
          title: "Activity",
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
                                      "entryType",
                                      "accountNo"
                                    ].contains(entry.key)
                                        ? const SizedBox.shrink()
                                        : Chip(
                                            label: Text(
                                              "${ConvertService.camelToTitle(entry.key)}: ${entry.value}",
                                              style:
                                                  const TextStyle(fontSize: 9),
                                            ),
                                            deleteIcon: const Icon(Icons.close),
                                            onDeleted: () {
                                              setState(() {
                                                queryData[entry.key] = "";
                                                _updateQueryData();
                                                _futureRequests =
                                                    _listActivity();
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
                                        map['data']['accountNo'] as String;
                                    _updateQueryData();
                                    _futureRequests = _listActivity();
                                  }
                                }),
                                onClear: (map) => setState(() {
                                  queryData["accountNo"] = "";
                                  _updateQueryData();
                                  _futureRequests = _listActivity();
                                }),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 16),
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
                                        _futureRequests = _listActivity();
                                      }),
                                      onChange: (map) => setState(() {
                                        if (map['data'] != null &&
                                            map['data']['symbol'] != null) {
                                          queryData["symbol"] =
                                              map['data']['symbol'] as String;
                                          _updateQueryData();
                                          _futureRequests = _listActivity();
                                        }
                                      }),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  CustomDatePicker(
                                    isDateRange: true,
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
                                        _futureRequests = _listActivity();
                                      });
                                    },
                                  ),
                                  const SizedBox(width: 12),
                                  MultiSelectEntryType(
                                    name: "entryType",
                                    value: selectedEntryTypes,
                                    onChange: (map) => setState(() {
                                      _focusScopeNode.unfocus();
                                      if (map['value'] != null) {
                                        selectedEntryTypes = List<String>.from(
                                            map['value'] as List);
                                        queryData["entryType"] =
                                            selectedEntryTypes.join(",");
                                        _updateQueryData();
                                        _futureRequests = _listActivity();
                                      }
                                    }),
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
