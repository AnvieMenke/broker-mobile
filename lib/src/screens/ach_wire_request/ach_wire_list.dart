import 'package:flutter/material.dart';
import 'package:broker_mobile/components/grid/grid_view_card.dart';
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
    "bankAccountId": "",
    "bank": "",
    "amt": 0.0,
    "fee": 0.0,
    "requestType": "",
    "transferType": "",
    "isInternational": false,
    "broker": "",
    "status": "",
    "requestId": 0,
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
            actions: const [
              Icon(Icons.search),
              SizedBox(width: 16),
              Icon(Icons.menu),
              SizedBox(width: 16),
            ],
          ),
          body: body,
        );
      },
    );
  }
}
