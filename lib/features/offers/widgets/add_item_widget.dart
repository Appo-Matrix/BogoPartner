import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class AddItemWidget extends StatelessWidget {
  final String mainHeading;
  final VoidCallback onAdd;

  const AddItemWidget({
    super.key,
    required this.mainHeading,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: PSizes.md,
        vertical: PSizes.md,
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              mainHeading,
              style: PAppStyles.body.copyWith(
                color: PAppColors.white,
                fontSize: PSizes.fontSizeMd,
              ),
            ),
          ),
          SizedBox(height: PSizes.spaceBtwItems),
          Padding(
            padding: const EdgeInsets.only(left: PSizes.sm),
            child: Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: onAdd,
                child: Container(
                  height: PSizes.iconMd2,
                  width: PSizes.iconMd2,
                  decoration: BoxDecoration(
                    color: PAppColors.light,
                    borderRadius: BorderRadius.circular(PSizes.borderRadiusXSm),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.add,
                      color: PAppColors.black1000,
                      size: PSizes.iconSm,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
