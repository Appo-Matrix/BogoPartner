import 'package:flutter/material.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_sizes.dart';
import '../../../../core/utils/constants/app_styles.dart';

class BogoMenuItem extends StatelessWidget {
  const BogoMenuItem({
    super.key,
    required this.iconAsset,
    required this.title,
    this.onTap,
    this.trailing,
  });

  final String iconAsset;
  final String title;
  final VoidCallback? onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            Image.asset(
              iconAsset,
              height: 22,
              width: 22,
              color: PAppColors.white,
            ),
            const SizedBox(width: 18),
            Expanded(
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: PSizes.fontSizeMd,
                  weight: FontWeight.w700,
                ),
              ),
            ),
            if (trailing != null) trailing!,
          ],
        ),
      ),
    );
  }
}
