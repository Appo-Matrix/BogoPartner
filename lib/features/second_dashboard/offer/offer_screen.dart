import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_sizes.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';
import 'package:partner_app/features/second_dashboard/offer/widgets/p_analytics_card.dart';
import 'package:partner_app/features/second_dashboard/offer/widgets/p_date_range_card.dart';
import 'package:partner_app/features/second_dashboard/offer/widgets/p_info_card.dart';
import 'package:partner_app/features/second_dashboard/offer/widgets/p_stat_card.dart';
import 'package:partner_app/features/second_dashboard/offer/widgets/rounded_icon_buttons.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({super.key});

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,

      // App Bar
      appBar: AppBar(
        backgroundColor: PAppColors.black1000,
        automaticallyImplyLeading: false,

        leading: Row(
          children: [
            SizedBox(width: PSizes.fontSizeMd),
            InkWell(
              onTap: () {},
              child: Image.asset(PImages.menu, height: 25, width: 25),
            ),
          ],
        ),

        actions: [
          Row(
            children: [
              PRoundedIconButton(assetPath: PImages.icon, onTap: () {}),

              SizedBox(width: 10),

              PRoundedIconButton(assetPath: PImages.scan, onTap: () {}),

              SizedBox(width: 10),

              PRoundedIconButton(icon: Icons.add, onTap: () {}),

              SizedBox(width: 10),

              InkWell(
                onTap: () {},
                child: Icon(
                  Icons.notifications_rounded,
                  color: PAppColors.white,
                  size: 45,
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
        ],
      ),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PDateRangeCard(
                    startDate: "01/05/2023",
                    endDate: "01/05/2023",
                    centerIcon: Icons.swap_horiz,
                    radius: 25,
                    borderColor: PAppColors.black900,
                    containerColor: PAppColors.black1000,
                  ),
                ],
              ),

              SizedBox(height: 10),

              // Bogo Dashboard
              Container(
                height: 250,
                width: double.infinity,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 20, // adjust as needed
                      left: 20,
                      child: Image.asset(PImages.logos, height: 65, width: 65),
                    ),

                    Positioned(
                      top: 75, // a bit below the logo
                      left: 20,
                      child: Text(
                        "Dashboard",
                        style: TextStyle(
                          color: PAppColors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),

                    Positioned(
                      bottom: -65,
                      right: 0,
                      child: Image.asset(
                        PImages.coins,
                        height: 350, // adjust for visual balance
                        width: 350,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  // Orders
                  PStatCard(
                    assetPath: PImages.order,
                    title: "Total Orders",
                    value: "150",
                    color: Color(0xFFFF9978),
                    dividerIndent: 0,
                    dividerEndIndent: 25,
                    onArrowTap: () {},
                  ),

                  SizedBox(width: 10),

                  // Revenue
                  Container(
                    height: 154,
                    width: 245,
                    decoration: BoxDecoration(
                      color: Colors.lightGreen[400],
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(35),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 15),

                              Image.asset(
                                PImages.revenues,
                                height: 68,
                                width: 68,
                              ),

                              Text(
                                "Revenue",
                                style: TextStyle(
                                  color: PAppColors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),

                              Divider(
                                height: 2,
                                endIndent: 25,
                                indent: 0,
                                color: PAppColors.white,
                              ),

                              Text(
                                "5600 DA",
                                style: TextStyle(
                                  color: PAppColors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  // Loyalty
                  PStatCard(
                    assetPath: PImages.loyalty,
                    borderRadius: 0,
                    title: "Loyalty",
                    value: "150",
                    color: Color(0xFFfabd00),
                    dividerIndent: 0,
                    dividerEndIndent: 50,
                    onArrowTap: () {},
                  ),
                  SizedBox(width: 10),

                  // Reviews
                  PInfoCard(
                    topText: "Total 200",
                    assetPath: PImages.reviews,
                    title: "Reviews",
                    value: "01",
                    dividerIndent: 0,
                    dividerEndIndent: 50,
                    color: Colors.blueGrey.shade300,
                    onArrowTap: () {},
                  ),
                  SizedBox(width: 10),

                  // Reservation
                  PInfoCard(
                    topText: "Total 200",
                    assetPath: PImages.reservation,
                    title: "Reservation",
                    value: "20",
                    dividerIndent: 0,
                    dividerEndIndent: 20,
                    color: Colors.deepPurple,
                    onArrowTap: () {},
                  ),
                ],
              ),

              SizedBox(height: 10),

              // Clients
              Container(
                height: 236,
                width: double.infinity,
                decoration: BoxDecoration(color: PAppColors.black900),
                child: Column(
                  children: [
                    SizedBox(height: 30),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "Clients",
                                style: PAppStyles.poppins(
                                  color: PAppColors.white,
                                  fontSize: 18,
                                  weight: FontWeight.w700,
                                ),
                              ),

                              SizedBox(height: 20),

                              Image.asset(PImages.curve, height: 15, width: 55),

                              SizedBox(height: 20),

                              Text(
                                "42",
                                style: PAppStyles.poppins(
                                  color: PAppColors.white,
                                  fontSize: 27,
                                  weight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                "Per month",
                                style: PAppStyles.poppins(
                                  color: PAppColors.white,
                                  fontSize: 10,
                                  weight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),

                          Container(
                            height: 108,
                            width: 285,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 15),

                    Container(
                      height: 82,
                      width: double.infinity,
                      decoration: BoxDecoration(color: PAppColors.black800),
                      child: PAnalyticsCard(),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 300,
                    width: 185,
                    decoration: BoxDecoration(color: PAppColors.black900),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Customers by age",
                                style: TextStyle(
                                  color: PAppColors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Image.asset(PImages.curve, height: 35, width: 75),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: 300,
                    width: 185,
                    decoration: BoxDecoration(color: PAppColors.black900),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Customers by age",
                                style: TextStyle(
                                  color: PAppColors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Image.asset(PImages.curve, height: 35, width: 75),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10),

              Container(
                height: 286,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: PAppColors.black900,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Numbers the clients par hours",
                            style: TextStyle(
                              color: PAppColors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Image.asset(PImages.curve, height: 35, width: 75),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 120),
            ],
          ),
        ),
      ),
    );
  }
}
