import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class InfoStatTile extends StatelessWidget {
  final String title;
  final String numberText;
  final String assetPath;
  final Color assetBackgroundColor;

  const InfoStatTile({
    super.key,
    required this.title,
    required this.numberText,
    required this.assetPath,
    required this.assetBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Image container with background color
        Container(
          height: 46,
          width: 46,
          decoration: BoxDecoration(
            color: assetBackgroundColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Center(
            child: Image.asset(
              assetPath,
              height: 35,
              width: 35,
              fit: BoxFit.contain,
            ),
          ),
        ),
        const SizedBox(width: 12),

        // Text + number column
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: PAppStyles.poppins(
                color: PAppColors.white,
                fontSize: 16,
                weight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              numberText,
              style: PAppStyles.poppins(
                color: PAppColors.white,
                fontSize: 16,
                weight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
