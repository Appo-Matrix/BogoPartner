import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partner_app/core/utils/common/widgets/app_buttons.dart';
import 'package:partner_app/core/utils/common/widgets/custom_app_bar.dart';
import 'package:partner_app/core/utils/common/widgets/otp_input_field.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_strings.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

import '../../../core/utils/constants/app_assets.dart';
import '../../../core/utils/constants/app_sizes.dart';

class OtpVerificationScreen extends StatelessWidget {
  const OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,
      appBar: CustomAppBar(showBack: true),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: PSizes.md),
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
                SizedBox(height: 2 * PSizes.spaceBtwItems),
                Text(
                  AppStrings.otpCodeVerification,
                  style: PAppStyles.heading1.copyWith(
                    color: PAppColors.white,
                    fontSize: 2 * PSizes.fontSizeLg,
                  ),
                ),
                SizedBox(height: PSizes.xs),
                Center(
                  child: SizedBox(
                    width: 360,
                    child: Text(
                      AppStrings.otpDesc,
                      style: PAppStyles.body.copyWith(
                        color: PAppColors.white,
                        fontSize: PSizes.fontSizeLg,
                        height: 1.2,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: PSizes.xl),
                OtpInputField(controller: TextEditingController()),
                SizedBox(height: PSizes.buttonWidth),
                AppButtons.simple(
                  text: AppStrings.cont,
                  borderRadius: 2 * PSizes.buttonRadius,
                  onTap: () {
                    context.push('/otpVerificationDoneScreen');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
