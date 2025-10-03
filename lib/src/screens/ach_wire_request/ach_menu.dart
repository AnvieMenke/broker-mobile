import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 350),
                child: ElevatedButton.icon(
                  icon: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      FontAwesomeIcons.rightLeft,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                  label: const Text("Create ACH/Wire Request"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 65),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AchWirePage()),
                    );
                  },
                ),
              ),
              const SizedBox(height: 20),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 350),
                child: ElevatedButton.icon(
                  icon: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(
                      FontAwesomeIcons.list,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                  label: const Text("View ACH/Wire Requests"),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 65),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AchWireList()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
