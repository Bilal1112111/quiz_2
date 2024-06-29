import 'package:flutter/material.dart';

import 'color_manager.dart';

class ThemeManager {
  static final ThemeData appTheme = ThemeData(
    primaryColor: ColorManager.primaryColor,
    iconTheme: const IconThemeData(color: ColorManager.custom1WhiteColor),
    scaffoldBackgroundColor: ColorManager.scaffoldBackgroundColor,
  );
}
