import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';

class PActionCard extends StatelessWidget {
  final String asset;
  final String text;
  final Color color;

  const PActionCard({super.key, required this.asset, required this.text, required this.color,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
      width: 186,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 81,
              width: 45,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(child: Image.asset(asset, height: 25, width: 25)),
            ),
            Text(
              text,
              style: TextStyle(
                color: PAppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 5),
          ],
        ),
      ),
    );
  }
}
