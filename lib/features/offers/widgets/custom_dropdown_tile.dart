import 'package:flutter/material.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_styles.dart';

class CustomDropdownTile extends StatelessWidget {
  final String label;
  final String iconPath;
  final VoidCallback? onTap;
  final double width;
  final double height;

  const CustomDropdownTile({
    super.key,
    required this.label,
    required this.iconPath,
    this.onTap,
    this.width = double.infinity,
    this.height = PSizes.mi4,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: PSizes.mi5),
        decoration: BoxDecoration(
          color: PAppColors.darkGray850,
          borderRadius: BorderRadius.circular(PSizes.mi6),
        ),
        child: Row(
          children: [
            // ICON BOX
            Container(
              width: PSizes.buttonHeight,
              height: PSizes.buttonHeight,
              decoration: BoxDecoration(
                color: PAppColors.black800,
                borderRadius: BorderRadius.circular(PSizes.md),
              ),
              child:

                SizedBox(
                    height:97,
                    width:118,
                    child: Image.asset(iconPath, fit: BoxFit.contain)),

            ),

             SizedBox(width: PSizes.md),

            // LABEL (with flexible wrapping)
            Expanded(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: PSizes.md,
                  weight: FontWeight.w500,
                ),
              ),
            ),

            // ICON ARROW
             Icon(
              Icons.keyboard_arrow_down_rounded,
              color: PAppColors.white,
              size: PSizes.mi3,
            ),
          ],
        ),
      ),
    );
  }
}
