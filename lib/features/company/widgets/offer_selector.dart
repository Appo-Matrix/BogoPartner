import 'package:flutter/material.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_styles.dart';

class OfferSelector extends StatelessWidget {
  final String title;
  final int value;
  final ValueChanged<int> onChanged;
  final double height;
  final Color backgroundColor;
  final double borderRadius;

  const OfferSelector({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
    this.height = PSizes.buttonHeight * 3.3, // ~60
    this.backgroundColor = PAppColors.darkSurface,
    this.borderRadius = PSizes.cardRadiusLg, // ~16
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: PSizes.sm),
      padding: const EdgeInsets.all(PSizes.xs),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// --- Left Side: Title Box ---
          Container(
            height: height,
            width: 180,
            decoration: BoxDecoration(
              color: PAppColors.black,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            alignment: Alignment.center,
            child: Text(
              title,
              style: PAppStyles.poppins(
                color: PAppColors.white,
                fontSize: PSizes.fontSizeSm,
                weight: FontWeight.w500,
              ),
            ),
          ),

          /// --- Right Side: Counter Box ---
          Container(
            height: height,
            width: 100,
            decoration: BoxDecoration(
              color: PAppColors.darkGray750,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                /// Up Button
                GestureDetector(
                  onTap: () => onChanged(value + 1),
                  child: const Icon(
                    Icons.keyboard_arrow_up,
                    color: PAppColors.white,
                    size: PSizes.iconMd,
                  ),
                ),

                /// Value
                Text(
                  value.toString().padLeft(2, '0'),
                  style: PAppStyles.poppins(
                    color: PAppColors.white,
                    fontSize: PSizes.fontSizeMd,
                    weight: FontWeight.bold,
                  ),
                ),

                /// Down Button
                GestureDetector(
                  onTap: () {
                    if (value > 0) onChanged(value - 1);
                  },
                  child: const Icon(
                    Icons.keyboard_arrow_down,
                    color: PAppColors.white,
                    size: PSizes.iconMd,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
