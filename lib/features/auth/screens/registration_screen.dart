import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partner_app/core/utils/common/widgets/app_buttons.dart';
import 'package:partner_app/core/utils/common/widgets/custom_app_bar.dart';
import 'package:partner_app/core/utils/common/widgets/custom_text_field.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_strings.dart';

import '../../../core/utils/constants/app_sizes.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,
      appBar: CustomAppBar(showBack: true),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: PSizes.md),
        child: SingleChildScrollView(
          child: SafeArea(
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
                CustomTextField(
                  prefixIcon: PImages.user,
                  hintText: AppStrings.companyName,
                  controller: TextEditingController(),
                ),
                CustomTextField(
                  prefixIcon: PImages.name,
                  hintText: AppStrings.fullName,
                  controller: TextEditingController(),
                ),
                CustomTextField(
                  prefixIcon: PImages.email,
                  hintText: AppStrings.companyEmail,
                  controller: TextEditingController(),
                ),
                CustomTextField(
                  prefixIcon: PImages.call,
                  hintText: AppStrings.companyPhoneNo,
                  controller: TextEditingController(),
                ),
                CustomTextField(
                  prefixIcon: PImages.lock2,
                  hintText: AppStrings.password,
                  obscureText: true,
                  controller: TextEditingController(),
                ),
                SizedBox(height: PSizes.spaceBtwItems),
                AppButtons.simple(
                  text: AppStrings.cont,
                  borderRadius: 2 * PSizes.buttonRadius,
                  onTap: () {
                    context.push('/subscriptionDurationScreen');
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
