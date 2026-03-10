import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/common/widgets/app_buttons.dart';
import 'package:partner_app/core/utils/common/widgets/custom_app_bar.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_strings.dart';
import 'package:partner_app/features/offers/widgets/grid_view_count_2.dart';
import 'package:partner_app/features/offers/widgets/important_warning_widget.dart';
import 'package:partner_app/features/offers/widgets/text_in_capsule.dart';

import '../../../core/utils/constants/app_sizes.dart';

class OfferRestrictionScreen extends StatelessWidget {
  const OfferRestrictionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.medium,
      appBar: CustomAppBar(showBack: true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: PSizes.spaceBtwSections),
              SizedBox(
                height: PSizes.buttonHeightLg,
                width: PSizes.size380,
                child: Center(
                  child: GridViewCount2(
                    children: [
                      TextInCapsule(
                        text: AppStrings.productName,
                        showDrawer: true,
                        color: PAppColors.light,
                        onTap: () {},
                      ),
                      TextInCapsule(
                        text: AppStrings.productName,
                        showDrawer: true,
                        color: PAppColors.light,
                        onTap: () {},
                      ),
                      TextInCapsule(
                        text: AppStrings.productName,
                        showDrawer: true,
                        color: PAppColors.light,
                        onTap: () {},
                      ),
                      TextInCapsule(
                        text: AppStrings.productName,
                        showDrawer: true,
                        color: PAppColors.light,
                        onTap: () {},
                      ),
                      TextInCapsule(
                        text: AppStrings.productName,
                        showDrawer: true,
                        color: PAppColors.light,
                        onTap: () {},
                      ),
                      TextInCapsule(
                        text: AppStrings.productName,
                        showDrawer: true,
                        color: PAppColors.light,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: PSizes.imageCarouselHeight,
                width: double.infinity,
                color: PAppColors.warning400,
                child: Center(
                  child: SizedBox(
                    height: PSizes.buttonWidthXSm,
                    width: PSizes.size380,
                    child: Center(
                      child: GridViewCount2(
                        children: [
                          TextInCapsule(
                            text: AppStrings.productName,
                            showDrawer: true,
                            color: PAppColors.warning300,
                            onTap: () {},
                          ),
                          TextInCapsule(
                            text: AppStrings.productName,
                            showDrawer: true,
                            color: PAppColors.warning300,
                            onTap: () {},
                          ),
                          TextInCapsule(
                            text: AppStrings.productName,
                            showDrawer: true,
                            color: PAppColors.warning300,
                            onTap: () {},
                          ),
                          TextInCapsule(
                            text: AppStrings.productName,
                            showDrawer: true,
                            color: PAppColors.warning300,
                            onTap: () {},
                          ),
                          TextInCapsule(
                            text: AppStrings.productName,
                            showDrawer: true,
                            color: PAppColors.warning300,
                            onTap: () {},
                          ),
                          TextInCapsule(
                            text: AppStrings.productName,
                            showDrawer: true,
                            color: PAppColors.warning300,
                            onTap: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: PSizes.size480,
                width: double.infinity,
                color: PAppColors.orangeMixRed,
                child: Column(
                  children: [
                    SizedBox(height: PSizes.spaceBtwSectionsXSm),
                    Center(
                      child: SizedBox(
                        height: PSizes.buttonWidthXSm,
                        width: PSizes.size380,
                        child: Center(
                          child: GridViewCount2(
                            children: [
                              TextInCapsule(
                                text: AppStrings.productName,
                                showDrawer: true,
                                color: PAppColors.error300,
                                onTap: () {},
                              ),
                              TextInCapsule(
                                text: AppStrings.productName,
                                showDrawer: true,
                                color: PAppColors.error300,
                                onTap: () {},
                              ),
                              TextInCapsule(
                                text: AppStrings.productName,
                                showDrawer: true,
                                color: PAppColors.error300,
                                onTap: () {},
                              ),
                              TextInCapsule(
                                text: AppStrings.productName,
                                showDrawer: true,
                                color: PAppColors.error300,
                                onTap: () {},
                              ),
                              TextInCapsule(
                                text: AppStrings.productName,
                                showDrawer: true,
                                color: PAppColors.error300,
                                onTap: () {},
                              ),
                              TextInCapsule(
                                text: AppStrings.productName,
                                showDrawer: true,
                                color: PAppColors.error300,
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: PSizes.spaceBtwSections),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: PSizes.xl,
                      ),
                      child: ImportantWarningWidget(
                        description1: AppStrings.impWarnDesc,
                      ),
                    ),
                    SizedBox(height: PSizes.spaceBtwSections),
                    AppButtons.simple(
                      text: AppStrings.save,
                      borderRadius: PSizes.borderRadiusXLg,
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
