import 'package:flutter/material.dart';

import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_styles.dart';
class PText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const PText(
      this.text, {
        super.key,
        this.fontSize = PSizes.md,
        this.fontWeight = FontWeight.w400,
        this.color = PAppColors.white,
        this.textAlign = TextAlign.start,
        this.maxLines,
        this.overflow,
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: PAppStyles.poppins(
        color: color,
        fontSize: fontSize,
        weight: fontWeight,
        height: 1.3,
      ),
    );
  }
}