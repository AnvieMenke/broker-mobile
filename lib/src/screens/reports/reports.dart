import 'package:broker_mobile/src/screens/reports/position/position.dart';
import 'package:flutter/material.dart';

class Reports extends StatelessWidget {
  const Reports({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reports"),
      ),
      body: ListView(
        children: const [
          CustomAccordion(title: "Activity", children: [
            ListTile(
              title: Text("Order #1"),
              subtitle: Text("Details of order #1"),
            ),
            ListTile(
              title: Text("Order #2"),
              subtitle: Text("Details of order #2"),
            ),
          ]),
          CustomAccordion(
            title: "Position",
            children: [
              SizedBox(
                height: 800,
                child: PositionPage(),
              ),
            ],
          ),
          CustomAccordion(title: "Margin Call", children: [
            ListTile(
              title: Text("Transaction #1"),
              subtitle: Text("Waiting for approval"),
            ),
            ListTile(
              title: Text("Transaction #2"),
              subtitle: Text("Processing..."),
            ),
          ]),

        ],
      ),
    );
  }
}

class CustomAccordion extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const CustomAccordion(
      {super.key, required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        children: children,
      ),
    );
  }
}
