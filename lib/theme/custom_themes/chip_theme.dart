
import 'package:flutter/material.dart';

import '../../core/utils/constants/app_colors.dart';
// Your JAppColors class

class BChipTheme {
  BChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: PAppColors.lightGray400.withOpacity(0.4), // Disabled color for light mode
    labelStyle: const TextStyle(color: PAppColors.lightGray700), // Label style for light mode
    selectedColor: PAppColors.primary, // Selected color
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12), // Padding for chips
    checkmarkColor: PAppColors.lightGray100, // Checkmark color for light mode
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: PAppColors.black300, // Disabled color for dark mode
    labelStyle: TextStyle(color: PAppColors.lightGray100), // Label style for dark mode
    selectedColor: PAppColors.primary, // Selected color
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12), // Padding for chips
    checkmarkColor: PAppColors.lightGray100, // Checkmark color for dark mode
  );
}
