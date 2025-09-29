import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class RadioChoicePill extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;
  final double height;
  final double radius;

  const RadioChoicePill({
    super.key,
    required this.label,
    required this.selected,
    required this.onTap,
    this.height = 92,
    this.radius = 35,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(radius),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          height: height,
          decoration: BoxDecoration(
            color: PAppColors.black900,
            borderRadius: BorderRadius.circular(radius),
          ),
          padding: const EdgeInsets.symmetric(horizontal: PSizes.lg),
          child: Row(
            children: [
              // radio indicator
              Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: selected ? PAppColors.success : PAppColors.black600,
                    width: 2.5,
                  ),
                ),
                child: selected
                    ? Center(
                  child: Container(
                    height: 16,
                    width: 16,
                    decoration: BoxDecoration(
                      color: PAppColors.success,
                      shape: BoxShape.circle,
                    ),
                  ),
                )
                    : null,
              ),
              const SizedBox(width: PSizes.md),
              Expanded(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: PAppStyles.poppins(
                    color: PAppColors.white,
                    fontSize: PSizes.fontSizeMd,
                    weight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
