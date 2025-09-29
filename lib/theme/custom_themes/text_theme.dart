import 'package:flutter/material.dart';
import '../../core/utils/constants/app_colors.dart';

class BTextTheme {
  BTextTheme._();

  /* -- Light Theme -- */
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: PAppColors.lightGray900,
    ),
    headlineMedium: const TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: PAppColors.lightGray900,
    ),
    headlineSmall: const TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: PAppColors.lightGray900,
    ),
    titleLarge: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: PAppColors.lightGray900,
    ),
    titleMedium: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: PAppColors.lightGray800,
    ),
    titleSmall: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: PAppColors.lightGray700,
    ),
    bodyLarge: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: PAppColors.lightGray900,
    ),
    bodyMedium: const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: PAppColors.lightGray800,
    ),
    bodySmall: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: PAppColors.lightGray700.withOpacity(0.8),
    ),
    labelLarge: const TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: PAppColors.lightGray800,
    ),
    labelMedium: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: PAppColors.lightGray600.withOpacity(0.9),
    ),
  );

  /* -- Dark Theme -- */
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headlineMedium: const TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headlineSmall: const TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleLarge: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    titleMedium: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: PAppColors.gray200,
    ),
    titleSmall: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: PAppColors.gray300,
    ),
    bodyLarge: const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    bodyMedium: const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: PAppColors.gray200,
    ),
    bodySmall: const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: PAppColors.gray400,
    ),
    labelLarge: const TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    labelMedium: const TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: PAppColors.gray300,
    ),
  );
}
