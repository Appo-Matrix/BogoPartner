import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_styles.dart';

class BogoAiBadge extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback? onTap;

  const BogoAiBadge({
    super.key,
    this.title = "Shop",
    this.imagePath = PImages.shop,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Align(
      alignment: Alignment.bottomLeft,
      child: SafeArea(
        minimum: const EdgeInsets.all(16),
        child: GestureDetector(
          onTap: onTap,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                width: screenWidth * 0.23,
                height: screenWidth * 0.23,
                fit: BoxFit.contain,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    title,
                    style: PAppStyles.poppins(
                      color: PAppColors.white,
                      fontSize: screenWidth * 0.06,
                      weight: FontWeight.w800,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_rounded,
                    color: PAppColors.white,
                    size: screenWidth * 0.08,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
