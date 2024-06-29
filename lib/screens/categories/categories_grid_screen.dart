import 'package:flutter/material.dart';
import 'package:ptc2d/core/utils/string_manager.dart';
import 'package:ptc2d/screens/categories/widgets/by_category_grid.dart';
import 'package:ptc2d/screens/categories/widgets/header_icon.dart';
import 'package:ptc2d/screens/shopping_cart/shopping_cart_screen.dart';
import 'package:ptc2d/screens/widgets/custom_sliver_app_bar.dart';

import '../../core/utils/color_manager.dart';
import '../../core/utils/icon_manager.dart';
import '../../core/utils/style_manager.dart';
import '../../core/utils/values_manager.dart';

class CategoriesGridScreen extends StatelessWidget {
  CategoriesGridScreen({super.key});
  List<ByCategoriesGridView> listOfCategoryProduct = [
    const ByCategoriesGridView(
        product: StringManager.byCategoryProduct1,
        productHint: StringManager.byCategoryProduct1Hint),
    const ByCategoriesGridView(
        product: StringManager.byCategoryProduct2,
        productHint: StringManager.byCategoryProduct2Hint),
    const ByCategoriesGridView(
        product: StringManager.byCategoryProduct3,
        productHint: StringManager.byCategoryProduct3Hint),
    const ByCategoriesGridView(
        product: StringManager.byCategoryProduct4,
        productHint: StringManager.byCategoryProduct4Hint),
    const ByCategoriesGridView(
        product: StringManager.byCategoryProduct1,
        productHint: StringManager.byCategoryProduct1Hint),
    const ByCategoriesGridView(
        product: StringManager.byCategoryProduct2,
        productHint: StringManager.byCategoryProduct2Hint),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.custom1WhiteColor,
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(
            title: Text(
              StringManager.heyUserText,
              style: StyleManager.w600TextStyle(
                size: AppSize.s22,
                color: ColorManager.custom2WhiteColor,
              ),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.only(right: AppMargin.m10),
                child: Row(
                  children: [
                    const HeaderIcon(icon: IconManager.search),
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ShoppingCartScreen(),
                              ),
                            );
                          },
                          child: const HeaderIcon(
                            icon: IconManager.shoppingBag,
                          ),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: AppSize.s50,
                ),
                Text(
                  StringManager.shopText,
                  style: StyleManager.w300TextStyle(
                    color: ColorManager.custom1WhiteColor,
                  ),
                ),
                Text(
                  StringManager.byCategoryText,
                  style: StyleManager.w800TextStyle(
                    color: ColorManager.custom1WhiteColor,
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
              child: Column(
                children: [
                  SizedBox(
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: AppSize.s20,
                        crossAxisSpacing: AppSize.s20,
                        mainAxisExtent:
                            MediaQuery.of(context).size.height * 0.22,
                      ),
                      itemCount: listOfCategoryProduct.length,
                      itemBuilder: (context, index) {
                        return listOfCategoryProduct[index];
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
