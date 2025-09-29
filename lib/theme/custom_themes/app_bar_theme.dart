import 'package:flutter/material.dart';
import '../../core/utils/constants/app_colors.dart';

class BAppBarTheme {
  BAppBarTheme._();

  /// Light Theme AppBar
  static const AppBarTheme lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    backgroundColor: PAppColors.lightBackground,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: PAppColors.gray700,
      size: 24,
    ),
    actionsIconTheme: IconThemeData(
      color: PAppColors.gray900,
      size: 24,
    ),
    titleTextStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: PAppColors.gray900,
    ),
  );

  /// Dark Theme AppBar
  static const AppBarTheme darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    backgroundColor: PAppColors.darkBackground,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: PAppColors.gray300,
      size: 24,
    ),
    actionsIconTheme: IconThemeData(
      color: PAppColors.gray100,
      size: 24,
    ),
    titleTextStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: PAppColors.gray100,
    ),
  );
}
