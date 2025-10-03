import 'package:flutter/material.dart';
import '../../core/utils/constants/app_colors.dart';

class BChipTheme {
  BChipTheme._();

  /// Light Chip Theme
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: PAppColors.gray200,
    labelStyle: const TextStyle(
      color: PAppColors.gray700,
      fontWeight: FontWeight.w500,
    ),
    selectedColor: PAppColors.primary500,
    secondarySelectedColor: PAppColors.primary100,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
    checkmarkColor: Colors.white,
    backgroundColor: PAppColors.gray100,
    brightness: Brightness.light,
  );

  /// Dark Chip Theme
  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: PAppColors.gray700,
    labelStyle: const TextStyle(
      color: PAppColors.gray100,
      fontWeight: FontWeight.w500,
    ),
    selectedColor: PAppColors.primary400,
    secondarySelectedColor: PAppColors.primary700,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
    checkmarkColor: PAppColors.darkText,
    backgroundColor: PAppColors.gray800,
    brightness: Brightness.dark,
  );
}
