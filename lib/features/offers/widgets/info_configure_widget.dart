import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class InfoConfigureWidget extends StatelessWidget {
  final String imagePath;
  final Color imageBackColor;
  final String title;
  final Widget? child;
  final bool showDropdown;
  final VoidCallback? onDropdown;

  const InfoConfigureWidget({
    required this.imagePath,
    this.imageBackColor = PAppColors.black900,
    required this.title,
    this.child,
    this.showDropdown = false,
    this.onDropdown,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: PSizes.md),
      child: Container(
        height: PSizes.buttonHeightMd,
        decoration: BoxDecoration(
          color: PAppColors.black800,
          borderRadius: BorderRadius.circular(PSizes.borderRadiusXLg),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: PSizes.md),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: PSizes.iconXLg,
                      width: PSizes.iconXLg,
                      decoration: BoxDecoration(
                        color: imageBackColor,
                        borderRadius: BorderRadius.circular(
                          PSizes.borderRadiusLg,
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(PSizes.xs),
                          child: Image.asset(imagePath),
                        ),
                      ),
                    ),
                    SizedBox(width: PSizes.sm),
                    Text(
                      title,
                      style: PAppStyles.poppins(
                        color: PAppColors.white,
                        fontSize: PSizes.fontSizeMd,
                        weight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                if (child != null) child!,
                if (showDropdown)
                  GestureDetector(
                    onTap: onDropdown,
                    child: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: PAppColors.white,
                      size: PSizes.iconLg2,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
