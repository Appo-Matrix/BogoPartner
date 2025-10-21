import 'package:flutter/material.dart';

import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_styles.dart';
import 'insights_widget.dart';

class AdCardWidget extends StatelessWidget {
  final String storeName;
  final String adTitle;
  final String dateRange;
  final String price;
  final String upperText1;
  final String lowerText1;
  final String upperText2;
  final String lowerText2;
  final String upperText3;
  final String lowerText3;
  final String upperText4;
  final String lowerText4;
  final String upperText5;
  final String lowerText5;
  final String timerText;
  final String statusText;
  final String imageAsset;

  const AdCardWidget({
    super.key,
    required this.storeName,
    required this.adTitle,
    required this.dateRange,
    required this.price,
    required this.upperText1,
    required this.lowerText1,
    required this.upperText2,
    required this.lowerText2,
    required this.upperText3,
    required this.lowerText3,
    required this.upperText4,
    required this.lowerText4,
    required this.timerText,
    required this.statusText,
    required this.imageAsset,
    required this.upperText5,
    required this.lowerText5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 202,
      width: double.infinity,
      decoration: BoxDecoration(
        color: PAppColors.black900,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 76,
                  width: 99,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(28),
                    child: Image.asset(
                      imageAsset,
                      height: 76,
                      width: 99,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(width: 12),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      storeName,
                      style: PAppStyles.poppins(
                        color: PAppColors.white,
                        fontSize: 22,
                        weight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      adTitle,
                      style: PAppStyles.poppins(
                        color: PAppColors.white,
                        fontSize: 12,
                        weight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      dateRange,
                      style: PAppStyles.poppins(
                        color: PAppColors.white,
                        fontSize: 10,
                        weight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),

                const Spacer(),

                Text(
                  price,
                  style: PAppStyles.poppins(
                    color: PAppColors.main,
                    fontSize: 13,
                    weight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),

          Row(
            children: [
              Container(
                height: 47,
                width: 120,
                decoration: BoxDecoration(color: PAppColors.black1000),
                child: Center(
                  child: InsightsWidget(
                    upperText: upperText1,
                    lowerText: lowerText1,
                  ),
                ),
              ),
              Container(
                height: 47,
                width: 259,
                decoration: BoxDecoration(color: PAppColors.black800),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InsightsWidget(
                      upperText: upperText2,
                      lowerText: lowerText2,
                    ),
                    InsightsWidget(
                      upperText: upperText3,
                      lowerText: lowerText3,
                    ),
                    InsightsWidget(
                      upperText: upperText4,
                      lowerText: lowerText4,
                    ),
                    InsightsWidget(
                      upperText: upperText5,
                      lowerText: lowerText5,
                    ),
                  ],
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Row(
              children: [
                Text(
                  timerText,
                  style: PAppStyles.poppins(
                    color: PAppColors.white,
                    fontSize: 17,
                    weight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                Container(
                  height: 29,
                  width: 96,
                  decoration: BoxDecoration(
                    color: PAppColors.main,
                    borderRadius: BorderRadius.circular(14.5),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    statusText,
                    style: PAppStyles.poppins(
                      color: PAppColors.white,
                      fontSize: 16,
                      weight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
