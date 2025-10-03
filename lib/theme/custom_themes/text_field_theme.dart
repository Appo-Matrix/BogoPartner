import 'package:flutter/material.dart';
import '../../core/utils/constants/app_colors.dart';
import '../../core/utils/constants/app_sizes.dart';

class BTextFieldTheme {
  BTextFieldTheme._();

  /* -- Light Theme -- */
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: PAppColors.gray500,
    suffixIconColor: PAppColors.gray500,
    labelStyle: const TextStyle(
      fontSize: PSizes.fontSizeMd,
      color: PAppColors.gray700,
    ),
    hintStyle: const TextStyle(
      fontSize: PSizes.fontSizeSm,
      color: PAppColors.gray500,
    ),
    floatingLabelStyle: const TextStyle(
      fontWeight: FontWeight.w500,
      color: PAppColors.primary500,
    ),
    errorStyle: const TextStyle(
      fontSize: PSizes.fontSizeSm,
      fontStyle: FontStyle.normal,
      color: PAppColors.error500,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PAppColors.gray400),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PAppColors.gray400),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1.5, color: PAppColors.primary500),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PAppColors.gray300),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PAppColors.error500),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: PAppColors.error600),
    ),
    contentPadding: const EdgeInsets.symmetric(
      horizontal: PSizes.md,
      vertical: PSizes.sm,
    ),
  );

  /* -- Dark Theme -- */
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: PAppColors.gray400,
    suffixIconColor: PAppColors.gray400,
    labelStyle: const TextStyle(
      fontSize: PSizes.fontSizeMd,
      color: PAppColors.gray200,
    ),
    hintStyle: const TextStyle(
      fontSize: PSizes.fontSizeSm,
      color: PAppColors.gray400,
    ),
    floatingLabelStyle: const TextStyle(
      fontWeight: FontWeight.w500,
      color: PAppColors.primary400,
    ),
    errorStyle: const TextStyle(
      fontSize: PSizes.fontSizeSm,
      fontStyle: FontStyle.normal,
      color: PAppColors.error400,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PAppColors.gray600),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PAppColors.gray600),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1.5, color: PAppColors.primary400),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PAppColors.gray700),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PAppColors.error400),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: PAppColors.error500),
    ),
    contentPadding: const EdgeInsets.symmetric(
      horizontal: PSizes.md,
      vertical: PSizes.sm,
    ),
  );
}
