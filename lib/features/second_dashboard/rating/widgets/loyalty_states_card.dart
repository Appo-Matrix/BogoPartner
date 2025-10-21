import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_styles.dart';

class LoyaltyStatCard extends StatelessWidget {
  final String assetIcon;
  final String titleText;
  final String valueText;
  final String curveAsset;
  final Color color;

  const LoyaltyStatCard({
    super.key,
    required this.assetIcon,
    required this.titleText,
    required this.valueText,
    required this.curveAsset,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 185,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset(
              assetIcon,
              height: 72,
              width: 72,
              fit: BoxFit.contain,
            ),
          ),

          const SizedBox(width: 10),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                titleText,
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: 18,
                  weight: FontWeight.w500,
                ),
              ),

              const SizedBox(height: 5),

              Text(
                valueText,
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: 20,
                  weight: FontWeight.w700,
                ),
              ),

              const SizedBox(height: 5),

              // Curve Asset
              Image.asset(
                curveAsset,
                height: 11,
                width: 49,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
