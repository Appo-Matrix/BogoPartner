import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partner_app/core/utils/common/widgets/custom_app_bar.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_strings.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';
import 'package:partner_app/features/offers/widgets/add_button_container.dart';
import 'package:partner_app/features/offers/widgets/offer_button.dart';
import 'package:partner_app/features/offers/widgets/product_info_widget.dart';

class TextInCapsule extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color color;
  final bool showDrawer;

  const TextInCapsule({
    super.key,
    required this.text,
    this.showDrawer = false,
    this.color = PAppColors.black800,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: PSizes.iconMd2,
        width: PSizes.buttonHeightLg,
        child: Center(
          child: GestureDetector(
            onTap: onTap,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (showDrawer)
                    SizedBox(
                      height: PSizes.iconSm,
                      width: PSizes.iconSm,
                      child: Center(
                        child: Image.asset(
                          PImages.drawer2,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  // SizedBox(width: PSizes.spaceBtwItems),
                  Container(
                    height: PSizes.iconMd2,
                    width: PSizes.buttonWidthSm,
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(
                        PSizes.borderRadiusSm,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        text,
                        style: PAppStyles.poppins(
                          color: PAppColors.white,
                          fontSize: PSizes.fontSizeEaSm,
                          weight: FontWeight.w500,
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
    );
    ;
  }
}
