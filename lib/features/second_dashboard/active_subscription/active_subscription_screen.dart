import 'package:flutter/material.dart';
import 'package:partner_app/features/second_dashboard/active_subscription/widgets/dotted_divider.dart';
import 'package:partner_app/features/second_dashboard/active_subscription/widgets/label_value%20row.dart';
import 'package:partner_app/features/second_dashboard/active_subscription/widgets/subcription_card.dart';
import '../../../core/utils/common/Primary_button.dart';
import '../../../core/utils/common/bogo_app_bar.dart';
import '../../../core/utils/constants/app_assets.dart';
import '../../../core/utils/constants/app_colors.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_styles.dart';
import '../subscription/widgets/doted_container.dart';

class ActiveSubscriptionScreen extends StatefulWidget {
  const ActiveSubscriptionScreen({super.key});

  @override
  State<ActiveSubscriptionScreen> createState() =>
      _ActiveSubscriptionScreenState();
}

class _ActiveSubscriptionScreenState extends State<ActiveSubscriptionScreen> {
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

            const SizedBox(height: PSizes.spaceBtwSections),

            DottedContainer(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 125,
                          width: 125,
                          decoration: BoxDecoration(
                            color: PAppColors.black800,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(21),
                              topRight: Radius.circular(1),
                              bottomLeft: Radius.circular(21),
                              bottomRight: Radius.circular(21),
                            ),
                          ),
                        ),
                        const PSubscriptionCard(
                          titleText: "Subscription",
                          timerText: "00M 00D : 00H : 00M",
                          subtitleText: "End of subscription",
                        ),
                      ],
                    ),

                    SizedBox(height: 25),

                    // Subscription fee
                    PLabelValueRow(
                      label: "Subscription amount",
                      value: "2000 DA",
                      color: Colors.white,
                      fontSize: 16,
                    ),

                    SizedBox(height: 20),

                    // Subscription amount
                    PLabelValueRow(
                      label: "Violation fees (0)",
                      value: "00 DA",
                      color: Colors.white,
                      fontSize: 16,
                    ),

                    SizedBox(height: 30),

                    // Divider
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: PDottedDivider(
                        color: PAppColors.black600,
                        height: 2,
                        dashWidth: 7,
                        dashGap: 4,
                      ),
                    ),

                    SizedBox(height: 10),

                    // Total amount
                    PLabelValueRow(
                      label: "The total amount",
                      value: "2000 DA",
                      color: Colors.lightGreen,
                      fontSize: 22,
                    ),

                    PrimaryButton(
                      text: "Send request information",
                      width: double.infinity,
                      height: 92,
                      onTap: () {
                        // context.go("/addOptionScreen");
                      },
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: PSizes.spaceBtwSections),

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
          ],
        ),
      ),
    );
  }
}
