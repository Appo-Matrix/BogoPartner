import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_styles.dart';

class PListTile extends StatelessWidget {
  final String image;
  final String title;
  final String date;
  final String actionIcon;

  const PListTile({
    super.key,
    required this.image,
    required this.title,
    required this.date,
    required this.actionIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),

        Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: PAppColors.backGroundColor,
              child: Image.asset(image, width: 45),
            ),
            const SizedBox(width: 15),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: PAppStyles.poppins(
                    color: PAppColors.white,
                    fontSize: 18,
                    weight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  date,
                  style: PAppStyles.poppins(
                    color: PAppColors.white,
                    fontSize: 16,
                    weight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Spacer(),

            Image.asset(actionIcon, height: 25, width: 25),
          ],
        ),
        const SizedBox(height: 15),

        Divider(height: 3, color: PAppColors.black800, indent: 0, endIndent: 0),
      ],
    );
  }
}
