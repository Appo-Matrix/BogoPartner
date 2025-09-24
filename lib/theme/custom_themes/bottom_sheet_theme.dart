import 'package:flutter/material.dart';

import '../../core/utils/constants/app_colors.dart';


class BBottomSheetTheme {
  BBottomSheetTheme._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: PAppColors.lightGray100, // Light background color
    modalBackgroundColor: PAppColors.lightGray100, // Light modal background
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: PAppColors.lightGray900, // Dark background color
    modalBackgroundColor: PAppColors.lightGray900, // Dark modal background
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
  );
}