import 'package:flutter/material.dart';

import '../../../core/utils/common/widgets/notch_clippers.dart';
import '../../../core/utils/constants/app_assets.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_strings.dart';
import '../../../core/utils/constants/app_styles.dart';

class ProductWidget extends StatelessWidget {
  final String productImage;
  final String productTitle;
  final VoidCallback onEdit;
  final bool showBuyOne;
  final VoidCallback? onBuyOne;
  final bool showGetOne;
  final VoidCallback? onGetOne;
  final bool showNotIncluded;
  final VoidCallback? onNotIncluded;
  final String size;
  final VoidCallback onSize;
  final VoidCallback onSupplements;
  final int price;
  final String availableProducts;

  const ProductWidget({
    super.key,
    required this.productImage,
    required this.productTitle,
    required this.onEdit,
    this.showBuyOne = false,
    this.onBuyOne,
    this.showGetOne = false,
    this.onGetOne,
    this.showNotIncluded = false,
    this.onNotIncluded,
    required this.size,
    required this.onSize,
    required this.onSupplements,
    required this.price,
    required this.availableProducts,
  }) : assert(
         !(showBuyOne && onBuyOne == null),
         'onBuyOne should not be null when showBuyOne == true',
       ),
       assert(
         !(!showBuyOne && onBuyOne != null),
         'you can\'t use onBuyOne when showBuyOne == false',
       ),
       assert(
         !(!showGetOne && onGetOne != null),
         'you can\'t use onGetOne when showGetOne == false',
       ),
       assert(
         !(showGetOne && onGetOne == null),
         'onGetOne should not be null when showGetOne == true',
       ),
       assert(
         !(showNotIncluded && onNotIncluded == null),
         'onNotIncluded should not be null when showNotIncluded == true',
       ),
       assert(
         !(!showNotIncluded && onNotIncluded != null),
         'you can\'t use onNotIncluded when showNotIncluded == false',
       );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: PSizes.mds),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: PSizes.iconXLg,
                width: PSizes.iconXLg,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(PSizes.borderRadiusLg),
                  image: DecorationImage(image: AssetImage(productImage)),
                ),
              ),
              GestureDetector(
                onTap: onEdit,
                child: Container(
                  height: PSizes.iconMd,
                  width: PSizes.iconMd,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(PSizes.mds),
                    image: DecorationImage(image: AssetImage(PImages.edit)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: PSizes.xs),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                productTitle,
                style: PAppStyles.heading1.copyWith(
                  color: PAppColors.white,
                  fontSize: PSizes.fontSizeMd,
                ),
              ),
              Row(
                children: [
                  if (showBuyOne)
                    _button(
                      AppStrings.buyOne,
                      PSizes.buttonWidths,
                      onBuyOne!,
                      PAppColors.medium,
                    ),
                  if (showBuyOne && showGetOne) SizedBox(width: PSizes.sm),
                  if (showGetOne)
                    _button(
                      AppStrings.getOne,
                      PSizes.buttonWidths,
                      onGetOne!,
                      PAppColors.warning400,
                    ),
                  if (showNotIncluded)
                    _button(
                      AppStrings.notIncluded,
                      PSizes.imageThumbSizeMd,
                      onNotIncluded!,
                      PAppColors.error500,
                    ),
                ],
              ),
            ],
          ),
          ClipPath(
            clipper: ChatNotchedClipper(),
            child: Container(
              height: PSizes.buttonHeightLg,
              width: PSizes.size380,
              decoration: BoxDecoration(
                color: PAppColors.black800.withOpacity(0.65),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(PSizes.borderRadiusXLg),
                  bottomRight: Radius.circular(PSizes.borderRadiusXLg),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: PSizes.md),
                child: Column(
                  children: [
                    SizedBox(height: PSizes.spaceBtwSectionsXSm),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: onSize,
                              child: Container(
                                height: PSizes.iconMd2,
                                width: PSizes.iconXLg2,
                                decoration: BoxDecoration(
                                  color: PAppColors.black800,
                                  borderRadius: BorderRadius.circular(
                                    PSizes.borderRadiusSm,
                                  ),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(width: PSizes.xs),
                                      Text(
                                        "Size",
                                        style: PAppStyles.poppins(
                                          color: PAppColors.white,
                                          fontSize: PSizes.fontSizeMd,
                                          weight: FontWeight.w500,
                                        ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        color: PAppColors.white,
                                        size: PSizes.lg,
                                      ),
                                      Text(
                                        size,
                                        style: PAppStyles.heading1.copyWith(
                                          color: PAppColors.warning300,
                                          fontSize: PSizes.fontSizeMd,
                                        ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_up_rounded,
                                        color: PAppColors.white,
                                        size: PSizes.lg,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: PSizes.xs,),
                            GestureDetector(
                              onTap: onSupplements,
                              child: Center(
                                child: Container(
                                  height: PSizes.iconMd2,
                                  width: PSizes.buttonWidthXSm,
                                  decoration: BoxDecoration(
                                    color: PAppColors.black800,
                                    borderRadius: BorderRadius.circular(
                                      PSizes.borderRadiusSm,
                                    ),
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "Supplements",
                                          style: PAppStyles.poppins(
                                            color: PAppColors.white,
                                            fontSize: PSizes.fontSizeEaSm,
                                            weight: FontWeight.w500,
                                          ),
                                        ),
                                        SizedBox.square(
                                          dimension: PSizes.iconSm,
                                          child: Center(
                                            child: Image.asset(PImages.plus),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "$price DA",
                          style: PAppStyles.heading2.copyWith(
                            color: PAppColors.main,
                            fontSize: PSizes.fontSizeMd,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: PSizes.sm),
                    Text(
                      availableProducts,
                      style: PAppStyles.body.copyWith(
                        color: PAppColors.white,
                        fontSize: PSizes.fontSizeMd,
                        height: PSizes.paragraphSpacing,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _button(String title, double width, VoidCallback onTap, Color color) =>
    Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: PSizes.imageThumbSizeXSm,
          width: width,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(PSizes.borderRadiusMd),
          ),
          child: Center(
            child: Text(
              title,
              style: PAppStyles.heading1.copyWith(
                color: PAppColors.white,
                fontSize: PSizes.fontSizeEaSm,
              ),
            ),
          ),
        ),
      ),
    );
