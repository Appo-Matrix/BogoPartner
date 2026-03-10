import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partner_app/core/utils/common/widgets/custom_app_bar.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_strings.dart';
import 'package:partner_app/features/offers/widgets/offer_button.dart';
import 'package:partner_app/features/offers/widgets/product_info_widget.dart';
import 'package:partner_app/features/offers/widgets/text_in_capsule.dart';

class EditOfferScreen extends StatelessWidget {
  const EditOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,
      appBar: CustomAppBar(
        showDrawer: true,
        onDrawer: () {},
        trailingWidget: GestureDetector(
          onTap: () => context.push('/offerRestrictionScreen'),
          child: Container(
            height: PSizes.imageThumbSizeXSm,
            width: PSizes.buttonWidths,
            decoration: BoxDecoration(
              color: PAppColors.black800,
              borderRadius: BorderRadius.circular(PSizes.borderRadiusLg),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(AppStrings.edit),
                  Container(
                    height: PSizes.iconMd,
                    width: PSizes.iconMd,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(PSizes.mds),
                      image: DecorationImage(image: AssetImage(PImages.edit)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: PSizes.lg),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: PSizes.spaceBtwItems),
                Center(
                  child: SizedBox(
                    width: PSizes.size380,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OfferButton(
                            imagePath: PImages.chef,
                            count: 20,
                            title: AppStrings.offer,
                            onTap: () =>
                                context.go('/offerMenuManagementScreen'),
                          ),
                          OfferButton(
                            imagePath: PImages.clipBoard,
                            count: 03,
                            title: AppStrings.category,
                            onTap: () => context.go('/addCategoryScreen'),
                          ),
                          OfferButton(
                            imagePath: PImages.setting,
                            isActive: true,
                            title: AppStrings.preparations,
                            onTap: () => context.go('/editOfferScreen'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: PSizes.spaceBtwSections),
                ProductInfoWidget(
                  title: AppStrings.buyOneGetOne,
                  containerColor: PAppColors.light,
                  children: [
                    TextInCapsule(
                      text: AppStrings.productName,
                      color: PAppColors.lighter,
                      onTap: () {},
                    ),
                    TextInCapsule(
                      text: AppStrings.productName,
                      color: PAppColors.lighter,
                      onTap: () {},
                    ),
                    TextInCapsule(
                      text: AppStrings.productName,
                      color: PAppColors.lighter,
                      onTap: () {},
                    ),
                    TextInCapsule(
                      text: AppStrings.productName,
                      color: PAppColors.lighter,
                      onTap: () {},
                    ),
                    TextInCapsule(
                      text: AppStrings.productName,
                      color: PAppColors.lighter,
                      onTap: () {},
                    ),
                    TextInCapsule(
                      text: AppStrings.productName,
                      color: PAppColors.lighter,
                      onTap: () {},
                    ),
                  ],
                ),
                SizedBox(height: PSizes.spaceBtwSections),
                ProductInfoWidget(
                  title: AppStrings.getOne,
                  containerColor: PAppColors.warning400,
                  children: [
                    TextInCapsule(
                      text: AppStrings.productName,
                      color: PAppColors.warning300,
                      onTap: () {},
                    ),
                    TextInCapsule(
                      text: AppStrings.productName,
                      color: PAppColors.warning300,
                      onTap: () {},
                    ),
                    TextInCapsule(
                      text: AppStrings.productName,
                      color: PAppColors.warning300,
                      onTap: () {},
                    ),
                    TextInCapsule(
                      text: AppStrings.productName,
                      color: PAppColors.warning300,
                      onTap: () {},
                    ),
                    TextInCapsule(
                      text: AppStrings.productName,
                      color: PAppColors.warning300,
                      onTap: () {},
                    ),
                    TextInCapsule(
                      text: AppStrings.productName,
                      color: PAppColors.warning300,
                      onTap: () {},
                    ),
                  ],
                ),
                SizedBox(height: PSizes.spaceBtwSections),
                ProductInfoWidget(
                  title: AppStrings.notIncluded,
                  containerColor: PAppColors.error500,
                  children: [
                    TextInCapsule(
                      text: AppStrings.productName,
                      color: PAppColors.error400,
                      onTap: () {},
                    ),
                    TextInCapsule(
                      text: AppStrings.productName,
                      color: PAppColors.error400,
                      onTap: () {},
                    ),
                    TextInCapsule(
                      text: AppStrings.productName,
                      color: PAppColors.error400,
                      onTap: () {},
                    ),
                    TextInCapsule(
                      text: AppStrings.productName,
                      color: PAppColors.error400,
                      onTap: () {},
                    ),
                    TextInCapsule(
                      text: AppStrings.productName,
                      color: PAppColors.error400,
                      onTap: () {},
                    ),
                    TextInCapsule(
                      text: AppStrings.productName,
                      color: PAppColors.error400,
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
