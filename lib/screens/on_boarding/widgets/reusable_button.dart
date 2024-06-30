import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/icon_manager.dart';
import '../../../core/utils/string_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';

class ReusableButton extends StatelessWidget {
  const ReusableButton({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      child: MaterialButton(
        onPressed: onPressed,
        height: AppSize.s70,
        color: ColorManager.custom1WhiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              StringManager.buttonText,
              style: StyleManager.w600TextStyle(),
            ),
            const SizedBox(
              width: AppSize.s40,
            ),
            const Icon(
              IconManager.arrowForward,
              color: ColorManager.custom1BlackColor,
            ),
          ],
        ),
      ),
    );
  }
}
