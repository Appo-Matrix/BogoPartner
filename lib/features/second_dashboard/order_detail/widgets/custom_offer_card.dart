import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_styles.dart';

class PCustomOfferCard extends StatelessWidget {
  final String mainImage;
  final String offerName;
  final String categoryName;
  final String price;
  final String userImage;
  final String userName;
  final String offerText;
  final Color tagColor;
  final String date;
  final String month;
  final String text;

  const PCustomOfferCard({
    super.key,
    required this.mainImage,
    required this.offerName,
    required this.categoryName,
    required this.price,
    required this.userImage,
    required this.userName,
    required this.offerText,
    required this.tagColor,
    required this.date,
    required this.month,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 178,
      width: double.infinity,
      decoration: BoxDecoration(
        color: PAppColors.black900,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Column(
        children: [
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 62,
                  width: 62,
                  decoration: BoxDecoration(
                    color: PAppColors.black800,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Center(child: Image.asset(mainImage)),
                ),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      offerName,
                      style: PAppStyles.poppins(
                        color: PAppColors.white,
                        fontSize: 12,
                        weight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      categoryName,
                      style: PAppStyles.poppins(
                        color: PAppColors.white,
                        fontSize: 12,
                        weight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      price,
                      style: PAppStyles.poppins(
                        color: PAppColors.dark,
                        fontSize: 25,
                        weight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            height: 92,
            width: double.infinity,
            decoration: BoxDecoration(
              color: PAppColors.black800,
              borderRadius: BorderRadius.circular(28),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 62,
                      width: 62,
                      decoration: BoxDecoration(
                        color: PAppColors.black1000,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Center(
                        child: Image.asset(userImage),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      style: PAppStyles.poppins(
                        color: PAppColors.white,
                        fontSize: 12,
                        weight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      offerText,
                      style: PAppStyles.poppins(
                        color: PAppColors.white,
                        fontSize: 12,
                        weight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    const SizedBox(height: 10),
                    Container(
                      height: 17,
                      width: 85,
                      decoration: BoxDecoration(
                        color: tagColor,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Center(
                        child: Text(
                          text,
                          style: PAppStyles.poppins(
                            color: PAppColors.white,
                            fontSize: 12,
                            weight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 92,
                  width: 103,
                  decoration: BoxDecoration(
                    color: PAppColors.black700,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(28),
                      bottomRight: Radius.circular(28),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        date,
                        style: PAppStyles.poppins(
                          color: PAppColors.white,
                          fontSize: 25,
                          weight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        month,
                        style: PAppStyles.poppins(
                          color: PAppColors.white,
                          fontSize: 18,
                          weight: FontWeight.w600,
                        ),
                      ),
                    ],
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
