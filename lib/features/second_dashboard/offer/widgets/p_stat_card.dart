import 'package:flutter/material.dart';

import '../../../../core/utils/constants/app_colors.dart';

class PStatCard extends StatelessWidget {
  final String assetPath;
  final String title;
  final String value;
  final double dividerIndent;
  final double dividerEndIndent;
  final double borderRadius;
  final Color color;
  final VoidCallback onArrowTap;

  const PStatCard({
    super.key,
    required this.assetPath,
    required this.title,
    required this.value,
    this.dividerIndent = 0,
    this.dividerEndIndent = 25,
    this.borderRadius = 35,
    required this.color,
    required this.onArrowTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(borderRadius)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),

            Image.asset(assetPath, height: 60, width: 60),

            Text(
              title,
              style: const TextStyle(
                color: PAppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),

            Divider(
              height: 2,
              indent: dividerIndent,
              endIndent: dividerEndIndent,
              color: PAppColors.white,
            ),

            Text(
              value,
              style: const TextStyle(
                color: PAppColors.white,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),

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
