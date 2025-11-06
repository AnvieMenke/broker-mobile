import 'package:broker_mobile/components/dropdowns/select_status.dart';
import 'package:broker_mobile/service/ach_wire_service.dart';
import 'package:broker_mobile/service/bank_account_service.dart';
import 'package:broker_mobile/service/convert_service.dart';
import 'package:broker_mobile/utils/fmt/fmt.dart';
import 'package:flutter/material.dart';
import 'package:broker_mobile/components/dropdowns/select_correspondent.dart';
import 'package:broker_mobile/components/dropdowns/select_account_no.dart';
import 'package:broker_mobile/components/dropdowns/select_bank_account.dart';
import 'package:broker_mobile/components/dropdowns/select_system_code.dart';
import 'package:broker_mobile/components/messages/notification.dart';
import '../../../components/fields/field_amound.dart';
import '../../../session/session.dart';
import '../../../utils/theme/custom_theme.dart';

class AchWirePage extends StatefulWidget {
  final Map<String, dynamic>? initialFormData;

  const AchWirePage({super.key, this.initialFormData});

  @override
  State<AchWirePage> createState() => _AchWirePageState();
}

class _AchWirePageState extends State<AchWirePage> {
  late final AchWireService _achWireService;
  late final BankAccountService _bankAccountService;
  late final TextEditingController _amountController;
  final user = sessionManager.user!;

  late Map<String, dynamic> formData;
  List<String> disabledRequestTypes = [];

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
      "correspondent":
          (!user.isMultipleAccount || !user.isMultipleActiveAccount)
              ? user.correspondent
              : '',
      "accountNo": (!user.isMultipleAccount || !user.isMultipleActiveAccount)
          ? user.accountNo
          : '',
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
      "bank": "",
      ...?widget.initialFormData,
    };

    _amountController = TextEditingController(
      text: ConvertService.safeDouble(formData["amt"]).toString(),
    );

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

  @override
  void dispose() {
    _amountController.dispose();
    super.dispose();
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
      Notify.error(FormatUtils.cleanErrorMessage(err));
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
      Notify.error(FormatUtils.cleanErrorMessage(err));
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
    final correspondent = formData["correspondent"];
    final accountNo = formData["accountNo"];
    final amount = ConvertService.safeDouble(formData["amt"]);
    final requestType = formData["requestType"];
    final transferType = formData["transferType"];

    final isEnable = correspondent.isNotEmpty &&
        accountNo.isNotEmpty &&
        amount != 0 &&
        requestType.isNotEmpty &&
        transferType.isNotEmpty &&
        (!isEdit ||
            ConvertService.safeDouble(widget.initialFormData?["fee"]) == 0.0);

    if (isEnable) {
      getFee();
    }
  }

  Future<void> getBankAccount() async {
    try {
      final resp = await _bankAccountService
          .readBankAccount(ConvertService.safeInt(formData["bankId"]));
      String bic = resp.bankAccount.bankIdentifierCode;
      bool isInternational = bic.isNotEmpty;
      setState(() {
        formData["isInternational"] = isInternational;
        disabledRequestTypes.clear();
        if (!resp.bankAccount.ach) {
          disabledRequestTypes.add("ach");
        }
        if (!resp.bankAccount.wire) {
          disabledRequestTypes.add("wire");
        }
        if (!resp.bankAccount.check_22) {
          disabledRequestTypes.add("check");
        }
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
    if (data["requestType"] == null || data["requestType"] == "") {
      return Notify.warning('Please select a request type.');
    }
    if (data["transferType"] == null || data["transferType"] == "") {
      return Notify.warning('Please select a transfer type.');
    }
    if (ConvertService.safeDouble(data["amt"]) == 0) {
      return Notify.warning('Amount is required.');
    }

    if (data["transferType"] == 'Withdrawal') {
      if (ConvertService.safeDouble(maximumWithdrawable["pendingCallLog"]) >
          0) {
        return Notify.error('Cannot withdraw with pending calls.');
      } else if (ConvertService.safeDouble(data["amt"]) >
              ConvertService.safeDouble(
                  maximumWithdrawable["withdrawableAmt"]) &&
          data["status"] != "Canceled") {
        return Notify.error('Amount is greater than Maximum Withdrawable.');
      }
    }

    String confirmationMessage = isEdit
        ? "Are you sure you want to update this request?"
        : "Are you sure you want to submit this request?";
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Confirm Submission"),
        content: Text(confirmationMessage),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text("Yes"),
          ),
        ],
      ),
    );

    if (confirmed != true) return;

    setState(() => isSubmitting = true);
    try {
      if (isEdit) {
        await _achWireService.updateRequest(data);
        Notify.success('Request updated successfully.');
      } else {
        await _achWireService.createRequest(data);
        Notify.success('Request created successfully.');
      }
      setState(() => isSubmitting = false);
      if (mounted) {
        await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(isEdit ? "Request updated" : "Request submitted"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Correspondent: ${data["correspondent"]}"),
                Text("Account No: ${data["accountNo"]}"),
                Text(
                  "Bank: ${data["bank"]?.isNotEmpty == true ? data["bank"] : "${data["bankName"] ?? ''} - ${data["bankAccountNo"] ?? ''}"}",
                ),
                Text("Request Type: ${data["requestType"]}"),
                Text("Transfer Type: ${data["transferType"]}"),
                Text("Amount: ${FormatUtils.formatCurrency(data["amt"])}"),
                Text("Fee: ${FormatUtils.formatCurrency(data["fee"])}"),
                Text("Status: ${data["status"]}"),
              ],
            ),
            actions: [
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text("OK"),
              )
            ],
          ),
        );
        if (!mounted) return;
        Navigator.of(context).pop(true);
      }
    } catch (err) {
      Notify.error(
          "Failed to create request. ${FormatUtils.cleanErrorMessage(err)}");
    } finally {
      setState(() => isSubmitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ACH/Wire Request")),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final isTablet = constraints.maxWidth > 600;
              final itemWidth = isTablet
                  ? (constraints.maxWidth - 32) / 2
                  : constraints.maxWidth;

              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: 16,
                      runSpacing: 24,
                      children: [
                        if (user.isMultipleAccount ||
                            user.isMultipleActiveAccount) ...[
                          SizedBox(
                            width: itemWidth,
                            child: AutoCompleteCorrespondent(
                              disabled: isEdit,
                              name: "correspondent",
                              value: formData["correspondent"],
                              label: "Correspondent",
                              isAllStatus: false,
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
                              isAllStatus: false,
                              isAccessibleOnly: true,
                              correspondent: formData["correspondent"],
                              type: "",
                              onChange: (map) => setState(() {
                                final data = map['data'] ?? {};
                                formData["accountNo"] =
                                    data?['accountNo'] ?? '';
                                formData["accountId"] = data?['accountId'] ?? 0;
                                if ((formData["correspondent"] ?? '').isEmpty) {
                                  formData["correspondent"] =
                                      data?['correspondent'] ?? '';
                                }
                                formData["bankId"] = "";
                                _checkAndFetchMaxWithdrawable();
                                _calculateFee();
                              }),
                            ),
                          ),
                        ],
                        SizedBox(
                          width: itemWidth,
                          child: SelectBankAccount(
                            disabled: isEdit,
                            label: "Bank Account",
                            accountNo: formData["accountNo"],
                            correspondent: formData["correspondent"],
                            value: formData["bankId"].toString(),
                            onChange: (map) {
                              setState(() {
                                formData["bankId"] = map['data']?['bankId'];
                                formData["bank"] =
                                    "${map['data']?['bankName']} - ${map['data']?['bankAccountNo']}";
                                getBankAccount();
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: itemWidth,
                          child: SelectSystemCode(
                            disabled:
                                isEdit || formData["bankId"].toString().isEmpty,
                            label: "Request Type",
                            placeholder: "Select Request Type",
                            value: formData["requestType"],
                            type: "Type",
                            subType: "Request Type",
                            disabledCodes: disabledRequestTypes,
                            onChange: (map) => setState(() {
                              String selectedRequestType =
                                  map?["data"]["code"] ?? '';
                              formData = {
                                ...formData,
                                "requestType": selectedRequestType,
                                "transferType": selectedRequestType == "Wire"
                                    ? "Withdrawal"
                                    : formData["transferType"] ?? '',
                              };
                              _calculateFee();
                            }),
                          ),
                        ),
                        SizedBox(
                          width: itemWidth,
                          child: SelectSystemCode(
                            disabled:
                                isEdit || formData["requestType"] == "Wire",
                            label: "Transfer Type",
                            placeholder: "Select Transfer Type",
                            value: formData["transferType"],
                            type: "Type",
                            subType: "Transfer Type",
                            onChange: (map) => setState(() {
                              formData["transferType"] =
                                  map?["data"]["code"] ?? '';
                              _checkAndFetchMaxWithdrawable();
                              _calculateFee();
                            }),
                          ),
                        ),
                        SizedBox(
                          width: itemWidth,
                          child: FieldAmount(
                            initial: ConvertService.safeDouble(formData["amt"]).toString(),
                            prefixText: '\$',
                            maxDecimalDigits: 2,
                            decoration: InputDecoration(
                              labelText: "Amount",
                              helperText: formData["transferType"] == "Withdrawal"
                                  ? "Withdrawable amount: ${FormatUtils.formatCurrency(maximumWithdrawable["withdrawableAmt"])}"
                                  : null,
                            ),
                            onChangedRaw: (raw) {
                              setState(() {
                                formData["amt"] = ConvertService.safeDouble(raw);
                                _calculateFee();
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: itemWidth,
                          child: isGettingFee
                              ? AppTheme.buildLoadingIndicator()
                              : TextFormField(
                                  decoration: const InputDecoration(
                                    labelText: "Fee",
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
                              formData["status"] = data ?? '';
                            }),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: isTablet
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.center,
                      children: [
                        ConstrainedBox(
                          constraints: const BoxConstraints(
                              minWidth: 120, maxWidth: 200),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16, horizontal: 32),
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
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
