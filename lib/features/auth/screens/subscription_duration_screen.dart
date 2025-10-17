import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partner_app/core/utils/common/widgets/app_buttons.dart';
import 'package:partner_app/core/utils/common/widgets/custom_app_bar.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_strings.dart';
import 'package:partner_app/features/auth/widgets/image_text_list_tile.dart';
import '../../../core/utils/constants/app_assets.dart';
import '../../../core/utils/constants/app_sizes.dart';

class SubscriptionDurationScreen extends StatefulWidget {
  const SubscriptionDurationScreen({super.key});

  @override
  State<SubscriptionDurationScreen> createState() =>
      _SubscriptionDurationScreenState();
}

class _SubscriptionDurationScreenState
    extends State<SubscriptionDurationScreen> {
  String? selectedValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,
      appBar: AppBar(leading:Icon(Icons.arrow_back),),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: PSizes.sm),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: PSizes.spaceBtwItems),
                SizedBox(
                  height: PSizes.imageThumbSize,
                  child: Center(
                    child: Image.asset(PImages.appLogo, width: 250),
                  ),
                ),
                SizedBox(height: PSizes.spaceBtwSections),
                ImageTextListTile(
                  leadingImage: PImages.appLogo,
                  text: AppStrings.subsDu,
                  trailingImage: PImages.down,
                ),
                SizedBox(height: PSizes.spaceBtwSections),
                SizedBox(
                  width: PSizes.imageThumbSizeULg,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppButtons.radioSquare(
                          imageIcon: PImages.pizza,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                          text: AppStrings.restaurants,
                          selectedValue: selectedValue,
                        ),
                        AppButtons.radioSquare(
                          imageIcon: PImages.hotel2,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                          text: AppStrings.hotels,
                          selectedValue: selectedValue,
                        ),
                        AppButtons.radioSquare(
                          imageIcon: PImages.sports2,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                          text: AppStrings.sport,
                          selectedValue: selectedValue,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: PSizes.md),
                SizedBox(
                  width: 2 * PSizes.buttonWidth,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppButtons.radioSquare(
                          imageIcon: PImages.pizza,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                          text: AppStrings.entertainment,
                          selectedValue: selectedValue,
                        ),
                        AppButtons.radioSquare(
                          imageIcon: PImages.hotel2,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                          text: AppStrings.beauty,
                          selectedValue: selectedValue,
                        ),
                        AppButtons.radioSquare(
                          imageIcon: PImages.coupon,
                          onChanged: (value) {
                            setState(() {
                              selectedValue = value;
                            });
                          },
                          text: AppStrings.coupon,
                          selectedValue: selectedValue,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: PSizes.iconXLg),
                  child: AppButtons.simple(
                    text: AppStrings.cont,
                    borderRadius: PSizes.borderRadiusLg,
                    onTap: () {
                      context.push('/otpVerificationScreen');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
