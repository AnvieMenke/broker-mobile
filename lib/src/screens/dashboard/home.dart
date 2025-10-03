import 'package:broker_mobile/src/screens/account/account.dart';
import '../ach_wire_request/ach_menu.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../reports/reports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final Color activeColor = const Color(0xFF1A73E8);

  final List<Widget> _pages = [
    const Center(child: Text('Home')),
    const Center(child: Reports()),
    const SizedBox.shrink(), // Placeholder for FAB
    const Center(child: Text('Summary')),
    const Center(child: Account()),
  ];

  void _onTabTapped(int index) {
    if (index == 2) {
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => AchWireMenuPage(),
          transitionsBuilder: (_, anim, __, child) =>
              FadeTransition(opacity: anim, child: child),
        ),
      );
    } else {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    final bottomAppBarColor = isDarkMode ? Colors.grey[900] : Colors.grey[200];
    final inactiveColor = isDarkMode ? Colors.white : Colors.black87;

    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: bottomAppBarColor,
        child: SizedBox(
          height: 72,
          child: Row(
            children: [
              _buildNavItem(icon: FontAwesomeIcons.house, label: 'Home', index: 0, inactiveColor: inactiveColor),
              _buildNavItem(icon: FontAwesomeIcons.chartLine, label: 'Report', index: 1, inactiveColor: inactiveColor),
              Expanded(child: SizedBox()), // space for FAB
              _buildNavItem(icon: FontAwesomeIcons.book, label: 'Summary', index: 3, inactiveColor: inactiveColor),
              _buildNavItem(icon: FontAwesomeIcons.user, label: 'Account', index: 4, inactiveColor: inactiveColor),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          backgroundColor: activeColor,
          shape: const CircleBorder(),
          child: const Icon(
            FontAwesomeIcons.rightLeft,
            size: 20,
            color: Colors.white,
          ),
          onPressed: () => _onTabTapped(2),
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required int index,
    required Color inactiveColor,
  }) {
    final bool isSelected = _currentIndex == index;
    final Color iconColor = isSelected ? activeColor : inactiveColor;

    return Expanded(
      child: InkWell(
        onTap: () => _onTabTapped(index),
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(icon, size: 20, color: iconColor),
              const SizedBox(height: 4),
              Text(
                label,
                style: TextStyle(fontSize: 12, color: iconColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
