import 'package:broker_mobile/components/containers/page_list_container.dart';
import 'package:broker_mobile/service/buying_power_service.dart';
import 'package:flutter/material.dart';
import 'package:broker_mobile/components/grid/grid_view_card.dart';
import '../../../../components/dropdowns/select_correspondent.dart';
import '../../../../components/dropdowns/select_master_account_no.dart';
import '../../../../components/dropdowns/select_account_name.dart';
import '../../../../components/dropdowns/select_system_code.dart';
import '../../../../service/convert_service.dart';
import '../../../../service/profile_service.dart';

class BuyingPowerPage extends StatefulWidget {
  const BuyingPowerPage({super.key});

  @override
  BuyingPowerPageState createState() => BuyingPowerPageState();
}

class BuyingPowerPageState extends State<BuyingPowerPage> {
  Future<List<GridItem>>? _futureRequests;

  final Map<String, dynamic> queryData = {
    "correspondent": "",
    "accountNo": "",
    "masterAccountNo": "",
    "accountName": "",
    "marginType": "",
    "hideZero": false,
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
      _futureRequests = _listBuyingPower();
    });
  }

  void _updateQueryData() {
    queryDataNotifier.value++;
  }

  Future<List<GridItem>> _listBuyingPower() async {
    final buyingPowerService = BuyingPowerService();
    final resp = await buyingPowerService.listBuyingPower(queryData, {
      'pageNo': pagination.pageNo,
      'rowsPerPage': pagination.rowsPerPage,
    });
    setState(() {
      pagination = pagination.copyWith(
        totalRows: resp.summary.totalRows,
        reload: false,
      );
    });
    return resp.buyingPowers.map((e) {
      return GridItem.fromMap({
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
        "date": {
          "label": "Date",
          "value": e.tradeDate,
          "type": "date",
          "visible": true,
          "gridPosition": "subTitle",
        },
        "note": {
          "label": "Note",
          "hideLabel": true,
          "type": "note",
          "value": e.note,
          "visible": e.note.isNotEmpty,
        },
        "buyingPower": {
          "hideLabel": true,
          "label": "Buying Power",
          "value": e.buyingPower,
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
      _futureRequests = _listBuyingPower();
    });
  }

  void openFilterDialog() {
    String selectedCorrespondent = queryData["correspondent"];
    String selectedMasterAccountNo = queryData["masterAccountNo"];
    String selectedAccountName = queryData["accountName"];
    String selectedMarginType = queryData["marginType"];
    bool hideZero = queryData["hideZero"] ?? false;
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
                    AutoCompleteAccountName(
                      name: "accountName",
                      freeSolo: true,
                      value: selectedAccountName,
                      isAllStatus: false,
                      isAccessibleOnly: true,
                      correspondent: queryData["correspondent"],
                      onChange: (map) => setState(() {
                        if (map['data'] != null &&
                            map['data']['accountName'] != null) {
                          selectedAccountName =
                              map['data']['accountName'] as String;
                        }
                      }),
                    ),
                    const SizedBox(height: 16),
                    SelectSystemCode(
                      label: "Margin Type",
                      placeholder: "Select Margin Type",
                      value: selectedMarginType,
                      type: "Margin Type",
                      onChange: (map) => setState(() {
                        selectedMarginType = map?['data']['code'];
                      }),
                    ),
                    const SizedBox(height: 16),
                    CheckboxListTile(
                      title: const Text("Hide  Zero"),
                      value: hideZero,
                      onChanged: (bool? value) {
                        setState(() {
                          hideZero = value ?? false;
                        });
                      },
                      controlAffinity: ListTileControlAffinity.trailing,
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
                  queryData["fromDate"] =
                      ConvertService.dateToString(selectedFromDate);
                  queryData["toDate"] =
                      ConvertService.dateToString(selectedToDate);
                  queryData["correspondent"] = selectedCorrespondent;
                  queryData["masterAccountNo"] = selectedMasterAccountNo;
                  queryData["accountName"] = selectedAccountName;
                  queryData["marginType"] = selectedMarginType;
                  queryData["hideZero"] = hideZero;
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
          _futureRequests = _listBuyingPower();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageListContainer(
        title: "Buying Power",
        openFilterDialog: openFilterDialog,
        page: _futureRequests == null
            ? Center(child: CircularProgressIndicator())
            : FutureBuilder<List<GridItem>>(
                future: _futureRequests,
                builder: (context, snapshot) {
                  Widget body;
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    body = const Center(child: CircularProgressIndicator());
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    body = RefreshIndicator(
                      onRefresh: () async =>
                          _futureRequests = _listBuyingPower(),
                      child: ListView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        children: const [
                          SizedBox(height: 200),
                          Center(
                            child: Text("No data found",
                                style: TextStyle(fontSize: 20)),
                          ),
                        ],
                      ),
                    );
                  } else {
                    body = RefreshIndicator(
                      onRefresh: () async =>
                          _futureRequests = _listBuyingPower(),
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
                                    deleteIcon: entry.key
                                                .toLowerCase()
                                                .contains("fromdate") ||
                                            entry.key
                                                .toLowerCase()
                                                .contains("todate")
                                        ? null
                                        : const Icon(Icons.close),
                                    onDeleted: entry.key
                                                .toLowerCase()
                                                .contains("fromdate") ||
                                            entry.key
                                                .toLowerCase()
                                                .contains("todate")
                                        ? null
                                        : () {
                                            setState(() {
                                              queryData[entry.key] =
                                                  entry.value is bool
                                                      ? false
                                                      : "";

                                              _updateQueryData();
                                              _futureRequests =
                                                  _listBuyingPower();
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
