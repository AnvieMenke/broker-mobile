import 'package:flutter/material.dart';
import 'package:broker_mobile/components/grid/grid_view_card.dart';
import '../../../service/ach_wire_service.dart';
import '../../../service/convert_service.dart';

class AchWireList extends StatefulWidget {
  const AchWireList({super.key});

  @override
  State<AchWireList> createState() => _AchWireListState();
}

class _AchWireListState extends State<AchWireList> {
  late Future<List<GridItem>> _futureRequests;

  @override
  void initState() {
    super.initState();
    _futureRequests = _fetchRequests();
  }

  Future<List<GridItem>> _fetchRequests() async {
    final achWireService = AchWireService();
    final Map<String, dynamic> formData = {
      "correspondent": "",
      "accountNo": "",
      "bankAccountId": "",
      "bank": "",
      "amount": 0.0,
      "fee": 0.0,
      "requestType": "",
      "transferType": "",
      "isInternational": false,
      "broker": "",
      "status": "Pending",
      "requestId": 0,
    };

    final resp = await achWireService.listBankRequest(formData);

    return resp.requests.map((e) {
      return GridItem.fromMap({
        "title": "Bank Account:\n${e.bankAccountNo}\n",
        "Request ID": {
          "value": e.requestId,
          "visible": false,
        },
        "System Date": {
          "value": ConvertService.protoDateObjectToString(e.systemDate),
          "visible": true,
        },
        "Process Date": {
          "value": ConvertService.protoDateObjectToString(e.processDate),
          "visible": true,
        },
        "Correspondent": {
          "value": e.correspondent,
          "visible": true,
        },
        "Account ID": {
          "value": e.accountId,
          "visible": false,
        },
        "Account No": {
          "value": e.accountNo,
          "visible": true,
        },
        "Master Account No": {
          "value": e.masterAccountNo,
          "visible": false,
        },
        "Branch": {
          "value": e.branch,
          "visible": false,
        },
        "Rep": {
          "value": e.rep,
          "visible": false,
        },
        "Bank ID": {
          "value": e.bankId,
          "visible": false,
        },
        "Bank Name": {
          "value": e.bankName,
          "visible": false,
        },
        "Bank": {
          "value": e.bank,
          "visible": false,
        },
        "Bank Routing No": {
          "value": e.bankRoutingNo,
          "visible": true,
        },
        "Is International": {
          "value": e.isInternational,
          "visible": false,
          "type": "bool",
        },
        "Request Type": {
          "value": e.requestType,
          "visible": true,
        },
        "Transfer Type": {
          "value": e.transferType,
          "visible": true,
        },
        "Amount": {
          "value": "\$${e.amt}",
          "visible": true,
        },
        "Fee": {
          "value": "\$${e.fee}",
          "visible": true,
        },
        "Fed No": {
          "value": e.fedNo,
          "visible": false,
        },
        "External ID": {
          "value": e.externalId,
          "visible": false,
        },
        "Internal Note": {
          "value": e.internalNote,
          "visible": false,
        },
        "Waive Fee": {
          "value": e.waiveFee,
          "visible": false,
          "type": "bool",
        },
        "Send To": {
          "value": e.sendTo,
          "visible": false,
        },
        "Wallet ID": {
          "value": e.walletId,
          "visible": false,
        },
        "Status": {
          "value": e.status,
          "visible": true,
          "type": "status",
          "floatRight": true,
          "hideLabel": true,
        },
      });
    }).toList();
  }

  Future<void> _refresh() async {
    setState(() {
      _futureRequests = _fetchRequests();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<GridItem>>(
      future: _futureRequests,
      builder: (context, snapshot) {
        Widget body;

        if (snapshot.connectionState == ConnectionState.waiting) {
          body = const Center(child: CircularProgressIndicator());
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          body = RefreshIndicator(
            onRefresh: _refresh,
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              children: const [
                SizedBox(height: 200),
                Center(
                  child: Text(
                    "No data found",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          );
        } else {
          final items = snapshot.data!;
          body = RefreshIndicator(
            onRefresh: _refresh,
            child: AchWireGrid(items: items),
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

class AchWireGrid extends StatelessWidget {
  final List<GridItem> items;

  const AchWireGrid({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(12.0),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GridViewCard(
          item: items[index],
          actions: [
            PopupMenuItem(
              child: const Text("Edit"),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Editing ${items[index].title}")),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
