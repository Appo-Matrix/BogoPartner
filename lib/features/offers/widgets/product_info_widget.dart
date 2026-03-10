import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_strings.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';
import '../../../core/utils/common/widgets/notch_clippers.dart';

class ProductInfoWidget extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final Color containerColor;
  final bool showEdit;
  final VoidCallback? onEdit;

  const ProductInfoWidget({
    super.key,
    required this.title,
    required this.children,
    this.containerColor = PAppColors.black800,
    this.showEdit = false,
    this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: PSizes.md),
          child: Text(
            title,
            style: PAppStyles.heading1.copyWith(
              color: PAppColors.white,
              fontSize: PSizes.fontSizeLgx,
            ),
          ),
        ),
        SizedBox(height: PSizes.spaceBtwItems),
        ClipPath(
          clipper: ChatNotchedClipper(),
          child: Container(
            height: PSizes.buttonHeightLg,
            width: PSizes.size380,
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(PSizes.borderRadiusXLg),
                bottomRight: Radius.circular(PSizes.borderRadiusXLg),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: PSizes.md),
              child: Padding(
                padding: const EdgeInsets.only(top: PSizes.spaceBtwSectionsXSm),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 8,
                        childAspectRatio: 6,
                        children: children,
                      ),
                    ),
                    if (showEdit)
                      GestureDetector(
                        onTap: onEdit,
                        child: Container(
                          height: PSizes.iconMd,
                          width: PSizes.iconMd,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(PSizes.mds),
                            image: DecorationImage(
                              image: AssetImage(PImages.edit),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
