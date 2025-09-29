import 'package:flutter/material.dart';
import '../../core/utils/constants/app_colors.dart';
import '../../core/utils/constants/app_sizes.dart';

/// Light and dark elevated button themes
class BElevatedButtonTheme {
  BElevatedButtonTheme._();

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: PAppColors.primary500,
      disabledForegroundColor: PAppColors.gray400,
      disabledBackgroundColor: PAppColors.gray200,
      side: const BorderSide(color: PAppColors.primary500),
      padding: const EdgeInsets.symmetric(
        vertical: PSizes.buttonHeight,
        horizontal: PSizes.md,
      ),
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(PSizes.buttonRadius),
      ),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: PAppColors.primary400,
      disabledForegroundColor: PAppColors.gray600,
      disabledBackgroundColor: PAppColors.gray700,
      side: const BorderSide(color: PAppColors.primary400),
      padding: const EdgeInsets.symmetric(
        vertical: PSizes.buttonHeight,
        horizontal: PSizes.md,
      ),
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(PSizes.buttonRadius),
      ),
    ),
  );
}
