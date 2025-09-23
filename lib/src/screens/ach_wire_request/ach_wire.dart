import 'package:broker_mobile/components/dropdowns/select_status.dart';
import 'package:broker_mobile/service/ach_wire_service.dart';
import 'package:broker_mobile/service/bank_account_service.dart';
import 'package:broker_mobile/service/convert_service.dart';
import 'package:flutter/material.dart';
import 'package:broker_mobile/components/dropdowns/select_correspondent.dart';
import 'package:broker_mobile/components/dropdowns/select_account_no.dart';
import 'package:broker_mobile/components/dropdowns/select_bank_account.dart';
import 'package:broker_mobile/components/dropdowns/select_system_code.dart';
import 'package:broker_mobile/components/messages/notification.dart';

class AchWirePage extends StatefulWidget {
  final Map<String, dynamic>? initialFormData;

  const AchWirePage({super.key, this.initialFormData});

  @override
  State<AchWirePage> createState() => _AchWirePageState();
}

class _AchWirePageState extends State<AchWirePage> {
  late final AchWireService _achWireService;
  late final BankAccountService _bankAccountService;

  late Map<String, dynamic> formData;

  final Map<String, dynamic> initialMaximumWithdrawable = {
    "totalAmt": 0.0,
    "withdrawableAmt": 0.0,
    "charges": 0.0,
    "pendingCallLog": 0.0,
  };

  Map<String, dynamic> maximumWithdrawable = {};
  bool isGettingMaxWithdrawal = false;
  bool isGettingFee = false;
  bool isSubmitting = false;
  bool isEdit = false;
  late bool disableEdit =
      isEdit && widget.initialFormData?["status"] != "Pending";

  @override
  void initState() {
    super.initState();
    _achWireService = AchWireService();
    _bankAccountService = BankAccountService();

    formData = {
      "correspondent": "",
      "accountNo": "",
      "accountId": "",
      "bankId": "",
      "amt": 0.0,
      "fee": 0.0,
      "requestType": "",
      "transferType": "",
      "isInternational": false,
      "broker": "",
      "status": "Pending",
      "requestId": 0,
      "waiveFee": false,
      ...?widget.initialFormData,
    };

    maximumWithdrawable = Map<String, dynamic>.from(initialMaximumWithdrawable);

    if (formData["correspondent"].isNotEmpty &&
        formData["accountNo"].isNotEmpty) {
      _checkAndFetchMaxWithdrawable();
      _calculateFee();
    }

    if (ConvertService.safeInt(formData["requestId"]) != 0) {
      setState(() {
        isEdit = true;
      });
    }
  }

  void setMaximumWithdrawable(Map<String, dynamic> value) {
    setState(() {
      maximumWithdrawable = value;
    });
  }

  Future<void> getMaximumWithdrawable() async {
    final correspondent = formData["correspondent"];
    final accountNo = formData["accountNo"];
    final transferType = formData["transferType"];

    if (transferType != "Withdrawal" ||
        correspondent.isEmpty ||
        accountNo.isEmpty) {
      setMaximumWithdrawable(
          Map<String, dynamic>.from(initialMaximumWithdrawable));
      return;
    }

    setState(() => isGettingMaxWithdrawal = true);
    try {
      final resp = await _achWireService.readMaximumWithdrawable(
          correspondent, accountNo);
      setMaximumWithdrawable({
        "totalAmt": resp.totalAmt,
        "withdrawableAmt": resp.withdrawableAmt,
        "charges": resp.charges,
        "pendingCallLog": resp.pendingCallLog,
      });
    } catch (err) {
      Notify.error("Error: $err");
    } finally {
      setState(() => isGettingMaxWithdrawal = false);
    }
  }

  Future<void> getFee() async {
    setState(() => isGettingFee = true);
    try {
      final resp = await _achWireService.getFee(formData);
      setState(() {
        formData["fee"] = double.tryParse(resp.fee.toString()) ?? 0.0;
      });
    } catch (err) {
      Notify.error("Error: $err");
    } finally {
      setState(() => isGettingFee = false);
    }
  }

  void _checkAndFetchMaxWithdrawable() {
    final correspondent = formData["correspondent"];
    final accountNo = formData["accountNo"];
    final transferType = formData["transferType"];

    if (transferType == "Withdrawal" &&
        correspondent.isNotEmpty &&
        accountNo.isNotEmpty) {
      getMaximumWithdrawable();
    } else {
      setMaximumWithdrawable(
          Map<String, dynamic>.from(initialMaximumWithdrawable));
    }
  }

  void _calculateFee() {
    if (ConvertService.safeInt(formData["requestId"]) != 0) {
      final correspondent = formData["correspondent"];
      final accountNo = formData["accountNo"];
      final amount = ConvertService.safeDouble(formData["amt"]);
      final requestType = formData["requestType"];
      final transferType = formData["transferType"];

      final isEnable = correspondent.isNotEmpty &&
          accountNo.isNotEmpty &&
          amount > 0 &&
          requestType.isNotEmpty &&
          transferType.isNotEmpty &&
          (!isEdit ||
              ConvertService.safeDouble(widget.initialFormData?["fee"]) == 0.0);

      if (isEnable) {
        getFee();
      } else {
        setState(() {
          formData["fee"] = 0.0;
        });
      }
    }
  }

  Future<void> getBankAccount() async {
    try {
      final resp =
          await _bankAccountService.readBankAccount(formData["bankId"]);
      String bic = resp.bankAccount.bankIdentifierCode;
      bool isInternational = bic.isNotEmpty;
      setState(() {
        formData["isInternational"] = isInternational;
      });
    } catch (err) {
      debugPrint(err.toString());
    } finally {
      setState(() => isGettingFee = false);
    }
  }

  Future<void> handleSubmit(Map<String, dynamic> data) async {
    if (data["correspondent"] == null || data["correspondent"] == "") {
      return Notify.warning('Please select a correspondent.');
    }
    if (data["accountNo"] == null || data["accountNo"] == "") {
      return Notify.warning('Please select an account.');
    }
    if (data["bankId"] == null || data["bankId"] == "") {
      return Notify.warning('Please select a bank account.');
    }
    if (data["transferType"] == null || data["transferType"] == "") {
      return Notify.warning('Please select a transfer type.');
    }
    if (data["requestType"] == null || data["requestType"] == "") {
      return Notify.warning('Please select a request type.');
    }

    if (data["transferType"] == 'Withdrawal') {
      if (double.tryParse(maximumWithdrawable["pendingCallLog"])! > 0) {
        return Notify.error('Cannot withdraw with pending calls.');
      } else if (data["amt"] >
          double.tryParse(maximumWithdrawable["withdrawableAmt"])!) {
        return Notify.error('Amount is greater than Maximum Withdrawable.');
      }
    }

    setState(() => isSubmitting = true);
    try {
      if (isEdit) {
        await _achWireService.updateRequest(data);
        Notify.success('Request updated successfully.');
      } else {
        await _achWireService.createRequest(data);
        Notify.success('Request created successfully.');
      }
      if (mounted) {
        Navigator.of(context).pop(true);
      }
    } catch (err) {
      Notify.error("Failed to create request. ${err.toString()}");
    } finally {
      setState(() => isSubmitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ACH/Wire Request")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isTablet = constraints.maxWidth > 600;
            final itemWidth = isTablet
                ? (constraints.maxWidth - 32) / 2
                : constraints.maxWidth;
            return SingleChildScrollView(
              child: Wrap(
                spacing: 16,
                runSpacing: 24,
                children: [
                  SizedBox(
                    width: itemWidth,
                    child: AutoCompleteCorrespondent(
                      disabled: isEdit,
                      name: "correspondent",
                      value: formData["correspondent"],
                      label: "Correspondent",
                      isAllStatus: true,
                      type: "",
                      onChange: (value) => setState(() {
                        formData["correspondent"] = value;
                        _checkAndFetchMaxWithdrawable();
                        _calculateFee();
                      }),
                    ),
                  ),
                  SizedBox(
                    width: itemWidth,
                    child: AutoCompleteAccountNo(
                      disabled: isEdit,
                      name: "accountNo",
                      value: formData["accountNo"],
                      isAllStatus: true,
                      correspondent: formData["correspondent"],
                      type: "",
                      onChange: (map) => setState(() {
                        formData["accountNo"] = map['data']['accountNo'];
                        formData["correspondent"] =
                            map['data']['correspondent'];
                        formData["accountId"] = map['data']['accountId'];
                        _checkAndFetchMaxWithdrawable();
                        _calculateFee();
                      }),
                    ),
                  ),
                  SizedBox(
                    width: itemWidth,
                    child: SelectBankAccount(
                      disabled: isEdit,
                      label: "Bank Account",
                      accountNo: formData["accountNo"],
                      correspondent: formData["correspondent"],
                      value: formData["bankId"],
                      onChange: (map) {
                        setState(() {
                          formData["bankId"] = map['data']?['bankId'];
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: itemWidth,
                    child: SelectSystemCode(
                      disabled: isEdit,
                      label: "Request Type",
                      placeholder: "Select Request Type",
                      value: formData["requestType"],
                      type: "Type",
                      subType: "Request Type",
                      onChange: (map) => setState(() {
                        if (map != null) {
                          formData["requestType"] = map["data"]["code"];
                          _calculateFee();
                        }
                      }),
                    ),
                  ),
                  SizedBox(
                    width: itemWidth,
                    child: SelectSystemCode(
                      disabled: isEdit,
                      label: "Transfer Type",
                      placeholder: "Select Transfer Type",
                      value: formData["transferType"],
                      type: "Type",
                      subType: "Transfer Type",
                      onChange: (map) => setState(() {
                        if (map != null) {
                          formData["transferType"] = map["data"]["code"];
                          _checkAndFetchMaxWithdrawable();
                          _calculateFee();
                        }
                      }),
                    ),
                  ),
                  SizedBox(
                    width: itemWidth,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Amount",
                        border: const OutlineInputBorder(),
                        prefixText: "\$",
                        helperText: formData["transferType"] == "Withdrawal"
                            ? "Withdrawable amount: ${maximumWithdrawable["withdrawableAmt"]}"
                            : null,
                      ),
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      onChanged: (value) {
                        setState(() {
                          formData["amt"] = double.tryParse(value) ?? 0.0;
                          _calculateFee();
                        });
                      },
                      initialValue: (() {
                        final amt = ConvertService.safeDouble(formData["amt"]);
                        return amt > 0 ? amt.toString() : null;
                      })(),
                    ),
                  ),
                  SizedBox(
                    width: itemWidth,
                    child: isGettingFee
                        ? const Center(child: CircularProgressIndicator())
                        : TextFormField(
                            decoration: const InputDecoration(
                              labelText: "Fee",
                              border: OutlineInputBorder(),
                              prefixText: "\$",
                            ),
                            readOnly: true,
                            controller: TextEditingController(
                              text: formData["fee"].toString(),
                            ),
                          ),
                  ),
                  SizedBox(
                    width: itemWidth,
                    child: SelectStatus(
                      disabled: !isEdit || disableEdit,
                      value: formData["status"],
                      requestType: formData["requestType"],
                      onChange: (data) => setState(() {
                        if (data != null) {
                          formData["status"] = data;
                        }
                      }),
                    ),
                  ),
                  SizedBox(
                    width: itemWidth,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: (isSubmitting ||
                              isGettingFee ||
                              isGettingMaxWithdrawal ||
                              disableEdit)
                          ? null
                          : () => handleSubmit(formData),
                      child: isSubmitting
                          ? const SizedBox(
                              width: 24,
                              height: 24,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
                          : const Text(
                              "Submit",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
