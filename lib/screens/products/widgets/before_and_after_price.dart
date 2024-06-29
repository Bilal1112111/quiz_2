import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/string_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';

class ReusableBeforeAndAfterPrice extends StatelessWidget {
  const ReusableBeforeAndAfterPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '\$34.70/KG',
          style: StyleManager.w700TextStyle(
            color: ColorManager.primaryColor,
            size: AppSize.s16,
          ),
        ),
        const SizedBox(
          width: AppSize.s14,
        ),
        Container(
          width: AppSize.s80,
          height: AppSize.s24,
          decoration: const BoxDecoration(
            color: ColorManager.custom1PrimaryColor,
            borderRadius: BorderRadius.all(
              Radius.circular(AppSize.s70),
            ),
          ),
          child: Center(
            child: Text(
              '\$22.04 OFF',
              style: StyleManager.w400TextStyle(
                size: AppSize.s12,
                color: ColorManager.custom1WhiteColor,
              ),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.06,
        ),
        Text(
          'Reg: \$56.70 ${StringManager.dataUnit}',
          style: StyleManager.w400TextStyle(
            color: ColorManager.custom3WhiteColor,
          ),
        ),
      ],
    );
  }
}
