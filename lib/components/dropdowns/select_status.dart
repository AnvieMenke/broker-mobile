import 'package:flutter/material.dart';
import 'package:broker_mobile/proto/commonpb/systemcode.pb.dart';
import 'package:broker_mobile/service/common_service.dart';
import 'package:broker_mobile/service/user_access_service.dart';

class SelectStatus extends StatefulWidget {
  final String? value;
  final String? subType;
  final bool cancelOnly;
  final bool disabled;
  final bool required;
  final bool error;
  final String? requestType;
  final void Function(String?) onChange;

  const SelectStatus({
    super.key,
    required this.onChange,
    this.value,
    this.subType,
    this.cancelOnly = false,
    this.disabled = false,
    this.required = false,
    this.error = false,
    this.requestType,
  });

  @override
  State<SelectStatus> createState() => _SelectStatusState();
}

class _SelectStatusState extends State<SelectStatus> {
  final CommonService _commonService = CommonService();
  final UsrAccessService _usrAccessService = UsrAccessService();

  List<SystemCode> statusList = [];
  Map<String, dynamic> currentSelected = {"note": "0", "code": ""};
  Map<String, dynamic> previousSelected = {"note": "", "code": ""};
  Map<String, dynamic> initialSelected = {"note": "0", "code": ""};

  Future<void> getStatusList() async {
    bool hasBrokerApprovedAccess = false;

    final usrAccessesList = await _usrAccessService.listRoleAccess("", "");
    for (final usrAccess in usrAccessesList) {
      if (usrAccess.access == "Bank Request" &&
          usrAccess.subAccess == "Broker Approved") {
        hasBrokerApprovedAccess = true;
        break;
      }
    }

    final param = {
      "type": "Status",
      "subType": widget.subType ?? "Bank Request",
    };

    List<SystemCode> data = await _commonService.listSystemCode(
      param["type"]!,
      param["subType"],
      null,
    );

    List<SystemCode> filtered = data.where((item) {
      final String current = widget.value ?? "";
      final bool isBrokerApproved = item.code == "Broker Approved" &&
          hasBrokerApprovedAccess &&
          !widget.cancelOnly;

      final bool isCancel = item.code == "Canceled" &&
          widget.requestType != "Wire" &&
          current == "Pending";

      final bool isCurrent = item.code == current;

      return isBrokerApproved || isCancel || isCurrent;
    }).toList();

    filtered.sort((a, b) {
      final noteA = int.tryParse(a.note) ?? 0;
      final noteB = int.tryParse(b.note) ?? 0;

      if (noteA == 0) return 1;
      if (noteB == 0) return -1;
      return noteA.compareTo(noteB);
    });

    setState(() => statusList = filtered);

    for (final status in filtered) {
      if (status.code == widget.value) {
        currentSelected = {"note": status.note, "code": status.code};
        initialSelected = {"note": status.note, "code": status.code};
        break;
      }
    }
  }

  void handleChange(String? selectedCode) {
    if (selectedCode == null) return;

    for (int i = 0; i < statusList.length; i++) {
      final status = statusList[i];
      if (status.code == selectedCode) {
        final index = int.tryParse(status.note) ?? 0;

        if (index == 0) {
          if ((int.tryParse(currentSelected["note"] ?? "0") ?? 0) != 0) {
            previousSelected = currentSelected;
          }
        }

        currentSelected = {"note": status.note, "code": status.code};

        if (index > 1 && selectedCode != initialSelected["code"]) {
          previousSelected = {
            "note": statusList[i - 1].note,
            "code": statusList[i - 1].code,
          };
        }

        if (selectedCode == initialSelected["code"]) {
          previousSelected = {"note": "", "code": ""};
        }
      }
    }

    setState(() {
      currentSelected = {"note": currentSelected["note"], "code": selectedCode};
    });

    widget.onChange(selectedCode);
  }

  @override
  void initState() {
    super.initState();
    getStatusList();
  }

  @override
  Widget build(BuildContext context) {
    final disabled = widget.disabled;

    final dropdownValue =
        statusList.any((s) => s.code == currentSelected["code"])
            ? currentSelected["code"]
            : null;

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        'Status',
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
      const SizedBox(height: 6),
      DropdownButtonFormField<String>(
        isExpanded: true,
        decoration: InputDecoration(
          fillColor: widget.disabled
              ? Theme.of(context)
              .disabledColor
              .withValues(alpha: 0.12)
              : null,
          filled: true,
          errorText: widget.error ? "Invalid status" : null,
        ),
        initialValue: dropdownValue,
        onChanged: disabled ? null : handleChange,
        items: statusList.map<DropdownMenuItem<String>>((status) {
          final color = [
            "Denied",
            "Inactive",
            "Rejected",
            "Bank Rejected",
            "Canceled",
          ].contains(status.code)
              ? Colors.red
              : Theme.of(context).textTheme.bodyMedium?.color;

          final italic = previousSelected["code"] == status.code &&
                  (int.tryParse(status.note) ?? 0) != 0
              ? FontStyle.italic
              : FontStyle.normal;

          return DropdownMenuItem<String>(
            value: status.code,
            child: Text(
              status.description,
              style: TextStyle(
                color: color,
                fontStyle: italic,
              ),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}
