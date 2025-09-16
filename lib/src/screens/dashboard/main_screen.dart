import 'package:flutter/material.dart';
import 'home.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_selectedIndex]),
    );
  }
}
