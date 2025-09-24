import 'package:flutter/material.dart';
import '../../core/utils/constants/app_colors.dart';
import '../../core/utils/constants/app_sizes.dart'; // Assuming you have button sizes defined here

class BTextFieldTheme {
  BTextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    // prefixIconColor: BAppColors.darkGray400,  // Use your custom dark gray for icons
    // suffixIconColor: BAppColors.darkGray400,  // Use the same for suffix icon color
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(
      fontSize: PSizes.fontSizeMd,
      color: PAppColors.lightGray900,
    ),
    // Text color for labels
    hintStyle: const TextStyle().copyWith(
      fontSize: PSizes.fontSizeSm,
      color: PAppColors.lightGray600,
    ),
    // Hint text color
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(
      color: PAppColors.lightGray700.withOpacity(0.8),
    ),
    // Floating label color
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: 1,
        color: PAppColors.lightGray500,
      ), // Border color for light mode
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: PAppColors.lightGray500),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: 1,
        color: PAppColors.primary,
      ), // Focused border color
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: 1,
        color: PAppColors.error500,
      ), // Error border color
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: 2,
        color: PAppColors.error500,
      ), // Focused error border color
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    // prefixIconColor: BAppColors.darkGray400,  // Use custom dark gray for icons
    // suffixIconColor: BAppColors.darkGray400,  // Same for suffix icon color
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(
      fontSize: PSizes.fontSizeMd,
      color: PAppColors.lightGray100,
    ),
    // Text color for labels in dark mode
    hintStyle: const TextStyle().copyWith(
      fontSize: PSizes.fontSizeSm,
      color: PAppColors.lightGray500,
    ),
    // Hint text color
    floatingLabelStyle: const TextStyle().copyWith(
      color: PAppColors.lightGray200.withOpacity(0.8),
    ),
    // Floating label color
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      // borderSide: const BorderSide(width: 1, color: BAppColors.darkGray500),  // Border color for dark mode
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      // borderSide: const BorderSide(width: 1, color: BAppColors.darkGray500),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: 1,
        color: PAppColors.primary,
      ), // Focused border color in dark mode
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: 1,
        color: PAppColors.error500,
      ), // Error border color
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(PSizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: 2,
        color: PAppColors.error500,
      ), // Focused error border color
    ),
  );
}
