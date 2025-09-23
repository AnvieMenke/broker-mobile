import 'package:flutter/material.dart';
import 'package:broker_mobile/service/common_service.dart';

import '../../proto/commonpb/list.pb.dart';

class SelectBankAccount extends StatefulWidget {
  final String? correspondent;
  final String? accountNo;
  final bool requiredField;
  final String label;
  final String value;
  final bool disabled;
  final void Function(Map<String, dynamic> map)? onChange;

  const SelectBankAccount({
    super.key,
    required this.correspondent,
    required this.accountNo,
    this.requiredField = false,
    required this.label,
    required this.value,
    required this.disabled,
    this.onChange,
  });

  @override
  State<SelectBankAccount> createState() => _SelectBankAccountState();
}

class _SelectBankAccountState extends State<SelectBankAccount> {
  List<BankAccount> options = [];
  BankAccount? selectedValue;
  late final CommonService _service;

  @override
  void initState() {
    super.initState();
    _service = CommonService();
    _getBankAccounts(widget.value);
  }

  @override
  void didUpdateWidget(covariant SelectBankAccount oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.correspondent != oldWidget.correspondent ||
        widget.accountNo != oldWidget.accountNo) {
      _getBankAccounts(widget.value);
    }
  }

  Future<void> _getBankAccounts(String value) async {
    if (widget.correspondent == null || widget.accountNo == null) {
      setState(() {
        options = [];
        selectedValue = null;
      });
      return;
    }

    try {
      final bankAccountsList = await _service.listBankAccount(
        widget.accountNo!,
        widget.correspondent!,
        'Active',
      );
      setState(() {
        options = bankAccountsList;
        if (options.isEmpty) {
          selectedValue = null;
        }

        final matches =
            options.where((account) => account.bankId == widget.value).toList();

        selectedValue = matches.isNotEmpty ? matches.first : null;
      });
    } catch (e) {
      setState(() {
        options = [];
        selectedValue = null;
      });
      debugPrint("Error fetching bank accounts: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<BankAccount>(
      initialValue: selectedValue,
      hint: const Text("Select Bank Account"),
      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
      decoration: InputDecoration(
        labelText: widget.label,
        border: const OutlineInputBorder(),
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
      items: options.isNotEmpty
          ? options.map((account) {
              return DropdownMenuItem<BankAccount>(
                value: account,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Text(
                    "${account.bankName}: Bank Acct# ${account.bankAccountNo}",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              );
            }).toList()
          : [
              const DropdownMenuItem<BankAccount>(
                value: null,
                child: Text("No Bank Available"),
              ),
            ],
      onChanged: widget.disabled
          ? null
          : (account) {
              setState(() {
                selectedValue = account;
              });

              if (account != null && widget.onChange != null) {
                widget.onChange!(
                  {
                    'data': {
                      'bankId': account.bankId,
                      'bankName': account.bankName,
                      'bankAccountNo': account.bankAccountNo,
                    }
                  },
                );
              }
            },
      validator: widget.requiredField
          ? (value) => value == null ? 'Required' : null
          : null,
    );
  }
}
