import 'package:flutter/material.dart';

import '../../../core/utils/color_manager.dart';
import '../../../core/utils/style_manager.dart';
import '../../../core/utils/values_manager.dart';

class ReusableTextForm extends StatelessWidget {
  const ReusableTextForm({
    super.key,
    required this.labelText,
    required this.textHolder,
    required this.width,
  });
  final String labelText;
  final String textHolder;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: StyleManager.w600TextStyle(
              size: AppSize.s12, color: ColorManager.custom2GreyColor),
        ),
        SizedBox(
          width: width,
          child: TextFormField(
            initialValue: textHolder,
            style: StyleManager.w400TextStyle(
              size: AppSize.s16,
            ),
            cursorColor: ColorManager.primaryColor,
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: ColorManager.custom8GreyColor),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: ColorManager.custom8GreyColor),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: ColorManager.primaryColor,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: AppSize.s30,
        ),
      ],
    );
  }
}
