import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/features/second_dashboard/subscription/widgets/doted_container.dart';
import '../../../core/utils/common/bogo_app_bar.dart';
import '../../../core/utils/constants/app_assets.dart';
import '../../../core/utils/constants/app_sizes.dart';
import '../../../core/utils/constants/app_styles.dart';

class SubscriptionScreen extends StatefulWidget {
  const SubscriptionScreen({super.key});

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
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
                        Container(
                          height: 93,
                          width: 222,
                          decoration: BoxDecoration(
                            color: PAppColors.warning300,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(21),
                              bottomRight: Radius.circular(21),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Subscription",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),

                                SizedBox(height: 6),

                                Divider(
                                  color: PAppColors.white,
                                  height: 2,
                                  endIndent: 125,
                                  indent: 2,
                                ),

                                SizedBox(height: 6),

                                Text(
                                  "05M 16 D : 03 H : 33 M",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              PImages.rocket,
                              height: 215,
                              width: 215,
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Image.asset(PImages.dollar, height: 60, width: 60),
                          ],
                        ),
                      ],
                    ),

                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                        children: const [
                          TextSpan(text: 'You are currently '),
                          TextSpan(
                            text: 'subscribed',
                            style: TextStyle(color: PAppColors.darker),
                          ),
                        ],
                      ),
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
