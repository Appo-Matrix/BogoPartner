import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partner_app/core/utils/common/widgets/app_buttons.dart';
import 'package:partner_app/core/utils/common/widgets/custom_text_field.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_strings.dart';
import '../../../core/utils/constants/app_sizes.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: PAppColors.black1000,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: PSizes.md,
            vertical: PSizes.sm,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back Button
              IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(Icons.arrow_back, color: Colors.white),
              ),

              SizedBox(height: PSizes.spaceBtwItems),

              // Logo
              Center(
                child: Image.asset(
                  PImages.appLogo,
                  width: size.width * 0.6, // responsive logo size
                  fit: BoxFit.contain,
                ),
              ),

              SizedBox(height: PSizes.spaceBtwSections),

              // Input Fields
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

              // Continue Button
              AppButtons.simple(
                text: AppStrings.cont,
                borderRadius: PSizes.fontSizeUMdLg,
                onTap: () {
                  context.push('/subscriptionDurationScreen');
                },
              ),

              SizedBox(height: PSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
