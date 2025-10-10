import 'package:broker_mobile/components/nav/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PageListContainer extends StatelessWidget {
  final String title;
  final Widget page;
  final bool showBack;
  final VoidCallback? onBack;
  final VoidCallback? openFilterDialog;
  final Future<void> Function()? onRefresh;

  const PageListContainer({
    super.key,
    required this.page,
    required this.title,
    this.showBack = true,
    this.onBack,
    this.openFilterDialog,
    this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    final content = Padding(
      padding: const EdgeInsets.all(1.5),
      child: page,
    );

    Widget bodyContent;

    if (onRefresh != null) {
      bodyContent = RefreshIndicator(
        onRefresh: onRefresh!,
        color: Colors.blueAccent,
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                ),
                child: IntrinsicHeight(
                  child: content,
                ),
              ),
            );
          },
        ),
      );
    } else {
      bodyContent = content;
    }

    return Scaffold(
      appBar: CustomAppBar(
        title: title,
        showBack: showBack,
        onBack: onBack,
        actions: openFilterDialog != null
            ? [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: openFilterDialog,
          ),
        ]
            : null,
      ),
      body: bodyContent,
    );
  }
}
