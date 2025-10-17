import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:partner_app/core/utils/common/widgets/app_buttons.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_strings.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';
import '../../../core/utils/common/widgets/custom_app_bar.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,
      appBar: AppBar(leading:Icon(Icons.arrow_back),),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: PSizes.md),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: PSizes.spaceBtwItems),
                Center(
                  child: Container(
                    height: PSizes.buttonHeightLg,
                    width: PSizes.size380,
                    decoration: BoxDecoration(
                      color: PAppColors.backGroundColor,
                      borderRadius: BorderRadius.circular(PSizes.buttonRadius),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppButtons.square(

                          imageIcon: Icons.add,
                          buttonColor: PAppColors.black1000,
                          iconColor: PAppColors.backGroundColor,
                          text: AppStrings.addCompany,
                          onTap: () {
                            print("Hey am saddam");
context.push('/addCompanyScreen');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: PSizes.buttonWidthXSm),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: PSizes.spaceBtwSectionsLg),
                    child: Container(
                      height: PSizes.size220,
                      width: PSizes.imageCarouselHeight,
                      decoration: BoxDecoration(
                        color: PAppColors.black700,
                        borderRadius: BorderRadius.circular(
                          PSizes.buttonRadius,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: PSizes.sm,
                          vertical: PSizes.md,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: PSizes.iconLg,
                              width: PSizes.iconXLg,
                              child: Center(
                                child: Image.asset(PImages.appLogo),
                              ),
                            ),
                            SizedBox(height: PSizes.xs),
                            Text(
                              AppStrings.welcomeDesc,
                              style: PAppStyles.poppins( color: PAppColors.main,
                                fontSize: PSizes.fontSizeESm,
                                height: PSizes.paragraphSpacing, weight: FontWeight.w400,),
                            ),
                            Text(
                              AppStrings.welcomeDesc2,
                              style: PAppStyles.poppins( color: PAppColors.white,
                                fontSize: 10,
                                height: PSizes.paragraphSpacing, weight: FontWeight.w400,),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    height: PSizes.imageThumbSizeXLg,
                    width: PSizes.imageThumbSizeXLg,
                    child: Center(child: Image.asset(PImages.laptopGuy)),
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
