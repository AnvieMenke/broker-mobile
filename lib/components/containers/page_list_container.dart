import 'package:broker_mobile/components/nav/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PageListContainer extends StatelessWidget {
  final String title;
  final Widget page;
  final bool showBack;
  final VoidCallback? onBack;
  final VoidCallback? openFilterDialog;

  const PageListContainer({
    super.key,
    required this.page,
    required this.title,
    this.showBack = true,
    this.onBack,
    this.openFilterDialog,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: title,
        showBack: showBack,
        onBack: onBack,
        actions: openFilterDialog != null
            ? [
                IconButton(
                  icon: const Icon(Icons.filter_list),
                  onPressed: () => openFilterDialog!(),
                )
              ]
            : null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(1.5),
        child: page,
      ),
    );
  }
}
