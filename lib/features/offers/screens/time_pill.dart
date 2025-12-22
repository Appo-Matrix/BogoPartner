import 'package:flutter/material.dart';

import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
class TimePill extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const TimePill({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(PSizes.mi6),
      child: Container(
        width: PSizes.buttonWidthXSm,
        height: PSizes.mi4,
        margin: EdgeInsets.symmetric(horizontal: PSizes.cardRadiusXs),
        decoration: BoxDecoration(
          color: PAppColors.darkGray925,
          borderRadius: BorderRadius.circular(PSizes.mi6),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: PAppColors.white,
              fontSize: PSizes.md ,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}