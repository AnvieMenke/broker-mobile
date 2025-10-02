import 'package:broker_mobile/src/screens/reports/margin/call_log.dart';
import 'package:flutter/material.dart';
import 'position/position.dart';
import 'activity/activity.dart';
import 'margin/buying_power.dart';

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

  final List<Map<String, dynamic>> reports = [
    {"title": "Activity", "icon": Icons.bar_chart},
    {"title": "Position", "icon": Icons.account_balance},
    {"title": "Margin Call", "icon": Icons.warning},
    {
      "title": "Buying Power",
      "icon": Icons.account_balance_wallet,
    },
  ];

  late final List<Widget> fragments;

  @override
  void initState() {
    super.initState();
    fragments = [
      ActivityFragment(key: _activityKey),
      PositionFragment(key: _positionKey),
      CallLogFragment(key: _callLogKey),
      BuyingPowerFragment(key: _buyingPowerKey),
    ];
  }

  void _onFilterPressed(int selectedIndex) {
    if (selectedIndex == 0) {
      _activityKey.currentState?.openFilterDialog();
    } else if (selectedIndex == 1) {
      _positionKey.currentState?.openFilterDialog();
    } else if (selectedIndex == 2) {
      _callLogKey.currentState?.openFilterDialog();
    } else if (selectedIndex == 3) {
      _buyingPowerKey.currentState?.openFilterDialog();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("No filter available for this report")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _selectedIndex == -1 ? "Reports" : reports[_selectedIndex]["title"],
        ),
        leading: _selectedIndex != -1
            ? IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  setState(() {
                    _selectedIndex = -1;
                  });
                },
              )
            : null,
        actions: [
          if (_selectedIndex != -1)
            IconButton(
              icon: const Icon(Icons.filter_list),
              onPressed: () => _onFilterPressed(_selectedIndex),
            ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: _selectedIndex == -1
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  childAspectRatio: 1,
                ),
                itemCount: reports.length,
                itemBuilder: (context, index) {
                  final report = reports[index];
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.all(16),
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(report["icon"] as IconData, size: 48),
                        const SizedBox(height: 12),
                        Text(
                          report["title"] as String,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  );
                },
              )
            : fragments[_selectedIndex],
      ),
    );
  }
}
