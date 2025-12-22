import 'package:flutter/material.dart';

import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_sizes.dart';

class DashboardStatCard extends StatelessWidget {
  final String imagePath; // Asset image (icon)
  final String bottomText; // Text below number
  final String numberText; // Main number on top-right
  final bool isSelected; // Selected state
  final VoidCallback onTap; // Tap callback

  const DashboardStatCard({
    super.key,
    required this.imagePath,
    required this.bottomText,
    required this.numberText,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor =
    isSelected ?  PAppColors.main :   PAppColors.darkGray750;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        height: 92,
        width: 100,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(imagePath, height: 40, width: 40),
                  const Spacer(),
                  Text(
                    numberText,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              SizedBox(height: PSizes.spaceBtwItems,),
              Text(
                bottomText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
