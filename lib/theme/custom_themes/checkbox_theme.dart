import 'package:flutter/material.dart';
import '../../core/utils/constants/app_colors.dart';
import '../../core/utils/constants/app_sizes.dart';

class BCheckBoxTheme {
  BCheckBoxTheme._();

  /// Light Checkbox Theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(PSizes.xs),
    ),
    side: const BorderSide(color: PAppColors.gray400, width: 1.5),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.white;
      }
      return PAppColors.gray600;
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return PAppColors.primary500;
      }
      return Colors.transparent;
    }),
  );

  /// Dark Checkbox Theme
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(PSizes.xs),
    ),
    side: const BorderSide(color: PAppColors.gray500, width: 1.5),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.white;
      }
      return PAppColors.gray300;
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return PAppColors.primary400;
      }
      return Colors.transparent;
    }),
  );
}
