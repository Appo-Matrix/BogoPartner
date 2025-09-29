import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partner_app/core/utils/common/widgets/app_buttons.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_strings.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

import '../../../core/utils/constants/app_sizes.dart';

class OtpVerificationDoneScreen extends StatelessWidget {
  const OtpVerificationDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: PSizes.md),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 3 * PSizes.spaceBtwSections),
                Text(
                  AppStrings.register,
                  style: PAppStyles.heading1.copyWith(
                    color: PAppColors.white,
                    fontSize: 2 * PSizes.fontSizeLgx,
                    fontFamily: AppFontFamilies.inter,
                  ),
                ),
                SizedBox(height: PSizes.sm),
                Text(
                  AppStrings.complete,
                  style: PAppStyles.heading1.copyWith(
                    color: PAppColors.white,
                    fontSize: 3 * PSizes.fontSizeESm,
                    fontFamily: AppFontFamilies.inter,
                  ),
                ),
                SizedBox(height: PSizes.md),
                Padding(
                  padding: const EdgeInsets.only(right: PSizes.buttonHeightLg),
                  child: Text(
                    AppStrings.verificationSuccessful,
                    style: PAppStyles.body.copyWith(
                      color: PAppColors.white,
                      fontSize: PSizes.fontSizeMd,
                    ),
                  ),
                ),
                SizedBox(height: 2 * PSizes.spaceBtwSections),
                Center(
                  child: SizedBox(
                    height: PSizes.buttonWidth,
                    width: PSizes.buttonWidth,
                    child: Center(child: Image.asset(PImages.verifiedIcon)),
                  ),
                ),
                SizedBox(height: 3 * PSizes.spaceBtwSections),
                Center(
                  child: AppButtons.simple(
                    text: AppStrings.cont,
                    borderRadius: 2 * PSizes.buttonRadius,
                    onTap: () {
                      context.push('/welcomeScreen');
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
