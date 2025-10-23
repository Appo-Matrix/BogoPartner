import 'package:flutter/material.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_styles.dart';

class OfferButton extends StatelessWidget {
  final String imagePath;
  final int? count;
  final bool isActive;
  final String title;
  final VoidCallback onTap;

  const OfferButton({
    super.key,
    required this.imagePath,
    this.isActive = false,
    this.count,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: PSizes.buttonHeightMd,
        width: PSizes.buttonWidthXSm,
        decoration: BoxDecoration(
          color: isActive ? PAppColors.medium : PAppColors.black800,
          borderRadius: BorderRadius.circular(PSizes.borderRadiusLg),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: PSizes.xs),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: PSizes.xs),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox.square(
                    dimension: PSizes.imageThumbSizeSm,
                    child: Center(child: Image.asset(imagePath)),
                  ),
                  if (count != null)
                    Padding(
                      padding: const EdgeInsets.only(right: PSizes.sm),
                      child: Text(
                        count! < 10 ? "0$count" : "$count",
                        style: PAppStyles.heading1.copyWith(
                          color: PAppColors.white,
                          fontSize: PSizes.fontSizeLg,
                        ),
                      ),
                    ),
                ],
              ),
              SizedBox(height: PSizes.sm),
              Padding(
                padding: const EdgeInsets.only(left: PSizes.mds),
                child: Text(
                  title,
                  style: PAppStyles.heading2.copyWith(
                    color: PAppColors.white,
                    fontSize: PSizes.fontSizeMd,
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
