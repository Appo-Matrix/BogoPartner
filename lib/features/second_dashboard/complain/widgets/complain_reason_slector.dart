import 'package:flutter/material.dart';

import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_sizes.dart';
import '../../../../core/utils/constants/app_styles.dart';

class ComplaintReasonSelector extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final IconData icon;
  final double height;
  final double borderRadius;

  const ComplaintReasonSelector({
    super.key,
    required this.title,
    this.onTap,
    this.icon = Icons.keyboard_arrow_down_rounded,
    this.height = 92,
    this.borderRadius = 35,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: PAppColors.black900,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      padding: const EdgeInsets.symmetric(horizontal: PSizes.lg),
      child: Row(
        children: [
          // Label Text
          Text(
            title,
            style: PAppStyles.poppins(
              color: PAppColors.white,
              fontSize: PSizes.fontSizeMd,
              weight: FontWeight.w500,
            ),
          ),

          const Spacer(),

          // Arrow / Action Icon
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: onTap,
            child: Icon(
              icon,
              color: PAppColors.white,
              size: PSizes.iconLg,
            ),
          ),
        ],
      ),
    );
  }
}
