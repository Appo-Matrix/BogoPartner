import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class OffersBlock extends StatelessWidget {
  final String leftLabel;
  final int leftCount;
  final VoidCallback onMinusLeft;
  final VoidCallback onPlusLeft;
  final String rightLabel;
  final int rightCount;
  final VoidCallback onMinusRight;
  final VoidCallback onPlusRight;

  const OffersBlock({
    super.key,
    required this.leftLabel,
    required this.leftCount,
    required this.onMinusLeft,
    required this.onPlusLeft,
    required this.rightLabel,
    required this.rightCount,
    required this.onMinusRight,
    required this.onPlusRight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Row 1
        Row(
          children: [
            Expanded(
              child: Container(
                height: 92,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: PAppColors.black900,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80,
                      width: 217,
                      decoration: BoxDecoration(
                        color: PAppColors.black1000,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            leftLabel,
                            style: PAppStyles.poppins(
                              color: PAppColors.white,
                              fontSize: PSizes.fontSizeMd,
                              weight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: PAppColors.white,
                            size: PSizes.iconLg,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: PSizes.md),
                    CounterPill(
                      count: leftCount,
                      onMinus: onMinusLeft,
                      onPlus: onPlusLeft,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: PSizes.md),

        // Row 2
        Row(
          children: [
            Expanded(
              child: Container(
                height: 92,
                decoration: BoxDecoration(
                  color: PAppColors.black900,
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 80,
                      width: 217,
                      decoration: BoxDecoration(
                        color: PAppColors.black1000,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            rightLabel,
                            style: PAppStyles.poppins(
                              color: PAppColors.white,
                              fontSize: PSizes.fontSizeMd,
                              weight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: PAppColors.white,
                            size: PSizes.iconLg,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: PSizes.md),
                    CounterPill(
                      count: rightCount,
                      onMinus: onMinusRight,
                      onPlus: onPlusRight,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CounterPill extends StatelessWidget {
  final int count;
  final VoidCallback onMinus;
  final VoidCallback onPlus;

  const CounterPill({
    super.key,
    required this.count,
    required this.onMinus,
    required this.onPlus,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 120,
      decoration: BoxDecoration(
        color: PAppColors.black800,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: onPlus,
            child: const Icon(Icons.keyboard_arrow_up, color: Colors.white),
          ),
          const SizedBox(width: PSizes.sm),
          Text(
            count.toString().padLeft(2, '0'),
            style: PAppStyles.poppins(
              color: PAppColors.white,
              fontSize: PSizes.fontSizeMd,
              weight: FontWeight.w600,
            ),
          ),
          const SizedBox(width: PSizes.sm),
          InkWell(
            onTap: onMinus,
            child: const Icon(Icons.keyboard_arrow_down, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
