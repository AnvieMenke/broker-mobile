import 'package:broker_mobile/components/nav/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PageContainer extends StatelessWidget {
  final String title;
  final Widget page;
  final bool showBack;
  final VoidCallback? onBack;

  const PageContainer({
    super.key,
    required this.page,
    required this.title,
    this.showBack = true,
    this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: title,
        showBack: showBack,
        onBack: onBack,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: page,
        ),
      ),
    );
  }
}
