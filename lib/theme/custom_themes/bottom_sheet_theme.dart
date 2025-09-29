import 'package:flutter/material.dart';
import '../../core/utils/constants/app_colors.dart';

class BBottomSheetTheme {
  BBottomSheetTheme._();

  /// Light BottomSheet Theme
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: PAppColors.lightSurface, // lighter sheet surface
    modalBackgroundColor: PAppColors.lightBackground, // full modal bg
    dragHandleColor: PAppColors.gray500, // little darker for visibility
    elevation: 8,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
  );

  /// Dark BottomSheet Theme
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: PAppColors.darkSurface, // dark sheet surface
    modalBackgroundColor: PAppColors.darkBackground, // full modal bg
    dragHandleColor: PAppColors.gray400, // lighter handle for contrast
    elevation: 8,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
  );
}
