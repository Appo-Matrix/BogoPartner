import 'package:flutter/material.dart';

import '../../../../core/utils/constants/app_colors.dart';

class OrderStatsCard extends StatelessWidget {
  final String iconAsset;
  final String title;
  final String value;
  final String valueLabel;
  final String percentageText;
  final Color percentageColor;
  final IconData percentageIcon;

  const OrderStatsCard({
    super.key,
    required this.iconAsset,
    required this.title,
    required this.value,
    required this.valueLabel,
    required this.percentageText,
    this.percentageColor = Colors.green,
    this.percentageIcon = Icons.arrow_drop_up,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE7B85C),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
        child: Row(
          children: [
            Image.asset(iconAsset, height: 69, width: 69),
            const SizedBox(width: 12),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: PAppColors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      value,
                      style: const TextStyle(
                        color: PAppColors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      valueLabel,
                      style: const TextStyle(
                        color: PAppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(
                      percentageIcon,
                      color: percentageColor,
                      size: 20,
                    ),
                    Text(
                      percentageText,
                      style: TextStyle(
                        color: percentageColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
