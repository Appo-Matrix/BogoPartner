import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_sizes.dart';
import '../../../../core/utils/constants/app_styles.dart';

class CustomSelectBox extends StatelessWidget {
  final String text;
  final double? height;
  final double? width;
  final Color? color;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final VoidCallback? onTap;

  const CustomSelectBox({
    super.key,
    required this.text,
    this.height,
    this.width,
    this.color,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 92,
      width: width,
      decoration: BoxDecoration(
        color: color ?? PAppColors.black900,
        borderRadius: BorderRadius.circular(35),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: PSizes.lg,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: PAppStyles.poppins(
              color: textColor ?? PAppColors.white,
              fontSize: fontSize ?? PSizes.fontSizeMd,
              weight: fontWeight ?? FontWeight.w500,
            ),
          ),
          InkWell(
            onTap: onTap,
            child: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: textColor ?? PAppColors.white,
              size: PSizes.iconLg,
            ),
          ),
        ],
      ),
    );
  }
}
