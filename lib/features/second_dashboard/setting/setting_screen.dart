import 'package:flutter/material.dart';
import 'package:partner_app/features/second_dashboard/setting/widgets/bogo_ai_badge.dart';
import 'package:partner_app/features/second_dashboard/setting/widgets/bogo_menu_item.dart';
import 'package:partner_app/features/second_dashboard/setting/widgets/code_input_field.dart';
import '../../../core/utils/common/bogo_app_bar.dart';
import '../../../core/utils/constants/app_assets.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_styles.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: PAppColors.black1000,
      resizeToAvoidBottomInset: true,

      // App Bar
      appBar: const BogoAppBar(
        title: "Settings",
        showTitle: true,
        showBackIcon: true,
      ),

      // Body
      body: SafeArea(
        child: Stack(
          children: [
            // Right tilted phone mock (responsive)
            Positioned(
              right: 0,
              bottom: screenHeight * 0.01,
              child: Transform.rotate(
                angle: -0.02,
                child: Image.asset(
                  PImages.mock,
                  height: screenWidth * 1.35,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // Content
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Company Name
                  Container(
                    height: 105,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: PAppColors.black900,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Container(
                            height: 82,
                            width: 82,
                            decoration: BoxDecoration(
                              color: PAppColors.white,
                              borderRadius: BorderRadius.circular(35),
                            ),
                            child: Center(
                              child: Image.asset(
                                PImages.logos,
                                height: 55,
                                width: 55,
                                color: Colors.black,
                              ),
                            ),
                          ),

                          SizedBox(width: 15),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Company name",
                                style: PAppStyles.poppins(
                                  color: PAppColors.white,
                                  fontSize: PSizes.fontSizeLg,
                                  weight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(height: 3),

                              Text(
                                "Company type",
                                style: PAppStyles.poppins(
                                  color: PAppColors.white,
                                  fontSize: PSizes.fontSizeLg,
                                  weight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),

                          Spacer(),
                          Column(
                            children: [
                              SizedBox(height: 15),
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      PImages.edit,
                                      height: 15,
                                      width: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  // Your Code
                  PCodeInputField(
                    label: "Your Code",
                    backgroundColor: Colors.transparent,
                    codeText: "Bogo",
                  ),

                  // Menu options
                  BogoMenuItem(
                    iconAsset: PImages.profile,
                    title: "Profile",
                    onTap: () {},
                  ),

                  BogoMenuItem(
                    iconAsset: PImages.voices,
                    title: "In Voices",
                    onTap: () {},
                  ),

                  BogoMenuItem(
                    iconAsset: PImages.payments,
                    title: "Payments",
                    onTap: () {},
                  ),

                  BogoMenuItem(
                    iconAsset: PImages.help,
                    title: "Help",
                    onTap: () {},
                  ),

                  BogoMenuItem(
                    iconAsset: PImages.about,
                    title: "About",
                    onTap: () {},
                  ),

                  BogoMenuItem(
                    iconAsset: PImages.logout,
                    title: "Sign Out",
                    onTap: () {},
                  ),
                ],
              ),
            ),

            // Bottom-left orb (fixed position, responsive)
            BogoAiBadge(
              onTap: () {
                // context.push('/bogoAiScreen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
