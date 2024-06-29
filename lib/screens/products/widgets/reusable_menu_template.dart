import 'package:flutter/cupertino.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/icon_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';

class ReusableMenuTemp extends StatelessWidget {
  const ReusableMenuTemp({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: StyleManager.w400TextStyle(size: AppSize.s16),
        ),
        const Spacer(),
        const Icon(
          IconManager.arrowDown,
          color: ColorManager.custom3WhiteColor,
          size: AppSize.s35,
        ),
      ],
    );
  }
}
