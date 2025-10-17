import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';

class OfferStatsCard extends StatelessWidget {
  final String offerName;
  final String categoryName;
  final String orderCount;
  final String orderLabel;
  final String percentageText;
  final double progressValue;
  final String topRightPercentText;
  final String assetImage;
  final IconData trendIcon;
  final Color trendColor;
  final Color progressColor;

  const OfferStatsCard({
    super.key,
    required this.offerName,
    required this.categoryName,
    required this.orderCount,
    required this.orderLabel,
    required this.percentageText,
    required this.progressValue,
    required this.topRightPercentText,
    required this.assetImage,
    this.trendIcon = Icons.arrow_drop_up,
    this.trendColor = Colors.green,
    this.progressColor = Colors.amber,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 178,
          width: 345,
          decoration: BoxDecoration(
            color: PAppColors.black900,
            borderRadius: BorderRadius.circular(35),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 92,
                      width: 92,
                      decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(28),
                        child: Image.asset(assetImage, fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      offerName,
                      style: const TextStyle(
                        color: PAppColors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      categoryName,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 25),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          orderCount,
                          style: const TextStyle(
                            color: PAppColors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          orderLabel,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Stack(
                      children: [
                        Container(
                          height: 35,
                          width: 150,
                          decoration: BoxDecoration(
                            color: PAppColors.black800,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 150 * progressValue,
                          decoration: BoxDecoration(
                            color: progressColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Icon(trendIcon, color: trendColor, size: 20),
                        Text(
                          percentageText,
                          style: TextStyle(
                            color: trendColor,
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
        ),
        Positioned(
          top: 20,
          right: -40,
          child: Container(
            height: 92,
            width: 92,
            decoration: BoxDecoration(
              color: PAppColors.black800,
              borderRadius: BorderRadius.circular(28),
            ),
            child: Center(
              child: Text(
                topRightPercentText,
                style: const TextStyle(
                  color: PAppColors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
