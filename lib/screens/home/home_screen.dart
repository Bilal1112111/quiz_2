import 'package:flutter/material.dart';
import 'package:ptc2d/core/utils/color_manager.dart';
import 'package:ptc2d/core/utils/string_manager.dart';
import 'package:ptc2d/core/utils/values_manager.dart';
import 'package:ptc2d/screens/home/widgets/deals_grid.dart';
import 'package:ptc2d/screens/home/widgets/deals_slider.dart';
import 'package:ptc2d/screens/home/widgets/home_page_header.dart';
import 'package:ptc2d/screens/home/widgets/location_or_time.dart';
import 'package:ptc2d/screens/home/widgets/recommended_products.dart';
import 'package:ptc2d/screens/home/widgets/search_bar.dart';
import 'package:ptc2d/screens/home/widgets/statistics.dart';

import '../../core/utils/style_manager.dart';
import '../widgets/custom_sliver_app_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<Widget> homeSlider = [
    const DealsSlider(),
    const StatisticsSlider(
      color: ColorManager.custom1OrangeColor,
      amountDataText: StringManager.amountData,
      dataUnitText: StringManager.dataUnit,
    ),
    const StatisticsSlider(
      color: ColorManager.custom4WhiteColor,
      amountDataText: StringManager.amount2Data,
      dataUnitText: StringManager.data2Unit,
    )
  ];
  List<RecommendedProducts> listOfProducts = [
    const RecommendedProducts(
        product: StringManager.product1,
        productHint: StringManager.product1Hint,
        price: '\$12'),
    const RecommendedProducts(
        product: StringManager.product2,
        productHint: StringManager.product2Hint,
        price: '\$60'),
    const RecommendedProducts(
        product: StringManager.product1,
        productHint: StringManager.product1Hint,
        price: '\$12'),
  ];
  List<DealsGrid> listOfDeals = [
    const DealsGrid(price: '\$325', productDeals: StringManager.productDeals),
    const DealsGrid(price: '\$89', productDeals: StringManager.product2Deals),
    const DealsGrid(price: '\$325', productDeals: StringManager.productDeals),
    const DealsGrid(price: '\$89', productDeals: StringManager.product2Deals),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.custom1WhiteColor,
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(
            title: const HomePageHeader(),
            child: Column(
              children: [
                const SizedBox(
                  height: AppSize.s50,
                ),
                const ReusableSearchBar(),
                const SizedBox(
                  height: AppSize.s30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LocationOrTime(
                      label: StringManager.sliverBarText1,
                      value: StringManager.locationListItems[0],
                      items: StringManager.locationListItems
                          .map((String location) {
                        return DropdownMenuItem<String>(
                          value: location,
                          child: Text('$location '),
                        );
                      }).toList(),
                    ),
                    LocationOrTime(
                      label: StringManager.sliverBarText2,
                      value: StringManager.timeListItems[0],
                      items: StringManager.timeListItems.map((String time) {
                        return DropdownMenuItem<String>(
                          value: time,
                          child: Text(time),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.19,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(
                      left: AppPadding.p10,
                      top: AppPadding.p30,
                      right: AppPadding.p10,
                    ),
                    scrollDirection: Axis.horizontal,
                    itemCount: homeSlider.length,
                    itemBuilder: (context, index) {
                      return homeSlider[index];
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: AppSize.s20,
                    top: AppSize.s30,
                  ),
                  child: Text(
                    StringManager.mainLabel,
                    style: StyleManager.w400TextStyle(size: AppSize.s30),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.28,
                  child: ListView.builder(
                    padding: const EdgeInsets.only(
                      left: AppPadding.p10,
                      top: AppPadding.p30,
                      right: AppPadding.p10,
                    ),
                    scrollDirection: Axis.horizontal,
                    itemCount: listOfProducts.length,
                    itemBuilder: (context, index) {
                      return listOfProducts[index];
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: AppSize.s20,
                    top: AppSize.s30,
                  ),
                  child: Text(
                    StringManager.mainLabel2,
                    style: StyleManager.w700TextStyle(),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: AppPadding.p20,
                    right: AppPadding.p20,
                  ),
                  child: GridView.builder(
                    shrinkWrap: true,
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
        ],
      ),
    );
  }
}
