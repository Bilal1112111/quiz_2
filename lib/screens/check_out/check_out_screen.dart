import 'package:flutter/material.dart';
import 'package:ptc2d/screens/add_new_card/add_new_card_screen.dart';
import 'package:ptc2d/screens/check_out/widgets/select_location.dart';
import 'package:ptc2d/screens/products/widgets/reusable_check_out_button.dart';
import 'package:ptc2d/screens/widgets/custom_bar.dart';

import '../../core/utils/color_manager.dart';
import '../../core/utils/icon_manager.dart';
import '../../core/utils/string_manager.dart';
import '../../core/utils/style_manager.dart';
import '../../core/utils/values_manager.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: CustomBar(
          label: StringManager.shoppingCartText,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            left: AppPadding.p30, right: AppPadding.p30, top: AppPadding.p40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringManager.deliveryAddressText,
              style: StyleManager.w400TextStyle(
                color: ColorManager.blackColor,
                size: AppSize.s16,
              ),
            ),
            const SizedBox(
              height: AppSize.s24,
            ),
            SelectLocationWidget(
              label: StringManager.homeText,
              location: StringManager.locationText,
            ),
            const SizedBox(
              height: AppSize.s24,
            ),
            SelectLocationWidget(
              label: StringManager.officeText,
              location: StringManager.officeLocationText,
            ),
            const SizedBox(
              height: AppSize.s35,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.15,
              padding: const EdgeInsets.all(AppPadding.p18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppSize.s12),
                border: Border.all(
                  style: BorderStyle.solid,
                  width: 1,
                  color: ColorManager.custom8GreyColor,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    IconManager.addWithBorder,
                    color: ColorManager.customOrangeColor,
                  ),
                  const SizedBox(
                    width: AppSize.s8,
                  ),
                  Text(
                    StringManager.addNewAddressText,
                    style: StyleManager.w500TextStyle(
                        color: ColorManager.custom1BlackColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.17,
            ),
            ReusableCheckOutButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddNewCardScreen(),
                    ),
                  );
                },
                width: MediaQuery.of(context).size.width,
                overlayColor: ColorManager.whiteColor,
                backgroundColor: ColorManager.primaryColor,
                sideColor: Colors.transparent,
                labelColor: ColorManager.whiteColor,
                label: StringManager.addCardText)
          ],
        ),
      ),
    );
  }
}
