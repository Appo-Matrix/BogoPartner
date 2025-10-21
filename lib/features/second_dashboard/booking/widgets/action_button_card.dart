import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class ActionButtonCard extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final VoidCallback? onTap;

  const ActionButtonCard({
    super.key,
    required this.text,
    required this.backgroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86,
      width: 120,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Center(
        child: InkWell(
          borderRadius: BorderRadius.circular(35),
          onTap: onTap,
          child: Text(
            text,
            style: PAppStyles.poppins(
              color: PAppColors.white,
              fontSize: 16,
              weight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
