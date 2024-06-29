import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:ptc2d/core/utils/icon_manager.dart';
import 'package:ptc2d/core/utils/values_manager.dart';
import 'package:ptc2d/screens/categories/categories_grid_screen.dart';
import 'package:ptc2d/screens/categories/categories_list_screen.dart';
import 'package:ptc2d/screens/home/home_screen.dart';
import 'package:ptc2d/screens/orders/orders_screen.dart';

import '../core/utils/color_manager.dart';
import '../core/utils/string_manager.dart';
import '../core/utils/style_manager.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// Controller to handle PageView and also handles initial page
  final _pageController = PageController(initialPage: 0);

  /// Controller to handle bottom nav bar and also handles initial page
  final NotchBottomBarController _controller =
      NotchBottomBarController(index: 0);

  int maxCount = 5;

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// widget list
    final List<Widget> bottomBarPages = [
      HomeScreen(),
      CategoriesGridScreen(),
      CategoriesListScreen(),
      OrdersScreen(),
    ];
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
              notchBottomBarController: _controller,
              color: ColorManager.custom7WhiteColor,
              showLabel: true,
              textOverflow: TextOverflow.visible,
              maxLine: 1,
              shadowElevation: 5,
              kBottomRadius: 0,
              notchColor: ColorManager.custom1BlackColor,
              removeMargins: true,
              showShadow: false,
              durationInMilliSeconds: 300,
              itemLabelStyle: StyleManager.w500TextStyle(
                size: AppSize.s12,
                color: ColorManager.custom2GreyColor,
              ),
              elevation: 1,
              bottomBarItems: const [
                BottomBarItem(
                  inActiveItem: Icon(
                    IconManager.home,
                    color: ColorManager.custom11GreyColor,
                  ),
                  activeItem: Icon(
                    IconManager.home,
                    color: ColorManager.custom3OrangeColor,
                  ),
                  itemLabel: StringManager.homeText,
                ),
                BottomBarItem(
                  inActiveItem: Icon(IconManager.categories,
                      color: ColorManager.custom11GreyColor),
                  activeItem: Icon(
                    IconManager.categories,
                    color: ColorManager.custom3OrangeColor,
                  ),
                  itemLabel: StringManager.bottomNavBarCategories,
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    IconManager.heart,
                    color: ColorManager.custom11GreyColor,
                  ),
                  activeItem: Icon(
                    IconManager.heart,
                    color: ColorManager.custom3OrangeColor,
                  ),
                  itemLabel: StringManager.bottomNavBarFavourite,
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    IconManager.more,
                    color: ColorManager.custom11GreyColor,
                  ),
                  activeItem: Icon(
                    IconManager.more,
                    color: ColorManager.custom3OrangeColor,
                  ),
                  itemLabel: StringManager.bottomNavBarMore,
                ),
              ],
              onTap: (index) {
                _pageController.jumpToPage(index);
              },
              kIconSize: AppSize.s24,
            )
          : null,
    );
  }
}
