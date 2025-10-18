import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_styles.dart';

class CustomHotelCard extends StatelessWidget {
  final String asset;
  final String title;
  final String subtitle;
  final String price;

  const CustomHotelCard({
    super.key,
    required this.asset,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
      width: 353,
      decoration: BoxDecoration(
        color: PAppColors.black800,
        borderRadius: BorderRadius.circular(33),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 74,
              width: 74,
              decoration: BoxDecoration(
                color: PAppColors.black1000,
                borderRadius: BorderRadius.circular(28),
              ),
              child: Center(
                child: Image.asset(asset),
              ),
            ),
            const SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: PAppStyles.poppins(
                    color: PAppColors.white,
                    fontSize: 20,
                    weight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  subtitle,
                  style: PAppStyles.poppins(
                    color: PAppColors.white,
                    fontSize: 15,
                    weight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  price,
                  style: PAppStyles.poppins(
                    color: PAppColors.main,
                    fontSize: 20,
                    weight: FontWeight.w900,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
