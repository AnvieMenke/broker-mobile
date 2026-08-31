import 'package:broker_mobile/components/nav/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PageContainer extends StatelessWidget {
  final String title;
  final Widget page;
  final bool showBack;
  final VoidCallback? onBack;

  final bool scrollable;
  final bool padding;

  const PageContainer({
    super.key,
    required this.page,
    required this.title,
    this.showBack = true,
    this.onBack,
    this.scrollable = true,
    this.padding = true,
  });

  @override
  Widget build(BuildContext context) {
    Widget body = page;

    if (padding) {
      body = Padding(
        padding: const EdgeInsets.all(16),
        child: body,
      );
    }

    if (scrollable) {
      body = SingleChildScrollView(
        child: body,
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CustomAppBar(
        title: title,
        showBack: showBack,
        onBack: onBack,
      ),
      body: SafeArea(
        top: false,
        bottom: true,
        child: body,
      ),
    );
  }
}