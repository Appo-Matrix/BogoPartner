import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class AdultsCount extends StatelessWidget {
  final int leftCount;
  final VoidCallback onMinusLeft;
  final VoidCallback onPlusLeft;
  final String asset;
  final String title;
  final Color color;

  const AdultsCount({
    super.key,
    required this.leftCount,
    required this.onMinusLeft,
    required this.onPlusLeft,
    required this.asset,
    required this.title,
    required this.color,
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
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
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

  const CounterPill({
    super.key,
    required this.count,
    required this.onMinus,
    required this.onPlus,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
