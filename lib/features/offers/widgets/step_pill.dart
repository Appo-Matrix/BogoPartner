import 'package:flutter/material.dart';

import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_styles.dart';
class StepPill extends StatelessWidget {
  final String label;
  final bool active;

  const StepPill({super.key, required this.label, required this.active});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: PSizes.mi1,
      height: PSizes.mi2,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: active ? PAppColors.primary : PAppColors.darkGray850,
        borderRadius: BorderRadius.circular(PSizes.mi3),
      ),
      child: Text(
        label,
        style: PAppStyles.poppins(
          color: active ? PAppColors.black : PAppColors.white,
          fontSize: PSizes.fontSizeSm ,
          weight: FontWeight.w600,
        ),
      ),
    );
  }
}