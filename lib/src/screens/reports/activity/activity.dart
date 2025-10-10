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

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  ActivityPageState createState() => ActivityPageState();
}

class ActivityPageState extends State<ActivityPage> {
  Future<List<GridItem>>? _futureRequests;

  final Map<String, dynamic> queryData = {
    "dateType": "Trade Date",
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
        "otherFees": {
          "label": "Other Fees",
          "value": e.otherFees,
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
        "status": {
          "label": "Status",
          "value": e.status,
          "visible": false,
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

  void openFilterDialog() {
    String selectedDateType = queryData["dateType"];
    String selectedCorrespondent = queryData["correspondent"];
    String selectedAccountNo = queryData["accountNo"];
    String selectedMasterAccountNo = queryData["masterAccountNo"];
    String selectedRep = queryData["rep"];
    String selectedBranch = queryData["branch"];
    String selectedAssetType = queryData["assetType"];
    String selectedSymbol = queryData["symbol"];

    List<String> selectedEntryTypes = queryData["entryType"].isNotEmpty
        ? queryData["entryType"].split(",")
        : <String>[];

    String description = queryData["description"] ?? "";
    DateTime? selectedFromDate =
        ConvertService.stringToDate(queryData["fromDate"]);
    DateTime? selectedToDate = ConvertService.stringToDate(queryData["toDate"]);

    final TextEditingController descriptionController =
        TextEditingController(text: description);

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
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 8),
                      SelectSystemCode(
                        label: "Date Type",
                        placeholder: "Select Date Type",
                        value: selectedDateType,
                        type: "Date Type",
                        subType: "Activity Report",
                        onChange: (map) => setState(() {
                          selectedDateType = map?['data']['code'];
                        }),
                      ),
                      const SizedBox(height: 8),
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
                        value: selectedRep,
                        isAllStatus: false,
                        isAccessibleOnly: true,
                        correspondent: queryData["correspondent"],
                        onChange: (map) => setState(() {
                          if (map['data'] != null &&
                              map['data']['rep'] != null) {
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
                      const SizedBox(height: 16),
                      MultiSelectEntryType(
                        name: "entryType",
                        value: selectedEntryTypes,
                        onChange: (map) => setState(() {
                          if (map['value'] != null) {
                            selectedEntryTypes =
                                List<String>.from(map['value'] as List);
                          }
                        }),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        controller: descriptionController,
                        decoration: const InputDecoration(
                          labelText: "Description",
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (value) {
                          setState(() {
                            description = value;
                          });
                        },
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
                    queryData["entryType"] = selectedEntryTypes.join(",");
                    queryData["description"] = description;
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
          _futureRequests = _listActivity();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageListContainer(
        title: "Activity",
        openFilterDialog: openFilterDialog,
        page: _futureRequests == null
            ? Center(child: CircularProgressIndicator())
            : FutureBuilder<List<GridItem>>(
                future: _futureRequests,
                builder: (context, snapshot) {
                  Widget body;
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    body = const Center(child: CircularProgressIndicator());
                  } else {
                    body = RefreshIndicator(
                      onRefresh: () async => _futureRequests = _listActivity(),
                      child: GridWithPagination(
                        items: snapshot.data!,
                        pagination: pagination,
                        onPageChange: _onPageChange,
                      ),
                    );
                  }

                  return Column(
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
                                    "${ConvertService.camelToTitle(entry.key)}: ${entry.value}",
                                    style: const TextStyle(fontSize: 9),
                                  ),
                                  deleteIcon:
                                      entry.key.toLowerCase().contains("date")
                                          ? null
                                          : const Icon(Icons.close),
                                  onDeleted: entry.key
                                          .toLowerCase()
                                          .contains("date")
                                      ? null
                                      : () {
                                          setState(() {
                                            queryData[entry.key] = "";
                                            _updateQueryData();
                                            _futureRequests = _listActivity();
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
                  );
                },
              ));
  }
}
