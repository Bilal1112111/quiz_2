import 'package:flutter/material.dart';

import '../../core/utils/color_manager.dart';
import '../../core/utils/string_manager.dart';
import '../../core/utils/values_manager.dart';
import '../add_new_card/widgets/reusable_total_payment.dart';
import '../products/widgets/reusable_check_out_button.dart';

class PinnedTotal extends StatelessWidget {
  PinnedTotal(
      {super.key,
      required this.widthSize,
      required this.buttonLabel,
      required this.subTotalPrice,
      required this.totalPrice,
      required this.deliveryPrice,
      this.onPressed});

  final double widthSize;
  final String buttonLabel;
  final String subTotalPrice;
  final String totalPrice;
  final String deliveryPrice;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding:
            const EdgeInsetsDirectional.symmetric(horizontal: AppPadding.p8),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.30,
        decoration: const BoxDecoration(
          color: ColorManager.custom2WhiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(AppSize.s30),
            topRight: Radius.circular(AppSize.s30),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: AppSize.s18,
            ),
            ReusableTotalPayment(
              label: StringManager.subtotalText,
              price: subTotalPrice,
            ),
            ReusableTotalPayment(
              label: StringManager.deliveryText,
              price: deliveryPrice,
            ),
            ReusableTotalPayment(
              label: StringManager.totalText,
              price: totalPrice,
            ),
            const SizedBox(
              height: AppSize.s20,
            ),
            ReusableCheckOutButton(
              onPressed: onPressed,
              width: widthSize,
              overlayColor: ColorManager.whiteColor,
              backgroundColor: ColorManager.primaryColor,
              sideColor: Colors.transparent,
              labelColor: ColorManager.whiteColor,
              label: buttonLabel,
            ),
          ],
        ),
      ),
    );
  }
}
