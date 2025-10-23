import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/common/widgets/custom_app_bar.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_strings.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';
import 'package:partner_app/features/offers/widgets/important_warning_widget.dart';
import 'package:partner_app/features/offers/widgets/stack_button.dart';
import 'package:partner_app/features/offers/widgets/step_indicator_widget.dart';
import 'package:partner_app/features/offers/widgets/text_in_points.dart';

class AddOfferDetailScreen extends StatelessWidget {
  const AddOfferDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,
      appBar: CustomAppBar(showBack: true, leadingTitle: AppStrings.addOffer),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: PSizes.md),
                child: Column(
                  children: [
                    StepIndicatorWidget(
                      currentStep: AppStrings.one,
                      nextStep: AppStrings.two,
                      secondStepColor: PAppColors.light,
                    ),
                    Container(
                      height: PSizes.spaceBtwSectionsXLg,
                      width: PSizes.size380,
                      decoration: BoxDecoration(
                        color: PAppColors.black800,
                        borderRadius: BorderRadius.circular(
                          PSizes.borderRadiusLg,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: PSizes.iconXLg2,
                            width: PSizes.iconXLg2,
                            decoration: _boxDecoration(),
                            child: Center(
                              child: SizedBox(
                                height: PSizes.iconMd,
                                width: PSizes.iconMd,
                                child: Image.asset(PImages.gallery),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: PSizes.md,
                              vertical: PSizes.md,
                            ),
                            child: Container(
                              height: PSizes.spaceBtwSectionsSm,
                              decoration: _boxDecoration(),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: PSizes.md,
                                    vertical: PSizes.mds,
                                  ),
                                  child: Column(
                                    children: [
                                      TextInPoints(
                                        dotColor: PAppColors.warning600,
                                        pointText1:
                                            AppStrings.addOfferDetailDesc1,
                                        fontSize: PSizes.fontSizeXESm,
                                      ),
                                      TextInPoints(
                                        dotColor: PAppColors.warning600,
                                        pointText1:
                                            AppStrings.addOfferDetailDesc2,
                                        fontSize: PSizes.fontSizeXESm,
                                      ),
                                      TextInPoints(
                                        dotColor: PAppColors.warning600,
                                        pointText1:
                                            AppStrings.addOfferDetailDesc3,
                                        fontSize: PSizes.fontSizeXESm,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: PSizes.spaceBtwItems),
                    Container(
                      height: PSizes.spaceBtwSectionsSm,
                      width: PSizes.size380,
                      decoration: _outlinedBoxDecoration(),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: PSizes.iconLg2,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppStrings.addOfferDescA1,
                                style: _textStyle(),
                              ),
                              Text(
                                AppStrings.addOfferDescA2,
                                style: _textStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: PSizes.spaceBtwItems),
                    Container(
                      width: PSizes.size360,
                      height: PSizes.size150,
                      decoration: BoxDecoration(
                        color: PAppColors.error400,
                        borderRadius: BorderRadius.circular(
                          PSizes.borderRadiusLg,
                        ),
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: PSizes.lg,
                            vertical: PSizes.lg,
                          ),
                          child: ImportantWarningWidget(
                            description1: AppStrings.addOfferDetailImpDesc,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: PSizes.spaceBtwSectionsMd,)
                  ],
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: StackButton(imagePath: PImages.tick, onTap: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

BoxDecoration _boxDecoration() => BoxDecoration(
  color: PAppColors.black700,
  borderRadius: BorderRadius.circular(PSizes.borderRadiusXLg),
);

BoxDecoration _outlinedBoxDecoration() => BoxDecoration(
  color: PAppColors.black900,
  border: Border.all(color: PAppColors.black700, width: .5),
  borderRadius: BorderRadius.circular(PSizes.borderRadiusXLg),
);

TextStyle _textStyle() => PAppStyles.poppins(
  color: PAppColors.black600,
  fontSize: PSizes.fontSizeXESm,
  weight: FontWeight.w500,
).copyWith(height: PSizes.paragraphSpacingLgx);
