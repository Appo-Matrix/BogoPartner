import 'package:flutter/material.dart';

import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_sizes.dart';

class PRoundedIconButton extends StatelessWidget {
  final String? assetPath;
  final IconData? icon;
  final VoidCallback onTap;
  final double size;
  final double iconSize;
  final Color backgroundColor;
  final Color iconColor;

  const PRoundedIconButton({
    super.key,
    this.assetPath,
    this.icon,
    required this.onTap,
    this.size = PSizes.iconLg,
    this.iconSize = PSizes.iconMd,
    this.backgroundColor = PAppColors.white,
    this.iconColor = PAppColors.black1000,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(PSizes.borderRadiusLg),
        boxShadow: [
          BoxShadow(
            color: PAppColors.black1000.withOpacity(0.1),
            blurRadius: PSizes.xs,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(PSizes.borderRadiusLg),
        splashColor: PAppColors.main.withOpacity(0.1),
        highlightColor: PAppColors.main.withOpacity(0.2),
        child: Center(
          child: assetPath != null
              ? Image.asset(
                  assetPath!,
                  height: iconSize,
                  width: iconSize,
                  color: iconColor,
                )
              : Icon(icon, size: iconSize, color: iconColor),
        ),
      ),
    );
  }
}
