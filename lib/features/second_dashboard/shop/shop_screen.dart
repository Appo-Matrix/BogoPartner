import 'package:flutter/material.dart';
import 'package:partner_app/core/utils/constants/app_assets.dart';
import 'package:partner_app/core/utils/constants/app_colors.dart';
import 'package:partner_app/core/utils/constants/app_styles.dart';
import 'package:partner_app/features/second_dashboard/shop/widgets/shop_items.dart';
import '../../../core/utils/common/bogo_app_bar.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  int buyOneCountBottom = 2;
  int buyOneCountTop = 2;
  int discountCountTop = 3;
  int discountCountBottom = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PAppColors.black1000,

      // App Bar
      appBar: const BogoAppBar(
        title: "Shop",
        showTitle: true,
        showBackIcon: true,
      ),

      // Body
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Container(
              height: 239,
              width: double.infinity,
              decoration: BoxDecoration(
                color: PAppColors.black900,
                borderRadius: BorderRadius.circular(35),
                border: Border.all(color: PAppColors.black800, width: 6),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 95,
                    width: 165,
                    decoration: BoxDecoration(
                      color: PAppColors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Image.asset(PImages.shops, fit: BoxFit.cover),
                    ),
                  ),

                  SizedBox(height: 8),

                  // Scanner
                  Container(
                    height: 95,
                    width: 165,
                    decoration: BoxDecoration(
                      color: PAppColors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 8),

                              Image.asset(
                                PImages.logos,
                                color: Colors.lightGreen.shade500,
                                width: 65,
                              ),

                              SizedBox(height: 20),

                              Text(
                                "TAKE THE CODE",
                                style: PAppStyles.poppins(
                                  color: PAppColors.black1000,
                                  fontSize: 10,
                                  weight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),

                          VerticalDivider(
                            color: Colors.black,
                            thickness: 1,
                            width: 10,
                            endIndent: 10,
                            indent: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 15),

            Text(
              "NFC card to accept offers (+Qr code )",
              style: PAppStyles.poppins(
                color: PAppColors.white,
                fontSize: 19,
                weight: FontWeight.w600,
              ),
            ),

            SizedBox(height: 10),

            ShopItems(
              assetPath: PImages.payments,
              buttonText: "Buy",
              buttonColor: Colors.amber,
            ),

            SizedBox(height: 15),

            Image.asset(PImages.scanMe),

            SizedBox(height: 15),

            Text(
              "NFC card to accept offers (+Qr code )",
              style: PAppStyles.poppins(
                color: PAppColors.white,
                fontSize: 19,
                weight: FontWeight.w600,
              ),
            ),

            SizedBox(height: 10),

            ShopItems(
              assetPath: PImages.payments,
              buttonText: "Buy",
              buttonColor: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
