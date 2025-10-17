import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_sizes.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final VoidCallback onTap;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onTap,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 92,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          elevation: PSizes.buttonElevation,
          backgroundColor: PAppColors.main,
          foregroundColor: PAppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(46),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: PSizes.fontSizeLg,
            fontWeight: FontWeight.w600,
            color: PAppColors.white,
          ),
        ),
      ),
    );
  }
}
