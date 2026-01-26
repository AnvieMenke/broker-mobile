import 'package:broker_mobile/components/containers/page_list_container.dart';
import 'package:broker_mobile/utils/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:broker_mobile/components/grid/grid_view_card.dart';
import '../../../components/datepicker/datepicker.dart';
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

  late Map<String, dynamic> queryData = {
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
    _init();
  }

  void _init() async {
    final profileService = ProfileService();
    final systemDate = await profileService.getSystemDate();
    setState(() {
      queryData['fromDate'] = systemDate;
      queryData['toDate'] = systemDate;
      _futureRequests = _fetchRequests();
    });
  }

  void _updateQueryData() {
    pagination = pagination.copyWith(
      pageNo: 0,
      reload: true,
    );
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
        "requestType": {
          "label": "Request Type",
          "value": e.requestType,
          "visible": true,
          "gridPosition": "subTitle",
        },
        "transferType": {
          "label": "Transfer Type",
          "value": e.transferType,
          "visible": true,
          "gridPosition": "title",
        },
        "requestId": {
          "label": "Request ID",
          "value": e.requestId,
          "visible": false,
        },
        "systemDate": {
          "label": "Requested Date",
          "type": "date",
          "value": e.systemDate,
          "visible": true,
        },
        "processDate": {
          "label": "Process Date",
          "type": "date",
          "value": e.processDate,
          "visible":
              ConvertService.protoDateObjectToString(e.processDate).isNotEmpty,
        },
        "bankName": {
          "label": "Bank",
          "value": e.bankName,
          "visible": true,
        },
        "bankAccountNo": {
          "label": "Bank Account",
          "value": e.bankAccountNo,
          "visible": true,
        },
        "correspondent": {
          "label": "Correspondent",
          "value": e.correspondent,
          "visible": false,
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
        "bankRoutingNo": {
          "label": "Bank Routing No",
          "value": e.bankRoutingNo,
          "visible": false,
        },
        "isInternational": {
          "label": "International",
          "value": e.isInternational,
          "visible": false,
          "type": "bool",
        },
        "amt": {
          "label": "Amount",
          "value": e.amt,
          "visible": true,
          "type": "amount",
          "gridPosition": "rightTitle",
        },
        "fee": {
          "label": "Fee",
          "value": e.fee,
          "type": "amount",
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

  Future<void> _refresh() async {
    setState(() {
      _futureRequests = _fetchRequests();
    });
    await _futureRequests;
  }

  void _openFilterDialog() {
    String selectedCorrespondent = queryData["correspondent"];
    String selectedAccountNo = queryData["accountNo"];
    String selectedMasterAccountNo = queryData["masterAccountNo"];
    String? selectedRequestType = queryData["requestType"];
    String? selectedTransferType = queryData["transferType"];
    String? externalId = queryData["externalId"];
    String? selectedStatus = queryData["status"];
    String? selectedSign = queryData["sign"];
    String? amount = queryData["amount"];
    bool isOpen = queryData["isOpen"] ?? false;

    showDialog<bool>(
      context: context,
      builder: (context) {
        return GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () => FocusScope.of(context).unfocus(),
          child: AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
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
                      AutoCompleteAccountNo(
                        name: "accountNo",
                        value: selectedAccountNo,
                        isAllStatus: true,
                        correspondent: queryData["correspondent"],
                        onChange: (map) => setState(() {
                          selectedAccountNo =
                              map['data']?['accountNo'] as String? ?? '';
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
                      const Text(
                        'External ID',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 6),
                      TextField(
                        decoration:
                            const InputDecoration(hintText: 'External ID'),
                        onChanged: (value) => externalId = value,
                      ),
                      SelectSystemCode(
                        label: "Request Type",
                        placeholder: "Request Type",
                        value: selectedRequestType,
                        type: "Type",
                        subType: "Request Type",
                        onChange: (map) => setState(() {
                          selectedRequestType = map?['data']['code'] ?? '';
                        }),
                      ),
                      SelectSystemCode(
                        label: "Transfer Type",
                        placeholder: "Select Transfer Type",
                        value: selectedTransferType,
                        type: "Type",
                        subType: "Transfer Type",
                        onChange: (map) => setState(() {
                          selectedTransferType = map?['data']['code'] ?? '';
                        }),
                      ),
                      Row(
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
                                  selectedSign = map?['data']['code'] ?? '';
                                });
                              },
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: AppTheme.defaultRadius,
                                  bottomLeft: AppTheme.defaultRadius,
                                ),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Amount',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(height: 6),
                                  TextField(
                                    decoration: const InputDecoration(
                                      labelText: "Amount",
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                          topRight: AppTheme.defaultRadius,
                                          bottomRight: AppTheme.defaultRadius,
                                        ),
                                        borderSide: BorderSide.none,
                                      ),
                                    ),
                                    enabled: (selectedSign ?? "").isNotEmpty,
                                    keyboardType: TextInputType.number,
                                    onChanged: (value) => amount = value,
                                  ),
                                ]),
                          ),
                        ],
                      ),
                      CheckboxListTile(
                        title: const Text("Open"),
                        value: isOpen,
                        onChanged: (val) =>
                            setState(() => isOpen = val ?? false),
                        controlAffinity: ListTileControlAffinity.trailing,
                      ),
                      SelectSystemCode(
                        label: "Status",
                        placeholder: "Select Status",
                        value: selectedStatus,
                        type: "Status",
                        subType: "Bank Request",
                        onChange: (map) => setState(() {
                          selectedStatus = map?['data']['code'] ?? '';
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
                    if (amount != null &&
                        amount!.isNotEmpty &&
                        (selectedSign?.isEmpty ?? true)) {
                      Notify.warning(
                          "Please select a sign before entering amount.");
                      return;
                    }

                    queryData = {
                      ...queryData,
                      "correspondent": selectedCorrespondent,
                      "accountNo": selectedAccountNo,
                      "masterAccountNo": selectedMasterAccountNo,
                      "externalId": externalId,
                      "requestType": selectedRequestType,
                      "transferType": selectedTransferType,
                      "sign": selectedSign,
                      "amount": amount,
                      "isOpen": isOpen,
                      "status": selectedStatus,
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
          _futureRequests = _fetchRequests();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageListContainer(
      title: "ACH/Wire",
      openFilterDialog: _openFilterDialog,
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
                    actionsBuilder: (ctx, item) {
                      final statusField = item.fields.firstWhere(
                        (f) => f.keyName == "status",
                        orElse: () => GridField(
                          keyName: '',
                          label: '',
                          value: '',
                        ),
                      );

                      return [
                        if (["Pending"].contains(statusField.value))
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
                      ];
                    },
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
                                return entry.value.toString().isNotEmpty;
                              }).map((entry) {
                                return [
                                  "fromDate",
                                  "toDate",
                                ].contains(entry.key)
                                    ? const SizedBox.shrink()
                                    : Chip(
                                        label: Text(
                                          entry.value is bool
                                              ? ConvertService.camelToTitle(
                                                  entry.key)
                                              : "${ConvertService.camelToTitle(entry.key)}: ${entry.value}",
                                          style: const TextStyle(fontSize: 9),
                                        ),
                                        deleteIcon: const Icon(Icons.close),
                                        onDeleted: () {
                                          setState(() {
                                            queryData[entry.key] =
                                                entry.value is bool
                                                    ? false
                                                    : "";
                                            _updateQueryData();
                                            _futureRequests = _fetchRequests();
                                          });
                                        },
                                      );
                              }).toList(),
                            ),
                          );
                        },
                      ),
                      CustomDatePicker(
                        isDateRange: true,
                        initialFromDate: queryData['fromDate'] != null
                            ? DateTime.tryParse(queryData['fromDate'])
                            : null,
                        initialToDate: queryData['toDate'] != null
                            ? DateTime.tryParse(queryData['toDate'])
                            : null,
                        onApply: (range, from, to) {
                          setState(() {
                            queryData['fromDate'] = from != null
                                ? ConvertService.dateToString(from)
                                : queryData['fromDate'];
                            queryData['toDate'] = to != null
                                ? ConvertService.dateToString(to)
                                : queryData['toDate'];
                            _updateQueryData();
                            _futureRequests = _fetchRequests();
                          });
                        },
                      ),
                      const SizedBox(height: 12),
                      Expanded(child: body),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
