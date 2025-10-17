import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // For Clipboard
import '../../../../core/utils/constants/app_colors.dart';

class PContactInfoCard extends StatelessWidget {
  final String leftImage;      // Left side asset image
  final String titleText;      // Top text
  final String valueText;      // Copyable text
  final String copyIcon;
  final Color bgColor; // Copy icon asset

  const PContactInfoCard({
    super.key,
    required this.leftImage,
    required this.titleText,
    required this.valueText,
    required this.copyIcon,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
      width: double.infinity,
      decoration: BoxDecoration(
        color: PAppColors.black900,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Container(
              height: 76,
              width: 78,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(28),
              ),
              child: Image.asset(leftImage),
            ),

            const SizedBox(width: 15),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  valueText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),

            const Spacer(),

            InkWell(
              onTap: () async {
                await Clipboard.setData(ClipboardData(text: valueText));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Copied to clipboard!'),
                    duration: Duration(seconds: 1),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              child: Image.asset(copyIcon, height: 30, width: 30),
            ),
          ],
        ),
      ),
    );
  }
}
