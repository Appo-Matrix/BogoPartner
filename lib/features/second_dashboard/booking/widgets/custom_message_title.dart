import 'package:flutter/material.dart';

import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_sizes.dart';
import '../../../../core/utils/constants/app_styles.dart';

class CustomMessageTile extends StatelessWidget {
  final String asset;
  final String title;
  final String subtitle;

  const CustomMessageTile({
    super.key,
    required this.asset,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: PAppColors.black1000,
              borderRadius: BorderRadius.circular(28),
            ),
            child: Center(
              child: Image.asset(asset),
            ),
          ),
          SizedBox(width: PSizes.md,),
          Container(
            height: 67,
            width: 250,
            decoration: BoxDecoration(
              color: PAppColors.black1000,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: PAppStyles.poppins(
                      color: PAppColors.white,
                      fontSize: 14,
                      weight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    subtitle,
                    style: PAppStyles.poppins(
                      color: PAppColors.white,
                      fontSize: 12,
                      weight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
