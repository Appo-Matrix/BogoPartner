import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_styles.dart';

class AdPromotionCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String priceText;
  final VoidCallback onTap;

  const AdPromotionCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.priceText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      decoration: BoxDecoration(
        color: PAppColors.black900,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Left-side Image
            Column(
              children: [
                const SizedBox(height: 8),
                Image.asset(
                  imagePath,
                  height: 100,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ],
            ),

            const SizedBox(width: 5),

            // Center Text Column
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: PAppStyles.poppins(
                    color: PAppColors.white,
                    fontSize: 14,
                    weight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  subtitle,
                  style: PAppStyles.poppins(
                    color: PAppColors.white,
                    fontSize: 16,
                    weight: FontWeight.w700,
                  ),
                ),
              ],
            ),

            const Spacer(),

            // Right-side Price + Arrow
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20, right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    priceText,
                    style: PAppStyles.poppins(
                      color: PAppColors.main,
                      fontSize: 13,
                      weight: FontWeight.w700,
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(8),
                    onTap: onTap,
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20,
                        color: PAppColors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
