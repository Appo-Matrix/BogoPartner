import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class PriceContainer extends StatelessWidget {
  final double price;
  final VoidCallback onTap;

  const PriceContainer({super.key, required this.price, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: PSizes.iconXLg,
        width: PSizes.buttonWidthXSm,
        decoration: BoxDecoration(
          color: PAppColors.black700,
          borderRadius: BorderRadius.circular(PSizes.borderRadiusLg),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                price < 10 ? "0${price}0" : "${price}0",
                style: PAppStyles.poppins(
                  color: PAppColors.black400,
                  fontSize: PSizes.fontSizeMd,
                  weight: FontWeight.w500,
                ),
              ),
              SizedBox(width: PSizes.sm),
              Text(
                "DA",
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: PSizes.fontSizeMd,
                  weight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
