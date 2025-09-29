import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class FormTile extends StatelessWidget {
  final String leadingAsset;
  final String label;
  final VoidCallback? onTap;

  const FormTile({
    super.key,
    required this.leadingAsset,
    required this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final radius = BorderRadius.circular(35);
    return Container(
      height: 92,
      width: double.infinity,
      decoration: BoxDecoration(
        color: PAppColors.black900,
        borderRadius: radius,
      ),
      padding: const EdgeInsets.symmetric(horizontal: PSizes.lg),
      child: Row(
        children: [
          // Leading asset icon inside rounded box
          Image.asset(
            leadingAsset,
            height: PSizes.iconMd,
            width: PSizes.iconMd,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: PSizes.md),

          // Label
          Expanded(
            child: Text(
              label,
              style: PAppStyles.poppins(
                color: PAppColors.white,
                fontSize: PSizes.fontSizeMd,
                weight: FontWeight.w500,
              ),
            ),
          ),

          // Trailing arrow with onTap
          InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: onTap,
            child: Icon(
              Icons.keyboard_arrow_down_rounded,
              color: PAppColors.white,
              size: PSizes.iconLg,
            ),
          ),
        ],
      ),
    );
  }
}