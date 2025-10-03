import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partner_app/core/utils/common/widgets/app_buttons.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_strings.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: PSizes.md),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: PSizes.spaceBtwItems),
                  Center(
                    child: SizedBox(
                      height: PSizes.imageThumbSize,
                      width: PSizes.imageThumbSizeLg,
                      child: Center(child: Image.asset(PImages.logo)),
                    ),
                  ),
                  SizedBox(height: PSizes.spaceBtwItems),
                  Text(
                    AppStrings.letsYouIn,
                    style: PAppStyles.heading1.copyWith(
                      color: PAppColors.white,
                      fontSize: PSizes.fontSizeUL,
                      fontFamily: AppFontFamilies.inter,
                    ),
                  ),
                  SizedBox(height: PSizes.spaceBtwItems),
                  SizedBox(
                    height: PSizes.spaceBtwSectionsXLg,
                    child: Center(child: Image.asset(PImages.partner)),
                  ),
                  SizedBox(height: PSizes.spaceBtwSectionsSm),
                  AppButtons.simple(text: AppStrings.logIn, onTap: () {}),
                  AppButtons.simple(
                    text: AppStrings.signUp,
                    onTap: () => context.push('/signUpScreen'),
                    isOutlined: true,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
