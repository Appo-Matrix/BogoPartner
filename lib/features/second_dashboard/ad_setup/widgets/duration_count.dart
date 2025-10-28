import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class DurationCount extends StatelessWidget {
  final int leftCount;
  final VoidCallback onMinusLeft;
  final VoidCallback onPlusLeft;
  final String asset;
  final String title;
  final String subTitle;
  final Color color;

  const DurationCount({
    super.key,
    required this.leftCount,
    required this.onMinusLeft,
    required this.onPlusLeft,
    required this.asset,
    required this.title,
    required this.color,
    required this.subTitle,
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
                decoration: BoxDecoration(
                  color: PAppColors.black900,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 76,
                        width: 76,
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(28),
                        ),
                        child: Center(child: Image.asset(asset)),
                      ),
                      const SizedBox(width: 15),

                      // Text custom
                      Text(
                        title,
                        style: PAppStyles.poppins(
                          color: PAppColors.white,
                          fontSize: 16,
                          weight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      CounterPill(
                        count: leftCount,
                        onMinus: onMinusLeft,
                        onPlus: onPlusLeft,
                        label: subTitle,
                      ),
                    ],
                  ),
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
  final String label;

  const CounterPill({
    super.key,
    required this.count,
    required this.onMinus,
    required this.onPlus,
    required  this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      width: 123,
      decoration: BoxDecoration(
        color: PAppColors.black800,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Row for arrows and count
          Row(
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
                child: const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
              ),
            ],
          ),

          const SizedBox(height: 4),

          // Text under number
          Text(
            label,
            style: PAppStyles.poppins(
              color: PAppColors.white.withOpacity(0.7),
              fontSize: 10,
              weight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
