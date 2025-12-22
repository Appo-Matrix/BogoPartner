import 'package:flutter/material.dart';

import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
class DurationSelector extends StatelessWidget {
  const DurationSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: PSizes.size380,
      height: PSizes.mi4,
      decoration: BoxDecoration(
        color: PAppColors.darkGray850,
        borderRadius: BorderRadius.circular(PSizes.mi6),
      ),
      padding: const EdgeInsets.all(PSizes.cardRadiusSm),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: PSizes.mi2,
              decoration: BoxDecoration(
                color: PAppColors.darkGray760,
                borderRadius: BorderRadius.circular(PSizes.mi8),
              ),
              padding: const EdgeInsets.symmetric(horizontal: PSizes.mi5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Duration",
                    style: TextStyle(
                      color: PAppColors.black400,
                      fontSize: PSizes.md,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down, color: PAppColors.black400),
                ],
              ),
            ),
          ),
          const SizedBox(width: PSizes.mds),
          Expanded(
            child: Container(
              height: PSizes.mi2,
              decoration: BoxDecoration(
                color: PAppColors.darkGray770,
                borderRadius: BorderRadius.circular(PSizes.mi8),
              ),
              padding: const EdgeInsets.symmetric(horizontal: PSizes.mi5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Month",
                    style: TextStyle(
                      color: PAppColors.white,
                      fontSize: PSizes.md,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down, color: PAppColors.white),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}