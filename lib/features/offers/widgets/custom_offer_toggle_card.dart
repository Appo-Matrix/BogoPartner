import 'package:flutter/material.dart';

import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
class CustomOfferToggleCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String iconAsset;
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color backgroundColor;
  final Color colors;

  const CustomOfferToggleCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.iconAsset,
    required this.value,
    required this.onChanged,
    required this.backgroundColor,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: PSizes.size380,
      height: PSizes.mi4,
      margin: EdgeInsets.symmetric(vertical: PSizes.sm),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(PSizes.mi6),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: PSizes.md),
        child: Row(
          children: [
            // Icon Box
            Container(
              width: PSizes.mi2,
              height: PSizes.mi2,
              decoration: BoxDecoration(
                color: colors,
                borderRadius: BorderRadius.circular(PSizes.mi5),
              ),
              child: Center(
                child: Image.asset(iconAsset, width: PSizes.mi11, height: PSizes.mi11),
              ),
            ),
            SizedBox(width: PSizes.md),

            // Texts
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: PSizes.mds,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: PSizes.xs),
                  Text(
                    title,
                    style: TextStyle(
                      color: PAppColors.white,
                      fontSize: PSizes.md,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            // Toggle Switch
            Switch(
              value: value,
              onChanged: onChanged,
              activeColor: PAppColors.main,
              inactiveThumbColor: PAppColors.white,
              inactiveTrackColor: PAppColors.darkGray925,
            ),
          ],
        ),
      ),
    );
  }
}