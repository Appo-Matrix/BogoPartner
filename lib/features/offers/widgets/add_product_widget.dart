import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_strings.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class AddProductWidget extends StatefulWidget {
  final String productImage;
  final String productTitle;
  final VoidCallback onTap;

  const AddProductWidget({
    super.key,
    required this.productImage,
    required this.productTitle,
    required this.onTap,
  });

  @override
  State<AddProductWidget> createState() => _AddProductWidgetState();
}

class _AddProductWidgetState extends State<AddProductWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: PSizes.lg),
      child: GestureDetector(
        onTap: () {
          setState(() {
            widget.onTap;
            isSelected = !isSelected;
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: PSizes.iconXLg,
                  width: PSizes.iconXLg,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(PSizes.borderRadiusLg),
                    image: DecorationImage(image: AssetImage(PImages.custer)),
                  ),
                ),
                SizedBox(width: PSizes.md),
                Text(
                  AppStrings.productName,
                  style: PAppStyles.heading1.copyWith(
                    color: PAppColors.white,
                    fontSize: PSizes.fontSizeMd,
                  ),
                ),
              ],
            ),
            Container(
              height: PSizes.iconMd,
              width: PSizes.iconMd,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(PSizes.sm),
                color: isSelected ? PAppColors.warning600 : PAppColors.white,
              ),
              child: Center(
                child: Transform.rotate(
                  angle: isSelected ? 4 : 0,
                  child: Icon(Icons.add, color: PAppColors.black1000, size: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
