import 'package:flutter/material.dart';

import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_styles.dart';

class CustomDateRow extends StatelessWidget {
  final String leftAsset;
  final String leftText;
  final String dividerAsset;
  final String rightAsset;
  final String rightText;

  const CustomDateRow({
    super.key,
    required this.leftAsset,
    required this.leftText,
    required this.dividerAsset,
    required this.rightAsset,
    required this.rightText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      width: 384,
      decoration: const BoxDecoration(
        color: PAppColors.black800,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            // Left side
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: PAppColors.black700,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Center(
                child: Image.asset(
                  leftAsset,
                  height: 20,
                  width: 19,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              leftText,
              style: PAppStyles.poppins(
                color: PAppColors.white,
                fontSize: 16,
                weight: FontWeight.w400,
              ),
            ),

            const Spacer(),

            Image.asset(dividerAsset),

            const Spacer(),

            // Right side
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                color: PAppColors.black700,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Center(
                child: Image.asset(
                  rightAsset,
                  height: 20,
                  width: 19,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Text(
              rightText,
              style: PAppStyles.poppins(
                color: PAppColors.white,
                fontSize: 16,
                weight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
