import 'package:flutter/material.dart';

import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/p_text.dart';
class AppBarWidget extends StatelessWidget {
  final String title;

  const AppBarWidget({super.key, required this.title});


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BackButton(color: PAppColors.white),
        SizedBox(width: PSizes.md),
        PText(
          title, color: PAppColors.white,
          fontSize: PSizes.fontSizeLg,
          fontWeight: FontWeight.w500,

        ),
      ],
    );
  }
}