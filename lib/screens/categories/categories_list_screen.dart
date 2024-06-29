import 'package:flutter/material.dart';
import 'package:ptc2d/core/utils/string_manager.dart';
import 'package:ptc2d/screens/categories/widgets/by_category_list.dart';
import 'package:ptc2d/screens/categories/widgets/header_icon.dart';
import 'package:ptc2d/screens/categories/widgets/reusable_list_item.dart';
import 'package:ptc2d/screens/shopping_cart/shopping_cart_screen.dart';
import 'package:ptc2d/screens/widgets/custom_sliver_app_bar.dart';

import '../../core/utils/color_manager.dart';
import '../../core/utils/icon_manager.dart';
import '../../core/utils/style_manager.dart';
import '../../core/utils/values_manager.dart';

class CategoriesListScreen extends StatelessWidget {
  CategoriesListScreen({super.key});

  List<ByCategoryList> listOfProducts = [
    const ByCategoryList(
      label: StringManager.byCategoryListProduct,
      hintLabel: StringManager.byCategoryListProduct1Hint,
      color: ColorManager.custom2OrangeColor,
      price: '\$36/KG',
    ),
    const ByCategoryList(
      label: StringManager.byCategoryListProduct2,
      hintLabel: StringManager.byCategoryListProduct2Hint,
      color: ColorManager.customPinkColor,
      price: '\$90/KG',
    ),
    const ByCategoryList(
      label: StringManager.byCategoryListProduct3,
      hintLabel: StringManager.byCategoryListProduct3Hint,
      color: ColorManager.custom1OrangeColor,
      price: '\$70/KG',
    ),
  ];
  List<String> categoriesType = [
    'Meats & Fishes',
    'Vegetables',
    'Fruits',
    'Chicken'
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
            child: Column(
              children: [
                const SizedBox(
                  height: AppSize.s20,
                ),
                SizedBox(
                  height: 50,
                  child: ListView.separated(
                    itemCount: categoriesType.length,
                    padding:
                        const EdgeInsets.symmetric(horizontal: AppPadding.p24),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: AppSize.s8,
                      );
                    },
                    itemBuilder: (context, index) {
                      return ReusableListItem(
                        label: categoriesType[index],
                      );
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppPadding.p24),
                  child: SizedBox(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: listOfProducts.length,
                      itemBuilder: (context, index) {
                        return listOfProducts[index];
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
