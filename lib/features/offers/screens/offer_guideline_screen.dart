import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/common/widgets/custom_app_bar.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_strings.dart';
import 'package:partner_app/features/offers/widgets/important_warning_widget.dart';
import 'package:partner_app/features/offers/widgets/text_in_points.dart';

class OfferGuidelineScreen extends StatelessWidget {
  const OfferGuidelineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,
      appBar: CustomAppBar(showBack: true, showInfo: true, onInfo: () {}),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PSizes.xl),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: PSizes.spaceBtwSections),
              TextInPoints(
                mainHeading: AppStrings.howPresentOffer,
                heading: AppStrings.uploadMenu,
                pointText1: AppStrings.uploadMenuDesc1,
                pointText2: AppStrings.uploadMenuDesc2,
              ),
              TextInPoints(
                heading: AppStrings.offers,
                pointText1: AppStrings.offersDesc1,
                pointText2: AppStrings.offersDesc2,
              ),
              TextInPoints(
                heading: AppStrings.mainOffers,
                pointText1: AppStrings.mainOffersDesc1,
                pointText2: AppStrings.mainOffersDesc2,
              ),
              TextInPoints(
                heading: AppStrings.selectingOffers,
                pointText1: AppStrings.selectingOffersDesc,
              ),
              TextInPoints(
                heading: AppStrings.invoices,
                pointText1: AppStrings.invoicesDesc,
              ),
              TextInPoints(
                heading: AppStrings.termsOffersUse,
                pointText1: AppStrings.termsOffersUseDesc1,
                pointText2: AppStrings.termsOffersUseDesc2,
              ),
              TextInPoints(
                heading: AppStrings.alcoholicBeverages,
                pointText1: AppStrings.alcoholicBeveragesDesc,
              ),
              TextInPoints(
                heading: AppStrings.offerUsage,
                pointText1: AppStrings.offerUsageDesc,
              ),
              TextInPoints(
                heading: AppStrings.exceptions,
                pointText1: AppStrings.exceptionsDesc1,
                pointText2: AppStrings.exceptionsDesc2,
              ),
              Container(
                width: PSizes.size360,
                height: PSizes.size240,
                decoration: BoxDecoration(
                  color: PAppColors.error400,
                  borderRadius: BorderRadius.circular(PSizes.borderRadiusLg),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: PSizes.lg,
                      vertical: PSizes.lg,
                    ),
                    child: ImportantWarningWidget(
                      description1: AppStrings.guideLineImpDesc1,
                      description2: AppStrings.guideLineImpDesc2,
                    ),
                  ),
                ),
              ),
              SizedBox(height: PSizes.spaceBtwSectionsLg),
            ],
          ),
        ),
      ),
    );
  }
}
