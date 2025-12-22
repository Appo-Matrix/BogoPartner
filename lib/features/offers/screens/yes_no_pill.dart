import 'package:flutter/material.dart';

import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
class YesNoPill extends StatelessWidget {
  final String label;
  final bool value;
  final VoidCallback onTap;

  const YesNoPill({
    super.key,
    required this.label,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(PSizes.mi6),
      onTap: onTap,
      child: Container(
        width: PSizes.mi13,
        height: PSizes.mi4,
        margin: const EdgeInsets.symmetric(horizontal: PSizes.sm),
        decoration: BoxDecoration(
          color: PAppColors.darkGray780,
          borderRadius: BorderRadius.circular(PSizes.mi6),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Radio Circle
            Container(
              width: PSizes.lg,
              height: PSizes.lg,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: value ? PAppColors.main : PAppColors.black500,
                  width: PSizes.mi12,
                ),
              ),
              child: value
                  ? Center(
                child: Container(
                  width: PSizes.iconXs,
                  height: PSizes.iconXs,
                  decoration: const BoxDecoration(
                    color: PAppColors.main,
                    shape: BoxShape.circle,
                  ),
                ),
              )
                  : null,
            ),
            const SizedBox(width: PSizes.mds),
            // Label
            Text(
              label,
              style: const TextStyle(
                color: PAppColors.white,
                fontSize: PSizes.spaceBtwItems,
                fontWeight: FontWeight.w500,
              ),
              softWrap: true,
              overflow: TextOverflow.visible,
            ),
          ],
        ),
      ),
    );
  }
}