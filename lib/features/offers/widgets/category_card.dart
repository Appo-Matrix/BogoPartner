import 'package:flutter/material.dart';

import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
class CategoryCard extends StatelessWidget {
  final String title;
  final String emojiOrImage;
  final Color bgColor;
  final bool value;
  final VoidCallback onTap;

  const CategoryCard({
    super.key,
    required this.title,
    required this.emojiOrImage,
    required this.bgColor,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: PSizes.cardRadiusXs),
        padding: EdgeInsets.symmetric(horizontal: PSizes.md),
        height: PSizes.spaceBtwSectionsSm,
        width: PSizes.size380,
        decoration: BoxDecoration(
          color: PAppColors.darkGray780,
          borderRadius: BorderRadius.circular(PSizes.mi6),
        ),
        child: Row(
          children: [
            Container(
              width: PSizes.textFieldHeight,
              height: PSizes.mi2,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(28),
              ),
              child: Center(child: Image.asset(emojiOrImage)),
            ),
            SizedBox(width: PSizes.md),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  color: PAppColors.white,
                  fontSize: PSizes.md,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              height: PSizes.mi11,
              width: PSizes.mi11,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(PSizes.md),
                color: value ? PAppColors.main : PAppColors.darkGray850,
              ),
              padding: const EdgeInsets.all(PSizes.xs),
              child: Icon(
                value ? Icons.check : Icons.circle,
                color: value ? PAppColors.white : PAppColors.black300,
                size: PSizes.fontSizeLg,
              ),
            ),
          ],
        ),
      ),
    );
  }
}