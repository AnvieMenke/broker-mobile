import 'package:broker_mobile/src/screens/reports/margin/call_log.dart';
import 'package:broker_mobile/components/option/option_grid.dart';
import 'package:flutter/material.dart';
import 'position/position.dart';
import 'activity/activity.dart';
import 'margin/buying_power.dart';
import 'package:broker_mobile/session/session.dart';

class Reports extends StatefulWidget {
  const Reports({super.key});

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  int _selectedIndex = -1;

  final GlobalKey<PositionFragmentState> _positionKey = GlobalKey();
  final GlobalKey<ActivityFragmentState> _activityKey = GlobalKey();
  final GlobalKey<CallLogFragmentState> _callLogKey = GlobalKey();
  final GlobalKey<BuyingPowerFragmentState> _buyingPowerKey = GlobalKey();

  final List<Map<String, dynamic>> _options = [
    {"title": "Activity", "icon": Icons.bar_chart},
    {"title": "Position", "icon": Icons.account_balance},
    {"title": "Margin Call", "icon": Icons.warning},
    {"title": "Buying Power", "icon": Icons.account_balance_wallet},
  ];

  late final List<Widget> _fragments;

  @override
  void initState() {
    super.initState();
    _fragments = [
      ActivityFragment(key: _activityKey),
      PositionFragment(key: _positionKey),
      CallLogFragment(key: _callLogKey),
      BuyingPowerFragment(key: _buyingPowerKey),
    ];
  }

  void _handleOptionTap(int index) {
    if (index == 0) {
      sessionManager.logout(null, false);
    } else {
      setState(() => _selectedIndex = index);
    }
  }

  void _onFilterPressed(int index) {
    if (index == 0) {
      _activityKey.currentState?.openFilterDialog();
    } else if (index == 1) {
      _positionKey.currentState?.openFilterDialog();
    } else if (index == 2) {
      _callLogKey.currentState?.openFilterDialog();
    } else if (index == 3) {
      _buyingPowerKey.currentState?.openFilterDialog();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("No filter available for this report")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isPageSelected = _selectedIndex != -1;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          isPageSelected ? _options[_selectedIndex]["title"] : "Reports",
        ),
        leading: isPageSelected
            ? IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => setState(() => _selectedIndex = -1),
              )
            : null,
        actions: [
          if (isPageSelected)
            IconButton(
              icon: const Icon(Icons.filter_list),
              onPressed: () => _onFilterPressed(_selectedIndex),
            ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: _selectedIndex == -1
            ? OptionGrid(
                options: _options,
                onTap: _handleOptionTap,
              )
            : _fragments[_selectedIndex],
      ),
    );
  }
}
