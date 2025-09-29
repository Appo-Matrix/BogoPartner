import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_sizes.dart';
import '../../../../core/utils/constants/app_styles.dart';

class CustomTapBox extends StatelessWidget {
  final String text;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;
  final VoidCallback? onTap;

  const CustomTapBox({
    super.key,
    required this.text,
    this.height,
    this.width,
    this.backgroundColor,
    this.textColor,
    this.fontSize,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(35),
      onTap: onTap,
      child: Container(
        height: height ?? 92,
        width: width,
        decoration: BoxDecoration(
          color: backgroundColor ?? PAppColors.black900,
          borderRadius: BorderRadius.circular(35),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: PAppStyles.poppins(
            color: textColor ?? PAppColors.white,
            fontSize: fontSize ?? PSizes.fontSizeMd,
            weight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
