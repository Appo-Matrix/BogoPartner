import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';

class PSubscriptionCard extends StatelessWidget {
  final String titleText;
  final String timerText;
  final String subtitleText;
  final Color dividerColor;
  final double dividerIndent;
  final double dividerEndIndent;

  const PSubscriptionCard({
    super.key,
    required this.titleText,
    required this.timerText,
    required this.subtitleText,
    this.dividerColor = Colors.white,
    this.dividerIndent = 2,
    this.dividerEndIndent = 125,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 93,
      width: 222,
      decoration: BoxDecoration(
        color: PAppColors.warning300,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(21),
          bottomRight: Radius.circular(21),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title Text
            Text(
              titleText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),

            const SizedBox(height: 6),

            // Divider
            Divider(
              color: dividerColor,
              height: 2,
              indent: dividerIndent,
              endIndent: dividerEndIndent,
            ),

            const SizedBox(height: 6),

            // Timer Text
            Text(
              timerText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w900,
              ),
            ),

            // Subtitle Text
            Text(
              subtitleText,
              style: const TextStyle(
                color: Colors.indigo,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
