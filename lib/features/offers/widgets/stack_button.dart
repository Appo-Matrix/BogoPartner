import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';

class StackButton extends StatelessWidget {
  final String imagePath;
  final VoidCallback onTap;

  const StackButton({super.key, required this.imagePath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: PSizes.iconXLg2,
        width: PSizes.iconXLg2,
        decoration: _greenBoxDecoration(),
        child: Center(
          child: SizedBox.square(
            dimension: PSizes.iconMd,
            child: Center(
              child: Image.asset(imagePath, color: PAppColors.white),
            ),
          ),
        ),
      ),
    );
  }
}

BoxDecoration _greenBoxDecoration() => BoxDecoration(
  color: PAppColors.light,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(PSizes.borderRadiusXLg),
  ),
);
