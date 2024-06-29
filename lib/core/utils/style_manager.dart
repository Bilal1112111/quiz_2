import 'package:flutter/material.dart';
import 'package:ptc2d/core/utils/values_manager.dart';

import 'color_manager.dart';

class StyleManager {
  static TextStyle w800TextStyle({
    Color color = ColorManager.custom1BlackColor,
    double size = AppSize.s50,
    FontWeight fontWeight = FontWeight.w800,
    String fontFamily = 'Manrope',
  }) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
      fontFamily: fontFamily,
    );
  }

  static TextStyle w700TextStyle({
    Color color = ColorManager.custom1BlackColor,
    double size = AppSize.s20,
    FontWeight fontWeight = FontWeight.w700,
    String fontFamily = 'Manrope',
  }) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
      fontFamily: fontFamily,
    );
  }

  static TextStyle w600TextStyle({
    Color color = ColorManager.custom1BlackColor,
    double size = AppSize.s14,
    FontWeight fontWeight = FontWeight.w600,
    String fontFamily = 'Manrope',
  }) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
      fontFamily: fontFamily,
    );
  }

  static TextStyle w500TextStyle({
    Color color = ColorManager.custom1BlackColor,
    double size = AppSize.s14,
    FontWeight fontWeight = FontWeight.w500,
    String fontFamily = 'Manrope',
  }) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
      fontFamily: fontFamily,
    );
  }

  static TextStyle w400TextStyle({
    Color color = ColorManager.custom1BlackColor,
    double size = AppSize.s14,
    FontWeight fontWeight = FontWeight.w400,
    String fontFamily = 'Manrope',
  }) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
      fontFamily: fontFamily,
    );
  }

  static TextStyle w300TextStyle({
    Color color = ColorManager.custom1BlackColor,
    double size = AppSize.s50,
    FontWeight fontWeight = FontWeight.w300,
    String fontFamily = 'Manrope',
  }) {
    return TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: size,
      fontFamily: fontFamily,
    );
  }
}
