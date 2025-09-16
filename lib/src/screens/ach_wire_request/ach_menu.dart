import 'package:flutter/material.dart';
import 'ach_wire.dart';
import 'ach_wire_list.dart';

class AchWireMenuPage extends StatelessWidget {
  const AchWireMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ACH/Wire Requests"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AchWirePage()),
                );
              },
              child: const Text("Create ACH/Wire Request"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AchWireList()),
                );
              },
              child: const Text("View ACH/Wire Requests"),
            ),
          ],
        ),
      ),
    );
  }
}
