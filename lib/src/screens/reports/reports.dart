import 'package:broker_mobile/components/containers/page_container.dart';
import 'package:broker_mobile/components/option/option_grid.dart';
import 'package:flutter/material.dart';

const List<Map<String, dynamic>> _options = [
  {"title": "Activity", "icon": Icons.show_chart, "route": "/reports/activity"},
  {
    "title": "Position",
    "icon": Icons.account_balance,
    "route": "/reports/position"
  },
  {
    "title": "Margin Call",
    "icon": Icons.warning,
    "route": "/reports/margin-call"
  },
  {
    "title": "Buying Power",
    "icon": Icons.account_balance_wallet,
    "route": "/reports/buying-power"
  },
];

class Reports extends StatefulWidget {
  const Reports({super.key});

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  void handleOptionTap(BuildContext context, int index) {
    final route = _options[index]["route"] as String;
    Navigator.of(context).pushNamed(route);
  }

  @override
  Widget build(BuildContext context) {
    return PageContainer(
      title: "Reports",
      showBack: false,
      page: OptionGrid(
        options: _options,
        onTap: (index) => handleOptionTap(context, index),
      ),
    );
  }
}
