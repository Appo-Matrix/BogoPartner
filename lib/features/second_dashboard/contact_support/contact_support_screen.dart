import 'package:flutter/material.dart';
import 'package:partner_app/features/second_dashboard/contact_support/widget/contact_info_card.dart';
import '../../../core/utils/common/bogo_app_bar.dart';
import '../../../core/utils/constants/app_assets.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_styles.dart';

class ContactSupportScreen extends StatefulWidget {
  const ContactSupportScreen({super.key});

  @override
  State<ContactSupportScreen> createState() => _ContactSupportScreenState();
}

class _ContactSupportScreenState extends State<ContactSupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,

      // App Bar
      appBar: const BogoAppBar(showTitle: false, showBackIcon: true),

      // Body
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset(PImages.partner, width: 125)],
            ),

            SizedBox(height: 45),

            PContactInfoCard(
              bgColor: PAppColors.error300,
              leftImage: PImages.num,
              titleText: "Phone Number",
              valueText: "+213 555 55 55 55",
              copyIcon: PImages.copy,
            ),

            SizedBox(height: 10),

            PContactInfoCard(
              bgColor: PAppColors.error300,
              leftImage: PImages.num,
              titleText: "WhatsApp",
              valueText: "wa.me/+2135555599855 ",
              copyIcon: PImages.copy,
            ),

            SizedBox(height: 10),

            PContactInfoCard(
              bgColor: PAppColors.error300,
              leftImage: PImages.num,
              titleText: "Email",
              valueText: "restaurantsfrance@bogo.com",
              copyIcon: PImages.copy,
            ),

            Spacer(),

            Container(
              height: 105,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red.shade400,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset(PImages.ball, height: 30, width: 30),
                        Text(
                          'Important warning',
                          style: PAppStyles.poppins(
                            color: PAppColors.white,
                            fontSize: 26,
                            weight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 5),

                    Text(
                      'If you do not receive customers from the bogo application, the amount will be returned to you',
                      style: PAppStyles.poppins(
                        color: PAppColors.white,
                        fontSize: 19,
                        weight: FontWeight.w700,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: PSizes.spaceBtwItems),

            Container(
              height: 117,
              width: double.infinity,
              decoration: BoxDecoration(
                color: PAppColors.black900,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Contact for assistance',
                    style: PAppStyles.poppins(
                      color: Colors.red,
                      fontSize: 26,
                      weight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 10),

                  Text(
                    'restaurants@bogo.com',
                    style: PAppStyles.poppins(
                      color: PAppColors.white,
                      fontSize: 26,
                      weight: FontWeight.w700,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    '05501244444',
                    style: PAppStyles.poppins(
                      color: PAppColors.white,
                      fontSize: 26,
                      weight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
