import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';
import 'package:partner_app/features/business_details_form/description/widgets/custom_position_box.dart';
import 'package:partner_app/features/business_details_form/description/widgets/custom_select_box.dart';
import 'package:partner_app/features/business_details_form/description/widgets/custom_tap_box.dart';
import 'package:partner_app/features/business_details_form/description/widgets/discripton_text_field.dart';
import 'package:partner_app/features/business_details_form/description/widgets/file_upload_box.dart';
import 'package:partner_app/features/business_details_form/description/widgets/offers_block.dart';

import '../../../core/utils/common/Primary_button.dart';

class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({super.key});

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  final TextEditingController _descController = TextEditingController();

  int buyOneCountTop = 2;
  int discountCountTop = 3;
  int buyOneCountBottom = 2;
  int discountCountBottom = 3;

  @override
  void dispose() {
    _descController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,

      // App Bar
      appBar: AppBar(
        backgroundColor: PAppColors.black1000,
        elevation: 0,
        leading: InkWell(
          onTap: () => Navigator.maybePop(context),
          child: Icon(
            Icons.arrow_back_outlined,
            size: PSizes.iconLg,
            color: PAppColors.white,
          ),
        ),
      ),

      // Body
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: PSizes.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: PSizes.md),

              // Description
              Text(
                'Description',
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: PSizes.fontSizeMd,
                  weight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: PSizes.sm),

              // TextField (100 words, border none)
              DescriptionTextField(
                controller: _descController,
                hintText: "Write a description of no more than 100 words",
                onTap: () {},
              ),

              const SizedBox(height: PSizes.spaceBtwSections),

              // Q1
              Text(
                'When can guests check in and check out?',
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: PSizes.fontSizeMd,
                  weight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: PSizes.md),
              Row(
                children: [
                  Expanded(
                    child: CustomSelectBox(
                      text: "Check-in",
                      height: 92,
                      color: PAppColors.black900,
                      textColor: PAppColors.white,
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(width: PSizes.md),
                  Expanded(
                    child: CustomSelectBox(
                      text: "Check-out",
                      height: 92,
                      color: PAppColors.black900,
                      textColor: PAppColors.white,
                      onTap: () {},
                    ),
                  ),
                ],
              ),

              const SizedBox(height: PSizes.spaceBtwSections),

              //  Q2
              Text(
                'When should the customer arrive at the hotel?',
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: PSizes.fontSizeMd,
                  weight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: PSizes.md),
              Row(
                children: [
                  Expanded(
                    child: CustomSelectBox(
                      text: "Check-in",
                      height: 92,
                      color: PAppColors.black900,
                      textColor: PAppColors.white,
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(width: PSizes.md),
                  Expanded(
                    child: CustomSelectBox(
                      text: "Check-out",
                      height: 92,
                      color: PAppColors.black900,
                      textColor: PAppColors.white,
                      onTap: () {},
                    ),
                  ),
                ],
              ),

              const SizedBox(height: PSizes.spaceBtwSections),

              // Map
              Text(
                'Locate your location on the map',
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: PSizes.fontSizeMd,
                  weight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: PSizes.md),
              CustomPositionBox(
                text: "Auto Position",
                height: 92,
                width: 180,
                backgroundColor: PAppColors.black1000,
                textColor: PAppColors.white,
                fontSize: PSizes.fontSizeMd,
                containerHeight: 189,
                containerWidth: double.infinity,
              ),

              const SizedBox(height: PSizes.md),
              Row(
                children: [
                  Expanded(
                    child: CustomTapBox(
                      text: "Latitude",
                      height: 92,
                      backgroundColor: PAppColors.black900,
                      textColor: PAppColors.white,
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(width: PSizes.md),
                  Expanded(
                    child: CustomTapBox(
                      text: "Longitude",
                      height: 92,
                      backgroundColor: PAppColors.black900,
                      textColor: PAppColors.white,
                      onTap: () {},
                    ),
                  ),
                ],
              ),

              const SizedBox(height: PSizes.spaceBtwSections),

              // Documents
              Text(
                'Documents',
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: PSizes.fontSizeMd,
                  weight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: PSizes.md),
              FileUploadBox(
                title: "Files uploading...",
                galleryTitle: "Gallery photo Product",
                galleryImage: PImages.file,
                onGalleryTap: () {},
                files: [
                  FileUploadItem(
                    name: "Commercial register",
                    icon: PImages.doc,
                    progress: 0.60,
                  ),
                  FileUploadItem(
                    name: "Logo jpeg",
                    icon: PImages.logo,
                    progress: 0.60,
                  ),
                  FileUploadItem(
                    name: "Logo ai",
                    icon: PImages.ai,
                    progress: 0.10,
                  ),
                ],
              ),

              const SizedBox(height: PSizes.spaceBtwSections),

              // Offers Section 1
              Text(
                'How many offers do you want to present to each customer?',
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: PSizes.fontSizeMd,
                  weight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: PSizes.xs),
              Text(
                'The more offers you want to present to a single customer, the increase in the number of your offers means an increase in opportunities to attract attention',
                style: PAppStyles.poppins(
                  color: PAppColors.black500,
                  fontSize: PSizes.fontSizeSm,
                  weight: FontWeight.w400,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: PSizes.md),

              OffersBlock(
                leftLabel: 'BUY ONE GET ONE',
                leftCount: buyOneCountTop,
                onMinusLeft: () => setState(() => buyOneCountTop--),
                onPlusLeft: () => setState(() => buyOneCountTop++),
                rightLabel: '25% DISCOUNT',
                rightCount: discountCountTop,
                onMinusRight: () => setState(() => discountCountTop--),
                onPlusRight: () => setState(() => discountCountTop++),
              ),

              const SizedBox(height: PSizes.spaceBtwSections),

              // Offers Section 2
              Text(
                'How many offers do you want to give to a customer after completing the loyalty program?',
                style: PAppStyles.poppins(
                  color: PAppColors.white,
                  fontSize: PSizes.fontSizeMd,
                  weight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: PSizes.md),
              OffersBlock(
                leftLabel: 'BUY ONE GET ONE',
                leftCount: buyOneCountTop,
                onMinusLeft: () => setState(() => buyOneCountTop--),
                onPlusLeft: () => setState(() => buyOneCountTop++),
                rightLabel: '25% DISCOUNT',
                rightCount: discountCountTop,
                onMinusRight: () => setState(() => discountCountTop--),
                onPlusRight: () => setState(() => discountCountTop++),
              ),

              const SizedBox(height: PSizes.spaceBtwSections),

              //  Continue Button
              PrimaryButton(
                text: "Continue",
                width: double.infinity,
                height: 92,
                onTap: () {
                  context.push("/secondDashboardScreen");
                },
              ),

              const SizedBox(height: PSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
