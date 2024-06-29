import 'package:flutter/material.dart';
import 'package:ptc2d/core/utils/string_manager.dart';
import 'package:ptc2d/screens/add_new_card/widgets/reusable_text_form.dart';

import '../../core/utils/color_manager.dart';
import '../../core/utils/values_manager.dart';
import '../widgets/custom_bar.dart';
import '../widgets/pinned_total.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight),
        child: CustomBar(
          label: StringManager.addCardText,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: AppSize.s60,
                  ),
                  const ReusableTextForm(
                    width: double.infinity,
                    labelText: StringManager.cardHolderNameText,
                    textHolder: StringManager.inputCardHolderNameText,
                  ),
                  ReusableTextForm(
                    width: widthSize,
                    labelText: StringManager.cardNumberText,
                    textHolder: StringManager.inputCardNumberText,
                  ),
                  Row(
                    children: [
                      ReusableTextForm(
                        width: widthSize * 0.4,
                        labelText: StringManager.expDateText,
                        textHolder: StringManager.inputExpDateText,
                      ),
                      const SizedBox(
                        width: AppSize.s35,
                      ),
                      ReusableTextForm(
                        width: widthSize * 0.4,
                        labelText: StringManager.cvcText,
                        textHolder: StringManager.inputCvcText,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            PinnedTotal(
              widthSize: widthSize,
              buttonLabel: 'Make Payment',
              subTotalPrice: '\$35.96',
              deliveryPrice: '\$2.00',
              totalPrice: '\$37.96',
            ),
          ],
        ),
      ),
    );
  }
}
