import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class SelectCategoryCard extends StatelessWidget {
  final String asset;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const SelectCategoryCard({
    super.key,
    required this.asset,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 92,
            width: 92,
            decoration: BoxDecoration(
              color: PAppColors.black900,
              borderRadius: BorderRadius.circular(35),
            ),
            child: Center(
              child: Image.asset(
                asset,
                height: 64,
                width: 64,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        const SizedBox(height: PSizes.sm),

        // Label
        Text(
          label,
          style: PAppStyles.poppins(
            color: PAppColors.white,
            fontSize: PSizes.fontSizeSm,
            weight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: PSizes.xs),

        // Selection indicator
        Container(
          height: 22,
          width: 22,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: selected ? PAppColors.success : PAppColors.black700,
              width: 3,
            ),
          ),
          child: selected
              ? Center(
            child: Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: PAppColors.success,
              ),
            ),
          )
              : null,
        ),
      ],
    );
  }
}
