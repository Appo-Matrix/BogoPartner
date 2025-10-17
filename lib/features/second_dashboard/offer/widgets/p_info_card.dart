import 'package:flutter/material.dart';

import '../../../../core/utils/constants/app_colors.dart';

class PInfoCard extends StatelessWidget {
  final String topText;
  final String assetPath;
  final String title;
  final String value;
  final double dividerIndent;
  final double dividerEndIndent;
  final Color color;
  final VoidCallback onArrowTap;

  const PInfoCard({
    super.key,
    required this.topText,
    required this.assetPath,
    required this.title,
    required this.value,
    this.dividerIndent = 0,
    this.dividerEndIndent = 20,
    this.color = Colors.blueGrey,
    required this.onArrowTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 154,
      width: 117,
      decoration: BoxDecoration(
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// 🔹 Top Text
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  topText,
                  style: const TextStyle(
                    color: PAppColors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),

            /// 🔹 Asset Icon
            Image.asset(assetPath, height: 60, width: 60),

            /// 🔹 Title
            Text(
              title,
              style: const TextStyle(
                color: PAppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),

            /// 🔹 Divider
            Divider(
              height: 2,
              indent: dividerIndent,
              endIndent: dividerEndIndent,
              color: PAppColors.white,
            ),

            /// 🔹 Value
            Text(
              value,
              style: const TextStyle(
                color: PAppColors.white,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),

            /// 🔹 Arrow
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: onArrowTap,
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    color: PAppColors.white,
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
