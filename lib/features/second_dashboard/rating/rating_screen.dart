import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/features/second_dashboard/rating/widgets/loyalty_states_card.dart';
import '../../../core/utils/common/bogo_app_bar.dart';
import '../../../core/utils/constants/app_styles.dart';

class RatingScreen extends StatefulWidget {
  const RatingScreen({super.key});

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,

      // App Bar
      appBar: const BogoAppBar(
        title: "Total Orders",
        showTitle: true,
        showBackIcon: true,
      ),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LoyaltyStatCard(
                    color: Color(0xFFE2BE82),
                    assetIcon: PImages.stars,
                    titleText: "LOYALTY",
                    valueText: "150",
                    curveAsset: PImages.curve,
                  ),

                  LoyaltyStatCard(
                    color: Color(0xFFE29382),
                    assetIcon: PImages.winner,
                    titleText: "LOYALTY",
                    valueText: "150",
                    curveAsset: PImages.curve,
                  ),
                ],
              ),

              SizedBox(height: 20),

              // Stars Profile Card
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 241,
                    width: 345,
                    decoration: BoxDecoration(
                      color: PAppColors.black900,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Stars grid (2 rows × 5)
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: 60,
                                top: 100,
                              ),
                              child: GridView.builder(
                                padding: EdgeInsets.zero,
                                itemCount: 10,
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 5,
                                      mainAxisSpacing: 4,
                                      crossAxisSpacing: 5,
                                      childAspectRatio: 0.9,
                                    ),
                                itemBuilder: (context, index) {
                                  final number = index + 1;
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        PImages.stars,
                                        height: 40,
                                        width: 40,
                                      ),
                                      Text(
                                        "$number",
                                        style: PAppStyles.poppins(
                                          color: PAppColors.white,
                                          fontSize: 13,
                                          weight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    top: 20,
                    right: -40,
                    child: Container(
                      height: 184,
                      width: 92,
                      decoration: BoxDecoration(
                        color: PAppColors.black800,
                        borderRadius: BorderRadius.circular(26),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 78,
                            width: 92,
                            decoration: BoxDecoration(
                              color: PAppColors.black1000,
                              borderRadius: BorderRadius.circular(26),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  PImages.winner,
                                  height: 57,
                                  width: 54,
                                ),

                                Text(
                                  "01 Win",
                                  style: PAppStyles.poppins(
                                    color: PAppColors.white,
                                    fontSize: 18,
                                    weight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 10),
                          Image.asset(PImages.activate, height: 50, width: 47),

                          Text(
                            "01 Win",
                            style: PAppStyles.poppins(
                              color: PAppColors.white,
                              fontSize: 18,
                              weight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Positioned(
                    top: 10,
                    left: 30,
                    child: Stack(
                      children: [
                        Container(
                          width: 239,
                          height: 80,
                          padding: EdgeInsets.only(left: 12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 30,
                                width: 239,
                                decoration: BoxDecoration(
                                  color: PAppColors.black800,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Row(
                                  children: [
                                    Spacer(),

                                    Text(
                                      "Hamid c",
                                      style: PAppStyles.poppins(
                                        color: PAppColors.white,
                                        fontSize: 16,
                                        weight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(width: 70),

                                    Text(
                                      "100%",
                                      style: PAppStyles.poppins(
                                        color: PAppColors.white,
                                        fontSize: 14,
                                        weight: FontWeight.w900,
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),

                        Positioned(
                          top: 12,
                          child: Container(
                            height: 69,
                            width: 69,
                            decoration: BoxDecoration(
                              color: PAppColors.black1000,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Center(child: Image.asset(PImages.image)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
