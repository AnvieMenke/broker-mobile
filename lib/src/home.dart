import 'position.dart';
import 'ach_wire.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    const Center(child: Text('Investing')),
    const SizedBox.shrink(),
    const Center(child: Text('Planning')),
    const Center(child: Text('Discover')),
  ];

  void _onTabTapped(int index) {
    if (index == 2) {
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => AchWirePage(),
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
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: _pages[_currentIndex],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: isDark ? Colors.grey[900] : Colors.black87,
        child: SizedBox(
          height: 64,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _navItem(icon: FontAwesomeIcons.house, label: 'Home', index: 0),
              _navItem(
                  icon: FontAwesomeIcons.chartLine, label: 'Report', index: 1),
              const SizedBox(width: 60),
              _navItem(
                  icon: FontAwesomeIcons.arrowsRotate,
                  label: 'Planning',
                  index: 3),
              _navItem(
                  icon: FontAwesomeIcons.magnifyingGlass,
                  label: 'Discover',
                  index: 4),
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
          child: const Icon(FontAwesomeIcons.rightLeft, size: 20),
          // Transfer icon
          onPressed: () => _onTabTapped(2),
        ),
      ),
    );
  }

  Widget _navItem(
      {required IconData icon, required String label, required int index}) {
    final bool isSelected = _currentIndex == index;
    final Color iconColor = isSelected ? activeColor : Colors.white;

    return Flexible(
      child: GestureDetector(
        onTap: () => _onTabTapped(index),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(icon, size: 18, color: iconColor),
            const SizedBox(height: 2),
            FittedBox(
              child: Text(
                label,
                style: TextStyle(fontSize: 11, color: iconColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
