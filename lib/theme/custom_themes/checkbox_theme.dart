

import 'package:flutter/material.dart';

import '../../core/utils/constants/app_colors.dart';
import '../../core/utils/constants/app_sizes.dart';


class BCheckBoxTheme{
  BCheckBoxTheme._();



  /// Customizable Light Text Theme
  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(

    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(PSizes.xs)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return PAppColors.white;
      } else {
        return PAppColors.black900;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return PAppColors.primary;
      } else {
        return Colors.transparent;
      }
    }),
  );

  /// Customizable Dark Text Theme
  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return PAppColors.white;

      } else {
        return PAppColors.black900;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return PAppColors.primary;
      } else {
        return Colors.transparent;
      }
    }),
  );
}
