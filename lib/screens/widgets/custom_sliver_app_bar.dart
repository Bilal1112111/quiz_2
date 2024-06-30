import 'package:flutter/material.dart';

import '../../core/utils/color_manager.dart';
import '../../core/utils/values_manager.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
    required this.child,
    this.actions,
    required this.title,
  });
  final Widget child;
  final Widget title;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: actions,
      title: title,
      pinned: true,
      automaticallyImplyLeading: false,
      expandedHeight: AppSize.s100 * 2.3,
      backgroundColor: ColorManager.primaryColor,
      flexibleSpace: FlexibleSpaceBar(
        background: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: AppPadding.p20,
                    right: AppPadding.p16,
                    top: AppPadding.p50,
                  ),
                  child: child,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
