import 'package:broker_mobile/src/screens/ach_wire_request/ach_menu.dart';
import 'package:broker_mobile/src/screens/dashboard/dashboard.dart';
import 'package:broker_mobile/src/screens/reports/reports.dart';
import 'package:broker_mobile/src/screens/profile/profile_page.dart';
import 'package:broker_mobile/src/screens/summary/summary.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final _pages = const [
    DashboardPage(),
    AccountSummaryPage(),
    Reports(),
    AchWireMenuPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages.map((page) {
          return SafeArea(
            top: false,
            bottom: true,
            child: page,
          );
        }).toList(),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).brightness == Brightness.dark
            ? const Color(0xFF2D2D2D) // dark theme
            : const Color(0xFFF5F5F5),
        // light theme soft gray
        shape: const CircularNotchedRectangle(),
        notchMargin: 6,
        elevation: 0,
        child: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(
                  Icons.summarize_outlined, Icons.summarize, 'Summary', 1),
              _buildNavItem(Icons.insert_chart_outlined, Icons.insert_chart,
                  'Reports', 2),
              Container(
                width: 48,
              ),
              _buildNavItem(
                  Icons.payments_outlined, Icons.payments, 'Transfers', 3),
              _buildNavItem(Icons.person_outline, Icons.person, 'Profile', 4),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 62,
        height: 62,
        child: FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: () => _onItemTapped(0),
          backgroundColor: Colors.blue,
          elevation: 8,
          child: Icon(
            _selectedIndex == 0 ? Icons.home : Icons.home_outlined,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(
      IconData icon, IconData selectedIcon, String label, int index) {
    final bool isSelected = _selectedIndex == index;
    return InkWell(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isSelected ? selectedIcon : icon,
            color: isSelected
                ? Colors.blue
                : Theme.of(context).textTheme.bodyMedium?.color,
          ),
          const SizedBox(height: 2),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              color: isSelected
                  ? Colors.blue
                  : Theme.of(context).textTheme.bodyMedium?.color,
            ),
          ),
        ],
      ),
    );
  }
}
