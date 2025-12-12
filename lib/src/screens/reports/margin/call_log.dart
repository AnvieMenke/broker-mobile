import 'package:broker_mobile/components/containers/page_list_container.dart';
import 'package:broker_mobile/service/call_log_service.dart';
import 'package:flutter/material.dart';
import 'package:broker_mobile/components/grid/grid_view_card.dart';
import '../../../../components/dropdowns/select_correspondent.dart';
import '../../../../components/dropdowns/select_master_account_no.dart';
import '../../../../components/dropdowns/select_account_name.dart';
import '../../../../components/dropdowns/select_system_code.dart';
import '../../../../service/convert_service.dart';
import 'package:broker_mobile/utils/theme/custom_theme.dart';

class CallLogPage extends StatefulWidget {
  const CallLogPage({super.key});

  @override
  CallLogPageState createState() => CallLogPageState();
}

class CallLogPageState extends State<CallLogPage> {
  Future<List<GridItem>>? _futureRequests;

  late Map<String, dynamic> queryData = {
    "correspondent": "",
    "accountNo": "",
    "masterAccountNo": "",
    "accountName": "",
    "marginType": "",
  };

  late final ValueNotifier<int> queryDataNotifier;

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

  void _init() async {
    _futureRequests = _listCallLog();
  }

  void _updateQueryData() {
    queryDataNotifier.value++;
  }

  Future<List<GridItem>> _listCallLog() async {
    final callLogService = CallLogService();
    final resp = await callLogService.listCallLog(queryData, {
      'pageNo': pagination.pageNo,
      'rowsPerPage': pagination.rowsPerPage,
    });
    setState(() {
      pagination = pagination.copyWith(
        totalRows: resp.summary.totalRows,
        reload: false,
      );
    });
    return resp.callLogs.map((e) {
      return GridItem.fromMap({
        "date": {
          "label": "Date",
          "value": e.tradeDate,
          "type": "date",
          "visible": true,
          "gridPosition": "subTitle",
        },
        "masterAccountNo": {
          "label": "Master Account No",
          "value": e.masterAccountNo,
          "visible": true,
          "gridPosition": "title",
        },
        "correspondent": {
          "label": "Correspondent",
          "value": e.correspondent,
          "visible": false,
        },
        "marginType": {
          "hideLabel": true,
          "label": "Margin Type",
          "value": e.marginType,
          "visible": true,
        },
        "callReq": {
          "hideLabel": true,
          "label": "Call Requirement",
          "value": e.callReq,
          "type": "amount",
          "visible": true,
          "floatRight": true,
        },
        "callType": {
          "hideLabel": true,
          "label": "Call Type",
          "value": e.callType,
          "visible": true,
        },
        "age": {
          "hideLabel": true,
          "label": "Age",
          "value": e.age == 1 ? "${e.age} day old" : "${e.age} days old",
          "visible": true,
          "floatRight": true,
        },
      });
    }).toList();
  }

  void _onPageChange(GridPagination newPagination) {
    setState(() {
      pagination = newPagination;
      _futureRequests = _listCallLog();
    });
  }

  Future<void> _refresh() async {
    setState(() {
      _futureRequests = _listCallLog();
    });
    await _futureRequests;
  }

  void openFilterDialog() {
    String selectedCorrespondent = queryData["correspondent"];
    String selectedMasterAccountNo = queryData["masterAccountNo"];
    String selectedAccountName = queryData["accountName"];
    String selectedMarginType = queryData["marginType"];

    showDialog<bool>(
      context: context,
      builder: (context) {
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            FocusScope.of(context).unfocus();
          },
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
                      const SizedBox(height: 16),
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
                      const SizedBox(height: 16),
                      AutoCompleteAccountName(
                        name: "accountName",
                        value: selectedAccountName,
                        isAllStatus: true,
                        correspondent: queryData["correspondent"],
                        onChange: (map) => setState(() {
                          selectedAccountName =
                              map['data']?['accountName'] as String? ?? '';
                        }),
                      ),
                      const SizedBox(height: 16),
                      SelectSystemCode(
                        label: "Margin Type",
                        placeholder: "Select Margin Type",
                        value: selectedMarginType,
                        type: "Margin Type",
                        onChange: (map) => setState(() {
                          selectedMarginType = map?['data']['code'] ?? '';
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
                      "accountName": selectedAccountName,
                      "marginType": selectedMarginType,
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
    ).then((value) {
      if (value == true) {
        setState(() {
          _futureRequests = _listCallLog();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageListContainer(
        title: "Margin Call",
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
                                  return Chip(
                                    label: Text(
                                      entry.value is bool
                                          ? ConvertService.camelToTitle(
                                                  entry.key)
                                              .replaceAll("Is ", "")
                                          : "${ConvertService.camelToTitle(entry.key)}: ${entry.value}",
                                      style: const TextStyle(fontSize: 9),
                                    ),
                                    deleteIcon: const Icon(Icons.close),
                                    onDeleted: () {
                                      setState(() {
                                        queryData[entry.key] =
                                            entry.value is bool ? false : "";

                                        _updateQueryData();
                                        _futureRequests = _listCallLog();
                                      });
                                    },
                                  );
                                }).toList(),
                              ),
                            );
                          },
                        ),
                        Expanded(child: body),
                      ],
                    ),
                  );
                },
              ));
  }
}
