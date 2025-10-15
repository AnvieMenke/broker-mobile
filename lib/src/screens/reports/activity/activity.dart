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
    rowsPerPage: 10,
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
    return resp.activities.map((e) {
      return GridItem.fromMap({
        "entryType": {
          "label": "Entry Type",
          "value": "${e.entryType} ${e.entryTypeDescription}",
          "visible": true,
          "gridPosition": "title",
        },
        "date": {
          "label": "Date",
          "value": e.systemDate,
          "type": "date",
          "visible": true,
          "gridPosition": "subTitle",
        },
        "marginType": {
          "label": "Margin Type",
          "value": e.marginType,
          "visible": true,
          "hideLabel": true,
        },
        "correspondent": {
          "label": "Correspondent",
          "value": e.correspondent,
          "visible": false,
        },
        "accountNo": {
          "label": "Account No",
          "value": e.accountNo,
          "visible": false,
        },
        "masterAccountNo": {
          "label": "Master Account No",
          "value": e.masterAccountNo,
          "visible": false,
        },
        "rep": {
          "label": "Rep",
          "value": e.rep,
          "visible": false,
        },
        "branch": {
          "label": "Branch",
          "value": e.branch,
          "visible": false,
        },
        "description": {
          "label": "Description",
          "value": e.description,
          "visible": false,
        },
        "symbol": {
          "label": "Symbol",
          "value": e.symbol,
          "visible": false,
        },
        "qty": {
          "label": "QTY",
          "value": e.qty,
          "type": "qty",
          "visible": false,
        },
        "price": {
          "label": "Price",
          "value": e.price,
          "type": "price",
          "visible": false,
        },
        "grossAmt": {
          "label": "Gross Amount",
          "value": e.grossAmt,
          "type": "amount",
          "visible": false,
        },
        "fees": {
          "label": "Fees",
          "value": e.fees,
          "type": "amount",
          "visible": false,
        },
        "netAmt": {
          "hideLabel": true,
          "label": "Net Amount",
          "value": e.netAmt,
          "type": "amount",
          "floatRight": true,
          "visible": true,
        },
      });
    }).toList();
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
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: const Text("Filter by:"),
          content: StatefulBuilder(
            builder: (context, setState) {
              return SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AutoCompleteCorrespondent(
                      name: "correspondent",
                      value: selectedCorrespondent,
                      label: "Correspondent",
                      isAllStatus: false,
                      type: "",
                      onChange: (value) => setState(() {
                        selectedCorrespondent = value;
                      }),
                    ),
                    const SizedBox(height: 16),
                    AutoCompleteMasterAccountNo(
                      name: "masterAccountNo",
                      freeSolo: true,
                      value: selectedMasterAccountNo,
                      isAllStatus: false,
                      isAccessibleOnly: true,
                      correspondent: queryData["correspondent"],
                      onChange: (map) => setState(() {
                        if (map['data'] != null &&
                            map['data']['masterAccountNo'] != null) {
                          selectedMasterAccountNo =
                              map['data']['masterAccountNo'] as String;
                        }
                      }),
                    ),
                    const SizedBox(height: 16),
                    AutoCompleteRepAdvisor(
                      name: "rep",
                      freeSolo: true,
                      value: selectedRep,
                      isAllStatus: false,
                      isAccessibleOnly: true,
                      correspondent: queryData["correspondent"],
                      onChange: (map) => setState(() {
                        if (map['data'] != null && map['data']['rep'] != null) {
                          selectedRep = map['data']['rep'] as String;
                        }
                      }),
                    ),
                    const SizedBox(height: 16),
                    AutoCompleteBranch(
                      name: "branch",
                      freeSolo: true,
                      value: selectedBranch,
                      isAllStatus: false,
                      isAccessibleOnly: true,
                      correspondent: queryData["correspondent"],
                      onChange: (map) => setState(() {
                        if (map['data'] != null &&
                            map['data']['branch'] != null) {
                          selectedBranch = map['data']['branch'] as String;
                        }
                      }),
                    ),
                    const SizedBox(height: 16),
                    SelectSystemCode(
                      label: "Asset Type",
                      placeholder: "Select Asset Type",
                      value: selectedAssetType,
                      type: "Asset Type",
                      onChange: (map) => setState(() {
                        selectedAssetType = map?['data']['code'];
                      }),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: descriptionController,
                      decoration:
                          const InputDecoration(labelText: "Description"),
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
                                freeSolo: true,
                                value: queryData["accountNo"],
                                isAllStatus: false,
                                isAccessibleOnly: true,
                                correspondent: queryData["correspondent"],
                                type: "Client",
                                onChange: (map) => setState(() {
                                  if (map['data'] != null &&
                                      map['data']['accountNo'] != null) {
                                    queryData["accountNo"] =
                                        map['data']['accountNo'] as String;
                                    _updateQueryData();
                                    _futureRequests = _listActivity();
                                  }
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
                                      freeSolo: true,
                                      value: queryData['symbol'],
                                      isActive: true,
                                      onChange: (map) => setState(() {
                                        final symbol =
                                            map['data']?['symbol'] ?? '';
                                        final name = map['name'];

                                        queryData[name] = symbol;
                                        _updateQueryData();

                                        if (symbol.isNotEmpty ||
                                            (map['value'] == '' &&
                                                (map['data']?.isEmpty ??
                                                    true))) {
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
