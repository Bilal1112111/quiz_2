import 'package:flutter/material.dart';

import '../../core/utils/color_manager.dart';
import '../../core/utils/icon_manager.dart';
import '../../core/utils/style_manager.dart';
import '../../core/utils/values_manager.dart';
import '../categories/widgets/header_icon.dart';

class AppBarCustom extends StatelessWidget {
  const AppBarCustom({super.key, this.title = '', this.isSearchActive = false});
  final String title;
  final bool isSearchActive;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorManager.whiteColor,
      surfaceTintColor: Colors.transparent,
      leadingWidth: MediaQuery.of(context).size.width * 0.75,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: AppSize.s16,
              ),
            ),
            Text(
              title,
              style: StyleManager.w400TextStyle(
                size: AppSize.s16,
              ),
            ),
          ],
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: AppMargin.m10),
          child: Row(
            children: [
              isSearchActive == true
                  ? HeaderIcon(
                      icon: IconManager.search,
                      color: ColorManager.custom1BlackColor,
                    )
                  : Container(),
              Stack(
                children: [
                  const HeaderIcon(
                    icon: IconManager.shoppingBag,
                    color: ColorManager.custom1BlackColor,
                  ),
                  Positioned(
                    height: AppSize.s20,
                    width: AppSize.s20,
                    left: AppSize.s20,
                    bottom: AppSize.s18,
                    child: CircleAvatar(
                      backgroundColor: ColorManager.customOrangeColor,
                      child: Text(
                        '3',
                        style: StyleManager.w600TextStyle(
                          color: ColorManager.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
