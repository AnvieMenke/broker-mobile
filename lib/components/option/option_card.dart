import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const OptionCard({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 1,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // center horizontally + vertically
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              width: 48,
              height: 48,
              child: Icon(icon,
                  size: 38,
                  color:
                      Theme.of(context).colorScheme.primary), // fixed icon size
            ),
            const SizedBox(height: 8),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
