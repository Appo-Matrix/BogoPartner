import 'package:flutter/material.dart';

import '../../../../core/utils/constants/app_colors.dart';

class PDateRangeCard extends StatelessWidget {
  final String startDate;
  final String endDate;
  final IconData centerIcon;
  final double radius;
  final Color borderColor;
  final Color containerColor;

  const PDateRangeCard({
    super.key,
    required this.startDate,
    required this.endDate,
    this.centerIcon = Icons.swap_horiz,
    this.radius = 35,
    this.borderColor = PAppColors.black900,
    this.containerColor = PAppColors.black1000,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 201,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: borderColor, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            startDate,
            style: const TextStyle(
              color: PAppColors.white,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),

          const SizedBox(width: 5),

          Icon(centerIcon, color: PAppColors.black700, size: 16),

          const SizedBox(width: 5),

          Text(
            endDate,
            style: const TextStyle(
              color: PAppColors.white,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
