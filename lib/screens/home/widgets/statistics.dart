import 'package:flutter/material.dart';
import 'package:ptc2d/core/utils/style_manager.dart';

import '../../../core/utils/string_manager.dart';
import '../../../core/utils/values_manager.dart';

class StatisticsSlider extends StatelessWidget {
  const StatisticsSlider({
    super.key,
    required this.color,
    required this.amountDataText,
    required this.dataUnitText,
  });
  final Color color;
  final String amountDataText;
  final String dataUnitText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 158,
      height: 123,
      margin: const EdgeInsets.symmetric(horizontal: AppMargin.m12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(AppSize.s18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: amountDataText,
                  style: StyleManager.w800TextStyle(
                    size: AppSize.s26,
                  ),
                  children: [
                    TextSpan(
                      text: dataUnitText,
                      style: StyleManager.w400TextStyle(
                        size: AppSize.s26,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                StringManager.dealsLabel,
                style: StyleManager.w400TextStyle(size: AppSize.s14),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
