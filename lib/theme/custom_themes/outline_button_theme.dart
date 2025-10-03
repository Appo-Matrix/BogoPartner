import 'package:flutter/material.dart';
import '../../core/utils/constants/app_colors.dart';
import '../../core/utils/constants/app_sizes.dart';

class BOutlinedButtonTheme {
  BOutlinedButtonTheme._();

  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: PAppColors.primary500,
      side: const BorderSide(color: PAppColors.primary500, width: 1.5),
      disabledForegroundColor: PAppColors.gray400,
      disabledBackgroundColor: Colors.transparent,
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: PSizes.buttonHeight,
        horizontal: PSizes.md,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(PSizes.buttonRadius),
      ),
    ).copyWith(
      overlayColor: MaterialStateProperty.all(PAppColors.primary50),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: PAppColors.primary400,
      side: const BorderSide(color: PAppColors.primary400, width: 1.5),
      disabledForegroundColor: PAppColors.gray600,
      disabledBackgroundColor: Colors.transparent,
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: PSizes.buttonHeight,
        horizontal: PSizes.md,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(PSizes.buttonRadius),
      ),
    ).copyWith(
      overlayColor: MaterialStateProperty.all(PAppColors.gray800),
    ),
  );
}
