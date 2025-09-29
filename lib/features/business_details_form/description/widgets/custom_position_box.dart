import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_sizes.dart';
import '../../../../core/utils/constants/app_styles.dart';

class CustomPositionBox extends StatelessWidget {
  final String text;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;
  final double? containerHeight;
  final double? containerWidth;

  const CustomPositionBox({
    super.key,
    required this.text,
    this.height,
    this.width,
    this.backgroundColor,
    this.textColor,
    this.fontSize,
    this.containerHeight,
    this.containerWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight ?? 189,
      width: containerWidth ?? double.infinity,
      decoration: BoxDecoration(
        color: PAppColors.black900,
        borderRadius: BorderRadius.circular(35),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(color: PAppColors.black800),
          ),
          Positioned(
            left: PSizes.md,
            top: PSizes.buttonWidths, // 👈 constant rahega
            child: Container(
              height: height ?? 92,
              width: width ?? 180,
              decoration: BoxDecoration(
                color: backgroundColor ?? PAppColors.black1000,
                borderRadius: BorderRadius.circular(35),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x33000000),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  ),
                ],
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
          ),
        ],
      ),
    );
  }
}
