import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partner_app/core/utils/common/widgets/app_buttons.dart';
import 'package:partner_app/core/utils/common/widgets/custom_text_field.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_strings.dart';
import '../../../core/utils/constants/app_styles.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: PSizes.md),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height:PSizes.iconXLg),
                Center(
                  child: SizedBox(
                    height: PSizes.appBarHeight,
                    width: PSizes.imageThumbSizeMd,
                    child: Center(child: Image.asset(PImages.logo)),
                  ),
                ),
                SizedBox(height: PSizes.spaceBtwSections),
                Text(
                  AppStrings.createAccount,
                  textAlign: TextAlign.center,
                  style: PAppStyles.heading1.copyWith(
                    color: PAppColors.white,
                    fontSize: PSizes.fontSizeUL,
                    fontFamily: AppFontFamilies.inter,
                  ),
                ),
                SizedBox(height: PSizes.sm),
                CustomTextField(
                  hintText: AppStrings.email,
                  prefixIcon: PImages.email,
                  controller: TextEditingController(),
                ),
                CustomTextField(
                  hintText: AppStrings.password,
                  prefixIcon: PImages.lock,
                  controller: TextEditingController(),
                  obscureText: true,
                ),
                SizedBox(height: PSizes.sm),
                Row(
                  children: [
                    AppButtons.switchButton(onTap: () {}),
                    SizedBox(width: PSizes.sm),
                    Text(
                      AppStrings.rememberMe,
                      style: PAppStyles.body.copyWith(
                        color: PAppColors.white,
                        fontSize: PSizes.fontSizeSm,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: PSizes.spaceBtwSectionsSm),
                AppButtons.simple(text: AppStrings.logIn, onTap: () {}),
                SizedBox(height: PSizes.iconXLg),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.noAccount,
                      style: PAppStyles.body.copyWith(
                        fontSize: PSizes.fontSizeSm,
                        color: PAppColors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () => context.push('/registrationScreen'),
                      child: Text(
                        AppStrings.signUp,
                        style: PAppStyles.heading1.copyWith(
                          color: PAppColors.medium,
                          fontSize: PSizes.fontSizeSm,
                        ),
                      ),
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
