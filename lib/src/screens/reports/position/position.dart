import 'package:flutter/material.dart';
import 'package:broker_mobile/components/grid/grid_view_card.dart';
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

class PositionFragment extends StatefulWidget {
  const PositionFragment({super.key});

  @override
  PositionFragmentState createState() => PositionFragmentState();
}

class PositionFragmentState extends State<PositionFragment> {
  Future<List<GridItem>>? _futureRequests;

  final Map<String, dynamic> queryData = {
    "dateType": "",
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
    final achWireService = PositionService();
    final resp = await achWireService.listPosition(queryData, {
      'pageNo': pagination.pageNo,
      'rowsPerPage': pagination.rowsPerPage,
    });
    setState(() {
      pagination = pagination.copyWith(
        totalRows: resp.summary.totalRows,
        reload: false,
      );
    });
    return resp.positions.map((e) {
      return GridItem.fromMap({
        "accountNo": {
          "label": "Account No",
          "value": e.accountNo,
          "visible": true,
          "gridPosition": "title",
        },
        "correspondent": {
          "label": "Correspondent",
          "value": e.correspondent,
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
        "date": {
          "label": "Date",
          "value": e.date,
          "type": "date",
          "visible": true,
          "gridPosition": "subTitle",
        },
        "assetType": {
          "label": "Asset Type",
          "value": e.assetType,
          "visible": false,
        },
        "symbol": {
          "hideLabel": true,
          "label": "Symbol",
          "value": e.symbol,
          "visible": true,
          "addAvatar": true,
        },
        "tdQty": {
          "label": "TD Qty",
          "value": e.tdQty,
          "type": "qty",
          "visible": true,
        },
        "costBasis": {
          "label": "Cost Basis",
          "value": e.costBasis,
          "type": "amount",
          "visible": true,
        },
        "tdMarketValue": {
          "hideLabel": true,
          "label": "TD Market Value",
          "value": e.tdMarketValue,
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
      _futureRequests = _listPosition();
    });
  }

  void openFilterDialog() {
    String selectedDateType = queryData["dateType"];
    String selectedCorrespondent = queryData["correspondent"];
    String selectedAccountNo = queryData["accountNo"];
    String selectedMasterAccountNo = queryData["masterAccountNo"];
    String selectedRep = queryData["rep"];
    String selectedBranch = queryData["branch"];
    String selectedAssetType = queryData["assetType"];
    String selectedSymbol = queryData["symbol"];
    DateTime? selectedFromDate =
        ConvertService.stringToDate(queryData["fromDate"]);
    DateTime? selectedToDate = ConvertService.stringToDate(queryData["toDate"]);

    showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: const Text("Filter by:"),
          content: StatefulBuilder(
            builder: (context, setState) {
              Future<void> pickDate({required bool isFrom}) async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                );
                if (picked != null) {
                  setState(() {
                    if (isFrom) {
                      selectedFromDate = picked;
                    } else {
                      selectedToDate = picked;
                    }
                  });
                }
              }

              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SelectSystemCode(
                      label: "Date Type",
                      placeholder: "Select Date Type",
                      value: selectedDateType,
                      type: "Date Type",
                      subType: "Position Report",
                      onChange: (map) => setState(() {
                        selectedDateType = map?['data']['code'];
                      }),
                    ),
                    const Text("Date Range",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () => pickDate(isFrom: true),
                            child: InputDecorator(
                              decoration: const InputDecoration(
                                labelText: "From",
                                border: OutlineInputBorder(),
                              ),
                              child: Text(
                                selectedFromDate != null
                                    ? "${selectedFromDate!.month}/${selectedFromDate!.day}/${selectedFromDate!.year}"
                                    : "Select date",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: InkWell(
                            onTap: () => pickDate(isFrom: false),
                            child: InputDecorator(
                              decoration: const InputDecoration(
                                labelText: "To",
                                border: OutlineInputBorder(),
                              ),
                              child: Text(
                                selectedToDate != null
                                    ? "${selectedToDate!.month}/${selectedToDate!.day}/${selectedToDate!.year}"
                                    : "Select date",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
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
                    AutoCompleteAccountNo(
                      name: "accountNo",
                      freeSolo: true,
                      value: selectedAccountNo,
                      isAllStatus: false,
                      isAccessibleOnly: true,
                      correspondent: queryData["correspondent"],
                      type: "Client",
                      onChange: (map) => setState(() {
                        if (map['data'] != null &&
                            map['data']['accountNo'] != null) {
                          selectedAccountNo =
                              map['data']['accountNo'] as String;
                        }
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
                      value: selectedMasterAccountNo,
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
                      value: selectedDateType,
                      type: "Asset Type",
                      onChange: (map) => setState(() {
                        selectedAssetType = map?['data']['code'];
                      }),
                    ),
                    const SizedBox(height: 16),
                    AutoCompleteSymbol(
                      name: "symbol",
                      freeSolo: true,
                      value: selectedSymbol,
                      isActive: true,
                      onChange: (map) => setState(() {
                        if (map['data'] != null &&
                            map['data']['symbol'] != null) {
                          selectedSymbol = map['data']['symbol'] as String;
                        }
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
                  queryData["dateType"] = selectedDateType;
                  queryData["fromDate"] =
                      ConvertService.dateToString(selectedFromDate);
                  queryData["toDate"] =
                      ConvertService.dateToString(selectedToDate);
                  queryData["correspondent"] = selectedCorrespondent;
                  queryData["accountNo"] = selectedAccountNo;
                  queryData["masterAccountNo"] = selectedMasterAccountNo;
                  queryData["rep"] = selectedRep;
                  queryData["branch"] = selectedBranch;
                  queryData["assetType"] = selectedAssetType;
                  queryData["symbol"] = selectedSymbol;
                  _updateQueryData();
                });
                Navigator.pop(context, true);
              },
              child: const Text("Search"),
            ),
          ],
        );
      },
    ).then((value) {
      if (value == true) {
        setState(() {
          _futureRequests = _listPosition();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_futureRequests == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    return FutureBuilder<List<GridItem>>(
      future: _futureRequests,
      builder: (context, snapshot) {
        Widget body;
        if (snapshot.connectionState == ConnectionState.waiting) {
          body = const Center(child: CircularProgressIndicator());
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          body = RefreshIndicator(
            onRefresh: () async => _futureRequests = _listPosition(),
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              children: const [
                SizedBox(height: 200),
                Center(
                  child: Text("No data found", style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          );
        } else {
          body = RefreshIndicator(
            onRefresh: () async => _futureRequests = _listPosition(),
            child: GridWithPagination(
              items: snapshot.data!,
              pagination: pagination,
              onPageChange: _onPageChange,
            ),
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

                  if (activeFilters.isEmpty) return const SizedBox.shrink();

                  return Container(
                    width: double.infinity,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Wrap(
                      spacing: 6,
                      runSpacing: 6,
                      children: activeFilters.where((entry) {
                        if (entry.value is bool) return entry.value == true;
                        if (entry.value == null ||
                            entry.value.toString().isEmpty) {
                          return false;
                        }
                        return true;
                      }).map((entry) {
                        return Chip(
                          label: Text(
                            entry.value is bool
                                ? ConvertService.camelToTitle(entry.key)
                                    .replaceAll("Is ", "")
                                : "${ConvertService.camelToTitle(entry.key)}: ${entry.value}",
                            style: const TextStyle(fontSize: 9),
                          ),
                          deleteIcon:
                              entry.key.toLowerCase().contains("fromdate") ||
                                      entry.key.toLowerCase().contains("todate")
                                  ? null
                                  : const Icon(Icons.close),
                          onDeleted:
                              entry.key.toLowerCase().contains("fromdate") ||
                                      entry.key.toLowerCase().contains("todate")
                                  ? null
                                  : () {
                                      setState(() {
                                        queryData[entry.key] =
                                            entry.value is bool ? false : "";

                                        if (entry.key == "amount") {
                                          queryData["sign"] = "";
                                        } else if (entry.key == "sign") {
                                          queryData["amount"] = "";
                                        }

                                        _updateQueryData();
                                        _futureRequests = _listPosition();
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
    );
  }
}
