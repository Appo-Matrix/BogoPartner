import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class TargetWidget extends StatelessWidget {
  final VoidCallback onMinusLeft;
  final String asset;
  final String title;
  final String subTitle;
  final Color color;

  const TargetWidget({
    super.key,
    required this.onMinusLeft,
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
                        targetTap: onMinusLeft,
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
  final VoidCallback targetTap;
  final String label;

  const CounterPill({
    super.key,
    required this.targetTap,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78,
      width: 147,
      decoration: BoxDecoration(
        color: PAppColors.black800,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text under number
          Text(
            label,
            style: PAppStyles.poppins(
              color: PAppColors.white.withOpacity(0.7),
              fontSize: 14,
              weight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 4),

          InkWell(
            onTap: targetTap,
            child: const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
