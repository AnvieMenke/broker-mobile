import 'package:flutter/material.dart';
import 'package:broker_mobile/components/grid/grid_view_card.dart';
import '../../../components/dropdowns/select_account_no.dart';
import '../../../components/dropdowns/select_correspondent.dart';
import '../../../components/dropdowns/select_system_code.dart';
import '../../../components/dropdowns/select_master_account_no.dart';
import '../../../components/messages/notification.dart';
import '../../../service/ach_wire_service.dart';
import '../../../service/convert_service.dart';
import '../../../service/profile_service.dart';
import 'ach_wire.dart';

class AchWireList extends StatefulWidget {
  const AchWireList({super.key});

  @override
  State<AchWireList> createState() => _AchWireListState();
}

class _AchWireListState extends State<AchWireList> {
  Future<List<GridItem>>? _futureRequests;

  final Map<String, dynamic> queryData = {
    "correspondent": "",
    "accountNo": "",
    "masterAccountNo": "",
    "requestType": "",
    "transferType": "",
    "isOpen": false,
    "sign": "",
    "amount": "",
    "status": "",
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
    init();
  }

  void init() async {
    final profileService = ProfileService();
    final systemDate = await profileService.getSystemDate();
    setState(() {
      queryData['fromDate'] = systemDate;
      queryData['toDate'] = systemDate;
      _futureRequests = _fetchRequests();
    });
  }

  void _updateQueryData() {
    queryDataNotifier.value++;
  }

  Future<List<GridItem>> _fetchRequests() async {
    final achWireService = AchWireService();
    final resp = await achWireService.listBankRequest(queryData, {
      'pageNo': pagination.pageNo,
      'rowsPerPage': pagination.rowsPerPage,
    });
    setState(() {
      pagination = pagination.copyWith(
        totalRows: resp.summary.totalRows,
        reload: false,
      );
    });
    return resp.requests.map((e) {
      return GridItem.fromMap({
        "title": "Bank Account:\n${e.bankAccountNo}\n",
        "requestId": {
          "label": "Request ID",
          "value": e.requestId,
          "visible": false,
        },
        "systemDate": {
          "label": "System Date",
          "value": ConvertService.protoDateObjectToString(e.systemDate),
          "visible": true,
        },
        "processDate": {
          "label": "Process Date",
          "value": ConvertService.protoDateObjectToString(e.processDate),
          "visible": true,
        },
        "correspondent": {
          "label": "Correspondent",
          "value": e.correspondent,
          "visible": true,
        },
        "accountId": {
          "label": "Account ID",
          "value": e.accountId,
          "visible": false,
        },
        "accountNo": {
          "label": "Account No",
          "value": e.accountNo,
          "visible": true,
        },
        "masterAccountNo": {
          "label": "Master Account No",
          "value": e.masterAccountNo,
          "visible": false,
        },
        "branch": {
          "label": "Branch",
          "value": e.branch,
          "visible": false,
        },
        "rep": {
          "label": "Rep",
          "value": e.rep,
          "visible": false,
        },
        "bankId": {
          "label": "Bank ID",
          "value": e.bankId,
          "visible": false,
        },
        "bankName": {
          "label": "Bank Name",
          "value": e.bankName,
          "visible": false,
        },
        "bankRoutingNo": {
          "label": "Bank Routing No",
          "value": e.bankRoutingNo,
          "visible": true,
        },
        "isInternational": {
          "label": "International",
          "value": e.isInternational,
          "visible": false,
          "type": "bool",
        },
        "requestType": {
          "label": "Request Type",
          "value": e.requestType,
          "visible": true,
        },
        "transferType": {
          "label": "Transfer Type",
          "value": e.transferType,
          "visible": true,
        },
        "amt": {
          "label": "Amount",
          "value": e.amt,
          "visible": true,
        },
        "fee": {
          "label": "Fee",
          "value": e.fee,
          "visible": true,
        },
        "fedNo": {
          "label": "Fed No",
          "value": e.fedNo,
          "visible": false,
        },
        "externalId": {
          "label": "External ID",
          "value": e.externalId,
          "visible": false,
        },
        "internalNote": {
          "label": "Internal Note",
          "value": e.internalNote,
          "visible": false,
        },
        "waiveFee": {
          "label": "Waive Fee",
          "value": e.waiveFee,
          "visible": false,
          "type": "bool",
        },
        "status": {
          "label": "Status",
          "value": e.status,
          "visible": true,
          "type": "status",
          "floatRight": true,
          "hideLabel": true,
        },
      });
    }).toList();
  }

  void _onPageChange(GridPagination newPagination) {
    setState(() {
      pagination = newPagination;
      _futureRequests = _fetchRequests();
    });
  }

  void _openFilterDialog() {
    String selectedCorrespondent = queryData["correspondent"];
    String selectedAccountNo = queryData["accountNo"];
    String selectedMasterAccountNo = queryData["masterAccountNo"];
    DateTime? selectedFromDate =
        ConvertService.stringToDate(queryData["fromDate"]);
    DateTime? selectedToDate = ConvertService.stringToDate(queryData["toDate"]);
    String? selectedRequestType = queryData["requestType"];
    String? selectedStatus = queryData["status"];
    String? selectedTransferType = queryData["selectedTransferType"];
    String? externalId = queryData["externalId"];
    String? selectedSign = queryData["sign"];
    String? amount = queryData["amount"];
    bool isOpen = queryData["isOpen"] ?? false;
    showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
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
                    const Text(
                      "Date Range",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: AutoCompleteCorrespondent(
                        name: "correspondent",
                        value: selectedCorrespondent,
                        label: "Correspondent",
                        isAllStatus: true,
                        type: "",
                        onChange: (value) => setState(() {
                          selectedCorrespondent = value;
                        }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: AutoCompleteAccountNo(
                        name: "accountNo",
                        freeSolo: true,
                        value: selectedAccountNo,
                        isAllStatus: true,
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
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: AutoCompleteMasterAccountNo(
                        name: "masterAccountNo",
                        freeSolo: true,
                        value: selectedMasterAccountNo,
                        isAllStatus: true,
                        correspondent: queryData["correspondent"],
                        onChange: (map) => setState(() {
                          if (map['data'] != null &&
                              map['data']['masterAccountNo'] != null) {
                            selectedAccountNo =
                                map['data']['masterAccountNo'] as String;
                          }
                        }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: TextField(
                        decoration: const InputDecoration(
                          labelText: 'External ID',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (value) {
                          externalId = value;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: SelectSystemCode(
                        label: "Request Type",
                        placeholder: "Select Request Type",
                        value: selectedRequestType,
                        type: "Type",
                        subType: "Request Type",
                        onChange: (map) => setState(() {
                          selectedRequestType = map?['data']['code'];
                        }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: SelectSystemCode(
                        label: "Transfer Type",
                        placeholder: "Select Transfer Type",
                        value: selectedTransferType,
                        type: "Type",
                        subType: "Transfer Type",
                        onChange: (map) => setState(() {
                          selectedTransferType = map?['data']['code'];
                        }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: SelectSystemCode(
                              label: "Sign",
                              placeholder: "Select Sign",
                              value: selectedSign,
                              type: "Sign",
                              subType: "Bank Request",
                              onChange: (map) {
                                setState(() {
                                  selectedSign = map?['data']['code'];
                                });
                              },
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: TextField(
                              decoration: const InputDecoration(
                                labelText: "Amount",
                                border: OutlineInputBorder(),
                              ),
                              enabled: (selectedSign ?? "").isNotEmpty,
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                amount = value;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: CheckboxListTile(
                        title: const Text("Open"),
                        value: isOpen,
                        onChanged: (bool? value) {
                          setState(() {
                            isOpen = value ?? false;
                          });
                        },
                        controlAffinity: ListTileControlAffinity.trailing,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: SelectSystemCode(
                        label: "Status",
                        placeholder: "Select Status",
                        value: selectedStatus,
                        type: "Status",
                        subType: "Bank Request",
                        onChange: (map) => setState(() {
                          selectedStatus = map?['data']['code'];
                        }),
                      ),
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
                  if (amount != null &&
                      amount!.isNotEmpty &&
                      selectedSign!.isEmpty) {
                    Notify.warning(
                        "Please select a sign before entering amount.");
                    return;
                  }
                  queryData["fromDate"] =
                      ConvertService.dateToString(selectedFromDate);
                  queryData["toDate"] =
                      ConvertService.dateToString(selectedToDate);
                  queryData["correspondent"] = selectedCorrespondent;
                  queryData["accountNo"] = selectedAccountNo;
                  queryData["externalId"] = externalId;
                  queryData["requestType"] = selectedRequestType;
                  queryData["masterAccountNo"] = selectedMasterAccountNo;
                  queryData["sign"] = selectedSign;
                  queryData["amount"] = amount;
                  queryData["isOpen"] = isOpen;
                  queryData["status"] = selectedStatus;
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
          _futureRequests = _fetchRequests();
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
            onRefresh: () async => _futureRequests = _fetchRequests(),
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
            onRefresh: () async => _futureRequests = _fetchRequests(),
            child: GridWithPagination(
              items: snapshot.data!,
              pagination: pagination,
              onPageChange: _onPageChange,
              actionsBuilder: (ctx, item) => [
                PopupMenuItem(
                  value: "edit",
                  child: const Text("Edit"),
                  onTap: () {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      final Map<String, dynamic> formData = {
                        for (var f in item.fields) f.keyName: f.value,
                      };
                      Navigator.push(
                        ctx,
                        MaterialPageRoute(
                          builder: (context) => AchWirePage(
                            initialFormData: formData,
                          ),
                        ),
                      ).then((value) {
                        if (value == true) {
                          setState(() {
                            _futureRequests = _fetchRequests();
                          });
                        }
                      });
                    });
                  },
                ),
              ],
            ),
          );
        }

        return Scaffold(
          appBar: AppBar(
            title: const Text('ACH/Wire Requests'),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  _openFilterDialog();
                },
              ),
              const SizedBox(width: 16),
            ],
          ),
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
                      children: activeFilters
                          .where((entry) {
                        if (entry.value is bool) return entry.value == true;
                        if (entry.value == null || entry.value.toString().isEmpty) return false;
                        return true;
                      })
                          .map((entry) {
                        return Chip(
                          label: Text(
                            entry.value is bool
                                ? ConvertService.camelToTitle(entry.key).replaceAll("Is ", "")
                                : "${ConvertService.camelToTitle(entry.key)}: ${entry.value}",
                            style: const TextStyle(fontSize: 9),
                          ),
                          deleteIcon: entry.key.toLowerCase().contains("date")
                              ? null
                              : const Icon(Icons.close),
                          onDeleted: entry.key.toLowerCase().contains("date")
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
                              _futureRequests = _fetchRequests();
                            });
                          },
                        );
                      })
                          .toList(),

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
