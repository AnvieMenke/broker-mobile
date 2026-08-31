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
        widget.accountNo != oldWidget.accountNo ||
        widget.value != oldWidget.value) {
      _getBankAccounts(widget.value);
    }
  }

  Future<void> _getBankAccounts(String value) async {
    if (widget.correspondent == null || widget.accountNo == null) {
      if (!mounted) return;

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

      if (!mounted) return;

      setState(() {
        options = bankAccountsList;

        selectedValue = options.any((a) => a.bankId == value)
            ? options.firstWhere((a) => a.bankId == value)
            : null;
      });
    } catch (e) {
      if (!mounted) return;

      setState(() {
        options = [];
        selectedValue = null;
      });

      debugPrint("Error fetching bank accounts: $e");
    }
  }

  void _openBottomSheet() {
    if (widget.disabled || options.isEmpty) return;
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      builder: (context) {
        return SafeArea(
          top: false,
          bottom: true,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(
              16,
              16,
              16,
              16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Select Bank Account",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Flexible(
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: options.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 10),
                    itemBuilder: (context, index) {
                      final account = options[index];

                      final isActive = account.status.toLowerCase() == 'active';

                      final isSelected =
                          selectedValue?.bankId == account.bankId;

                      return InkWell(
                        borderRadius: BorderRadius.circular(12),
                        onTap: !isActive
                            ? null
                            : () {
                                setState(() {
                                  selectedValue = account;
                                });

                                widget.onChange?.call({
                                  'data': {
                                    'bankId': account.bankId,
                                    'bankName': account.bankName,
                                    'bankAccountNo': account.bankAccountNo,
                                  },
                                });

                                Navigator.pop(context);
                              },
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: isSelected
                                  ? Theme.of(context).colorScheme.primary
                                  : Colors.grey.shade300,
                            ),
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 18,
                                child: Text(
                                  account.bankName.isNotEmpty
                                      ? account.bankName[0]
                                      : "?",
                                ),
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      account.bankName,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      account.bankAccountNo,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: isActive
                                            ? Colors.grey
                                            : Colors.redAccent,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (!isActive)
                                const Padding(
                                  padding: EdgeInsets.only(right: 8),
                                  child: Text(
                                    "Inactive",
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              if (isSelected && isActive)
                                Icon(
                                  Icons.check_circle,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 6),
        GestureDetector(
          onTap: widget.disabled ? null : _openBottomSheet,
          child: AbsorbPointer(
            child: InputDecorator(
              isEmpty: selectedValue == null,
              decoration: InputDecoration(
                filled: true,
                enabled: !widget.disabled,
              ),
              child: Text(
                selectedValue != null
                    ? "${selectedValue!.bankName}: ${selectedValue!.bankAccountNo}"
                    : "Select Bank Account",
                style: const TextStyle(fontSize: 14),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
