import 'package:flutter/material.dart';
import 'package:ptc2d/core/utils/color_manager.dart';

import '../../../core/utils/values_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.actions,
    this.flexibleSpace,
    this.backgroundColor = ColorManager.primaryColor,
    this.leading,
    this.backgroundIcon,
    this.padding = const EdgeInsets.only(
      left: AppPadding.p20,
      right: AppPadding.p20,
    ),
  });
  final List<Widget>? actions;
  final Widget? flexibleSpace;
  final Color backgroundColor;
  final Widget? leading;
  final EdgeInsetsGeometry padding;
  final Widget? backgroundIcon;

  final Widget title;
  @override
  Widget build(BuildContext context) {
    final appBarHeight = MediaQuery.sizeOf(context).height * .35;
    final statusBarHeight = MediaQuery.of(context).viewPadding.top;
    return SliverAppBar(
      pinned: true,
      floating: true,
      snap: true,
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor,
      expandedHeight: appBarHeight,
      titleSpacing: 0,
      title: Padding(
        padding: const EdgeInsets.only(
          left: AppPadding.p20,
          right: AppPadding.p16,
        ),
        child: Row(
          children: [
            if (leading != null)
              Row(
                children: [
                  leading!,
                  const SizedBox(
                    width: 21,
                  )
                ],
              ),
            title,
            const Spacer(),
            actions != null
                ? Row(
                    children: actions!,
                  )
                : const SizedBox(),
          ],
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: padding,
          child: Stack(
            children: [
              if (backgroundIcon != null)
                Positioned(top: -75, child: backgroundIcon!),
              Positioned(
                width: MediaQuery.sizeOf(context).width - padding.horizontal,
                height: appBarHeight -
                    (kBottomNavigationBarHeight + 35 + -statusBarHeight),
                top: kBottomNavigationBarHeight + 35,
                child: flexibleSpace!,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
