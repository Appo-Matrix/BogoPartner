import 'package:flutter/material.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_styles.dart';

class DisplayBox extends StatelessWidget {
  final String text;
  final double borderRadius;
  final double verticalPadding;
  final double horizontalPadding;
  final Color textColor;
  final Color fillColor;
  final TextAlign textAlign;

  const DisplayBox({
    super.key,
    required this.text,
    this.borderRadius = PSizes.inputFieldRadius,
    this.verticalPadding = PSizes.md,
    this.horizontalPadding = PSizes.lg,
    this.textColor = PAppColors.white,
    this.fillColor = PAppColors.darkSurface,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: PAppColors.darkGray750,
          width: 1.2,
        ),
      ),
      child: Text(
        text,
        style: PAppStyles.poppins(
          color: textColor,
          fontSize: PSizes.fontSizeSm,
          weight: FontWeight.w600,
        ),
        textAlign: textAlign,
      ),
    );
  }
}
