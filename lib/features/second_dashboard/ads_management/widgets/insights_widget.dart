import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_styles.dart';

class InsightsWidget extends StatelessWidget {
  final String upperText;
  final String lowerText;

  const InsightsWidget({
    super.key,
    required this.upperText,
    required this.lowerText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          upperText,
          style: PAppStyles.poppins(
            color: PAppColors.white,
            fontSize: 12,
            weight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          lowerText,
          style: PAppStyles.poppins(
            color: PAppColors.white,
            fontSize: 12,
            weight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
