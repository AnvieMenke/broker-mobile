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
  Map<String, dynamic> currentSelected = {"note": "", "code": ""};
  Map<String, dynamic> previousSelected = {"note": "", "code": ""};
  Map<String, dynamic> initialSelected = {"note": "", "code": ""};

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

    List<SystemCode> systemCodeList = await _commonService.listSystemCode(
      param["type"]!,
      param["subType"],
      null,
    );

    if (widget.cancelOnly) {
      systemCodeList = systemCodeList.where((systemCode) {
        return systemCode.code == "Pending" ||
            systemCode.code == "Canceled" ||
            systemCode.code == widget.value;
      }).toList();
    }

    final statusZero = <SystemCode>[];
    final tempStatusList = <SystemCode>[];

    for (final systemCode in systemCodeList) {
      final note = int.tryParse(systemCode.note) ?? 0;

      if (note == 0) {
        if (systemCode.code != "Canceled") continue;
        statusZero.add(systemCode);
      } else if (systemCode.code == "Broker Approved" &&
          !hasBrokerApprovedAccess) {
        continue;
      } else {
        tempStatusList.add(systemCode);
      }
    }

    tempStatusList.sort((a, b) {
      final an = int.tryParse(a.note) ?? 0;
      final bn = int.tryParse(b.note) ?? 0;
      return an.compareTo(bn);
    });

    tempStatusList.addAll(statusZero);

    final seen = <String>{};
    final uniqueList = tempStatusList.where((s) => seen.add(s.code)).toList();

    setState(() => statusList = uniqueList);

    for (final status in uniqueList) {
      if (status.code == widget.value) {
        setState(() {
          currentSelected = {"note": status.note, "code": status.code};
          initialSelected = {"note": status.note, "code": status.code};
        });
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

  bool statusIsActive(SystemCode status) {
    if (status.code == "Pending") return true;

    final int initialNote = int.tryParse(initialSelected["note"] ?? '0') ?? 0;
    final int currentNote = int.tryParse(currentSelected["note"] ?? '0') ?? 0;
    final int statusNote = int.tryParse(status.note) ?? 0;

    return ((initialNote + 1 == statusNote &&
            currentNote != 0 &&
            currentNote != statusNote) ||
        (statusNote == 0 && currentNote != 5 && initialNote != 4) ||
        status.code == previousSelected["code"]);
  }

  @override
  void initState() {
    super.initState();
    getStatusList();
  }

  @override
  Widget build(BuildContext context) {
    final disabled = widget.disabled;

    // Filtered list that will actually be shown
    final activeStatusList =
        statusList.where((s) => statusIsActive(s)).toList();

    // Ensure dropdownValue is in active list
    final dropdownValue =
        activeStatusList.any((s) => s.code == currentSelected["code"])
            ? currentSelected["code"]
            : null;

    return DropdownButtonFormField<String>(
      isExpanded: true,
      decoration: InputDecoration(
        labelText: "Status",
        border: const OutlineInputBorder(),
        errorText: widget.error ? "Invalid status" : null,
      ),
      initialValue: dropdownValue,
      onChanged: disabled ? null : handleChange,
      items: activeStatusList.map<DropdownMenuItem<String>>((status) {
        final color = [
          "Denied",
          "Inactive",
          "Rejected",
          "Bank Rejected",
          "Canceled",
        ].contains(status.code)
            ? Colors.red
            : Colors.white;

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
    );
  }
}
