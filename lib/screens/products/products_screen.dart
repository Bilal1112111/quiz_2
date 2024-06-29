import 'package:flutter/material.dart';
import 'package:ptc2d/core/utils/values_manager.dart';

import '../../core/utils/color_manager.dart';
import '../../core/utils/icon_manager.dart';
import '../../core/utils/string_manager.dart';
import '../../core/utils/style_manager.dart';
import '../categories/widgets/header_icon.dart';
import '../categories/widgets/reusable_list_item.dart';
import '../home/widgets/deals_grid.dart';

class ProductsScreen extends StatelessWidget {
  ProductsScreen({super.key});
  List<String> categoriesType = [
    'Popular',
    'Low Price',
    'Small Fishes',
    'Chicken'
  ];
  List<DealsGrid> listOfDeals = [
    const DealsGrid(price: '\$325', productDeals: StringManager.productDeals),
    const DealsGrid(price: '\$89', productDeals: StringManager.product2Deals),
    const DealsGrid(price: '\$325', productDeals: StringManager.productDeals),
    const DealsGrid(price: '\$89', productDeals: StringManager.productDeals),
    const DealsGrid(price: '\$89', productDeals: StringManager.product2Deals),
    const DealsGrid(price: '\$325', productDeals: StringManager.productDeals),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: AppBar(
        backgroundColor: ColorManager.whiteColor,
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
                StringManager.byCategoryListProduct,
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
                const HeaderIcon(
                  icon: IconManager.search,
                  color: ColorManager.custom1BlackColor,
                ),
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: AppSize.s20,
            ),
            SizedBox(
              height: 40,
              child: ListView.separated(
                itemCount: categoriesType.length,
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
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
            const SizedBox(
              height: AppSize.s26,
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: AppPadding.p20, right: AppPadding.p20),
              height: MediaQuery.of(context).size.height * 0.9,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: AppSize.s16,
                  crossAxisSpacing: AppSize.s12,
                  mainAxisExtent: MediaQuery.of(context).size.height * 0.25,
                ),
                itemCount: listOfDeals.length,
                itemBuilder: (context, index) {
                  return listOfDeals[index];
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
